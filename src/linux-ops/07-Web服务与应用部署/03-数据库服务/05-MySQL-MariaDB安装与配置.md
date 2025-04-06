---
title: MySQL/MariaDB安装与配置  
icon: practice  
order: 5  
---

# MySQL/MariaDB安装与配置  

MySQL和MariaDB是目前最流行的开源关系型数据库管理系统，广泛应用于各类应用开发中。本文将详细介绍如何在Windows环境下安装、配置和优化MySQL/MariaDB，帮助你从零开始搭建一个高效、安全的数据库环境。

## 1. 安装准备  

在安装MySQL或MariaDB之前，需要确保系统满足基本要求，并选择适合自己项目需求的版本。

### 1.1 系统要求检查  

MySQL和MariaDB对系统有一定的要求，包括操作系统版本、内存大小、磁盘空间等。以下脚本可以帮助检查Windows系统是否满足基本要求：

```powershell:c:\project\kphub\scripts\check_system.ps1  
# 检查Windows版本  
$os = Get-WmiObject Win32_OperatingSystem  
"系统版本: $($os.Caption)"  
"内存: $(($os.TotalVisibleMemorySize/1MB).ToString('N2'))GB"  

# 检查可用磁盘空间
$disk = Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='C:'"
"C盘可用空间: $(($disk.FreeSpace/1GB).ToString('N2'))GB"

# 检查VC++运行库（MySQL依赖）  
Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |  
Where-Object {$_.DisplayName -like "*Visual C++*"} |  
Select-Object DisplayName, DisplayVersion  

# 检查是否已安装MySQL/MariaDB
$mysqlService = Get-Service -Name MySQL* -ErrorAction SilentlyContinue
if ($mysqlService) {
    "已安装MySQL服务: $($mysqlService.Name), 状态: $($mysqlService.Status)"
} else {
    "未检测到MySQL服务"
}

$mariadbService = Get-Service -Name MariaDB* -ErrorAction SilentlyContinue
if ($mariadbService) {
    "已安装MariaDB服务: $($mariadbService.Name), 状态: $($mariadbService.Status)"
} else {
    "未检测到MariaDB服务"
}
```  

**最低系统要求**：
- Windows 10/Windows Server 2016或更高版本
- 至少1GB内存（推荐4GB以上）
- 至少2GB可用磁盘空间（数据库增长需要更多）
- Visual C++ Redistributable Package（MySQL安装程序通常会自动安装）

### 1.2 下载选项对比  

MySQL和MariaDB都有多个版本可供选择，根据项目需求选择合适的版本：

| 版本         | 推荐场景         | 特点                              | 下载地址                          |  
|--------------|------------------|-----------------------------------|-----------------------------------|  
| MySQL 8.0    | 新项目           | 性能更好，安全性更高，新特性支持   | https://dev.mysql.com/downloads/ |  
| MySQL 5.7    | 兼容性要求       | 广泛部署，稳定可靠                | https://dev.mysql.com/downloads/mysql/5.7.html |  
| MariaDB 10.6 | 开源项目         | 完全开源，兼容MySQL，额外功能增强  | https://mariadb.org/download/    |  
| MariaDB 10.11| 高级功能需求     | 最新特性，更好的并行处理          | https://mariadb.org/download/    |  

**MySQL与MariaDB的主要区别**：
- MySQL由Oracle公司拥有，有社区版和企业版
- MariaDB是MySQL的一个分支，完全开源，由MySQL原创始人开发
- MariaDB保持与MySQL的高度兼容性，同时提供一些额外功能
- MariaDB在某些场景下性能可能更好，特别是写入密集型应用

**安装包类型**：
- MSI安装包：图形界面安装，适合初学者
- ZIP压缩包：免安装版，适合高级用户或需要便携式安装
- Docker镜像：容器化部署，适合开发和测试环境

## 2. Windows安装指南  

Windows平台提供了多种安装MySQL/MariaDB的方式，下面详细介绍几种常用方法。

### 2.1 使用MSI安装包  

MSI安装包提供了图形界面，是Windows平台最简单的安装方式。

**图形界面安装步骤**：

1. 下载MySQL Installer或MariaDB MSI安装包
2. 双击安装包启动安装向导
3. 选择安装类型（典型安装、自定义安装等）
4. 配置MySQL服务（端口、服务名称等）
5. 设置root密码
6. 完成安装

**命令行静默安装**（适合批量部署）：

```powershell:c:\project\kphub\scripts\silent_install.ps1
# 下载MySQL安装包（如果尚未下载）
$installerUrl = "https://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-community-8.0.28.0.msi"
$installerPath = "C:\Temp\mysql-installer.msi"

if (-not (Test-Path "C:\Temp")) {
    New-Item -Path "C:\Temp" -ItemType Directory
}

if (-not (Test-Path $installerPath)) {
    Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath
}

# 静默安装MySQL（仅服务器组件）
Start-Process -Wait -FilePath "msiexec.exe" -ArgumentList "/i", $installerPath, "/quiet", "/qn", "SERVERONLY=1", "INSTALLDIR=C:\Program Files\MySQL\MySQL Server 8.0"

# 检查安装结果
if (Get-Service -Name "MySQL80" -ErrorAction SilentlyContinue) {
    Write-Host "MySQL安装成功！" -ForegroundColor Green
} else {
    Write-Host "MySQL安装失败，请检查日志。" -ForegroundColor Red
}
```  

**使用Chocolatey包管理器安装**（适合开发环境）：

```powershell
# 安装Chocolatey（如果尚未安装）
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# 安装MySQL
choco install mysql -y

# 或安装MariaDB
# choco install mariadb -y
```

### 2.2 配置环境变量  

安装完成后，将MySQL/MariaDB的bin目录添加到系统PATH环境变量，方便在命令行中直接使用MySQL命令：

```powershell:c:\project\kphub\scripts\set_env.ps1  
# 检查MySQL安装路径
$mysqlPath = "C:\Program Files\MySQL\MySQL Server 8.0\bin"
$mariadbPath = "C:\Program Files\MariaDB 10.6\bin"

# 确定实际安装的数据库类型和路径
if (Test-Path $mysqlPath) {
    $dbPath = $mysqlPath
    $dbType = "MySQL"
} elseif (Test-Path $mariadbPath) {
    $dbPath = $mariadbPath
    $dbType = "MariaDB"
} else {
    # 尝试自动查找安装路径
    $possiblePaths = Get-ChildItem "C:\Program Files" -Directory | Where-Object { $_.Name -like "MySQL*" -or $_.Name -like "MariaDB*" }
    
    if ($possiblePaths) {
        $binPath = Get-ChildItem $possiblePaths.FullName -Recurse -Directory | Where-Object { $_.Name -eq "bin" } | Select-Object -First 1
        
        if ($binPath) {
            $dbPath = $binPath.FullName
            $dbType = if ($binPath.FullName -like "*MySQL*") { "MySQL" } else { "MariaDB" }
        } else {
            Write-Error "无法找到MySQL或MariaDB的bin目录"
            exit 1
        }
    } else {
        Write-Error "未找到MySQL或MariaDB安装目录"
        exit 1
    }
}

# 检查路径是否已在环境变量中
$currentPath = [Environment]::GetEnvironmentVariable("Path", "Machine")
if ($currentPath -notlike "*$dbPath*") {
    # 添加到系统环境变量
    [Environment]::SetEnvironmentVariable("Path", "$currentPath;$dbPath", "Machine")
    Write-Host "$dbType bin目录已添加到系统环境变量" -ForegroundColor Green
} else {
    Write-Host "$dbType bin目录已存在于系统环境变量中" -ForegroundColor Yellow
}

# 刷新当前会话的环境变量
$env:Path = [Environment]::GetEnvironmentVariable("Path", "Machine")

# 验证配置
try {
    $version = (Invoke-Expression "mysql --version")
    Write-Host "环境变量配置成功: $version" -ForegroundColor Green
} catch {
    Write-Host "环