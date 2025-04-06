---
title: SCP和SFTP文件传输
icon: practice
order: 7
---

# SCP和SFTP文件传输

SCP和SFTP是基于SSH协议的安全文件传输工具，广泛应用于Linux系统间的文件传输。本文将详细介绍SCP和SFTP的使用方法、命令选项和最佳实践，帮助读者掌握安全高效的文件传输技术，满足日常运维工作需求。

## SCP简介

SCP（Secure Copy Protocol）是一种基于SSH协议的安全文件复制工具，用于在本地主机和远程主机之间或两个远程主机之间安全地传输文件。SCP继承了SSH的安全特性，包括加密传输和身份验证。

### SCP的工作原理

SCP的工作原理相对简单，它通过SSH协议建立安全连接，然后在此连接上传输文件数据。具体流程如下：

1. **建立SSH连接**：SCP首先与远程主机建立SSH连接，进行身份验证
2. **启动SCP进程**：在远程主机上启动SCP进程
3. **传输文件数据**：通过SSH通道传输文件内容和元数据
4. **完成传输**：传输完成后关闭连接

SCP的主要优势在于其安全性和简单性。由于基于SSH协议，所有传输的数据都经过加密，防止了中间人攻击和数据窃听。同时，SCP命令语法简单，易于使用，适合快速的文件传输操作。

### SCP与传统FTP的比较

| 特性 | SCP | 传统FTP |
|------|-----|---------|
| 安全性 | 高（数据加密传输） | 低（明文传输密码和数据） |
| 认证方式 | SSH密钥或密码 | 通常只有密码 |
| 防火墙友好性 | 较好（只需开放SSH端口） | 较差（需要多个端口） |
| 传输模式 | 只有二进制模式 | 二进制和ASCII模式 |
| 断点续传 | 不支持 | 部分支持 |
| 目录列表 | 不支持 | 支持 |
| 交互式操作 | 不支持 | 支持 |

## SCP基本用法

SCP命令的基本语法如下：

```cmd
scp [选项] 源文件 目标文件
```

其中，源文件和目标文件可以是本地文件路径，也可以是远程文件路径。远程文件路径的格式为：`用户名@主机名:文件路径`。

### 从本地复制文件到远程服务器

将本地文件复制到远程服务器的基本命令：

```cmd
scp C:\path\to\local\file.txt username@remote_host:C:\path\to\remote\directory\
```

例如，将本地的`report.pdf`文件复制到远程服务器的`/home/user/documents/`目录：

```cmd
scp C:\Users\localuser\Documents\report.pdf user@192.168.1.100:C:\Users\remoteuser\Documents\
```

### 从远程服务器复制文件到本地

将远程服务器上的文件复制到本地的基本命令：

```cmd
scp username@remote_host:C:\path\to\remote\file.txt C:\path\to\local\directory\
```

例如，将远程服务器上的`data.csv`文件复制到本地的当前目录：

```cmd
scp user@192.168.1.100:C:\Users\remoteuser\data.csv .
```

### 复制目录

使用`-r`选项可以递归地复制整个目录：

```cmd
# 复制本地目录到远程服务器
scp -r C:\path\to\local\directory username@remote_host:C:\path\to\remote\directory\

# 复制远程目录到本地
scp -r username@remote_host:C:\path\to\remote\directory C:\path\to\local\directory\
```

例如，复制本地的`projects`目录到远程服务器：

```cmd
scp -r C:\Users\localuser\projects user@192.168.1.100:C:\Users\remoteuser\
```

### 在两个远程服务器之间复制文件

SCP也支持在两个远程服务器之间直接复制文件，不过数据会通过本地主机中转：

```cmd
scp username1@remote_host1:C:\path\to\file.txt username2@remote_host2:C:\path\to\directory\
```

例如，将服务器A上的配置文件复制到服务器B：

```cmd
scp user@serverA:C:\config\app.conf admin@serverB:C:\config\
```

## SCP高级选项

SCP提供了多种选项来控制文件传输的行为。以下是一些常用的高级选项：

### 常用选项说明

| 选项 | 说明 |
|------|------|
| `-P port` | 指定SSH连接的端口号（注意是大写P） |
| `-p` | 保留源文件的修改时间、访问时间和权限 |
| `-r` | 递归复制整个目录 |
| `-C` | 启用压缩传输 |
| `-l limit` | 限制带宽使用，单位为Kbit/s |
| `-q` | 静默模式，不显示进度信息 |
| `-v` | 详细模式，显示详细的调试信息 |
| `-i identity_file` | 指定SSH私钥文件 |
| `-4` | 强制使用IPv4地址 |
| `-6` | 强制使用IPv6地址 |

### 使用非标准SSH端口

如果远程服务器使用非标准SSH端口（不是默认的22端口），可以使用`-P`选项指定端口：

```cmd
scp -P 2222 C:\path\to\file.txt username@remote_host:C:\path\to\directory\
```

### 压缩传输

对于大文件或慢速网络，可以使用`-C`选项启用压缩传输，减少传输的数据量：

```cmd
scp -C C:\large_file.zip username@remote_host:C:\path\to\directory\
```

### 限制带宽使用

在带宽有限的环境中，可以使用`-l`选项限制SCP使用的带宽：

```cmd
# 限制带宽为500 Kbit/s
scp -l 500 C:\large_file.zip username@remote_host:C:\path\to\directory\
```

### 保留文件属性

使用`-p`选项可以保留源文件的修改时间、访问时间和权限：

```cmd
scp -p C:\path\to\file.txt username@remote_host:C:\path\to\directory\
```

### 使用SSH密钥认证

如果使用SSH密钥认证，可以使用`-i`选项指定私钥文件：

```cmd
scp -i C:\Users\username\.ssh\id_rsa C:\path\to\file.txt username@remote_host:C:\path\to\directory\
```

## SCP实用示例

以下是一些SCP的实用示例，涵盖了常见的文件传输场景：

### 批量传输多个文件

可以在一个命令中指定多个源文件：

```cmd
scp file1.txt file2.txt file3.txt username@remote_host:C:\path\to\directory\
```

也可以使用通配符：

```cmd
scp C:\path\to\*.txt username@remote_host:C:\path\to\directory\
```

### 传输大文件时显示进度

SCP默认会显示传输进度，但可以使用`-v`选项获取更详细的信息：

```cmd
scp -v C:\path\to\large_file.iso username@remote_host:C:\path\to\directory\
```

### 结合SSH配置文件使用

如果在SSH配置文件（`~/.ssh/config`或`C:\Users\username\.ssh\config`）中已经设置了主机别名，可以直接使用别名：

```
# SSH配置文件内容
Host webserver
    HostName 192.168.1.100
    User admin
    Port 2222
    IdentityFile C:\Users\username\.ssh\webserver_key
```

使用配置的别名进行SCP传输：

```cmd
scp C:\path\to\file.txt webserver:C:\path\to\directory\
```

### 通过跳板机传输文件

如果需要通过跳板机访问目标服务器，可以结合SSH的ProxyJump功能：

```cmd
# 在SSH配置文件中设置
Host target
    HostName 192.168.10.100
    User admin
    ProxyJump jumphost

Host jumphost
    HostName 203.0.113.53
    User jumpuser
```

然后使用SCP传输文件：

```cmd
scp C:\path\to\file.txt target:C:\path\to\directory\
```

### 在脚本中使用SCP

在自动化脚本中使用SCP时，通常需要禁用交互提示和进度显示：

```cmd
scp -q -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null C:\path\to\file.txt username@remote_host:C:\path\to\directory\
```

这里的选项说明：
- `-q`：静默模式，不显示进度
- `-o StrictHostKeyChecking=no`：禁用主机密钥检查
- `-o UserKnownHostsFile=/dev/null`：不记录主机密钥

**注意**：禁用主机密钥检查会降低安全性，仅建议在受控环境中使用。

## SFTP简介

SFTP（SSH File Transfer Protocol）是一种基于SSH协议的安全文件传输协议，提供了比SCP更丰富的功能，包括文件管理、目录列表、断点续传等。

### SFTP的工作原理

SFTP不同于传统的FTP协议，它是SSH协议的一个子系统，工作流程如下：

1. **建立SSH连接**：与远程主机建立SSH连接，进行身份验证
2. **启动SFTP子系统**：在SSH连接上启动SFTP子系统
3. **交互式会话**：客户端和服务器之间建立交互式会话，可以执行各种文件操作
4. **传输文件**：通过SSH通道安全地传输文件和命令
5. **结束会话**：完成操作后关闭SFTP会话和SSH连接

### SFTP与SCP的比较

| 特性 | SFTP | SCP |
|------|------|-----|
| 交互式操作 | 支持 | 不支持 |
| 断点续传 | 支持 | 不支持 |
| 目录列表 | 支持 | 不支持 |
| 文件管理操作 | 支持（重命名、删除等） | 不支持 |
| 传输速度 | 相对较慢 | 相对较快 |
| 脚本友好性 | 中等 | 高 |
| 命令复杂度 | 较高 | 较低 |

## SFTP基本用法

SFTP可以以命令行交互模式使用，也可以在脚本中使用。

### 连接到SFTP服务器

使用以下命令连接到SFTP服务器：

```cmd
sftp username@remote_host
```

例如，连接到IP为192.168.1.100的服务器：

```cmd
sftp user@192.168.1.100
```

如果需要指定非标准端口：

```cmd
sftp -P 2222 user@192.168.1.100
```

连接成功后，会进入SFTP交互式命令行，提示符变为`sftp>`。

### SFTP交互式命令

在SFTP交互式命令行中，可以使用以下常用命令：

| 命令 | 说明 | 示例 |
|------|------|------|
| `ls` | 列出远程目录内容 | `ls /home/user` |
| `cd` | 更改远程工作目录 | `cd /var/www` |
| `pwd` | 显示远程工作目录 | `pwd` |
| `mkdir` | 创建远程目录 | `mkdir new_folder` |
| `rmdir` | 删除远程目录 | `rmdir old_folder` |
| `rm` | 删除远程文件 | `rm file.txt` |
| `get` | 下载文件到本地 | `get remote_file.txt local_file.txt` |
| `put` | 上传本地文件到远程 | `put local_file.txt remote_file.txt` |
| `mget` | 下载多个文件 | `mget *.txt` |
| `mput` | 上传多个文件 | `mput *.txt` |
| `rename` | 重命名远程文件 | `rename old.txt new.txt` |
| `chmod` | 更改远程文件权限 | `chmod 644 file.txt` |
| `!` | 执行本地shell命令 | `!dir` |
| `help` | 显示帮助信息 | `help` |
| `bye`/`exit`/`quit` | 退出SFTP | `exit` |

### 上传和下载文件

在SFTP交互模式中上传和下载文件：

```
# 下载文件
sftp> get remote_file.txt C:\local_directory\local_file.txt

# 上传文件
sftp> put C:\local_directory\local_file.txt remote_file.txt
```

如果省略目标文件名，将使用源文件名：

```
sftp> get remote_file.txt
sftp> put C:\local_directory\local_file.txt
```

### 递归上传和下载目录

使用`-r`选项可以递归地上传或下载整个目录：

```
# 下载目录
sftp> get -r remote_directory C:\local_directory

# 上传目录
sftp> put -r C:\local_directory remote_directory
```

### 使用通配符

SFTP支持使用通配符批量操作文件：

```
# 下载所有txt文件
sftp> get *.txt

# 上传所有jpg文件
sftp> put *.jpg
```

## SFTP高级用法

SFTP提供了比SCP更多的高级功能，以下是一些高级用法：

### 非交互式SFTP命令

可以在不进入交互模式的情况下执行SFTP命令：

```cmd
echo "get remote_file.txt" | sftp username@remote_host
```

或者使用`-b`选项指定批处理文件：

```cmd
# 创建批处理文件
echo cd /var/www > sftp_commands.txt
echo get index.html >> sftp_commands.txt
echo bye >> sftp_commands.txt

# 执行批处理文件
sftp -b sftp_commands.txt username@remote_host
```

### 断点续传

SFTP支持断点续传，可以在传输中断后继续传输：

```
# 在交互模式中
sftp> reget partially_downloaded_file.iso

# 或者使用-a选项
sftp> get -a large_file.iso
```

### 限制带宽使用

与SCP类似，SFTP也可以限制带宽使用：

```cmd
sftp -l 500 username@remote_host
```

这将限制带宽使用为500 Kbit/s。

### 使用SSH配置

SFTP也可以利用SSH配置文件中的设置：

```cmd
# 使用SSH配置中的主机别名
sftp webserver
```

### 自动化SFTP操作

对于自动化脚本，可以使用expect或类似工具自动化SFTP操作：

```bash
#!/usr/bin/expect
spawn sftp user@192.168.1.100
expect "password:"
send "your_password\r"
expect "sftp>"
send "cd /var/www\r"
expect "sftp>"
send "put index.html\r"
expect "sftp>"
send "bye\r"
expect eof
```

在Windows环境中，可以使用PowerShell结合.NET的SSH库实现类似功能。

## SFTP客户端工具

除了命令行工具外，还有许多图形化SFTP客户端可以简化文件传输操作：

### Windows SFTP客户端

1. **WinSCP**：功能强大的开源SFTP客户端，支持SFTP、SCP、FTP等多种协议
   - 特点：双面板界面，拖放操作，脚本支持，集成文本编辑器
   - 下载：[https://winscp.net/](https://winscp.net/)

2. **FileZilla**：跨平台的开源FTP/SFTP客户端
   - 特点：简洁界面，站点管理器，支持大文件传输
   - 下载：[https://filezilla-project.org/](https://filezilla-project.org/)

3. **MobaXterm**：集成了SSH客户端、SFTP客户端和X服务器的多功能工具
   - 特点：一体化解决方案，标签式界面，内置终端
   - 下载：[https://mobaxterm.mobatek.net/](https://mobaxterm.mobatek.net/)

### 命令行SFTP客户端的替代品

1. **lftp**：功能强大的命令行文件传输程序，支持多种协议
   - 特点：支持并行传输，后台传输，镜像同步
   - 安装：在Windows上可通过Cygwin或WSL使用

2. **rsync**：高效的文件同步工具
   - 特点：增量传输，只传输变更部分，支持通过SSH传输
   - 在Windows上可通过Cygwin、WSL或Git Bash使用

## 安全最佳实践

使用SCP和SFTP进行文件传输时，应遵循以下安全最佳实践：

### 使用SSH密钥认证

使用SSH密钥认证代替密码认证，提高安全性：

```cmd
# 生成SSH密钥对
ssh-keygen -t ed25519 -C "your_email@example.com"

# 将公钥复制到远程服务器
ssh-copy-id -i C:\Users\username\.ssh\id_ed25519.pub username@remote_host

# 使用私钥进行SCP/SFTP连接
scp -i C:\Users\username\.ssh\id_ed25519 file.txt username@remote_host:C:\path\to\directory\
sftp -i C:\Users\username\.ssh\id_ed25519 username@remote_host
```

### 限制SSH访问

在服务器端限制SSH访问，提高安全性：

1. 禁用密码认证，只允许密钥认证：
   ```
   # 在/etc/ssh/sshd_config中设置
   PasswordAuthentication no
   ```

2. 限制可以使用SSH的用户：
   ```
   # 在/etc/ssh/sshd_config中设置
   AllowUsers user1 user2
   ```

3. 使用防火墙限制SSH访问来源：
   ```
   # 使用iptables限制SSH访问
   iptables -A INPUT -p tcp --dport 22 -s 192.168.1.0/24 -j ACCEPT
   iptables -A INPUT -p tcp --dport 22 -j DROP
   ```

### 加密敏感数据

传输敏感数据前先加密：

```cmd
# 使用7-Zip加密压缩文件
7z a -p -mhe=on encrypted_data.7z sensitive_data.txt

# 传输加密文件
scp encrypted_data.7z username@remote_host:C:\path\to\directory\
```

### 使用SFTP的chroot功能

在服务器端配置SFTP的chroot功能，限制用户只能访问特定目录：

```
# 在/etc/ssh/sshd_config中设置
Match User sftpuser
    ForceCommand internal-sftp
    ChrootDirectory /home/sftpuser
    AllowTcpForwarding no
    X11Forwarding no
```

### 定期审计传输日志

定期检查SSH/SFTP日志，监控文件传输活动：

```cmd
# 在Linux服务器上查看SSH/SFTP日志
grep "sftp\|scp" /var/log/auth.log
```

## 故障排除

使用SCP和SFTP时可能遇到的常见问题及解决方法：

### 连接问题

**问题**：无法连接到远程服务器

**解决方法**：
- 检查网络连接和防火墙设置
- 验证SSH服务是否正在运行：`telnet remote_host 22`
- 使用`-v`选项获取详细调试信息：`scp -v file.txt username@remote_host:C:\path\to\directory\`

### 权限问题

**问题**：权限被拒绝

**解决方法**：
- 检查用户权限和文件所有权
- 确认目标目录是否有写入权限
- 使用`sudo`或具有适当权限的用户

### 路径问题

**问题**：找不到文件或目录

**解决方法**：
- 使用绝对路径而非相对路径
- 检查路径中的特殊字符，必要时使用引号
- 确认远程系统上的目录结构

### 传输中断

**问题**：大文件传输中断

**解决方法**：
- 使用SFTP的断点续传功能：`reget` 或 `get -a`
- 启用压缩减少传输量：`scp -C` 或 `sftp -C`
- 考虑使用`rsync`代替SCP/SFTP：`rsync -avz -e ssh source_file username@remote_host:destination_path`

### 性能问题

**问题**：传输速度慢

**解决方法**：
- 启用压缩：`scp -C` 或 `sftp -C`
- 使用更快的加密算法：`scp -c aes128-ctr`
- 分割大文件后并行传输
- 检查网络带宽和延迟

## 实用脚本和自动化

以下是一些实用的脚本示例，可以自动化SCP和SFTP操作：

### PowerShell自动化SCP传输

```powershell
# PowerShell脚本：自动化SCP文件传输
$source = "C:\data\backup.zip"
$destination = "user@192.168.1.100:C:\backups\"
$keyFile = "C:\Users\username\.ssh\id_rsa"

# 执行SCP传输
$process = Start-Process -FilePath "scp" -ArgumentList "-i", $keyFile, $source, $destination -NoNewWindow -PassThru -Wait

if ($process.ExitCode -eq 0) {
    Write-Host "文件传输成功" -ForegroundColor Green
} else {
    Write-Host "文件传输失败，错误代码：$($process.ExitCode)" -ForegroundColor Red
}
```

### 批处理脚本同步目录

```batch
@echo off
:: 批处理脚本：使用SCP同步目录
set SOURCE_DIR=C:\website\
set DEST_USER=webadmin
set DEST_HOST=192.168.1.100
set DEST_DIR=C:\var\www\html\
set SSH_KEY=C:\Users\username\.ssh\id_rsa

echo 正在同步目录 %SOURCE_DIR% 到 %DEST_HOST%:%DEST_DIR%...
scp -r -i "%SSH_KEY%" "%SOURCE_DIR%" %DEST_USER%@%DEST_HOST%:"%DEST_DIR%"

if %ERRORLEVEL% EQU 0 (
    echo 同步完成！
) else (
    echo 同步失败，错误代码：%ERRORLEVEL%
)
```

### 自动化SFTP批处理传输

```batch
@echo off
:: 批处理脚本：自动化SFTP批处理传输
set SFTP_USER=user
set SFTP_HOST=192.168.1.100
set SSH_KEY=C:\Users\username\.ssh\id_rsa

:: 创建SFTP命令文件
echo cd /upload > sftp_commands.txt
echo put C:\data\file1.txt >> sftp_commands.txt
echo put C:\data\file2.txt >> sftp_commands.txt
echo bye >> sftp_commands.txt

:: 执行SFTP批处理
sftp -b sftp_commands.txt -i "%SSH_KEY%" %SFTP_USER%@%SFTP_HOST%

if %ERRORLEVEL% EQU 0 (
    echo SFTP批处理传输完成！
) else (
    echo SFTP批处理传输失败，错误代码：%ERRORLEVEL%
)

:: 清理命令文件
del sftp_commands.txt
```

### 定时备份脚本

```batch
@echo off
:: 批处理脚本：定时备份数据库到远程服务器
set BACKUP_FILE=C:\backups\db_backup_%date:~-4,4%%date:~-7,2%%date:~-10,2%.sql
set REMOTE_USER=backupuser
set REMOTE_HOST=192.168.1.100
set REMOTE_DIR=C:\backups\
set SSH_KEY=C:\Users\username\.ssh\id_rsa

:: 创建数据库备份
echo 正在创建数据库备份...
mysqldump -u root -p mydb > "%BACKUP_FILE%"

:: 压缩备份文件
echo 正在压缩备份文件...
7z a "%BACKUP_FILE%.7z" "%BACKUP_FILE%" -sdel

:: 传输到远程服务器
echo 正在传输备份文件到远程服务器...
scp -i "%SSH_KEY%" "%BACKUP_FILE%.7z" %REMOTE_USER%@%REMOTE_HOST%:"%REMOTE_DIR%"

if %ERRORLEVEL% EQU 0 (
    echo 备份完成！
) else (
    echo 备份传输失败，错误代码：%ERRORLEVEL%
)
```

## 结论

SCP和SFTP是基于SSH协议的安全文件传输工具，为系统管理员和开发人员提供了安全高效的文件传输解决方案。SCP简单直接，适合快速的文件传输；SFTP功能更丰富，支持交互式操作和文件管理。

选择使用SCP还是SFTP取决于具体需求：
- 对于简单的文件传输，SCP通常更快速、更简单
- 对于需要交互式操作、断点续传或文件管理的场景，SFTP更为适合

无论选择哪种工具，都应遵循安全最佳实践，使用SSH密钥认证、加密敏感数据、限制访问权限，确保文件传输的安全性。

通过本文介绍的命令、选项和实用示例，读者应能够掌握SCP和SFTP的基本用法和高级技巧，满足日常工作中的文件传输需求。