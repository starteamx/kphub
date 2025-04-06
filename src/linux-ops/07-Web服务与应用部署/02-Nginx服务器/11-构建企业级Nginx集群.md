让我继续完成恢复演练流程脚本的内容：

```powershell:c:\project\kphub\scripts\recovery_drill.ps1
    # 清空配置目录
    if (Test-Path "C:\nginx\conf") {
        Remove-Item -Path "C:\nginx\conf\*" -Recurse -Force
        Write-Output "配置目录已清空"
    } else {
        New-Item -ItemType Directory -Path "C:\nginx\conf" -Force | Out-Null
        Write-Output "配置目录已创建"
    }
    
    # 创建SSL目录
    if (-not (Test-Path "C:\nginx\ssl")) {
        New-Item -ItemType Directory -Path "C:\nginx\ssl" -Force | Out-Null
        Write-Output "SSL目录已创建"
    } else {
        Remove-Item -Path "C:\nginx\ssl\*" -Recurse -Force
        Write-Output "SSL目录已清空"
    }
    
    # 创建日志目录
    if (-not (Test-Path "C:\nginx\logs")) {
        New-Item -ItemType Directory -Path "C:\nginx\logs" -Force | Out-Null
        Write-Output "日志目录已创建"
    }
    
    Write-Output "测试环境准备完成"
}

# 从备份中恢复配置
Write-Log "从备份中恢复配置..."

# 查找节点配置目录
$nodeConfigDirs = Get-ChildItem -Path $tempDir -Directory | Where-Object { $_.Name -match "nginx-node\d+" }

if ($nodeConfigDirs.Count -eq 0) {
    Write-Log "警告: 备份中没有找到节点配置目录"
    
    # 尝试查找配置仓库
    $configRepoDir = Get-ChildItem -Path $tempDir -Directory | Where-Object { $_.Name -eq "config_repo" }
    
    if ($configRepoDir) {
        Write-Log "找到配置仓库目录，使用它进行恢复"
        
        # 复制配置文件
        $configFiles = Get-ChildItem -Path "$tempDir\config_repo" -Recurse -File
        
        foreach ($file in $configFiles) {
            $relativePath = $file.FullName.Replace("$tempDir\config_repo\", "")
            $content = Get-Content -Path $file.FullName -Raw -Encoding Byte
            
            # 复制到测试节点
            Invoke-Command -Session $session -ScriptBlock {
                $targetPath = "C:\nginx\conf\$using:relativePath"
                $targetDir = Split-Path -Parent $targetPath
                
                if (-not (Test-Path $targetDir)) {
                    New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
                }
                
                [System.IO.File]::WriteAllBytes($targetPath, $using:content)
            }
        }
        
        Write-Log "从配置仓库恢复了 $($configFiles.Count) 个文件"
    } else {
        Write-Log "错误: 备份中没有找到可用的配置"
        exit 1
    }
} else {
    # 使用第一个节点的配置
    $sourceNode = $nodeConfigDirs[0].Name
    Write-Log "使用节点 $sourceNode 的配置进行恢复"
    
    # 复制配置文件
    $configFiles = Get-ChildItem -Path "$tempDir\$sourceNode\conf" -Recurse -File
    
    foreach ($file in $configFiles) {
        $relativePath = $file.FullName.Replace("$tempDir\$sourceNode\conf\", "")
        $content = Get-Content -Path $file.FullName -Raw -Encoding Byte
        
        # 复制到测试节点
        Invoke-Command -Session $session -ScriptBlock {
            $targetPath = "C:\nginx\conf\$using:relativePath"
            $targetDir = Split-Path -Parent $targetPath
            
            if (-not (Test-Path $targetDir)) {
                New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
            }
            
            [System.IO.File]::WriteAllBytes($targetPath, $using:content)
        }
    }
    
    Write-Log "从节点 $sourceNode 恢复了 $($configFiles.Count) 个配置文件"
    
    # 复制SSL证书
    $sslDir = "$tempDir\$sourceNode\ssl"
    if (Test-Path $sslDir) {
        $sslFiles = Get-ChildItem -Path $sslDir -Recurse -File
        
        foreach ($file in $sslFiles) {
            $relativePath = $file.FullName.Replace("$sslDir\", "")
            $content = Get-Content -Path $file.FullName -Raw -Encoding Byte
            
            # 复制到测试节点
            Invoke-Command -Session $session -ScriptBlock {
                $targetPath = "C:\nginx\ssl\$using:relativePath"
                $targetDir = Split-Path -Parent $targetPath
                
                if (-not (Test-Path $targetDir)) {
                    New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
                }
                
                [System.IO.File]::WriteAllBytes($targetPath, $using:content)
            }
        }
        
        Write-Log "从节点 $sourceNode 恢复了 $($sslFiles.Count) 个SSL证书文件"
    }
}

# 验证配置
Write-Log "验证恢复的配置..."
$configTest = Invoke-Command -Session $session -ScriptBlock {
    $result = & "C:\nginx\nginx.exe" -t 2>&1
    $exitCode = $LASTEXITCODE
    
    return @{
        Output = $result
        ExitCode = $exitCode
    }
}

if ($configTest.ExitCode -eq 0) {
    Write-Log "配置验证成功"
} else {
    Write-Log "配置验证失败:"
    $configTest.Output | ForEach-Object { Write-Log "  $_" }
    
    # 尝试修复常见问题
    Write-Log "尝试修复配置问题..."
    
    # 1. 修复路径问题
    Invoke-Command -Session $session -ScriptBlock {
        $configFiles = Get-ChildItem -Path "C:\nginx\conf" -Recurse -Filter "*.conf" -File
        
        foreach ($file in $configFiles) {
            $content = Get-Content -Path $file.FullName -Raw
            
            # 替换路径分隔符
            $content = $content -replace "/nginx/", "C:/nginx/"
            $content = $content -replace "/var/log/nginx/", "C:/nginx/logs/"
            $content = $content -replace "/etc/nginx/", "C:/nginx/conf/"
            $content = $content -replace "/var/www/", "C:/nginx/html/"
            
            # 保存修改
            $content | Out-File -FilePath $file.FullName -Encoding utf8
        }
        
        Write-Output "已修复路径问题"
    }
    
    # 2. 创建必要的目录
    Invoke-Command -Session $session -ScriptBlock {
        $dirs = @(
            "C:\nginx\html",
            "C:\nginx\temp",
            "C:\nginx\client_body_temp",
            "C:\nginx\proxy_temp",
            "C:\nginx\fastcgi_temp",
            "C:\nginx\uwsgi_temp",
            "C:\nginx\scgi_temp"
        )
        
        foreach ($dir in $dirs) {
            if (-not (Test-Path $dir)) {
                New-Item -ItemType Directory -Path $dir -Force | Out-Null
                Write-Output "创建目录: $dir"
            }
        }
        
        # 创建默认index.html
        if (-not (Test-Path "C:\nginx\html\index.html")) {
            @"
<!DOCTYPE html>
<html>
<head>
    <title>恢复演练测试页面</title>
</head>
<body>
    <h1>Nginx恢复演练成功!</h1>
    <p>时间戳: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</p>
</body>
</html>
"@ | Out-File -FilePath "C:\nginx\html\index.html" -Encoding utf8
            
            Write-Output "创建默认index.html"
        }
    }
    
    # 再次验证配置
    Write-Log "再次验证配置..."
    $configTest = Invoke-Command -Session $session -ScriptBlock {
        $result = & "C:\nginx\nginx.exe" -t 2>&1
        $exitCode = $LASTEXITCODE
        
        return @{
            Output = $result
            ExitCode = $exitCode
        }
    }
    
    if ($configTest.ExitCode -eq 0) {
        Write-Log "配置修复成功"
    } else {
        Write-Log "配置修复失败，需要手动干预:"
        $configTest.Output | ForEach-Object { Write-Log "  $_" }
    }
}

# 启动Nginx
if ($configTest.ExitCode -eq 0) {
    Write-Log "启动Nginx服务..."
    $startResult = Invoke-Command -Session $session -ScriptBlock {
        # 确保之前的实例已停止
        $processes = Get-Process -Name nginx -ErrorAction SilentlyContinue
        if ($processes) {
            Stop-Process -Name nginx -Force
            Start-Sleep -Seconds 2
        }
        
        # 启动Nginx
        Start-Process -FilePath "C:\nginx\nginx.exe" -NoNewWindow
        Start-Sleep -Seconds 2
        
        # 检查是否成功启动
        $processes = Get-Process -Name nginx -ErrorAction SilentlyContinue
        return $processes -ne $null
    }
    
    if ($startResult) {
        Write-Log "Nginx服务启动成功"
        
        # 验证HTTP访问
        Write-Log "验证HTTP访问..."
        $httpTest = Invoke-Command -Session $session -ScriptBlock {
            try {
                $response = Invoke-WebRequest -Uri "http://localhost" -UseBasicParsing -TimeoutSec 5
                return @{
                    StatusCode = $response.StatusCode
                    Success = $true
                }
            } catch {
                return @{
                    StatusCode = 0
                    Success = $false
                    Error = $_.Exception.Message
                }
            }
        }
        
        if ($httpTest.Success) {
            Write-Log "HTTP访问成功，状态码: $($httpTest.StatusCode)"
            Write-Log "恢复演练成功完成!"
        } else {
            Write-Log "HTTP访问失败: $($httpTest.Error)"
            Write-Log "恢复演练部分成功，但HTTP访问测试失败"
        }
    } else {
        Write-Log "Nginx服务启动失败"
        Write-Log "恢复演练失败"
    }
} else {
    Write-Log "由于配置验证失败，跳过启动Nginx"
    Write-Log "恢复演练失败"
}

# 清理
Write-Log "清理临时文件..."
Remove-Item -Path $tempDir -Recurse -Force
Write-Log "临时文件已清理"

# 关闭会话
Remove-PSSession $session

# 生成演练报告
$reportFile = "c:\project\kphub\logs\recovery\drill_report_$timestamp.html"
$reportContent = @"
<!DOCTYPE html>
<html>
<head>
    <title>Nginx恢复演练报告</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { color: #333366; }
        .success { color: green; }
        .warning { color: orange; }
        .error { color: red; }
        .section { margin: 20px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; }
        pre { background-color: #f5f5f5; padding: 10px; border-radius: 5px; overflow-x: auto; }
    </style>
</head>
<body>
    <h1>Nginx恢复演练报告</h1>
    <div class="section">
        <h2>演练信息</h2>
        <p><strong>时间:</strong> $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</p>
        <p><strong>备份文件:</strong> $BackupFile</p>
        <p><strong>测试节点:</strong> $TestNode</p>
    </div>
    
    <div class="section">
        <h2>演练日志</h2>
        <pre>$(Get-Content -Path $logFile -Raw)</pre>
    </div>
    
    <div class="section">
        <h2>结论</h2>
"@

# 添加结论
if ($configTest.ExitCode -eq 0 -and $startResult -and $httpTest.Success) {
    $reportContent += @"
        <p class="success"><strong>恢复演练成功!</strong> 配置验证通过，Nginx服务成功启动，HTTP访问测试通过。</p>
        <p>恢复时间: $(Get-Content $logFile | Measure-Object -Line).Lines 行日志，预计实际恢复时间小于5分钟。</p>
"@
} elseif ($configTest.ExitCode -eq 0 -and $startResult) {
    $reportContent += @"
        <p class="warning"><strong>恢复演练部分成功。</strong> 配置验证通过，Nginx服务成功启动，但HTTP访问测试失败。</p>
        <p>需要进一步调查HTTP访问失败的原因。</p>
"@
} elseif ($configTest.ExitCode -eq 0) {
    $reportContent += @"
        <p class="warning"><strong>恢复演练部分成功。</strong> 配置验证通过，但Nginx服务启动失败。</p>
        <p>需要进一步调查服务启动失败的原因。</p>
"@
} else {
    $reportContent += @"
        <p class="error"><strong>恢复演练失败。</strong> 配置验证失败，需要手动修复配置问题。</p>
        <p>请查看日志了解详细错误信息。</p>
"@
}

$reportContent += @"
    </div>
    
    <div class="section">
        <h2>后续建议</h2>
        <ul>
            <li>定期执行恢复演练，确保备份有效性</li>
            <li>更新恢复文档，记录本次演练中发现的问题</li>
            <li>考虑自动化恢复流程，减少人工干预</li>
            <li>确保所有节点的配置保持一致，便于恢复</li>
        </ul>
    </div>
    
    <div class="section">
        <h2>签名</h2>
        <p>演练执行人: $env:USERNAME</p>
        <p>报告生成时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</p>
    </div>
</body>
</html>
"@

$reportContent | Out-File -FilePath $reportFile -Encoding utf8
Write-Log "演练报告已生成: $reportFile"

# 发送演练报告
$emailParams = @{
    SmtpServer = "smtp.company.com"
    Port = 587
    UseSsl = $true
    Credential = (Get-Credential -Message "输入SMTP凭据" -UserName "drills@company.com")
    From = "drills@company.com"
    To = "admin@company.com"
    Subject = "Nginx恢复演练报告 - $timestamp"
    Body = "请查看附件中的Nginx恢复演练报告。"
    Attachments = $reportFile
}

try {
    Send-MailMessage @emailParams
    Write-Log "演练报告已发送"
} catch {
    Write-Log "演练报告发送失败: $_"
}

Write-Log "恢复演练脚本执行完成"
```

## 7. 性能优化

为了充分发挥Nginx的性能潜力，需要进行一系列的优化配置。以下是一些关键的性能优化策略：

### 7.1 系统级优化

操作系统级别的优化对Nginx性能有显著影响。

```powershell:c:\project\kphub\scripts\system_optimize.ps1
# 系统级性能优化脚本
param(
    [Parameter(Mandatory=$false)]
    [string[]]$Nodes = @("nginx-node1", "nginx-node2", "nginx-node3"),
    
    [Parameter(Mandatory=$false)]
    [switch]$ApplyChanges = $false
)

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$logFile = "c:\project\kphub\logs\optimize\system_$timestamp.log"

# 确保日志目录存在
$logDir = Split-Path -Parent $logFile
if (-not (Test-Path $logDir)) {
    New-Item -ItemType Directory -Path $logDir -Force | Out-Null
}

function Write-Log {
    param([string]$Message)
    
    $logEntry = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - $Message"
    $logEntry | Out-File -Append -FilePath $logFile
    Write-Host $logEntry
}

Write-Log "开始系统级性能优化"
Write-Log "目标节点: $($Nodes -join ', ')"
Write-Log "应用更改: $ApplyChanges"

foreach ($node in $Nodes) {
    Write-Log "处理节点: $node"
    
    try {
        # 创建远程会话
        $session = New-PSSession -ComputerName $node -ErrorAction Stop
        
        # 收集当前系统信息
        Write-Log "收集 $node 的系统信息..."
        $sysInfo = Invoke-Command -Session $session -ScriptBlock {
            $info = @{}
            
            # 操作系统信息
            $info["OS"] = Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber
            
            # CPU信息
            $info["CPU"] = Get-CimInstance Win32_Processor | Select-Object Name, NumberOfCores, NumberOfLogicalProcessors
            
            # 内存信息
            $memoryInfo = Get-CimInstance Win32_OperatingSystem
            $info["Memory"] = @{
                TotalGB = [math]::Round($memoryInfo.TotalVisibleMemorySize / 1MB, 2)
                FreeGB = [math]::Round($memoryInfo.FreePhysicalMemory / 1MB, 2)
            }
            
            # 网络配置
            $info["Network"] = Get-NetAdapter | Where-Object Status -eq "Up" | Select-Object Name, InterfaceDescription, LinkSpeed
            
            # TCP设置
            $info["TCPSettings"] = @{
                MaxConnections = (Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -Name "TcpNumConnections" -ErrorAction SilentlyContinue).TcpNumConnections
                TimeWaitDelay = (Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -Name "TcpTimedWaitDelay" -ErrorAction SilentlyContinue).TcpTimedWaitDelay
                MaxUserPort = (Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -Name "MaxUserPort" -ErrorAction SilentlyContinue).MaxUserPort
            }
            
            # 磁盘性能
            $info["Disk"] = Get-CimInstance Win32_LogicalDisk | Where-Object DriveType -eq 3 | Select-Object DeviceID, Size, FreeSpace
            
            # 电源计划
            $info["PowerPlan"] = powercfg /list | Where-Object { $_ -match "\*" } | ForEach-Object { $_ -replace ".*\s+\((.*)\)\s+\*.*", '$1' }
            
            # 服务优化状态
            $services = @(
                "Superfetch",
                "WSearch",
                "wuauserv"  # Windows Update
            )
            
            $info["Services"] = @{}
            foreach ($service in $services) {
                $svc = Get-Service -Name $service -ErrorAction SilentlyContinue
                if ($svc) {
                    $info["Services"][$service] = @{
                        Status = $svc.Status
                        StartType = $svc.StartType
                    }
                } else {
                    $info["Services"][$service] = "不存在"
                }
            }
            
            return $info
        }
        
        # 显示系统信息
        Write-Log "系统信息摘要:"
        Write-Log "  操作系统: $($sysInfo.OS.Caption) $($sysInfo.OS.Version)"
        Write-Log "  CPU: $($sysInfo.CPU.Name) ($($sysInfo.CPU.NumberOfCores)核/$($sysInfo.CPU.NumberOfLogicalProcessors)线程)"
        Write-Log "  内存: 总计 $($sysInfo.Memory.TotalGB) GB, 可用 $($sysInfo.Memory.FreeGB) GB"
        Write-Log "  电源计划: $($sysInfo.PowerPlan)"
        
        # 生成优化建议
        Write-Log "生成优化建议..."
        $recommendations = Invoke-Command -Session $session -ScriptBlock {
            $recommendations = @()
            
            # 1. TCP优化
            if (-not (Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -Name "MaxUserPort" -ErrorAction SilentlyContinue)) {
                $recommendations += @{
                    Type = "TCP"
                    Name = "MaxUserPort"
                    CurrentValue = "默认(5000)"
                    RecommendedValue = "65534"
                    Command = 'Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -Name "MaxUserPort" -Value 65534 -Type DWord'
                    Description = "增加可用的临时端口数量，提高高并发连接性能"
                }
            }
            
            if (-not (Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -Name "TcpTimedWaitDelay" -ErrorAction SilentlyContinue)) {
                $recommendations += @{
                    Type = "TCP"
                    Name = "TcpTimedWaitDelay"
                    CurrentValue = "默认(240秒)"
                    RecommendedValue = "30"
                    Command = 'Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -Name "TcpTimedWaitDelay" -Value 30 -Type DWord'
                    Description = "减少TIME_WAIT状态的持续时间，提高端口复用率"
                }
            }
            
            # 2. 电源计划优化
            $currentPowerPlan = powercfg /list | Where-Object { $_ -match "\*" } | ForEach-Object { $_ -replace ".*\s+\((.*)\)\s+\*.*", '$1' }
            if ($currentPowerPlan -ne "高性能") {
                $recommendations += @{
                    Type = "Power"
                    Name = "PowerPlan"
                    CurrentValue = $currentPowerPlan
                    RecommendedValue = "高性能"
                    Command = 'powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c'
                    Description = "切换到高性能电源计划，提高CPU性能"
                }
            }
            
            # 3. 服务优化
            $services = @{
                "Superfetch" = @{
                    Description = "预读取服务，可能会占用磁盘I/O"
                    Action = "禁用"
                }
                "WSearch" = @{
                    Description = "Windows搜索服务，占用系统资源"
                    Action = "禁用"
                }
                "wuauserv" = @{
                    Description = "Windows Update服务，可能在后台下载更新"
                    Action = "手动"
                }
            }
            
            foreach ($serviceName in $services.Keys) {
                $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue
                if ($service) {
                    $targetState = $services[$serviceName].Action
                    
                    if (($targetState -eq "禁用" -and $service.StartType -ne "Disabled") -or 
                        ($targetState -eq "手动" -and $service.StartType -ne "Manual")) {
                        
                        $command = if ($targetState -eq "禁用") {
                            "Set-Service -Name $serviceName -StartupType Disabled"
                        } else {
                            "Set-Service -Name $serviceName -StartupType Manual"
                        }
                        
                        $recommendations += @{
                            Type = "Service"
                            Name = $serviceName
                            CurrentValue = $service.StartType
                            RecommendedValue = $targetState
                            Command = $command
                            Description = $services[$serviceName].Description
                        }
                    }
                }
            }
            
            # 4. 网络优化
            # 检查RSS(接收端缩放)是否启用
            $nics = Get-NetAdapter | Where-Object Status -eq "Up"
            foreach ($nic in $nics) {
                $rssEnabled = Get-NetAdapterRss -Name $nic.Name -ErrorAction SilentlyContinue
                
                if ($rssEnabled -and -not $rssEnabled.Enabled) {
                    $recommendations += @{
                        Type = "Network"
                        Name = "RSS_$($nic.Name)"
                        CurrentValue = "禁用"
                        RecommendedValue = "启用"
                        Command = "Enable-NetAdapterRss -Name `"$($nic.Name)`""
                        Description = "启用接收端缩放(RSS)，提高网络处理性能"
                    }
                }
            }
            
            # 5. 文件系统优化
            # 检查NTFS的LastAccessTime是否禁用
            $fsUtil = fsutil behavior query disablelastaccess
            if ($fsUtil -match "DisableLastAccess = (\d+)" -and $Matches[1] -eq "0") {
                $recommendations += @{
                    Type = "FileSystem"
                    Name = "DisableLastAccess"
                    CurrentValue = "启用"
                    RecommendedValue = "禁用"
                    Command = "fsutil behavior set disablelastaccess 1"
                    Description = "禁用NTFS的LastAccessTime更新，减少磁盘I/O"
                }
            }
            
            return $recommendations
        }
        
        # 显示优化建议
        Write-Log "优化建议:"
        foreach ($rec in $recommendations) {
            Write-Log "  [$($rec.Type)] $($rec.Name): $($rec.CurrentValue) -> $($rec.RecommendedValue)"
            Write-Log "    描述: $($rec.Description)"
            Write-Log "    命令: $($rec.Command)"
        }
        
        # 应用优化建议
        if ($ApplyChanges -and $recommendations.Count -gt 0) {
            Write-Log "应用优化建议..."
            
            foreach ($rec in $recommendations) {
                Write-Log "  应用: [$($rec.Type)] $($rec.Name)"
                
                $result = Invoke-Command -Session $session -ScriptBlock {
                    $command = $using:rec.Command
                    try {
                        Invoke-Expression $command
                        return "成功"
                    } catch {
                        return "失败: $_"
                    }
                }
                
                Write-Log "    结果: $result"
            }
            
            Write-Log "优化应用完成，需要重启服务器以使某些更改生效"
            
            # 询问是否重启
            $restartPrompt = Read-Host "是否立即重启服务器 $node? (Y/N)"
            if ($restartPrompt -eq "Y" -or $restartPrompt -eq "y") {
                Write-Log "重启服务器 $node..."
                
                Invoke-Command -Session $session -ScriptBlock {
                    Restart-Computer -Force
                }
                
                Write-Log "重启命令已发送"
            } else {
                Write-Log "跳过重启，请在方便时手动重启服务器"
            }
        } elseif ($recommendations.Count -eq 0) {
            Write-Log "没有发现需要优化的项目"
        } else {
            Write-Log "跳过应用优化(ApplyChanges = $ApplyChanges)"
        }
        
        # 关闭会话
        Remove-PSSession $session
        
    } catch {
        Write-Log "处理节点 $node 时出错: $_"
    }
}

Write-Log "系统级性能优化完成"
```

### 7.2 Nginx配置优化

针对Nginx本身的配置优化，可以显著提升性能和吞吐量。

```nginx:c:\project\kphub\conf\performance.conf
# Nginx性能优化配置

# 工作进程数，通常设置为CPU核心数
worker_processes auto;

# 每个工作进程的最
让我继续完成Nginx配置优化部分的内容：

```nginx:c:\project\kphub\conf\performance.conf
# Nginx性能优化配置

# 工作进程数，通常设置为CPU核心数
worker_processes auto;

# 每个工作进程的最大连接数
worker_connections 10240;

# 使用高效的事件处理模型
use epoll;

# 启用多个接受请求的套接字
multi_accept on;

# 启用文件高效传输
sendfile on;
tcp_nopush on;
tcp_nodelay on;

# 保持连接超时设置
keepalive_timeout 65;
keepalive_requests 100000;

# 客户端请求主体大小限制
client_max_body_size 20m;

# 客户端请求缓冲区大小
client_body_buffer_size 128k;
client_header_buffer_size 1k;
large_client_header_buffers 4 16k;

# 开启压缩
gzip on;
gzip_min_length 1k;
gzip_buffers 4 16k;
gzip_http_version 1.1;
gzip_comp_level 6;
gzip_types text/plain text/css application/json application/javascript text/xml application/xml application/xml+rss text/javascript;
gzip_vary on;
gzip_proxied any;

# 文件缓存设置
open_file_cache max=100000 inactive=20s;
open_file_cache_valid 30s;
open_file_cache_min_uses 2;
open_file_cache_errors on;

# 限制每个IP的连接数
limit_conn_zone $binary_remote_addr zone=conn_limit_per_ip:10m;
limit_conn conn_limit_per_ip 20;

# 限制每个IP的请求速率
limit_req_zone $binary_remote_addr zone=req_limit_per_ip:10m rate=10r/s;
limit_req zone=req_limit_per_ip burst=20 nodelay;

# SSL优化
ssl_session_cache shared:SSL:10m;
ssl_session_timeout 10m;
ssl_protocols TLSv1.2 TLSv1.3;
ssl_prefer_server_ciphers on;
ssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384;
```

### 7.3 性能测试与基准

为了验证优化效果，需要进行全面的性能测试。

```powershell:c:\project\kphub\scripts\performance_test.ps1
# Nginx性能测试脚本
param(
    [Parameter(Mandatory=$true)]
    [string]$TargetUrl,
    
    [Parameter(Mandatory=$false)]
    [int]$Concurrency = 100,
    
    [Parameter(Mandatory=$false)]
    [int]$Requests = 10000,
    
    [Parameter(Mandatory=$false)]
    [int]$Duration = 60,
    
    [Parameter(Mandatory=$false)]
    [string]$OutputDir = "c:\project\kphub\logs\performance",
    
    [Parameter(Mandatory=$false)]
    [ValidateSet("ApacheBench", "Wrk", "Siege")]
    [string]$Tool = "ApacheBench"
)

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$logFile = "$OutputDir\test_$timestamp.log"

# 确保输出目录存在
if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

function Write-Log {
    param([string]$Message)
    
    $logEntry = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - $Message"
    $logEntry | Out-File -Append -FilePath $logFile
    Write-Host $logEntry
}

Write-Log "开始Nginx性能测试"
Write-Log "目标URL: $TargetUrl"
Write-Log "并发数: $Concurrency"
Write-Log "请求数: $Requests"
Write-Log "测试时长: $Duration 秒"
Write-Log "测试工具: $Tool"

# 检查测试工具是否可用
function Test-CommandAvailable {
    param([string]$Command)
    
    try {
        $null = Get-Command $Command -ErrorAction Stop
        return $true
    } catch {
        return $false
    }
}

# 安装测试工具(如果需要)
function Install-TestTool {
    param([string]$Tool)
    
    Write-Log "检查测试工具 $Tool 是否已安装..."
    
    switch ($Tool) {
        "ApacheBench" {
            if (-not (Test-CommandAvailable "ab")) {
                Write-Log "ApacheBench未安装，尝试安装..."
                
                # 创建临时目录
                $tempDir = "c:\project\kphub\temp\ab_install"
                New-Item -ItemType Directory -Path $tempDir -Force | Out-Null
                
                # 下载Apache Bench
                $abUrl = "https://www.apachelounge.com/download/VS16/binaries/httpd-2.4.54-win64-VS16.zip"
                $abZip = "$tempDir\httpd.zip"
                
                try {
                    Invoke-WebRequest -Uri $abUrl -OutFile $abZip
                    
                    # 解压文件
                    Expand-Archive -Path $abZip -DestinationPath $tempDir -Force
                    
                    # 复制ab.exe到系统路径
                    $abExe = Get-ChildItem -Path $tempDir -Recurse -Filter "ab.exe" | Select-Object -First 1
                    if ($abExe) {
                        Copy-Item -Path $abExe.FullName -Destination "C:\Windows\System32\" -Force
                        Write-Log "ApacheBench已安装"
                    } else {
                        Write-Log "无法找到ab.exe，请手动安装"
                        return $false
                    }
                    
                    # 清理临时文件
                    Remove-Item -Path $tempDir -Recurse -Force
                    
                    return $true
                } catch {
                    Write-Log "安装ApacheBench失败: $_"
                    return $false
                }
            } else {
                Write-Log "ApacheBench已安装"
                return $true
            }
        }
        
        "Wrk" {
            if (-not (Test-CommandAvailable "wrk")) {
                Write-Log "Wrk未安装，尝试安装..."
                
                # 创建临时目录
                $tempDir = "c:\project\kphub\temp\wrk_install"
                New-Item -ItemType Directory -Path $tempDir -Force | Out-Null
                
                # 下载Wrk
                $wrkUrl = "https://github.com/wg/wrk/releases/download/4.2.0/wrk-4.2.0-windows-x64.zip"
                $wrkZip = "$tempDir\wrk.zip"
                
                try {
                    Invoke-WebRequest -Uri $wrkUrl -OutFile $wrkZip
                    
                    # 解压文件
                    Expand-Archive -Path $wrkZip -DestinationPath $tempDir -Force
                    
                    # 复制wrk.exe到系统路径
                    $wrkExe = Get-ChildItem -Path $tempDir -Recurse -Filter "wrk.exe" | Select-Object -First 1
                    if ($wrkExe) {
                        Copy-Item -Path $wrkExe.FullName -Destination "C:\Windows\System32\" -Force
                        Write-Log "Wrk已安装"
                    } else {
                        Write-Log "无法找到wrk.exe，请手动安装"
                        return $false
                    }
                    
                    # 清理临时文件
                    Remove-Item -Path $tempDir -Recurse -Force
                    
                    return $true
                } catch {
                    Write-Log "安装Wrk失败: $_"
                    return $false
                }
            } else {
                Write-Log "Wrk已安装"
                return $true
            }
        }
        
        "Siege" {
            if (-not (Test-CommandAvailable "siege")) {
                Write-Log "Siege未安装，尝试安装..."
                
                # 在Windows上安装Siege比较复杂，建议使用Chocolatey
                if (Test-CommandAvailable "choco") {
                    try {
                        Start-Process -FilePath "choco" -ArgumentList "install siege -y" -Wait -NoNewWindow
                        Write-Log "Siege已通过Chocolatey安装"
                        return $true
                    } catch {
                        Write-Log "通过Chocolatey安装Siege失败: $_"
                        return $false
                    }
                } else {
                    Write-Log "未找到Chocolatey，无法自动安装Siege，请手动安装"
                    return $false
                }
            } else {
                Write-Log "Siege已安装"
                return $true
            }
        }
    }
}

# 安装所需的测试工具
$toolAvailable = Install-TestTool -Tool $Tool
if (-not $toolAvailable) {
    Write-Log "无法使用测试工具 $Tool，测试终止"
    exit 1
}

# 收集系统基准信息
Write-Log "收集系统基准信息..."
$systemInfo = @{
    CPU = Get-CimInstance Win32_Processor | Select-Object Name, NumberOfCores, NumberOfLogicalProcessors
    Memory = Get-CimInstance Win32_OperatingSystem | Select-Object @{Name="TotalMemoryGB";Expression={[math]::Round($_.TotalVisibleMemorySize / 1MB, 2)}}, @{Name="FreeMemoryGB";Expression={[math]::Round($_.FreePhysicalMemory / 1MB, 2)}}
    Network = Get-NetAdapter | Where-Object Status -eq "Up" | Select-Object Name, InterfaceDescription, LinkSpeed
}

Write-Log "系统信息:"
Write-Log "  CPU: $($systemInfo.CPU.Name) ($($systemInfo.CPU.NumberOfCores)核/$($systemInfo.CPU.NumberOfLogicalProcessors)线程)"
Write-Log "  内存: 总计 $($systemInfo.Memory.TotalMemoryGB) GB, 可用 $($systemInfo.Memory.FreeMemoryGB) GB"
foreach ($adapter in $systemInfo.Network) {
    Write-Log "  网络适配器: $($adapter.Name) - $($adapter.InterfaceDescription) ($($adapter.LinkSpeed))"
}

# 执行性能测试
Write-Log "开始执行性能测试..."
$resultFile = "$OutputDir\result_$timestamp.txt"

switch ($Tool) {
    "ApacheBench" {
        $abArgs = "-n $Requests -c $Concurrency -t $Duration -k -r `"$TargetUrl`""
        Write-Log "执行命令: ab $abArgs"
        
        try {
            $process = Start-Process -FilePath "ab" -ArgumentList $abArgs -NoNewWindow -Wait -PassThru -RedirectStandardOutput $resultFile
            
            if ($process.ExitCode -eq 0) {
                Write-Log "ApacheBench测试完成"
            } else {
                Write-Log "ApacheBench测试失败，退出代码: $($process.ExitCode)"
            }
        } catch {
            Write-Log "执行ApacheBench时出错: $_"
        }
    }
    
    "Wrk" {
        $wrkArgs = "-t8 -c$Concurrency -d${Duration}s `"$TargetUrl`""
        Write-Log "执行命令: wrk $wrkArgs"
        
        try {
            $process = Start-Process -FilePath "wrk" -ArgumentList $wrkArgs -NoNewWindow -Wait -PassThru -RedirectStandardOutput $resultFile
            
            if ($process.ExitCode -eq 0) {
                Write-Log "Wrk测试完成"
            } else {
                Write-Log "Wrk测试失败，退出代码: $($process.ExitCode)"
            }
        } catch {
            Write-Log "执行Wrk时出错: $_"
        }
    }
    
    "Siege" {
        $siegeArgs = "-c$Concurrency -t${Duration}S `"$TargetUrl`""
        Write-Log "执行命令: siege $siegeArgs"
        
        try {
            $process = Start-Process -FilePath "siege" -ArgumentList $siegeArgs -NoNewWindow -Wait -PassThru -RedirectStandardOutput $resultFile
            
            if ($process.ExitCode -eq 0) {
                Write-Log "Siege测试完成"
            } else {
                Write-Log "Siege测试失败，退出代码: $($process.ExitCode)"
            }
        } catch {
            Write-Log "执行Siege时出错: $_"
        }
    }
}

# 分析测试结果
Write-Log "分析测试结果..."
$resultContent = Get-Content -Path $resultFile -Raw

# 根据不同工具解析结果
$parsedResults = @{}

switch ($Tool) {
    "ApacheBench" {
        if ($resultContent -match "Requests per second:\s+(\d+\.\d+)") {
            $parsedResults["RPS"] = $Matches[1]
        }
        
        if ($resultContent -match "Time per request:\s+(\d+\.\d+).*\[ms\] \(mean\)") {
            $parsedResults["LatencyMs"] = $Matches[1]
        }
        
        if ($resultContent -match "Transfer rate:\s+(\d+\.\d+)") {
            $parsedResults["TransferRate"] = $Matches[1]
        }
        
        if ($resultContent -match "Complete requests:\s+(\d+)") {
            $parsedResults["CompletedRequests"] = $Matches[1]
        }
        
        if ($resultContent -match "Failed requests:\s+(\d+)") {
            $parsedResults["FailedRequests"] = $Matches[1]
        }
    }
    
    "Wrk" {
        if ($resultContent -match "Requests/sec:\s+(\d+\.\d+)") {
            $parsedResults["RPS"] = $Matches[1]
        }
        
        if ($resultContent -match "Latency\s+(\d+\.\d+\w+)") {
            $parsedResults["Latency"] = $Matches[1]
        }
        
        if ($resultContent -match "Transfer/sec:\s+(\d+\.\d+\w+)") {
            $parsedResults["TransferRate"] = $Matches[1]
        }
    }
    
    "Siege" {
        if ($resultContent -match "Transaction rate:\s+(\d+\.\d+)") {
            $parsedResults["RPS"] = $Matches[1]
        }
        
        if ($resultContent -match "Response time:\s+(\d+\.\d+)") {
            $parsedResults["ResponseTime"] = $Matches[1]
        }
        
        if ($resultContent -match "Availability:\s+(\d+\.\d+)") {
            $parsedResults["Availability"] = $Matches[1]
        }
    }
}

# 显示解析结果
Write-Log "测试结果摘要:"
foreach ($key in $parsedResults.Keys) {
    Write-Log "  $key: $($parsedResults[$key])"
}

# 生成HTML报告
$reportFile = "$OutputDir\report_$timestamp.html"
$reportContent = @"
<!DOCTYPE html>
<html>
<head>
    <title>Nginx性能测试报告</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { color: #333366; }
        .section { margin: 20px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; }
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .highlight { font-weight: bold; color: #009900; }
        pre { background-color: #f5f5f5; padding: 10px; border-radius: 5px; overflow-x: auto; }
    </style>
</head>
<body>
    <h1>Nginx性能测试报告</h1>
    
    <div class="section">
        <h2>测试信息</h2>
        <table>
            <tr><th>参数</th><th>值</th></tr>
            <tr><td>测试时间</td><td>$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</td></tr>
            <tr><td>目标URL</td><td>$TargetUrl</td></tr>
            <tr><td>并发数</td><td>$Concurrency</td></tr>
            <tr><td>请求数</td><td>$Requests</td></tr>
            <tr><td>测试时长</td><td>$Duration 秒</td></tr>
            <tr><td>测试工具</td><td>$Tool</td></tr>
        </table>
    </div>
    
    <div class="section">
        <h2>系统信息</h2>
        <table>
            <tr><th>组件</th><th>详情</th></tr>
            <tr><td>CPU</td><td>$($systemInfo.CPU.Name) ($($systemInfo.CPU.NumberOfCores)核/$($systemInfo.CPU.NumberOfLogicalProcessors)线程)</td></tr>
            <tr><td>内存</td><td>总计 $($systemInfo.Memory.TotalMemoryGB) GB, 可用 $($systemInfo.Memory.FreeMemoryGB) GB</td></tr>
"@

foreach ($adapter in $systemInfo.Network) {
    $reportContent += @"
            <tr><td>网络适配器</td><td>$($adapter.Name) - $($adapter.InterfaceDescription) ($($adapter.LinkSpeed))</td></tr>
"@
}

$reportContent += @"
        </table>
    </div>
    
    <div class="section">
        <h2>测试结果摘要</h2>
        <table>
            <tr><th>指标</th><th>值</th></tr>
"@

foreach ($key in $parsedResults.Keys) {
    $reportContent += @"
            <tr><td>$key</td><td class="highlight">$($parsedResults[$key])</td></tr>
"@
}

$reportContent += @"
        </table>
    </div>
    
    <div class="section">
        <h2>详细测试结果</h2>
        <pre>$resultContent</pre>
    </div>
    
    <div class="section">
        <h2>结论与建议</h2>
"@

# 根据测试结果生成建议
$recommendations = @()

if ($Tool -eq "ApacheBench") {
    if ([double]$parsedResults["RPS"] -lt 1000) {
        $recommendations += "当前每秒请求数($($parsedResults["RPS"]))较低，建议检查Nginx worker_processes和worker_connections配置"
    }
    
    if ([double]$parsedResults["LatencyMs"] -gt 100) {
        $recommendations += "请求延迟($($parsedResults["LatencyMs"])ms)较高，建议优化后端应用响应时间或启用Nginx缓存"
    }
    
    if ([int]$parsedResults["FailedRequests"] -gt 0) {
        $recommendations += "存在$($parsedResults["FailedRequests"])个失败请求，建议检查服务器错误日志并增加连接超时设置"
    }
} elseif ($Tool -eq "Wrk") {
    if ([double]$parsedResults["RPS"] -lt 1000) {
        $recommendations += "当前每秒请求数($($parsedResults["RPS"]))较低，建议检查Nginx worker_processes和worker_connections配置"
    }
} elseif ($Tool -eq "Siege") {
    if ([double]$parsedResults["Availability"] -lt 99.9) {
        $recommendations += "可用性($($parsedResults["Availability"])%)不够理想，建议检查服务器资源使用情况和错误日志"
    }
    
    if ([double]$parsedResults["ResponseTime"] -gt 0.5) {
        $recommendations += "响应时间($($parsedResults["ResponseTime"])秒)较高，建议优化后端应用或启用Nginx缓存"
    }
}

if ($recommendations.Count -eq 0) {
    $reportContent += @"
        <p>测试结果表明当前Nginx配置性能良好，无需进一步优化。</p>
"@
} else {
    $reportContent += @"
        <p>根据测试结果，提出以下优化建议：</p>
        <ul>
"@

    foreach ($rec in $recommendations) {
        $reportContent += @"
            <li>$rec</li>
"@
    }

    $reportContent += @"
        </ul>
"@
}

$reportContent += @"
    </div>
    
    <div class="section">
        <h2>签名</h2>
        <p>测试执行人: $env:USERNAME</p>
        <p>报告生成时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</p>
    </div>
</body>
</html>
"@

$reportContent | Out-File -FilePath $reportFile -Encoding utf8
Write-Log "测试报告已生成: $reportFile"

# 打开测试报告
Start-Process $reportFile

Write-Log "性能测试完成"
```

## 8. 安全加固

安全是企业级Nginx部署的重要方面，需要采取多层次的安全措施。

### 8.1 安全配置最佳实践

以下是Nginx安全配置的最佳实践：

```nginx:c:\project\kphub\conf\security.conf
# Nginx安全配置最佳实践

# 隐藏Nginx版本信息
server_tokens off;

# 添加安全相关的HTTP头
add_header X-Content-Type-Options nosniff;
add_header X-Frame-Options SAMEORIGIN;
add_header X-XSS-Protection "1; mode=block";
add_header Content-Security-Policy "default-src 'self'; script-src 'self' 'unsafe-inline' 'unsafe-eval'; img-src 'self' data:; style-src 'self' 'unsafe-inline'; font-src 'self'; frame-src 'self'; object-src 'none'";
add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;
add_header Referrer-Policy strict-origin-when-cross-origin;
add_header Permissions-Policy "camera=(), microphone=(), geolocation=(), payment=()";

# 限制可用的HTTP方法
if ($request_method !~ ^(GET|POST|HEAD)$) {
    return 405;
}

# 防止恶意爬虫和机器人
if ($http_user_agent ~* (Baiduspider|Yandex|msnbot|scrapbot)) {
    return 403;
}

# 限制缓冲区溢出攻击
client_body_buffer_size 128k;
client_header_buffer_size 1k;
client_max_body_size 10m;
large_client_header_buffers 2 1k;

# 超时设置
client_body_timeout 10;
client_header_timeout 10;
keepalive_timeout 65;
send_timeout 10;

# SSL/TLS安全设置
ssl_protocols TLSv1.2 TLSv1.3;
ssl_prefer_server_ciphers on;
ssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384;
ssl_session_cache shared:SSL:10m;
ssl_session_timeout 10m;
ssl_session_tickets off;
ssl_stapling on;
ssl_stapling_verify on;
resolver 8.8.8.8 8.8.4.4 valid=300s;
resolver_timeout 5s;

# 防止点击劫持
add_header X-Frame-Options SAMEORIGIN;

# 防止MIME类型嗅探攻击
add_header X-Content-Type-Options nosniff;

# 启用XSS过滤
add_header X-XSS-Protection "1; mode=block";

# 禁止访问隐藏文件
location ~ /\. {
    deny all;
    access_log off;
    log_not_found off;
}

# 限制特定IP访问敏感路径
location ~ ^/(admin|login|manage) {
    # 允许内部网络访问
    allow 192.168.1.0/24;
    allow 127.0.0.1;
    # 拒绝其他所有访问
    deny all;
}

# 防止SQL注入和XSS攻击的基本规则
location ~ .*\.(php|jsp|cgi|asp|aspx)$ {
    if ($query_string ~* "(<|%3C).*script.*(>|%3E)") {
        return 403;
    }
    if ($query_string ~* "GLOBALS(=|\[|\%[0-9A-Z]{0,2})") {
        return 403;
    }
    if ($query_string ~* "_REQUEST(=|\[|\%[0-9A-Z]{0,2})") {
        return 403;
    }
    if ($query_string ~* "proc/self/environ") {
        return 403;
    }
    if ($query_string ~* "mosConfig_[a-zA-Z_]{1,21}(=|\%3D)") {
        return 403;
    }
    if ($query_string ~* "base64_encode\(.*\)") {
        return 403;
    }
    if ($query_string ~* "(%0|\\x)A") {
        return 403;
    }
    if ($query_string ~* "(%0|\\x)D") {
        return 403;
    }
    if ($query_string ~* "(%27|\'|\\x22).*(%3E|>|\\x3E)") {
        return 403;
    }
}
```

### 8.2 安全扫描与加固脚本

定期进行安全扫描和加固是保持Nginx安全的关键。

```powershell:c:\project\kphub\scripts\security_scan.ps1
# Nginx安全扫描与加固脚本
param(
    [Parameter(Mandatory=$false)]
    [string[]]$Nodes = @("nginx-node1", "nginx-node2", "nginx-node3"),
    
    [Parameter(Mandatory=$false)]
    [switch]$ApplyFixes = $false,
    
    [Parameter(Mandatory=$false)]
    [string]$OutputDir = "c:\project\kphub\logs\security"
)

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$logFile = "$OutputDir\scan_$timestamp.log"

# 确保输出目录存在
if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

function Write-Log {
    param([string]$Message)
    
    $logEntry = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - $Message"
    $logEntry | Out-File -Append -FilePath $logFile
    Write-Host $logEntry
}

Write-Log "开始Nginx安全扫描"
Write-Log "目标节点: $($Nodes -join ', ')"
Write-Log "应用修复: $ApplyFixes"

# 安全检查项目
$securityChecks = @(
    @{
        Name = "隐藏Nginx版本信息"
        Description = "防止暴露Nginx版本信息，减少针对特定版本漏洞的攻击"
        Check = {
            param($ConfigContent)
            return $ConfigContent -match "server_tokens\s+off"
        }
        Fix = {
            param($ConfigContent)
            if ($ConfigContent -match "server_tokens\s+on") {
                return $ConfigContent -replace "server_tokens\s+on", "server_tokens off"
            } elseif (-not ($ConfigContent -match "server_tokens")) {
                return $ConfigContent + "`nserver_tokens off;"
            } else {
                return $ConfigContent
            }
        }
        ConfigFile = "nginx.conf"
        Severity = "中"
    },
    @{
        Name = "SSL/TLS安全配置"
        Description = "确保使用安全的SSL/TLS协议和密码套件"
        Check = {
            param($ConfigContent)
            $sslProtocols
让我继续完成安全扫描与加固脚本的内容：

```powershell:c:\project\kphub\scripts\security_scan.ps1
        Name = "SSL/TLS安全配置"
        Description = "确保使用安全的SSL/TLS协议和密码套件"
        Check = {
            param($ConfigContent)
            $sslProtocols = $ConfigContent -match "ssl_protocols\s+TLSv1.2\s+TLSv1.3"
            $sslCiphers = $ConfigContent -match "ssl_ciphers\s+.*ECDHE.*AES.*GCM"
            return $sslProtocols -and $sslCiphers
        }
        Fix = {
            param($ConfigContent)
            $newConfig = $ConfigContent
            
            if (-not ($newConfig -match "ssl_protocols")) {
                $newConfig += "`nssl_protocols TLSv1.2 TLSv1.3;"
            } elseif (-not ($newConfig -match "ssl_protocols\s+TLSv1.2\s+TLSv1.3")) {
                $newConfig = $newConfig -replace "ssl_protocols\s+[^;]+", "ssl_protocols TLSv1.2 TLSv1.3"
            }
            
            if (-not ($newConfig -match "ssl_ciphers")) {
                $newConfig += "`nssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384;"
            } elseif (-not ($newConfig -match "ssl_ciphers\s+.*ECDHE.*AES.*GCM")) {
                $newConfig = $newConfig -replace "ssl_ciphers\s+[^;]+", "ssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384"
            }
            
            return $newConfig
        }
        ConfigFile = "nginx.conf"
        Severity = "高"
    },
    @{
        Name = "安全HTTP头"
        Description = "添加安全相关的HTTP头，如X-XSS-Protection, X-Content-Type-Options等"
        Check = {
            param($ConfigContent)
            $xssProtection = $ConfigContent -match "X-XSS-Protection"
            $contentTypeOptions = $ConfigContent -match "X-Content-Type-Options"
            $frameOptions = $ConfigContent -match "X-Frame-Options"
            return $xssProtection -and $contentTypeOptions -and $frameOptions
        }
        Fix = {
            param($ConfigContent)
            $securityHeaders = @"

# 安全HTTP头
add_header X-Content-Type-Options nosniff;
add_header X-Frame-Options SAMEORIGIN;
add_header X-XSS-Protection "1; mode=block";
add_header Content-Security-Policy "default-src 'self'; script-src 'self' 'unsafe-inline' 'unsafe-eval'; img-src 'self' data:; style-src 'self' 'unsafe-inline'; font-src 'self'; frame-src 'self'; object-src 'none'";
add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;
add_header Referrer-Policy strict-origin-when-cross-origin;
"@
            
            if (-not ($ConfigContent -match "X-XSS-Protection") -and 
                -not ($ConfigContent -match "X-Content-Type-Options") -and 
                -not ($ConfigContent -match "X-Frame-Options")) {
                # 在http块中添加安全头
                if ($ConfigContent -match "http\s*\{") {
                    $ConfigContent = $ConfigContent -replace "http\s*\{", "http {$securityHeaders"
                } else {
                    $ConfigContent += $securityHeaders
                }
            }
            
            return $ConfigContent
        }
        ConfigFile = "nginx.conf"
        Severity = "中"
    },
    @{
        Name = "限制请求方法"
        Description = "限制允许的HTTP请求方法，只允许必要的方法"
        Check = {
            param($ConfigContent)
            return $ConfigContent -match "if\s+\(\$request_method\s+!~\s+\^"
        }
        Fix = {
            param($ConfigContent)
            $methodLimitation = @"

# 限制HTTP请求方法
if (`$request_method !~ ^(GET|POST|HEAD)$) {
    return 405;
}
"@
            
            if (-not ($ConfigContent -match "if\s+\(\$request_method")) {
                # 在server块中添加方法限制
                if ($ConfigContent -match "server\s*\{") {
                    $ConfigContent = $ConfigContent -replace "server\s*\{", "server {$methodLimitation"
                } else {
                    $ConfigContent += $methodLimitation
                }
            }
            
            return $ConfigContent
        }
        ConfigFile = "nginx.conf"
        Severity = "低"
    },
    @{
        Name = "防止目录遍历"
        Description = "禁止访问隐藏文件和目录，防止目录遍历攻击"
        Check = {
            param($ConfigContent)
            return $ConfigContent -match "location\s+~\s+/\\\.\s*\{"
        }
        Fix = {
            param($ConfigContent)
            $hiddenFilesBlock = @"

# 禁止访问隐藏文件
location ~ /\\. {
    deny all;
    access_log off;
    log_not_found off;
}
"@
            
            if (-not ($ConfigContent -match "location\s+~\s+/\\\.")) {
                # 在server块中添加隐藏文件保护
                if ($ConfigContent -match "server\s*\{") {
                    $ConfigContent = $ConfigContent -replace "server\s*\{", "server {$hiddenFilesBlock"
                } else {
                    $ConfigContent += $hiddenFilesBlock
                }
            }
            
            return $ConfigContent
        }
        ConfigFile = "nginx.conf"
        Severity = "中"
    },
    @{
        Name = "缓冲区大小限制"
        Description = "限制客户端请求缓冲区大小，防止缓冲区溢出攻击"
        Check = {
            param($ConfigContent)
            return $ConfigContent -match "client_body_buffer_size" -and 
                   $ConfigContent -match "client_header_buffer_size" -and
                   $ConfigContent -match "client_max_body_size"
        }
        Fix = {
            param($ConfigContent)
            $bufferSettings = @"

# 缓冲区大小限制
client_body_buffer_size 128k;
client_header_buffer_size 1k;
client_max_body_size 10m;
large_client_header_buffers 2 1k;
"@
            
            if (-not ($ConfigContent -match "client_body_buffer_size") -or
                -not ($ConfigContent -match "client_header_buffer_size") -or
                -not ($ConfigContent -match "client_max_body_size")) {
                # 在http块中添加缓冲区设置
                if ($ConfigContent -match "http\s*\{") {
                    $ConfigContent = $ConfigContent -replace "http\s*\{", "http {$bufferSettings"
                } else {
                    $ConfigContent += $bufferSettings
                }
            }
            
            return $ConfigContent
        }
        ConfigFile = "nginx.conf"
        Severity = "中"
    },
    @{
        Name = "超时设置"
        Description = "设置合理的超时值，防止慢速攻击"
        Check = {
            param($ConfigContent)
            return $ConfigContent -match "client_body_timeout" -and 
                   $ConfigContent -match "client_header_timeout"
        }
        Fix = {
            param($ConfigContent)
            $timeoutSettings = @"

# 超时设置
client_body_timeout 10;
client_header_timeout 10;
keepalive_timeout 65;
send_timeout 10;
"@
            
            if (-not ($ConfigContent -match "client_body_timeout") -or
                -not ($ConfigContent -match "client_header_timeout")) {
                # 在http块中添加超时设置
                if ($ConfigContent -match "http\s*\{") {
                    $ConfigContent = $ConfigContent -replace "http\s*\{", "http {$timeoutSettings"
                } else {
                    $ConfigContent += $timeoutSettings
                }
            }
            
            return $ConfigContent
        }
        ConfigFile = "nginx.conf"
        Severity = "低"
    },
    @{
        Name = "防止恶意爬虫"
        Description = "阻止已知的恶意爬虫和机器人"
        Check = {
            param($ConfigContent)
            return $ConfigContent -match "if\s+\(\$http_user_agent\s+~\*\s+\("
        }
        Fix = {
            param($ConfigContent)
            $botProtection = @"

# 防止恶意爬虫和机器人
if (`$http_user_agent ~* (Baiduspider|Yandex|msnbot|scrapbot)) {
    return 403;
}
"@
            
            if (-not ($ConfigContent -match "if\s+\(\$http_user_agent")) {
                # 在server块中添加爬虫保护
                if ($ConfigContent -match "server\s*\{") {
                    $ConfigContent = $ConfigContent -replace "server\s*\{", "server {$botProtection"
                } else {
                    $ConfigContent += $botProtection
                }
            }
            
            return $ConfigContent
        }
        ConfigFile = "nginx.conf"
        Severity = "低"
    }
)

# 对每个节点执行安全扫描
foreach ($node in $Nodes) {
    Write-Log "开始扫描节点: $node"
    
    try {
        # 创建远程会话
        $session = New-PSSession -ComputerName $node -ErrorAction Stop
        
        # 获取Nginx配置文件
        $configFiles = Invoke-Command -Session $session -ScriptBlock {
            $nginxConfDir = "C:\nginx\conf"
            $files = Get-ChildItem -Path $nginxConfDir -Recurse -Filter "*.conf" | Select-Object FullName
            
            $result = @{}
            foreach ($file in $files) {
                $content = Get-Content -Path $file.FullName -Raw
                $result[$file.FullName] = $content
            }
            
            return $result
        }
        
        Write-Log "找到 $($configFiles.Count) 个配置文件"
        
        # 执行安全检查
        $issues = @()
        
        foreach ($check in $securityChecks) {
            Write-Log "执行检查: $($check.Name)"
            
            $mainConfigFile = $configFiles.Keys | Where-Object { $_ -match "\\nginx\.conf$" } | Select-Object -First 1
            
            if (-not $mainConfigFile) {
                Write-Log "警告: 未找到主配置文件 nginx.conf"
                continue
            }
            
            $configContent = $configFiles[$mainConfigFile]
            $checkResult = & $check.Check $configContent
            
            if (-not $checkResult) {
                Write-Log "发现问题: $($check.Name) - $($check.Description)"
                
                $issues += @{
                    Node = $node
                    Check = $check.Name
                    Description = $check.Description
                    Severity = $check.Severity
                    ConfigFile = $mainConfigFile
                    FixAvailable = $true
                }
                
                # 如果需要应用修复
                if ($ApplyFixes) {
                    Write-Log "应用修复: $($check.Name)"
                    
                    $fixedContent = & $check.Fix $configContent
                    
                    # 备份原始文件
                    $backupFile = "$mainConfigFile.bak.$timestamp"
                    Invoke-Command -Session $session -ScriptBlock {
                        Copy-Item -Path $using:mainConfigFile -Destination $using:backupFile -Force
                    }
                    
                    # 写入修复后的内容
                    $fixedContent | Invoke-Command -Session $session -ScriptBlock {
                        param($Content, $FilePath)
                        $Content | Out-File -FilePath $FilePath -Encoding utf8 -Force
                    } -ArgumentList $fixedContent, $mainConfigFile
                    
                    Write-Log "已应用修复并备份原始文件到 $backupFile"
                    
                    # 验证Nginx配置
                    $configTest = Invoke-Command -Session $session -ScriptBlock {
                        $result = & "C:\nginx\nginx.exe" -t 2>&1
                        $exitCode = $LASTEXITCODE
                        
                        return @{
                            Output = $result
                            ExitCode = $exitCode
                        }
                    }
                    
                    if ($configTest.ExitCode -eq 0) {
                        Write-Log "配置验证成功"
                        
                        # 重新加载Nginx
                        $reloadResult = Invoke-Command -Session $session -ScriptBlock {
                            $result = & "C:\nginx\nginx.exe" -s reload 2>&1
                            $exitCode = $LASTEXITCODE
                            
                            return @{
                                Output = $result
                                ExitCode = $exitCode
                            }
                        }
                        
                        if ($reloadResult.ExitCode -eq 0) {
                            Write-Log "Nginx重新加载成功"
                        } else {
                            Write-Log "Nginx重新加载失败: $($reloadResult.Output)"
                            
                            # 恢复备份
                            Invoke-Command -Session $session -ScriptBlock {
                                Copy-Item -Path $using:backupFile -Destination $using:mainConfigFile -Force
                            }
                            
                            Write-Log "已恢复原始配置"
                        }
                    } else {
                        Write-Log "配置验证失败: $($configTest.Output)"
                        
                        # 恢复备份
                        Invoke-Command -Session $session -ScriptBlock {
                            Copy-Item -Path $using:backupFile -Destination $using:mainConfigFile -Force
                        }
                        
                        Write-Log "已恢复原始配置"
                    }
                }
            } else {
                Write-Log "检查通过: $($check.Name)"
            }
        }
        
        # 关闭会话
        Remove-PSSession $session
        
        # 生成节点报告
        if ($issues.Count -gt 0) {
            Write-Log "节点 $node 存在 $($issues.Count) 个安全问题"
            
            $severityCounts = @{
                "高" = ($issues | Where-Object { $_.Severity -eq "高" } | Measure-Object).Count
                "中" = ($issues | Where-Object { $_.Severity -eq "中" } | Measure-Object).Count
                "低" = ($issues | Where-Object { $_.Severity -eq "低" } | Measure-Object).Count
            }
            
            Write-Log "安全问题严重程度分布: 高($($severityCounts.高)), 中($($severityCounts.中)), 低($($severityCounts.低))"
        } else {
            Write-Log "节点 $node 未发现安全问题"
        }
        
    } catch {
        Write-Log "扫描节点 $node 时出错: $_"
    }
}

# 生成HTML报告
$reportFile = "$OutputDir\security_report_$timestamp.html"
$reportContent = @"
<!DOCTYPE html>
<html>
<head>
    <title>Nginx安全扫描报告</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { color: #333366; }
        .section { margin: 20px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; }
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .high { background-color: #ffdddd; }
        .medium { background-color: #ffffcc; }
        .low { background-color: #e6f3ff; }
        .passed { background-color: #ddffdd; }
    </style>
</head>
<body>
    <h1>Nginx安全扫描报告</h1>
    
    <div class="section">
        <h2>扫描信息</h2>
        <p><strong>扫描时间:</strong> $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</p>
        <p><strong>扫描节点:</strong> $($Nodes -join ', ')</p>
        <p><strong>应用修复:</strong> $ApplyFixes</p>
    </div>
    
    <div class="section">
        <h2>扫描结果摘要</h2>
        <table>
            <tr>
                <th>节点</th>
                <th>高风险问题</th>
                <th>中风险问题</th>
                <th>低风险问题</th>
                <th>总计</th>
            </tr>
"@

foreach ($node in $Nodes) {
    $nodeIssues = $issues | Where-Object { $_.Node -eq $node }
    $highCount = ($nodeIssues | Where-Object { $_.Severity -eq "高" } | Measure-Object).Count
    $mediumCount = ($nodeIssues | Where-Object { $_.Severity -eq "中" } | Measure-Object).Count
    $lowCount = ($nodeIssues | Where-Object { $_.Severity -eq "低" } | Measure-Object).Count
    $totalCount = $nodeIssues.Count
    
    $reportContent += @"
            <tr>
                <td>$node</td>
                <td class="high">$highCount</td>
                <td class="medium">$mediumCount</td>
                <td class="low">$lowCount</td>
                <td>$totalCount</td>
            </tr>
"@
}

$reportContent += @"
        </table>
    </div>
    
    <div class="section">
        <h2>详细问题列表</h2>
        <table>
            <tr>
                <th>节点</th>
                <th>问题</th>
                <th>描述</th>
                <th>严重程度</th>
                <th>配置文件</th>
                <th>状态</th>
            </tr>
"@

foreach ($issue in $issues) {
    $severityClass = switch ($issue.Severity) {
        "高" { "high" }
        "中" { "medium" }
        "低" { "low" }
    }
    
    $status = if ($ApplyFixes) { "已修复" } else { "未修复" }
    
    $reportContent += @"
            <tr class="$severityClass">
                <td>$($issue.Node)</td>
                <td>$($issue.Check)</td>
                <td>$($issue.Description)</td>
                <td>$($issue.Severity)</td>
                <td>$($issue.ConfigFile)</td>
                <td>$status</td>
            </tr>
"@
}

if ($issues.Count -eq 0) {
    $reportContent += @"
            <tr class="passed">
                <td colspan="6" style="text-align: center;">未发现安全问题</td>
            </tr>
"@
}

$reportContent += @"
        </table>
    </div>
    
    <div class="section">
        <h2>安全建议</h2>
        <ul>
            <li>定期更新Nginx到最新版本，以修复已知漏洞</li>
            <li>使用HTTPS而非HTTP，并配置强加密套件</li>
            <li>实施IP白名单，限制对管理界面的访问</li>
            <li>配置适当的访问日志和错误日志，便于安全审计</li>
            <li>定期进行安全扫描和渗透测试</li>
            <li>实施Web应用防火墙(WAF)，提供额外的安全保护</li>
        </ul>
    </div>
    
    <div class="section">
        <h2>签名</h2>
        <p>扫描执行人: $env:USERNAME</p>
        <p>报告生成时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</p>
    </div>
</body>
</html>
"@

$reportContent | Out-File -FilePath $reportFile -Encoding utf8
Write-Log "安全报告已生成: $reportFile"

# 打开安全报告
Start-Process $reportFile

Write-Log "安全扫描完成"
```

### 8.3 SSL/TLS最佳实践

以下是SSL/TLS配置的最佳实践，确保安全的HTTPS通信：

```nginx:c:\project\kphub\conf\ssl.conf
# SSL/TLS最佳实践配置

# 启用SSL/TLS
ssl_certificate     /path/to/certificate.crt;
ssl_certificate_key /path/to/private.key;

# 使用安全的协议版本
ssl_protocols TLSv1.2 TLSv1.3;

# 优先使用服务器密码套件
ssl_prefer_server_ciphers on;

# 使用强密码套件
ssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384;

# 启用会话缓存
ssl_session_cache shared:SSL:10m;
ssl_session_timeout 10m;

# 禁用会话票证
ssl_session_tickets off;

# 启用OCSP Stapling
ssl_stapling on;
ssl_stapling_verify on;
resolver 8.8.8.8 8.8.4.4 valid=300s;
resolver_timeout 5s;

# 配置DH参数
ssl_dhparam /path/to/dhparam.pem;

# 启用HSTS
add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;

# 自动重定向HTTP到HTTPS
server {
    listen 80;
    server_name example.com www.example.com;
    return 301 https://$host$request_uri;
}

server {
    listen 443 ssl http2;
    server_name example.com www.example.com;
    
    # 包含SSL配置
    include ssl.conf;
    
    # 其他服务器配置
    # ...
}
```

## 9. 监控与告警

有效的监控和及时的告警对于保持Nginx服务的高可用性至关重要。

### 9.1 监控配置

以下是Nginx状态监控的配置：

```nginx:c:\project\kphub\conf\status.conf
# Nginx状态监控配置

# 启用Nginx状态页
server {
    listen 8080;
    server_name localhost;
    
    # 只允许内部网络访问
    allow 127.0.0.1;
    allow 192.168.1.0/24;
    deny all;
    
    access_log off;
    
    location /nginx_status {
        stub_status on;
    }
    
    location /health {
        return 200 "ok\n";
    }
}
```

### 9.2 监控脚本

以下是一个全面的Nginx监控脚本，可以收集关键指标并发送告警：

```powershell:c:\project\kphub\scripts\monitor.ps1
# Nginx监控脚本
param(
    [Parameter(Mandatory=$false)]
    [string[]]$Nodes = @("nginx-node1", "nginx-node2", "nginx-node3"),
    
    [Parameter(Mandatory=$false)]
    [int]$Interval = 60,
    
    [Parameter(Mandatory=$false)]
    [string]$OutputDir = "c:\project\kphub\logs\monitoring",
    
    [Parameter(Mandatory=$false)]
    [switch]$EnableAlerts = $true
)

$timestamp = Get-Date -Format "yyyyMMdd"
$logFile = "$OutputDir\monitor_$timestamp.log"

# 确保输出目录存在
if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

function Write-Log {
    param([string]$Message)
    
    $logEntry = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - $Message"
    $logEntry | Out-File -Append -FilePath $logFile
    Write-Host $logEntry
}

function Send-Alert {
    param(
        [string]$Subject,
        [string]$Body,
        [ValidateSet("Info", "Warning", "Critical")]
        [string]$Severity = "Warning"
    )
    
    if (-not $EnableAlerts) {
        Write-Log "告警已禁用，跳过发送: $Subject"
        return
    }
    
    Write-Log "发送告警: [$Severity] $Subject"
    
    $emailParams = @{
        SmtpServer = "smtp.company.com"
        Port = 587
        UseSsl = $true
        Credential = (Get-Credential -Message "输入SMTP凭据" -UserName "alerts@company.com")
        From = "alerts@company.com"
        To = "admin@company.com"
        Subject = "[$Severity] $Subject"
        Body = $Body
    }
    
    try {
        Send-MailMessage @emailParams
        Write-Log "告警发送成功"
    } catch {
        Write-Log "告警发送失败: $_"
    }
}

Write-Log "开始Nginx监控"
Write-Log "监控节点: $($Nodes -join ', ')"
Write-Log "监控间隔: $Interval 秒"
Write-Log "启用告警: $EnableAlerts"

# 定义阈值
$thresholds = @{
    ActiveConnections = 5000
    RequestsPerSecond = 1000
    CPUUsage = 80
    MemoryUsage = 80
    DiskUsage = 90
}

Write-Log "监控阈值设置:"
Write-Log "  活动连接数: $($thresholds.ActiveConnections)"
Write-Log "  每秒请求数: $($thresholds.RequestsPerSecond)"
Write-Log "  CPU使用率: $($thresholds.CPUUsage)%"
Write-Log "  内存使用率: $($thresholds.MemoryUsage)%"
Write-Log "  磁盘使用率: $($thresholds.DiskUsage)%"

# 创建CSV文件记录指标
$metricsFile = "$OutputDir\metrics_$timestamp.csv"
"Timestamp,Node,ActiveConnections,Accepts,Handled,Requests,RequestsPerSecond,CPUUsage,MemoryUsage,DiskUsage" | Out-File -FilePath $metricsFile -Encoding utf8

# 记录上次请求数，用于计算每秒请求数
$lastRequests = @{}
$lastTimestamps = @{}

# 主监控循环
try {
    while ($true) {
        $currentTime = Get-Date
        
        foreach ($node in $Nodes) {
            Write-Log "监控节点: $node"
            
            try {
                # 创建远程会话
                $session = New-PSSession -ComputerName $node -ErrorAction Stop
                
                # 检查Nginx服务状态
                $nginxStatus = Invoke-Command -Session $session -ScriptBlock {
                    $service = Get-Service -Name nginx -ErrorAction SilentlyContinue
                    return $service.Status
                }
                
                if ($nginxStatus -ne "Running") {
                    Write-Log "警告: Nginx服务未运行"
                    
                    Send-Alert -Subject "Nginx服务未运行 - $node" -Body "Nginx服务在节点 $node 上未运行，请检查服务状态。`n`n时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -Severity "Critical"
                    
                    # 跳过此节点的其他检查
                    continue
                }
                
                # 获取Nginx状
让我继续完成监控脚本的内容：

```powershell:c:\project\kphub\scripts\monitor.ps1
                # 获取Nginx状态信息
                $nginxMetrics = Invoke-Command -Session $session -ScriptBlock {
                    try {
                        $statusUrl = "http://localhost:8080/nginx_status"
                        $response = Invoke-WebRequest -Uri $statusUrl -UseBasicParsing -TimeoutSec 5
                        
                        if ($response.StatusCode -eq 200) {
                            $content = $response.Content
                            
                            # 解析状态页内容
                            $activeConnections = if ($content -match "Active connections:\s+(\d+)") { $Matches[1] } else { 0 }
                            
                            $serverMetrics = if ($content -match "(\d+)\s+(\d+)\s+(\d+)") { 
                                @{
                                    Accepts = $Matches[1]
                                    Handled = $Matches[2]
                                    Requests = $Matches[3]
                                }
                            } else { 
                                @{
                                    Accepts = 0
                                    Handled = 0
                                    Requests = 0
                                }
                            }
                            
                            return @{
                                ActiveConnections = $activeConnections
                                Accepts = $serverMetrics.Accepts
                                Handled = $serverMetrics.Handled
                                Requests = $serverMetrics.Requests
                                Success = $true
                            }
                        } else {
                            return @{
                                Success = $false
                                Error = "状态页返回错误代码: $($response.StatusCode)"
                            }
                        }
                    } catch {
                        return @{
                            Success = $false
                            Error = "获取状态页失败: $_"
                        }
                    }
                }
                
                # 获取系统资源使用情况
                $systemMetrics = Invoke-Command -Session $session -ScriptBlock {
                    # CPU使用率
                    $cpuUsage = (Get-Counter '\Processor(_Total)\% Processor Time').CounterSamples.CookedValue
                    
                    # 内存使用率
                    $os = Get-CimInstance Win32_OperatingSystem
                    $memoryUsage = [math]::Round(100 - ($os.FreePhysicalMemory / $os.TotalVisibleMemorySize * 100), 2)
                    
                    # 磁盘使用率
                    $disk = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'"
                    $diskUsage = [math]::Round(100 - ($disk.FreeSpace / $disk.Size * 100), 2)
                    
                    return @{
                        CPUUsage = $cpuUsage
                        MemoryUsage = $memoryUsage
                        DiskUsage = $diskUsage
                    }
                }
                
                # 关闭会话
                Remove-PSSession $session
                
                # 处理指标
                if ($nginxMetrics.Success) {
                    # 计算每秒请求数
                    $requestsPerSecond = 0
                    
                    if ($lastRequests.ContainsKey($node) -and $lastTimestamps.ContainsKey($node)) {
                        $timeDiff = ($currentTime - $lastTimestamps[$node]).TotalSeconds
                        $requestDiff = [int]$nginxMetrics.Requests - [int]$lastRequests[$node]
                        
                        if ($timeDiff -gt 0) {
                            $requestsPerSecond = [math]::Round($requestDiff / $timeDiff, 2)
                        }
                    }
                    
                    # 更新上次请求数和时间戳
                    $lastRequests[$node] = [int]$nginxMetrics.Requests
                    $lastTimestamps[$node] = $currentTime
                    
                    # 记录指标到CSV
                    $metricsLine = "$($currentTime.ToString('yyyy-MM-dd HH:mm:ss')),$node,$($nginxMetrics.ActiveConnections),$($nginxMetrics.Accepts),$($nginxMetrics.Handled),$($nginxMetrics.Requests),$requestsPerSecond,$($systemMetrics.CPUUsage),$($systemMetrics.MemoryUsage),$($systemMetrics.DiskUsage)"
                    $metricsLine | Out-File -Append -FilePath $metricsFile -Encoding utf8
                    
                    Write-Log "指标: 活动连接=$($nginxMetrics.ActiveConnections), 请求/秒=$requestsPerSecond, CPU=$($systemMetrics.CPUUsage)%, 内存=$($systemMetrics.MemoryUsage)%, 磁盘=$($systemMetrics.DiskUsage)%"
                    
                    # 检查阈值并发送告警
                    if ([int]$nginxMetrics.ActiveConnections -gt $thresholds.ActiveConnections) {
                        Send-Alert -Subject "Nginx活动连接数过高 - $node" -Body "Nginx在节点 $node 上的活动连接数($($nginxMetrics.ActiveConnections))超过阈值($($thresholds.ActiveConnections))。`n`n时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -Severity "Warning"
                    }
                    
                    if ($requestsPerSecond -gt $thresholds.RequestsPerSecond) {
                        Send-Alert -Subject "Nginx请求率过高 - $node" -Body "Nginx在节点 $node 上的每秒请求数($requestsPerSecond)超过阈值($($thresholds.RequestsPerSecond))。`n`n时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -Severity "Warning"
                    }
                    
                    if ($systemMetrics.CPUUsage -gt $thresholds.CPUUsage) {
                        Send-Alert -Subject "CPU使用率过高 - $node" -Body "节点 $node 的CPU使用率($($systemMetrics.CPUUsage)%)超过阈值($($thresholds.CPUUsage)%)。`n`n时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -Severity "Warning"
                    }
                    
                    if ($systemMetrics.MemoryUsage -gt $thresholds.MemoryUsage) {
                        Send-Alert -Subject "内存使用率过高 - $node" -Body "节点 $node 的内存使用率($($systemMetrics.MemoryUsage)%)超过阈值($($thresholds.MemoryUsage)%)。`n`n时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -Severity "Warning"
                    }
                    
                    if ($systemMetrics.DiskUsage -gt $thresholds.DiskUsage) {
                        Send-Alert -Subject "磁盘使用率过高 - $node" -Body "节点 $node 的磁盘使用率($($systemMetrics.DiskUsage)%)超过阈值($($thresholds.DiskUsage)%)。`n`n时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -Severity "Warning"
                    }
                } else {
                    Write-Log "获取Nginx状态失败: $($nginxMetrics.Error)"
                    Send-Alert -Subject "无法获取Nginx状态 - $node" -Body "无法从节点 $node 获取Nginx状态信息: $($nginxMetrics.Error)`n`n时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -Severity "Warning"
                }
            } catch {
                Write-Log "监控节点 $node 时出错: $_"
                Send-Alert -Subject "Nginx监控错误 - $node" -Body "监控节点 $node 时出错: $_`n`n时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -Severity "Warning"
            }
        }
        
        # 生成每日报告
        $currentHour = $currentTime.Hour
        $currentMinute = $currentTime.Minute
        
        if ($currentHour -eq 23 -and $currentMinute -ge 55) {
            Write-Log "生成每日监控报告..."
            
            # 创建HTML报告
            $dailyReportFile = "$OutputDir\daily_report_$timestamp.html"
            
            # 读取当天的指标数据
            $metricsData = Import-Csv -Path $metricsFile
            
            # 计算每个节点的平均值
            $nodeStats = @{}
            
            foreach ($node in $Nodes) {
                $nodeData = $metricsData | Where-Object { $_.Node -eq $node }
                
                if ($nodeData) {
                    $avgActiveConnections = ($nodeData | Measure-Object -Property ActiveConnections -Average).Average
                    $avgRequestsPerSecond = ($nodeData | Measure-Object -Property RequestsPerSecond -Average).Average
                    $avgCPUUsage = ($nodeData | Measure-Object -Property CPUUsage -Average).Average
                    $avgMemoryUsage = ($nodeData | Measure-Object -Property MemoryUsage -Average).Average
                    $avgDiskUsage = ($nodeData | Measure-Object -Property DiskUsage -Average).Average
                    $totalRequests = $nodeData[-1].Requests
                    
                    $nodeStats[$node] = @{
                        AvgActiveConnections = [math]::Round($avgActiveConnections, 2)
                        AvgRequestsPerSecond = [math]::Round($avgRequestsPerSecond, 2)
                        AvgCPUUsage = [math]::Round($avgCPUUsage, 2)
                        AvgMemoryUsage = [math]::Round($avgMemoryUsage, 2)
                        AvgDiskUsage = [math]::Round($avgDiskUsage, 2)
                        TotalRequests = $totalRequests
                    }
                }
            }
            
            # 生成HTML报告
            $reportContent = @"
<!DOCTYPE html>
<html>
<head>
    <title>Nginx每日监控报告</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { color: #333366; }
        .section { margin: 20px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; }
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .chart { width: 100%; height: 300px; }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <h1>Nginx每日监控报告</h1>
    
    <div class="section">
        <h2>报告信息</h2>
        <p><strong>报告日期:</strong> $timestamp</p>
        <p><strong>监控节点:</strong> $($Nodes -join ', ')</p>
    </div>
    
    <div class="section">
        <h2>节点性能摘要</h2>
        <table>
            <tr>
                <th>节点</th>
                <th>平均活动连接数</th>
                <th>平均请求/秒</th>
                <th>总请求数</th>
                <th>平均CPU使用率</th>
                <th>平均内存使用率</th>
                <th>平均磁盘使用率</th>
            </tr>
"@

            foreach ($node in $Nodes) {
                if ($nodeStats.ContainsKey($node)) {
                    $stats = $nodeStats[$node]
                    
                    $reportContent += @"
            <tr>
                <td>$node</td>
                <td>$($stats.AvgActiveConnections)</td>
                <td>$($stats.AvgRequestsPerSecond)</td>
                <td>$($stats.TotalRequests)</td>
                <td>$($stats.AvgCPUUsage)%</td>
                <td>$($stats.AvgMemoryUsage)%</td>
                <td>$($stats.AvgDiskUsage)%</td>
            </tr>
"@
                }
            }

            $reportContent += @"
        </table>
    </div>
    
    <div class="section">
        <h2>请求/秒趋势</h2>
        <canvas id="rpsChart" class="chart"></canvas>
    </div>
    
    <div class="section">
        <h2>资源使用趋势</h2>
        <canvas id="resourceChart" class="chart"></canvas>
    </div>
    
    <script>
        // 准备图表数据
        const timestamps = [
"@

            $timeLabels = $metricsData | Select-Object -ExpandProperty Timestamp -Unique
            $reportContent += ($timeLabels | ForEach-Object { "            '$_'" }) -join ",`n"

            $reportContent += @"
        ];
        
        // 请求/秒数据
        const rpsData = {
            labels: timestamps,
            datasets: [
"@

            $rpsDatasets = @()
            foreach ($node in $Nodes) {
                $nodeRpsData = $metricsData | Where-Object { $_.Node -eq $node } | Select-Object -ExpandProperty RequestsPerSecond
                
                $rpsDatasets += @"
                {
                    label: '$node',
                    data: [$($nodeRpsData -join ', ')],
                    borderColor: '#$((Get-Random -Minimum 100000 -Maximum 999999).ToString())',
                    fill: false
                }
"@
            }
            
            $reportContent += ($rpsDatasets -join ",`n")

            $reportContent += @"
            ]
        };
        
        // 资源使用数据
        const resourceData = {
            labels: timestamps,
            datasets: [
"@

            $resourceDatasets = @()
            foreach ($node in $Nodes) {
                $nodeCpuData = $metricsData | Where-Object { $_.Node -eq $node } | Select-Object -ExpandProperty CPUUsage
                $nodeMemData = $metricsData | Where-Object { $_.Node -eq $node } | Select-Object -ExpandProperty MemoryUsage
                
                $resourceDatasets += @"
                {
                    label: '$node - CPU',
                    data: [$($nodeCpuData -join ', ')],
                    borderColor: '#$((Get-Random -Minimum 100000 -Maximum 999999).ToString())',
                    fill: false
                },
                {
                    label: '$node - Memory',
                    data: [$($nodeMemData -join ', ')],
                    borderColor: '#$((Get-Random -Minimum 100000 -Maximum 999999).ToString())',
                    fill: false
                }
"@
            }
            
            $reportContent += ($resourceDatasets -join ",`n")

            $reportContent += @"
            ]
        };
        
        // 创建图表
        const rpsCtx = document.getElementById('rpsChart').getContext('2d');
        new Chart(rpsCtx, {
            type: 'line',
            data: rpsData,
            options: {
                responsive: true,
                scales: {
                    x: {
                        display: true,
                        title: {
                            display: true,
                            text: '时间'
                        }
                    },
                    y: {
                        display: true,
                        title: {
                            display: true,
                            text: '请求/秒'
                        }
                    }
                }
            }
        });
        
        const resourceCtx = document.getElementById('resourceChart').getContext('2d');
        new Chart(resourceCtx, {
            type: 'line',
            data: resourceData,
            options: {
                responsive: true,
                scales: {
                    x: {
                        display: true,
                        title: {
                            display: true,
                            text: '时间'
                        }
                    },
                    y: {
                        display: true,
                        title: {
                            display: true,
                            text: '使用率 (%)'
                        },
                        min: 0,
                        max: 100
                    }
                }
            }
        });
    </script>
</body>
</html>
"@

            $reportContent | Out-File -FilePath $dailyReportFile -Encoding utf8
            Write-Log "每日报告已生成: $dailyReportFile"
            
            # 发送每日报告
            Send-Alert -Subject "Nginx每日监控报告 - $timestamp" -Body "请查看附件中的Nginx每日监控报告。" -Severity "Info"
            
            # 创建新的日志和指标文件
            $timestamp = Get-Date -Format "yyyyMMdd"
            $logFile = "$OutputDir\monitor_$timestamp.log"
            $metricsFile = "$OutputDir\metrics_$timestamp.csv"
            "Timestamp,Node,ActiveConnections,Accepts,Handled,Requests,RequestsPerSecond,CPUUsage,MemoryUsage,DiskUsage" | Out-File -FilePath $metricsFile -Encoding utf8
            
            Write-Log "开始新的监控周期"
        }
        
        # 等待下一个监控间隔
        Write-Log "等待 $Interval 秒后进行下一次监控..."
        Start-Sleep -Seconds $Interval
    }
} catch {
    Write-Log "监控脚本出错: $_"
    Send-Alert -Subject "Nginx监控脚本错误" -Body "Nginx监控脚本出错: $_`n`n时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -Severity "Critical"
} finally {
    Write-Log "监控脚本结束"
}
```

### 9.3 可视化仪表板

为了更直观地监控Nginx状态，我们可以创建一个简单的Web仪表板：

```html:c:\project\kphub\dashboard\index.html
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nginx监控仪表板</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            padding-top: 20px;
            background-color: #f5f5f5;
        }
        .card {
            margin-bottom: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #f8f9fa;
            font-weight: bold;
        }
        .metric-value {
            font-size: 24px;
            font-weight: bold;
        }
        .metric-label {
            font-size: 14px;
            color: #6c757d;
        }
        .status-indicator {
            width: 15px;
            height: 15px;
            border-radius: 50%;
            display: inline-block;
            margin-right: 5px;
        }
        .status-up {
            background-color: #28a745;
        }
        .status-down {
            background-color: #dc3545;
        }
        .status-warning {
            background-color: #ffc107;
        }
        .chart-container {
            height: 300px;
        }
    </style>
</head>
<body>
    <div class="container">
        <header class="pb-3 mb-4 border-bottom">
            <div class="d-flex align-items-center">
                <h1 class="display-5">Nginx监控仪表板</h1>
                <div class="ms-auto">
                    <span id="last-update" class="text-muted"></span>
                    <button id="refresh-btn" class="btn btn-sm btn-outline-primary ms-2">刷新</button>
                </div>
            </div>
        </header>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">节点状态</div>
                    <div class="card-body">
                        <div id="nodes-status" class="row">
                            <!-- 节点状态将通过JavaScript动态填充 -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">活动连接数</div>
                    <div class="card-body">
                        <div class="chart-container">
                            <canvas id="connections-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">请求/秒</div>
                    <div class="card-body">
                        <div class="chart-container">
                            <canvas id="requests-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">CPU使用率</div>
                    <div class="card-body">
                        <div class="chart-container">
                            <canvas id="cpu-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">内存使用率</div>
                    <div class="card-body">
                        <div class="chart-container">
                            <canvas id="memory-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">磁盘使用率</div>
                    <div class="card-body">
                        <div class="chart-container">
                            <canvas id="disk-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">最近告警</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>时间</th>
                                        <th>节点</th>
                                        <th>级别</th>
                                        <th>消息</th>
                                    </tr>
                                </thead>
                                <tbody id="alerts-table">
                                    <!-- 告警数据将通过JavaScript动态填充 -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="pt-3 mt-4 text-muted border-top">
            &copy; 2023 Nginx管理平台
        </footer>
    </div>

    <script src="js/dashboard.js"></script>
</body>
</html>
```

下面是仪表板的JavaScript代码：

```javascript:c:\project\kphub\dashboard\js\dashboard.js
// Nginx监控仪表板JavaScript

// 配置
const config = {
    refreshInterval: 60000, // 刷新间隔，毫秒
    dataPoints: 20, // 图表上显示的数据点数量
    nodes: ['nginx-node1', 'nginx-node2', 'nginx-node3'], // 监控的节点
    apiEndpoint: '/api/metrics', // 指标API端点
    alertsEndpoint: '/api/alerts' // 告警API端点
};

// 图表对象
const charts = {
    connections: null,
    requests: null,
    cpu: null,
    memory: null,
    disk: null
};

// 指标数据
const metricsData = {
    timestamps: [],
    connections: {},
    requests: {},
    cpu: {},
    memory: {},
    disk: {}
};

// 初始化节点状态
function initNodeStatus() {
    const nodesContainer = document.getElementById('nodes-status');
    nodesContainer.innerHTML = '';
    
    config.nodes.forEach(node => {
        const nodeCol = document.createElement('div');
        nodeCol.className = 'col-md-4 mb-3';
        
        nodeCol.innerHTML = `
            <div class="card h-100">
                <div class="card-body">
                    <h5 class="card-title">
                        <span class="status-indicator" id="status-${node}"></span>
                        ${node}
                    </h5>
                    <div class="row mt-3">
                        <div class="col-6 text-center">
                            <div class="metric-value" id="connections-${node}">-</div>
                            <div class="metric-label">活动连接</div>
                        </div>
                        <div class="col-6 text-center">
                            <div class="metric-value" id="requests-${node}">-</div>
                            <div class="metric-label">请求/秒</div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-4 text-center">
                            <div class="metric-value" id="cpu-${node}">-</div>
                            <div class="metric-label">CPU</div>
                        </div>
                        <div class="col-4 text-center">
                            <div class="metric-value" id="memory-${node}">-</div>
                            <div class="metric-label">内存</div>
                        </div>
                        <div class="col-4 text-center">
                            <div class="metric-value" id="disk-${node}">-</div>
                            <div class="metric-label">磁盘</div>
                        </div>
                    </div>
                </div>
            </div>
        `;
        
        nodesContainer.appendChild(nodeCol);
    });
}

// 初始化图表
function initCharts() {
    // 活动连接图表
    const connectionsCtx = document.getElementById('connections-chart').getContext('2d');
    charts.connections = new Chart(connectionsCtx, {
        type: 'line',
        data: {
            labels: [],
            datasets: config.nodes.map((node, index) => ({
                label: node,
                data: [],
                borderColor: getColor(index),
                backgroundColor: getColor(index, 0.1),
                fill: false,
                tension: 0.4
            }))
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: '连接数'
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: '时间'
                    }
                }
            }
        }
    });
    
    // 请求/秒图表
    const requestsCtx = document.getElementById('requests-chart').getContext('2d');
    charts.requests = new Chart(requestsCtx, {
        type: 'line',
        data: {
            labels: [],
            datasets: config.nodes.map((node, index) => ({
                label: node,
                data: [],
                borderColor: getColor(index),
                backgroundColor: getColor(index, 0.1),
                fill: false,
                tension: 0.4
            }))
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: '请求/秒'
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: '时间'
                    }
                }
            }
        }
    });
    
    // CPU使用率图表
    const cpuCtx = document.getElementById('cpu-chart').getContext('2d');
    charts.cpu = new Chart(cpuCtx, {
        type: 'line',
        data: {
            labels: [],
            datasets: config.nodes.map((node, index) => ({
                label: node,
                data: [],
                borderColor: getColor(index),
                backgroundColor: getColor(index, 0.1),
                fill: false,
                tension: 0.4
            }))
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                y: {
                    beginAtZero: true,
                    max: 100,
                    title: {
                        display: true,
                        text: 'CPU使用率 (%)'
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: '时间'
                    }
                }
            }
        }
    });
    
    // 内存使用率图表
    const memoryCtx = document.getElementById('memory-chart').getContext('2d');
    charts.memory = new Chart(memoryCtx, {
        type: 'line',
        data: {
            labels: [],
            datasets: config.nodes.map((node, index) => ({
                label: node,
                data: [],
                borderColor: get
让我继续完成仪表板的JavaScript代码：

```javascript:c:\project\kphub\dashboard\js\dashboard.js
    // 内存使用率图表
    const memoryCtx = document.getElementById('memory-chart').getContext('2d');
    charts.memory = new Chart(memoryCtx, {
        type: 'line',
        data: {
            labels: [],
            datasets: config.nodes.map((node, index) => ({
                label: node,
                data: [],
                borderColor: getColor(index),
                backgroundColor: getColor(index, 0.1),
                fill: false,
                tension: 0.4
            }))
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                y: {
                    beginAtZero: true,
                    max: 100,
                    title: {
                        display: true,
                        text: '内存使用率 (%)'
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: '时间'
                    }
                }
            }
        }
    });
    
    // 磁盘使用率图表
    const diskCtx = document.getElementById('disk-chart').getContext('2d');
    charts.disk = new Chart(diskCtx, {
        type: 'line',
        data: {
            labels: [],
            datasets: config.nodes.map((node, index) => ({
                label: node,
                data: [],
                borderColor: getColor(index),
                backgroundColor: getColor(index, 0.1),
                fill: false,
                tension: 0.4
            }))
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                y: {
                    beginAtZero: true,
                    max: 100,
                    title: {
                        display: true,
                        text: '磁盘使用率 (%)'
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: '时间'
                    }
                }
            }
        }
    });
}

// 获取颜色
function getColor(index, alpha = 1) {
    const colors = [
        `rgba(54, 162, 235, ${alpha})`,   // 蓝色
        `rgba(255, 99, 132, ${alpha})`,   // 红色
        `rgba(75, 192, 192, ${alpha})`,   // 绿色
        `rgba(255, 159, 64, ${alpha})`,   // 橙色
        `rgba(153, 102, 255, ${alpha})`,  // 紫色
        `rgba(255, 205, 86, ${alpha})`,   // 黄色
        `rgba(201, 203, 207, ${alpha})`   // 灰色
    ];
    
    return colors[index % colors.length];
}

// 更新节点状态
function updateNodeStatus(metrics) {
    config.nodes.forEach(node => {
        const nodeData = metrics.find(m => m.node === node);
        
        if (nodeData) {
            // 更新状态指示器
            const statusIndicator = document.getElementById(`status-${node}`);
            if (nodeData.status === 'up') {
                statusIndicator.className = 'status-indicator status-up';
            } else if (nodeData.status === 'warning') {
                statusIndicator.className = 'status-indicator status-warning';
            } else {
                statusIndicator.className = 'status-indicator status-down';
            }
            
            // 更新指标值
            document.getElementById(`connections-${node}`).textContent = nodeData.activeConnections;
            document.getElementById(`requests-${node}`).textContent = nodeData.requestsPerSecond;
            document.getElementById(`cpu-${node}`).textContent = `${nodeData.cpuUsage}%`;
            document.getElementById(`memory-${node}`).textContent = `${nodeData.memoryUsage}%`;
            document.getElementById(`disk-${node}`).textContent = `${nodeData.diskUsage}%`;
        } else {
            // 节点离线
            const statusIndicator = document.getElementById(`status-${node}`);
            statusIndicator.className = 'status-indicator status-down';
            
            document.getElementById(`connections-${node}`).textContent = '-';
            document.getElementById(`requests-${node}`).textContent = '-';
            document.getElementById(`cpu-${node}`).textContent = '-';
            document.getElementById(`memory-${node}`).textContent = '-';
            document.getElementById(`disk-${node}`).textContent = '-';
        }
    });
}

// 更新图表数据
function updateCharts(metrics) {
    // 添加时间戳
    const now = new Date();
    const timeString = now.toLocaleTimeString();
    
    metricsData.timestamps.push(timeString);
    if (metricsData.timestamps.length > config.dataPoints) {
        metricsData.timestamps.shift();
    }
    
    // 更新各节点的指标数据
    config.nodes.forEach(node => {
        // 初始化节点数据数组（如果不存在）
        if (!metricsData.connections[node]) metricsData.connections[node] = [];
        if (!metricsData.requests[node]) metricsData.requests[node] = [];
        if (!metricsData.cpu[node]) metricsData.cpu[node] = [];
        if (!metricsData.memory[node]) metricsData.memory[node] = [];
        if (!metricsData.disk[node]) metricsData.disk[node] = [];
        
        // 获取节点当前指标
        const nodeData = metrics.find(m => m.node === node);
        
        // 添加指标数据
        if (nodeData) {
            metricsData.connections[node].push(nodeData.activeConnections);
            metricsData.requests[node].push(nodeData.requestsPerSecond);
            metricsData.cpu[node].push(nodeData.cpuUsage);
            metricsData.memory[node].push(nodeData.memoryUsage);
            metricsData.disk[node].push(nodeData.diskUsage);
        } else {
            // 节点离线，添加null值
            metricsData.connections[node].push(null);
            metricsData.requests[node].push(null);
            metricsData.cpu[node].push(null);
            metricsData.memory[node].push(null);
            metricsData.disk[node].push(null);
        }
        
        // 限制数据点数量
        if (metricsData.connections[node].length > config.dataPoints) {
            metricsData.connections[node].shift();
            metricsData.requests[node].shift();
            metricsData.cpu[node].shift();
            metricsData.memory[node].shift();
            metricsData.disk[node].shift();
        }
    });
    
    // 更新图表
    charts.connections.data.labels = metricsData.timestamps;
    charts.requests.data.labels = metricsData.timestamps;
    charts.cpu.data.labels = metricsData.timestamps;
    charts.memory.data.labels = metricsData.timestamps;
    charts.disk.data.labels = metricsData.timestamps;
    
    config.nodes.forEach((node, index) => {
        charts.connections.data.datasets[index].data = metricsData.connections[node];
        charts.requests.data.datasets[index].data = metricsData.requests[node];
        charts.cpu.data.datasets[index].data = metricsData.cpu[node];
        charts.memory.data.datasets[index].data = metricsData.memory[node];
        charts.disk.data.datasets[index].data = metricsData.disk[node];
    });
    
    charts.connections.update();
    charts.requests.update();
    charts.cpu.update();
    charts.memory.update();
    charts.disk.update();
}

// 更新告警表格
function updateAlerts(alerts) {
    const alertsTable = document.getElementById('alerts-table');
    alertsTable.innerHTML = '';
    
    if (alerts.length === 0) {
        const row = document.createElement('tr');
        row.innerHTML = '<td colspan="4" class="text-center">暂无告警</td>';
        alertsTable.appendChild(row);
        return;
    }
    
    // 显示最近的10条告警
    alerts.slice(0, 10).forEach(alert => {
        const row = document.createElement('tr');
        
        // 设置告警级别样式
        let levelClass = '';
        if (alert.level === 'Critical') {
            levelClass = 'text-danger';
        } else if (alert.level === 'Warning') {
            levelClass = 'text-warning';
        } else {
            levelClass = 'text-info';
        }
        
        row.innerHTML = `
            <td>${new Date(alert.timestamp).toLocaleString()}</td>
            <td>${alert.node}</td>
            <td class="${levelClass}">${alert.level}</td>
            <td>${alert.message}</td>
        `;
        
        alertsTable.appendChild(row);
    });
}

// 获取指标数据
async function fetchMetrics() {
    try {
        // 在实际应用中，这里应该从后端API获取数据
        // 这里使用模拟数据进行演示
        const response = await fetch(config.apiEndpoint);
        
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        
        const metrics = await response.json();
        
        // 更新最后更新时间
        document.getElementById('last-update').textContent = `最后更新: ${new Date().toLocaleString()}`;
        
        // 更新节点状态和图表
        updateNodeStatus(metrics);
        updateCharts(metrics);
        
    } catch (error) {
        console.error('获取指标数据失败:', error);
        
        // 使用模拟数据（仅用于演示）
        const mockMetrics = config.nodes.map(node => ({
            node: node,
            status: Math.random() > 0.2 ? 'up' : (Math.random() > 0.5 ? 'warning' : 'down'),
            activeConnections: Math.floor(Math.random() * 1000),
            requestsPerSecond: Math.floor(Math.random() * 500),
            cpuUsage: Math.floor(Math.random() * 100),
            memoryUsage: Math.floor(Math.random() * 100),
            diskUsage: Math.floor(Math.random() * 100)
        }));
        
        updateNodeStatus(mockMetrics);
        updateCharts(mockMetrics);
        
        document.getElementById('last-update').textContent = `最后更新: ${new Date().toLocaleString()} (模拟数据)`;
    }
}

// 获取告警数据
async function fetchAlerts() {
    try {
        // 在实际应用中，这里应该从后端API获取数据
        // 这里使用模拟数据进行演示
        const response = await fetch(config.alertsEndpoint);
        
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        
        const alerts = await response.json();
        updateAlerts(alerts);
        
    } catch (error) {
        console.error('获取告警数据失败:', error);
        
        // 使用模拟数据（仅用于演示）
        const mockAlerts = Array(5).fill(0).map((_, i) => ({
            timestamp: new Date(Date.now() - i * 3600000).toISOString(),
            node: config.nodes[Math.floor(Math.random() * config.nodes.length)],
            level: ['Info', 'Warning', 'Critical'][Math.floor(Math.random() * 3)],
            message: [
                'CPU使用率过高',
                '内存使用率过高',
                '磁盘使用率过高',
                'Nginx服务重启',
                '活动连接数过高',
                '请求率过高'
            ][Math.floor(Math.random() * 6)]
        }));
        
        updateAlerts(mockAlerts);
    }
}

// 初始化仪表板
function initDashboard() {
    initNodeStatus();
    initCharts();
    
    // 首次加载数据
    fetchMetrics();
    fetchAlerts();
    
    // 设置定时刷新
    setInterval(fetchMetrics, config.refreshInterval);
    setInterval(fetchAlerts, config.refreshInterval);
    
    // 刷新按钮点击事件
    document.getElementById('refresh-btn').addEventListener('click', () => {
        fetchMetrics();
        fetchAlerts();
    });
}

// 页面加载完成后初始化仪表板
document.addEventListener('DOMContentLoaded', initDashboard);
```

## 10. 自动化部署与更新

自动化部署和更新是企业级Nginx管理的重要组成部分，可以大大提高运维效率。

### 10.1 部署脚本

以下是一个全面的Nginx自动部署脚本：

```powershell:c:\project\kphub\scripts\deploy.ps1
# Nginx自动部署脚本
param(
    [Parameter(Mandatory=$false)]
    [string[]]$Nodes = @("nginx-node1", "nginx-node2", "nginx-node3"),
    
    [Parameter(Mandatory=$false)]
    [string]$NginxVersion = "1.24.0",
    
    [Parameter(Mandatory=$false)]
    [string]$ConfigSource = "c:\project\kphub\conf",
    
    [Parameter(Mandatory=$false)]
    [string]$LogDir = "c:\project\kphub\logs\deployment"
)

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$logFile = "$LogDir\deploy_$timestamp.log"

# 确保日志目录存在
if (-not (Test-Path $LogDir)) {
    New-Item -ItemType Directory -Path $LogDir -Force | Out-Null
}

function Write-Log {
    param([string]$Message)
    
    $logEntry = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - $Message"
    $logEntry | Out-File -Append -FilePath $logFile
    Write-Host $logEntry
}

Write-Log "开始Nginx部署"
Write-Log "目标节点: $($Nodes -join ', ')"
Write-Log "Nginx版本: $NginxVersion"
Write-Log "配置源目录: $ConfigSource"

# 下载Nginx
function Download-Nginx {
    param([string]$Version)
    
    $tempDir = "c:\project\kphub\temp"
    if (-not (Test-Path $tempDir)) {
        New-Item -ItemType Directory -Path $tempDir -Force | Out-Null
    }
    
    $nginxZip = "$tempDir\nginx-$Version.zip"
    $downloadUrl = "https://nginx.org/download/nginx-$Version.zip"
    
    Write-Log "下载Nginx $Version: $downloadUrl"
    
    try {
        Invoke-WebRequest -Uri $downloadUrl -OutFile $nginxZip
        Write-Log "下载完成: $nginxZip"
        return $nginxZip
    } catch {
        Write-Log "下载Nginx失败: $_"
        return $null
    }
}

# 部署到节点
function Deploy-ToNode {
    param(
        [string]$Node,
        [string]$NginxZip,
        [string]$ConfigSource
    )
    
    Write-Log "开始部署到节点: $Node"
    
    try {
        # 创建远程会话
        $session = New-PSSession -ComputerName $Node -ErrorAction Stop
        
        # 检查目标目录
        $targetDir = "C:\nginx"
        $backupDir = "C:\nginx_backup_$timestamp"
        
        # 如果已存在Nginx，创建备份
        $nginxExists = Invoke-Command -Session $session -ScriptBlock {
            Test-Path $using:targetDir
        }
        
        if ($nginxExists) {
            Write-Log "在节点 $Node 上发现现有Nginx安装，创建备份"
            
            # 停止Nginx服务
            Invoke-Command -Session $session -ScriptBlock {
                $service = Get-Service -Name nginx -ErrorAction SilentlyContinue
                if ($service -and $service.Status -eq "Running") {
                    Stop-Service -Name nginx -Force
                    Write-Output "Nginx服务已停止"
                }
            }
            
            # 创建备份
            Invoke-Command -Session $session -ScriptBlock {
                Copy-Item -Path $using:targetDir -Destination $using:backupDir -Recurse -Force
                Write-Output "已创建备份: $using:backupDir"
            }
        }
        
        # 复制Nginx安装包到目标节点
        $remoteZip = "C:\temp\nginx.zip"
        
        Invoke-Command -Session $session -ScriptBlock {
            if (-not (Test-Path "C:\temp")) {
                New-Item -ItemType Directory -Path "C:\temp" -Force | Out-Null
            }
        }
        
        Write-Log "复制Nginx安装包到节点 $Node"
        Copy-Item -Path $NginxZip -Destination $remoteZip -ToSession $session
        
        # 解压Nginx
        Write-Log "解压Nginx到节点 $Node"
        Invoke-Command -Session $session -ScriptBlock {
            # 创建或清空目标目录
            if (Test-Path $using:targetDir) {
                Remove-Item -Path "$using:targetDir\*" -Recurse -Force
            } else {
                New-Item -ItemType Directory -Path $using:targetDir -Force | Out-Null
            }
            
            # 解压Nginx
            Add-Type -AssemblyName System.IO.Compression.FileSystem
            [System.IO.Compression.ZipFile]::ExtractToDirectory($using:remoteZip, "C:\temp\nginx_extract")
            
            # 复制文件到目标目录
            $extractDir = Get-ChildItem -Path "C:\temp\nginx_extract" -Directory | Select-Object -First 1
            Copy-Item -Path "$($extractDir.FullName)\*" -Destination $using:targetDir -Recurse -Force
            
            # 清理临时文件
            Remove-Item -Path "C:\temp\nginx_extract" -Recurse -Force
            Remove-Item -Path $using:remoteZip -Force
            
            Write-Output "Nginx解压完成"
        }
        
        # 复制配置文件
        Write-Log "复制配置文件到节点 $Node"
        
        # 创建配置目录
        Invoke-Command -Session $session -ScriptBlock {
            if (-not (Test-Path "$using:targetDir\conf")) {
                New-Item -ItemType Directory -Path "$using:targetDir\conf" -Force | Out-Null
            }
            
            # 备份原始配置
            if (Test-Path "$using:targetDir\conf\nginx.conf") {
                Copy-Item -Path "$using:targetDir\conf\nginx.conf" -Destination "$using:targetDir\conf\nginx.conf.bak" -Force
            }
        }
        
        # 获取所有配置文件
        $configFiles = Get-ChildItem -Path $ConfigSource -Recurse -Filter "*.conf" | Select-Object FullName
        
        foreach ($file in $configFiles) {
            $relativePath = $file.FullName.Substring($ConfigSource.Length)
            $targetPath = "C:\nginx\conf$relativePath"
            
            # 确保目标目录存在
            $targetDir = Split-Path -Path $targetPath -Parent
            Invoke-Command -Session $session -ScriptBlock {
                if (-not (Test-Path $using:targetDir)) {
                    New-Item -ItemType Directory -Path $using:targetDir -Force | Out-Null
                }
            }
            
            # 复制配置文件
            Copy-Item -Path $file.FullName -Destination $targetPath -ToSession $session -Force
            Write-Log "已复制配置文件: $($file.FullName) -> $targetPath"
        }
        
        # 验证Nginx配置
        Write-Log "验证节点 $Node 上的Nginx配置"
        $configTest = Invoke-Command -Session $session -ScriptBlock {
            $result = & "C:\nginx\nginx.exe" -t 2>&1
            $exitCode = $LASTEXITCODE
            
            return @{
                Output = $result
                ExitCode = $exitCode
            }
        }
        
        if ($configTest.ExitCode -eq 0) {
            Write-Log "节点 $Node 的Nginx配置验证成功"
            
            # 安装Nginx服务
            Write-Log "在节点 $Node 上安装Nginx服务"
            Invoke-Command -Session $session -ScriptBlock {
                # 检查服务是否已存在
                $service = Get-Service -Name nginx -ErrorAction SilentlyContinue
                
                if (-not $service) {
                    # 下载nssm工具来安装服务
                    $nssmUrl = "https://nssm.cc/release/nssm-2.24.zip"
                    $nssmZip = "C:\temp\nssm.zip"
                    
                    Invoke-WebRequest -Uri $nssmUrl -OutFile $nssmZip
                    
                    # 解压nssm
                    Add-Type -AssemblyName System.IO.Compression.FileSystem
                    [System.IO.Compression.ZipFile]::ExtractToDirectory($nssmZip, "C:\temp\nssm_extract")
                    
                    # 找到正确的nssm.exe
                    $nssmExe = Get-ChildItem -Path "C:\temp\nssm_extract" -Recurse -Filter "nssm.exe" | Where-Object { $_.FullName -like "*win64*" } | Select-Object -First 1
                    
                    # 安装Nginx服务
                    & $nssmExe.FullName install nginx "C:\nginx\nginx.exe"
                    & $nssmExe.FullName set nginx AppParameters "-p C:\nginx"
                    & $nssmExe.FullName set nginx DisplayName "Nginx Web Server"
                    & $nssmExe.FullName set nginx Description "High Performance Web Server"
                    & $nssmExe.FullName set nginx Start SERVICE_AUTO_START
                    
                    # 清理临时文件
                    Remove-Item -Path "C:\temp\nssm_extract" -Recurse -Force
                    Remove-Item -Path $nssmZip -Force
                    
                    Write-Output "Nginx服务安装完成"
                } else {
                    Write-Output "Nginx服务已存在"
                }
            }
            
            # 启动Nginx服务
            Write-Log "启动节点 $Node 上的Nginx服务"
            Invoke-Command -Session $session -ScriptBlock {
                Start-Service -Name nginx
                $service = Get-Service -Name nginx
                Write-Output "Nginx服务状态: $($service.Status)"
            }
            
            Write-Log "节点 $Node 部署完成"
            return $true
        } else {
            Write-Log "节点 $Node 的Nginx配置验证失败: $($configTest.Output)"
            
            # 如果有备份，恢复备份
            if ($nginxExists) {
                Write-Log "恢复节点 $Node 上的Nginx备份"
                Invoke-Command -Session $session -ScriptBlock {
                    if (Test-Path $using:backupDir) {
                        Remove-Item -Path $using:targetDir -Recurse -Force
                        Copy-Item -Path $using:backupDir -Destination $using:targetDir -Recurse -Force
                        Write-Output "已恢复备份"
                        
                        # 启动Nginx服务
                        $service = Get-Service -Name nginx -ErrorAction SilentlyContinue
                        if ($service) {
                            Start-Service -Name nginx
                            Write-Output "Nginx服务已重新启动"
                        }
                    }
                }
            }
            
            return $false
        }
    } catch {
        Write-Log "部署到节点 $Node 失败: $_"
        return $false
    } finally {
        # 关闭会话
        if ($session) {
            Remove-PSSession $session
        }
    }
}

# 主部署流程
$nginxZip = Download-Nginx -Version $NginxVersion

if (-not $nginxZip) {
    Write-Log "无法下载Nginx，部署终止"
    exit 1
}

$results = @()

foreach ($node in $Nodes) {
    $success = Deploy-ToNode -Node $node -NginxZip $nginxZip -ConfigSource $ConfigSource
    
    $results += @{
        Node = $node
        Success = $success
    }
}

# 生成部署报告
Write-Log "部署完成，生成报告"

$successCount = ($results | Where-Object { $_.Success } | Measure-Object).Count
$failCount = ($results | Where-Object { -not $_.Success } | Measure-Object).Count

Write-Log "部署结果: 成功 $successCount, 失败 $failCount"

foreach ($result in $results) {
    $status = if ($result.Success) { "成功" } else { "失败" }
    Write-Log "节点 $($result.Node): $status"
}

# 生成HTML报告
$reportFile = "$LogDir\deploy_report_$timestamp.html"
$reportContent = @"
<!DOCTYPE html>
<html>
<head>
    <title>Nginx部署报告</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { color: #333366; }
        .section { margin: 20px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; }
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .success { color: green; }
        .failure { color: red; }
    </style>
</head>
<body>
    <h1>Nginx部署报告</h1>
    
    <div class="section">
        <h2>部署信息</h2>
        <p><strong>部署时间:</strong> $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</p>
        <p><strong>Nginx版本:</strong> $NginxVersion</p>
        <p><strong>配置源目录:</strong> $ConfigSource</p>
    </div>
    
    <div class="section">
        <h2>部署结果摘要</h2>
        <p><strong>总节点数:</strong> $($Nodes.Count)</p>
        <p><strong>成功:</strong> <span class="success">$successCount</span></p>
        <p><strong>失败:</strong> <span class="failure">$failCount</span></p>
    </div>
    
    <div class="section">
        <h2>详细部署结果</h2>
        <table>
            <tr>
                <th>节点</th>
                <th>结果</th>
            </tr>
"@

foreach ($result in $results) {
    $statusClass = if ($result.Success) { "success" } else { "failure" }
    $statusText = if ($result.Success) { "成功" } else { "失败" }
    
    $reportContent += @"
            <tr>
                <td>$($result.Node)</td>
                <td class="$statusClass">$statusText</td>
            </tr>
"@
}

$reportContent += @"
        </table>
    </div>
    
    <div class="section">
        <h2>后续步骤</h2>
        <ul>
            <li>验证所有节点上的Nginx是否正常运行</li>
            <li>检查Nginx访问日志和错误日志</li>
            <li>执行负载测试以验证部署</li>
        </ul>
    </div>
    
    <div class="section">
        <h2>签名</h2>
        <p>部署执行人: $env:USERNAME</p>
        <p>报告生成时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</p>
    </div>
</body>
</html>
"@

$reportContent | Out-File -FilePath $reportFile -Encoding utf8
Write-Log "部署报告已生成: $reportFile"

# 打开部署报告
Start-Process $reportFile

Write-Log "部署脚本执行完成"
```

### 10.2 配置更新脚本

以下是一个用于更新Nginx配置的脚本：

```powershell:c:\project\kphub\scripts\update_config.ps1
# Nginx配置更新脚本
param(
    [Parameter(Mandatory=$false)]
    [string[]]$Nodes = @("nginx-node1", "nginx-node2", "nginx-node3"),
    
    [Parameter(Mandatory=$false)]
    [string]$ConfigSource = "c:\project\kphub\conf",
    
    [Parameter(Mandatory=$false)]
    [string]$LogDir = "c:\project\kphub\logs\updates"
)

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$logFile = "$LogDir\update_$timestamp.log"

# 确保日志目录存在
if (-not (Test-Path $LogDir)) {
    New-Item -ItemType Directory -Path $LogDir -Force | Out-Null
}

function Write-Log {
    param([string]$Message)
    
    $logEntry = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - $Message"
    $logEntry | Out-
让我继续完成配置更新脚本的内容：

```powershell:c:\project\kphub\scripts\update_config.ps1
# Nginx配置更新脚本
param(
    [Parameter(Mandatory=$false)]
    [string[]]$Nodes = @("nginx-node1", "nginx-node2", "nginx-node3"),
    
    [Parameter(Mandatory=$false)]
    [string]$ConfigSource = "c:\project\kphub\conf",
    
    [Parameter(Mandatory=$false)]
    [string]$LogDir = "c:\project\kphub\logs\updates"
)

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$logFile = "$LogDir\update_$timestamp.log"

# 确保日志目录存在
if (-not (Test-Path $LogDir)) {
    New-Item -ItemType Directory -Path $LogDir -Force | Out-Null
}

function Write-Log {
    param([string]$Message)
    
    $logEntry = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - $Message"
    $logEntry | Out-File -Append -FilePath $logFile
    Write-Host $logEntry
}

Write-Log "开始Nginx配置更新"
Write-Log "目标节点: $($Nodes -join ', ')"
Write-Log "配置源目录: $ConfigSource"

# 更新节点配置
function Update-NodeConfig {
    param(
        [string]$Node,
        [string]$ConfigSource
    )
    
    Write-Log "开始更新节点 $Node 的配置"
    
    try {
        # 创建远程会话
        $session = New-PSSession -ComputerName $Node -ErrorAction Stop
        
        # 检查Nginx安装
        $nginxInstalled = Invoke-Command -Session $session -ScriptBlock {
            Test-Path "C:\nginx"
        }
        
        if (-not $nginxInstalled) {
            Write-Log "节点 $Node 上未找到Nginx安装"
            return $false
        }
        
        # 备份当前配置
        $backupDir = "C:\nginx\conf_backup_$timestamp"
        Invoke-Command -Session $session -ScriptBlock {
            if (Test-Path "C:\nginx\conf") {
                Copy-Item -Path "C:\nginx\conf" -Destination $using:backupDir -Recurse -Force
                Write-Output "已创建配置备份: $using:backupDir"
            }
        }
        
        # 获取所有配置文件
        $configFiles = Get-ChildItem -Path $ConfigSource -Recurse -Filter "*.conf" | Select-Object FullName
        
        foreach ($file in $configFiles) {
            $relativePath = $file.FullName.Substring($ConfigSource.Length)
            $targetPath = "C:\nginx\conf$relativePath"
            
            # 确保目标目录存在
            $targetDir = Split-Path -Path $targetPath -Parent
            Invoke-Command -Session $session -ScriptBlock {
                if (-not (Test-Path $using:targetDir)) {
                    New-Item -ItemType Directory -Path $using:targetDir -Force | Out-Null
                }
            }
            
            # 复制配置文件
            Copy-Item -Path $file.FullName -Destination $targetPath -ToSession $session -Force
            Write-Log "已复制配置文件: $($file.FullName) -> $targetPath"
        }
        
        # 验证Nginx配置
        Write-Log "验证节点 $Node 上的Nginx配置"
        $configTest = Invoke-Command -Session $session -ScriptBlock {
            $result = & "C:\nginx\nginx.exe" -t 2>&1
            $exitCode = $LASTEXITCODE
            
            return @{
                Output = $result
                ExitCode = $exitCode
            }
        }
        
        if ($configTest.ExitCode -eq 0) {
            Write-Log "节点 $Node 的Nginx配置验证成功"
            
            # 重新加载Nginx配置
            Write-Log "重新加载节点 $Node 上的Nginx配置"
            $reloadResult = Invoke-Command -Session $session -ScriptBlock {
                $service = Get-Service -Name nginx -ErrorAction SilentlyContinue
                
                if ($service -and $service.Status -eq "Running") {
                    $result = & "C:\nginx\nginx.exe" -s reload 2>&1
                    $exitCode = $LASTEXITCODE
                    
                    return @{
                        Output = $result
                        ExitCode = $exitCode
                        Method = "reload"
                    }
                } else {
                    # 如果服务未运行，则启动服务
                    Start-Service -Name nginx
                    $service = Get-Service -Name nginx
                    
                    return @{
                        Output = "Nginx服务已启动"
                        ExitCode = 0
                        Method = "start"
                    }
                }
            }
            
            if ($reloadResult.ExitCode -eq 0) {
                Write-Log "节点 $Node 的Nginx配置已$($reloadResult.Method)"
                return $true
            } else {
                Write-Log "节点 $Node 的Nginx配置$($reloadResult.Method)失败: $($reloadResult.Output)"
                
                # 恢复备份
                Write-Log "恢复节点 $Node 上的配置备份"
                Invoke-Command -Session $session -ScriptBlock {
                    if (Test-Path $using:backupDir) {
                        Remove-Item -Path "C:\nginx\conf" -Recurse -Force
                        Copy-Item -Path $using:backupDir -Destination "C:\nginx\conf" -Recurse -Force
                        Write-Output "已恢复配置备份"
                        
                        # 重新加载Nginx配置
                        $service = Get-Service -Name nginx -ErrorAction SilentlyContinue
                        if ($service -and $service.Status -eq "Running") {
                            & "C:\nginx\nginx.exe" -s reload
                        }
                    }
                }
                
                return $false
            }
        } else {
            Write-Log "节点 $Node 的Nginx配置验证失败: $($configTest.Output)"
            
            # 恢复备份
            Write-Log "恢复节点 $Node 上的配置备份"
            Invoke-Command -Session $session -ScriptBlock {
                if (Test-Path $using:backupDir) {
                    Remove-Item -Path "C:\nginx\conf" -Recurse -Force
                    Copy-Item -Path $using:backupDir -Destination "C:\nginx\conf" -Recurse -Force
                    Write-Output "已恢复配置备份"
                }
            }
            
            return $false
        }
    } catch {
        Write-Log "更新节点 $Node 的配置失败: $_"
        return $false
    } finally {
        # 关闭会话
        if ($session) {
            Remove-PSSession $session
        }
    }
}

# 主更新流程
$results = @()

foreach ($node in $Nodes) {
    $success = Update-NodeConfig -Node $node -ConfigSource $ConfigSource
    
    $results += @{
        Node = $node
        Success = $success
    }
}

# 生成更新报告
Write-Log "配置更新完成，生成报告"

$successCount = ($results | Where-Object { $_.Success } | Measure-Object).Count
$failCount = ($results | Where-Object { -not $_.Success } | Measure-Object).Count

Write-Log "更新结果: 成功 $successCount, 失败 $failCount"

foreach ($result in $results) {
    $status = if ($result.Success) { "成功" } else { "失败" }
    Write-Log "节点 $($result.Node): $status"
}

# 生成HTML报告
$reportFile = "$LogDir\update_report_$timestamp.html"
$reportContent = @"
<!DOCTYPE html>
<html>
<head>
    <title>Nginx配置更新报告</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { color: #333366; }
        .section { margin: 20px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; }
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .success { color: green; }
        .failure { color: red; }
    </style>
</head>
<body>
    <h1>Nginx配置更新报告</h1>
    
    <div class="section">
        <h2>更新信息</h2>
        <p><strong>更新时间:</strong> $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</p>
        <p><strong>配置源目录:</strong> $ConfigSource</p>
    </div>
    
    <div class="section">
        <h2>更新结果摘要</h2>
        <p><strong>总节点数:</strong> $($Nodes.Count)</p>
        <p><strong>成功:</strong> <span class="success">$successCount</span></p>
        <p><strong>失败:</strong> <span class="failure">$failCount</span></p>
    </div>
    
    <div class="section">
        <h2>详细更新结果</h2>
        <table>
            <tr>
                <th>节点</th>
                <th>结果</th>
            </tr>
"@

foreach ($result in $results) {
    $statusClass = if ($result.Success) { "success" } else { "failure" }
    $statusText = if ($result.Success) { "成功" } else { "失败" }
    
    $reportContent += @"
            <tr>
                <td>$($result.Node)</td>
                <td class="$statusClass">$statusText</td>
            </tr>
"@
}

$reportContent += @"
        </table>
    </div>
    
    <div class="section">
        <h2>后续步骤</h2>
        <ul>
            <li>验证所有节点上的Nginx是否正常运行</li>
            <li>检查Nginx访问日志和错误日志</li>
            <li>验证配置更改是否生效</li>
        </ul>
    </div>
    
    <div class="section">
        <h2>签名</h2>
        <p>更新执行人: $env:USERNAME</p>
        <p>报告生成时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</p>
    </div>
</body>
</html>
"@

$reportContent | Out-File -FilePath $reportFile -Encoding utf8
Write-Log "更新报告已生成: $reportFile"

# 打开更新报告
Start-Process $reportFile

Write-Log "配置更新脚本执行完成"
```

## 11. 性能优化指南

以下是Nginx性能优化的最佳实践指南：

```markdown:c:\project\kphub\docs\performance_optimization.md
# Nginx性能优化指南

## 1. 基础优化

### 1.1 工作进程和连接数

```nginx
# 设置工作进程数量为CPU核心数
worker_processes auto;

# 每个工作进程的最大连接数
worker_connections 10240;

# 启用多个接受请求的套接字
multi_accept on;
```

### 1.2 保持连接设置

```nginx
# HTTP连接设置
http {
    # 保持连接超时时间
    keepalive_timeout 65;
    
    # 每个保持连接的最大请求数
    keepalive_requests 100;
    
    # 启用TCP保持连接
    tcp_nodelay on;
    tcp_nopush on;
}
```

### 1.3 文件描述符限制

```nginx
# 增加工作进程的文件描述符限制
worker_rlimit_nofile 65535;
```

## 2. 缓冲和缓存优化

### 2.1 客户端请求缓冲

```nginx
# 客户端请求缓冲设置
client_body_buffer_size 128k;
client_max_body_size 10m;
client_header_buffer_size 1k;
large_client_header_buffers 4 4k;
```

### 2.2 静态文件缓存

```nginx
# 开启静态文件缓存
open_file_cache max=1000 inactive=20s;
open_file_cache_valid 30s;
open_file_cache_min_uses 2;
open_file_cache_errors on;
```

### 2.3 响应缓冲

```nginx
# 响应缓冲设置
output_buffers 2 32k;
postpone_output 1460;
```

## 3. 压缩优化

### 3.1 Gzip压缩

```nginx
# 启用Gzip压缩
gzip on;
gzip_comp_level 5;
gzip_min_length 256;
gzip_proxied any;
gzip_vary on;
gzip_types
    application/atom+xml
    application/javascript
    application/json
    application/ld+json
    application/manifest+json
    application/rss+xml
    application/vnd.geo+json
    application/vnd.ms-fontobject
    application/x-font-ttf
    application/x-web-app-manifest+json
    application/xhtml+xml
    application/xml
    font/opentype
    image/bmp
    image/svg+xml
    image/x-icon
    text/cache-manifest
    text/css
    text/plain
    text/vcard
    text/vnd.rim.location.xloc
    text/vtt
    text/x-component
    text/x-cross-domain-policy;
```

### 3.2 Brotli压缩（需要安装模块）

```nginx
# 启用Brotli压缩
brotli on;
brotli_comp_level 6;
brotli_types
    application/atom+xml
    application/javascript
    application/json
    application/rss+xml
    application/vnd.ms-fontobject
    application/x-font-ttf
    application/x-web-app-manifest+json
    application/xhtml+xml
    application/xml
    font/opentype
    image/svg+xml
    image/x-icon
    text/css
    text/plain
    text/x-component;
```

## 4. SSL/TLS优化

### 4.1 会话缓存和票证

```nginx
# SSL会话缓存
ssl_session_cache shared:SSL:10m;
ssl_session_timeout 10m;
ssl_session_tickets off;
```

### 4.2 OCSP Stapling

```nginx
# 启用OCSP Stapling
ssl_stapling on;
ssl_stapling_verify on;
resolver 8.8.8.8 8.8.4.4 valid=300s;
resolver_timeout 5s;
```

### 4.3 SSL缓冲区

```nginx
# SSL缓冲区设置
ssl_buffer_size 8k;
```

## 5. 负载均衡优化

### 5.1 连接限制

```nginx
# 限制每个上游服务器的连接数
upstream backend {
    server backend1.example.com max_conns=100;
    server backend2.example.com max_conns=100;
    
    # 启用保持连接
    keepalive 32;
}
```

### 5.2 负载均衡算法

```nginx
# 使用最少连接数算法
upstream backend {
    least_conn;
    server backend1.example.com;
    server backend2.example.com;
}

# 使用IP哈希算法（会话持久性）
upstream backend {
    ip_hash;
    server backend1.example.com;
    server backend2.example.com;
}

# 使用一致性哈希算法
upstream backend {
    hash $request_uri consistent;
    server backend1.example.com;
    server backend2.example.com;
}
```

### 5.3 健康检查

```nginx
# 被动健康检查
upstream backend {
    server backend1.example.com max_fails=3 fail_timeout=30s;
    server backend2.example.com max_fails=3 fail_timeout=30s;
}

# 主动健康检查（需要健康检查模块）
http {
    server {
        location / {
            proxy_pass http://backend;
            health_check interval=10 fails=3 passes=2;
        }
    }
}
```

## 6. 超时设置

```nginx
# 各种超时设置
client_body_timeout 12;
client_header_timeout 12;
send_timeout 10;
proxy_connect_timeout 60s;
proxy_send_timeout 60s;
proxy_read_timeout 60s;
```

## 7. 日志优化

```nginx
# 禁用不必要的日志
location /status {
    access_log off;
}

# 缓冲日志写入
access_log /var/log/nginx/access.log main buffer=16k flush=5s;

# 使用更高效的日志格式
log_format main '$remote_addr - $remote_user [$time_local] "$request" '
                '$status $body_bytes_sent "$http_referer" '
                '"$http_user_agent"';
```

## 8. 操作系统级优化

### 8.1 Linux内核参数

```bash
# 在/etc/sysctl.conf中添加以下设置
net.core.somaxconn = 65536
net.ipv4.tcp_max_tw_buckets = 1440000
net.ipv4.ip_local_port_range = 1024 65000
net.ipv4.tcp_fin_timeout = 15
net.ipv4.tcp_keepalive_time = 300
net.ipv4.tcp_keepalive_probes = 5
net.ipv4.tcp_keepalive_intvl = 15
net.core.netdev_max_backlog = 4096
```

### 8.2 Windows系统优化

```powershell
# 增加TCP连接的最大数量
netsh int tcp set global maxconn=16384

# 禁用Nagle算法
netsh interface tcp set global chimney=disabled
netsh interface tcp set global rss=disabled
netsh interface tcp set global autotuninglevel=disabled
netsh interface tcp set global ecncapability=disabled

# 增加TCP端口范围
netsh int ipv4 set dynamicport tcp start=10000 num=55535
```

## 9. 监控和基准测试

### 9.1 启用状态页

```nginx
# 启用Nginx状态页
server {
    listen 8080;
    server_name localhost;
    
    location /nginx_status {
        stub_status on;
        access_log off;
        allow 127.0.0.1;
        deny all;
    }
}
```

### 9.2 基准测试工具

- **ab (Apache Bench)**: 简单的HTTP基准测试工具
- **wrk**: 现代HTTP基准测试工具
- **siege**: HTTP负载测试和基准测试工具
- **JMeter**: 功能全面的负载测试工具

## 10. 性能优化检查清单

1. [ ] 设置适当的工作进程数（通常等于CPU核心数）
2. [ ] 增加工作连接数限制
3. [ ] 优化保持连接设置
4. [ ] 配置适当的缓冲区大小
5. [ ] 启用静态文件缓存
6. [ ] 启用和优化Gzip压缩
7. [ ] 优化SSL/TLS设置
8. [ ] 配置有效的负载均衡策略
9. [ ] 设置合理的超时值
10. [ ] 优化日志配置
11. [ ] 调整操作系统参数
12. [ ] 实施监控和基准测试

## 11. 常见性能问题及解决方案

### 11.1 高CPU使用率

- **问题**: Nginx工作进程CPU使用率过高
- **解决方案**:
  - 检查工作进程数是否合适
  - 启用缓存减少处理开销
  - 优化上游应用程序响应时间
  - 检查是否存在恶意流量或DDoS攻击

### 11.2 高内存使用率

- **问题**: Nginx内存使用过高
- **解决方案**:
  - 减小缓冲区大小
  - 限制并发连接数
  - 检查内存泄漏问题
  - 优化上游应用程序

### 11.3 连接超时

- **问题**: 客户端连接频繁超时
- **解决方案**:
  - 增加超时设置
  - 检查上游服务器响应时间
  - 增加工作进程数
  - 优化负载均衡配置

### 11.4 磁盘I/O瓶颈

- **问题**: 高磁盘I/O影响性能
- **解决方案**:
  - 优化日志写入（缓冲、减少日志级别）
  - 将日志写入单独的磁盘
  - 使用tmpfs挂载临时文件
  - 考虑使用SSD存储

## 12. 高级优化技术

### 12.1 HTTP/2支持

```nginx
# 启用HTTP/2
server {
    listen 443 ssl http2;
    server_name example.com;
    
    ssl_certificate /path/to/cert.pem;
    ssl_certificate_key /path/to/key.pem;
    
    # 其他SSL设置...
}
```

### 12.2 页面缓存

```nginx
# 使用FastCGI缓存
http {
    fastcgi_cache_path /path/to/cache levels=1:2 keys_zone=mycache:10m inactive=60m;
    fastcgi_cache_key "$scheme$request_method$host$request_uri";
    
    server {
        location ~ \.php$ {
            fastcgi_pass php_backend;
            fastcgi_cache mycache;
            fastcgi_cache_valid 200 60m;
        }
    }
}
```

### 12.3 微缓存

```nginx
# 为动态内容启用微缓存
proxy_cache_path /path/to/cache levels=1:2 keys_zone=microcache:10m max_size=1g inactive=60m use_temp_path=off;

server {
    location / {
        proxy_pass http://backend;
        proxy_cache microcache;
        proxy_cache_valid 200 1s;
        proxy_cache_use_stale updating;
        proxy_cache_lock on;
        
        # 添加缓存状态头
        add_header X-Cache-Status $upstream_cache_status;
    }
}
```

## 13. 性能测试案例

### 13.1 基准测试命令示例

```bash
# 使用ab进行基准测试
ab -n 10000 -c 100 http://example.com/

# 使用wrk进行基准测试
wrk -t12 -c400 -d30s http://example.com/

# 使用siege进行基准测试
siege -c100 -t1M http://example.com/
```

### 13.2 性能指标解释

- **请求/秒 (RPS)**: 每秒处理的请求数，越高越好
- **响应时间**: 处理请求所需的时间，越低越好
- **并发连接数**: 同时处理的连接数
- **错误率**: 失败请求的百分比，应尽可能低

## 14. 参考资料

- [Nginx官方文档](https://nginx.org/en/docs/)
- [Nginx性能调优指南](https://www.nginx.com/blog/tuning-nginx/)
- [高性能Nginx配置](https://github.com/denji/nginx-tuning)
```

## 12. 总结

通过本知识库，我们提供了一套全面的Nginx管理解决方案，包括：

1. 基础配置与安装
2. 负载均衡与高可用性
3. 反向代理与缓存
4. SSL/TLS配置
5. 日志管理与分析
6. 安全加固
7. 监控与告警
8. 自动化部署与更新
9. 性能优化

这些内容涵盖了企业级Nginx部署和管理的各个方面，可以帮助系统管理员和开发人员构建高性能、高可用、安全的Web基础设施。

通过使用本知识库中的脚本和配置，可以大大简化Nginx的管理工作，提高运维效率，减少人为错误，确保Web服务的稳定运行。