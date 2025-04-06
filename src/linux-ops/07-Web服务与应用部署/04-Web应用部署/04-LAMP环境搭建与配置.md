# LAMP环境搭建与配置

---
title: LAMP环境搭建与配置
icon: practice
order: 4
---

# LAMP环境搭建与配置  

## 1. 基础环境准备  

### 1.1 系统要求  
| 组件       | 最低配置   | 推荐配置   |  
|------------|------------|------------|  
| 操作系统   | Ubuntu 18.04 | Ubuntu 20.04 |  
| 内存       | 1GB        | 4GB        |  
| 存储       | 10GB       | 50GB       |  

**选择依据**：  
- Ubuntu 20.04 LTS 提供5年长期支持，内核版本（5.4）对现代硬件兼容性更好  
- PHP 7.4+ 需要至少1GB内存处理中等流量站点  
- 存储空间需包含系统文件（约3GB）+ 日志文件（建议预留30%空间）  

### 1.2 初始系统配置  
```bash
# 更新软件源（建议在安装任何软件前执行）
sudo apt update && sudo apt upgrade -y

# 设置上海时区（影响日志时间戳和计划任务执行）
sudo timedatectl set-timezone Asia/Shanghai

# 安装基础工具包
sudo apt install -y curl wget vim net-tools
```

## 2. Apache安装与配置  

### 2.1 安装Apache  
```bash
# 安装主程序及常用模块
sudo apt install apache2 apache2-utils ssl-cert -y

# 设置开机自启并立即启动
sudo systemctl enable --now apache2

# 验证安装（应返回"Apache/2.4.41"类似信息）
apache2 -v
```

### 2.2 虚拟主机配置  
```apache
<VirtualHost *:80>
    # 主域名配置（支持通配符 *.example.com）
    ServerName example.com
    ServerAlias www.example.com
    
    # 网站根目录（确保目录权限为www-data:www-data）
    DocumentRoot /var/www/html
    
    # 目录级安全设置
    <Directory /var/www/html>
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
    
    # 日志分割设置（按天轮转）
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```

配置完成后，需要启用站点并重新加载Apache：

```bash
# 启用配置
sudo a2ensite example.conf
# 重新加载Apache配置
sudo systemctl reload apache2
```

## 3. MySQL安装与配置  

### 3.1 安装MySQL  
```bash
# 安装MySQL 8.0服务端
sudo apt install mysql-server -y

# 运行安全初始化脚本（重要！）
# 会提示设置root密码、移除匿名用户等
sudo mysql_secure_installation

# 验证服务状态（应显示active (running)）
sudo systemctl status mysql
```

### 3.2 创建数据库用户  
```sql
-- 使用root登录（建议使用sudo mysql直接登录）
CREATE DATABASE webapp 
    CHARACTER SET utf8mb4 
    COLLATE utf8mb4_unicode_ci;

-- 创建应用专用用户（避免使用root账户）
CREATE USER 'webuser'@'localhost' 
    IDENTIFIED WITH caching_sha2_password 
    BY 'SecurePass123!';

-- 精确授权（生产环境建议细化权限）
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
    ON webapp.* 
    TO 'webuser'@'localhost';

-- 权限生效
FLUSH PRIVILEGES;
```

## 4. PHP安装与配置  

### 4.1 安装PHP及扩展  
```bash
# 安装PHP核心及Apache集成模块
sudo apt install php libapache2-mod-php php-mysql -y

# 常用扩展安装（根据应用需求选择）
sudo apt install \
    php-curl php-gd php-mbstring \
    php-xml php-zip php-intl \
    php-redis php-opcache -y

# 验证PHP版本（应显示7.4+）
php -v
```

### 4.2 PHP性能调优  
```ini
[PHP]
; 内存限制根据应用需求调整
memory_limit = 256M

; 脚本最大执行时间（单位：秒）
max_execution_time = 120

; 文件上传限制
upload_max_filesize = 64M
post_max_size = 128M

; 时区设置（影响date函数）
date.timezone = Asia/Shanghai

; 错误报告级别（生产环境建议关闭display_errors）
display_errors = Off
log_errors = On
```

## 5. 环境集成测试  

### 5.1 测试Apache  
```bash
# 重启服务使配置生效
sudo systemctl restart apache2

# 检查服务端口（应看到80端口监听）
sudo netstat -tulpn | grep apache2

# 使用curl测试响应头
curl -I http://localhost
```

### 5.2 测试PHP  
```php
<?php 
// 显示PHP配置信息（测试后务必删除！）
phpinfo(); 

// 测试MySQL连接
$link = mysqli_connect('localhost', 'webuser', 'SecurePass123!');
if (!$link) {
    die('连接失败: ' . mysqli_connect_error());
}
echo '成功连接到MySQL服务器';
?>
```

## 6. 安全加固  

### 6.1 Apache安全配置  
```apache
# 隐藏服务器版本信息
ServerTokens Prod
ServerSignature Off

# 禁用不必要的方法
<Location "/">
    <LimitExcept GET POST HEAD>
        Deny from all
    </LimitExcept>
</Location>

# 防止点击劫持攻击
Header always append X-Frame-Options SAMEORIGIN

# 禁用TRACE方法（防范XST攻击）
TraceEnable Off
```

### 6.2 MySQL安全设置  
```sql
-- 修改root账户认证方式（8.0默认使用caching_sha2_password）
ALTER USER 'root'@'localhost' 
    IDENTIFIED WITH mysql_native_password 
    BY 'NewSecurePass123!';

-- 创建监控专用只读账户
CREATE USER 'monitor'@'localhost' IDENTIFIED BY 'MonitorPass123!';
GRANT PROCESS, REPLICATION CLIENT ON *.* TO 'monitor'@'localhost';
```

## 7. 性能优化  

### 7.1 Apache优化  
```apache
<IfModule mpm_prefork_module>
    # 计算公式：MaxRequestWorkers = (Total Memory - OS Memory) / Apache Process Size
    StartServers        4
    MinSpareServers     4
    MaxSpareServers     8
    MaxRequestWorkers   100
    MaxConnectionsPerChild 10000
    
    # 保持连接配置（减少TCP握手开销）
    KeepAlive On
    KeepAliveTimeout 5
    MaxKeepAliveRequests 100
</IfModule>
```

### 7.2 PHP OPcache配置  
```ini
[opcache]
; 启用字节码缓存
opcache.enable=1

; 分配内存大小（建议128-256MB）
opcache.memory_consumption=128

; 缓存文件数量上限
opcache.max_accelerated_files=10000

; 验证文件时间戳（开发环境设为1，生产设为0）
opcache.validate_timestamps=0

; 每60秒检查更新（当validate_timestamps=1时有效）
opcache.revalidate_freq=60
```

## 8. 常见问题解决  

### 8.1 403 Forbidden错误  
```bash
# 检查目录权限（递归修改）
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www

# 检查SELinux状态（Ubuntu默认未启用）
sudo setenforce 0  # 临时禁用
sudo vim /etc/selinux/config  # 永久禁用
```

### 8.2 MySQL连接问题  
```bash
# 检查用户权限
SHOW GRANTS FOR 'webuser'@'localhost';

# 检查绑定地址（确保不是127.0.0.1）
sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf
# 修改绑定地址为0.0.0.0（谨慎使用！）
bind-address = 0.0.0.0

# 开放防火墙端口
sudo ufw allow 3306/tcp
```

## 9. 维护建议  

### 9.1 定期备份策略
```bash
# 数据库备份（每日执行）
mysqldump -u root -p --all-databases > /backup/mysql/full_$(date +\%Y\%m\%d).sql

# 网站文件备份（每周执行）
tar -czf /backup/www/website_$(date +\%Y\%m\%d).tar.gz /var/www/html/

# 自动清理30天前的备份
find /backup/ -type f -name "*.sql" -mtime +30 -delete
find /backup/ -type f -name "*.tar.gz" -mtime +30 -delete
```

### 9.2 日志管理
```bash
# 安装日志轮转工具
sudo apt install logrotate -y

# Apache日志轮转配置
cat > /etc/logrotate.d/apache2 << EOF
/var/log/apache2/*.log {
    daily
    missingok
    rotate 14
    compress
    delaycompress
    notifempty
    create 640 root adm
    sharedscripts
    postrotate
        if /etc/init.d/apache2 status > /dev/null ; then
            /etc/init.d/apache2 reload > /dev/null
        fi
    endscript
}
EOF
```

### 9.3 系统更新计划
```bash
# 创建自动更新脚本
cat > /usr/local/bin/auto-update.sh << EOF
#!/bin/bash
# 记录更新日志
LOG_FILE="/var/log/system-updates.log"
echo "$(date): 开始系统更新" >> $LOG_FILE

# 更新软件包
apt update && apt upgrade -y >> $LOG_FILE 2>&1

# 重启必要服务
systemctl restart apache2 mysql
echo "$(date): 更新完成" >> $LOG_FILE
EOF

# 设置执行权限
chmod +x /usr/local/bin/auto-update.sh

# 添加到crontab（每周日凌晨3点执行）
(crontab -l 2>/dev/null; echo "0 3 * * 0 /usr/local/bin/auto-update.sh") | crontab -
```

## 10. 监控与告警

### 10.1 基础监控设置
```bash
# 安装监控工具
sudo apt install -y htop iotop sysstat

# 设置资源使用率监控
cat > /usr/local/bin/resource-monitor.sh << EOF
#!/bin/bash
# 检查CPU使用率
CPU_USAGE=\$(top -bn1 | grep "Cpu(s)" | awk '{print \$2 + \$4}')
# 检查内存使用率
MEM_USAGE=\$(free | grep Mem | awk '{print \$3/\$2 * 100.0}')
# 检查磁盘使用率
DISK_USAGE=\$(df -h / | awk 'NR==2 {print \$5}' | sed 's/%//g')

# 记录到日志
echo "\$(date): CPU: \${CPU_USAGE}%, MEM: \${MEM_USAGE}%, DISK: \${DISK_USAGE}%" >> /var/log/resource-usage.log

# 告警阈值检查
if (( \$(echo "\$CPU_USAGE > 80" | bc -l) )); then
    echo "警告: CPU使用率超过80%" | mail -s "服务器CPU告警" admin@example.com
fi

if (( \$(echo "\$MEM_USAGE > 85" | bc -l) )); then
    echo "警告: 内存使用率超过85%" | mail -s "服务器内存告警" admin@example.com
fi

if (( \$DISK_USAGE > 90 )); then
    echo "警告: 磁盘使用率超过90%" | mail -s "服务器磁盘告警" admin@example.com
fi
EOF

# 设置执行权限
chmod +x /usr/local/bin/resource-monitor.sh

# 添加到crontab（每10分钟执行一次）
(crontab -l 2>/dev/null; echo "*/10 * * * * /usr/local/bin/resource-monitor.sh") | crontab -
```

### 10.2 服务健康检查
```bash
# 创建服务健康检查脚本
cat > /usr/local/bin/service-health.sh << EOF
#!/bin/bash
# 检查Apache状态
if ! systemctl is-active --quiet apache2; then
    echo "警告: Apache服务已停止，尝试重启..." | mail -s "Apache服务告警" admin@example.com
    systemctl restart apache2
fi

# 检查MySQL状态
if ! systemctl is-active --quiet mysql; then
    echo "警告: MySQL服务已停止，尝试重启..." | mail -s "MySQL服务告警" admin@example.com
    systemctl restart mysql
fi

# 检查网站可访问性
HTTP_CODE=\$(curl -s -o /dev/null -w "%{http_code}" http://localhost/)
if [ "\$HTTP_CODE" != "200" ]; then
    echo "警告: 网站返回非200状态码: \$HTTP_CODE" | mail -s "网站可访问性告警" admin@example.com
fi
EOF

# 设置执行权限
chmod +x /usr/local/bin/service-health.sh

# 添加到crontab（每5分钟执行一次）
(crontab -l 2>/dev/null; echo "*/5 * * * * /usr/local/bin/service-health.sh") | crontab -
```

## 11. 扩展功能

### 11.1 安装phpMyAdmin
```bash
# 安装phpMyAdmin
sudo apt install phpmyadmin -y

# 配置Apache集成（安装过程会自动询问）
# 如果未自动配置，手动创建符号链接
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

# 增强phpMyAdmin安全性
cat > /etc/apache2/conf-available/phpmyadmin.conf << EOF
# phpMyAdmin Apache配置
Alias /phpmyadmin /usr/share/phpmyadmin

<Directory /usr/share/phpmyadmin>
    Options FollowSymLinks
    DirectoryIndex index.php
    AllowOverride All
    
    # 限制访问IP（根据实际情况修改）
    <IfModule mod_authz_core.c>
        # Apache 2.4
        Require ip 127.0.0.1
        Require ip ::1
        # 添加允许的IP
        Require ip 192.168.1.0/24
    </IfModule>
</Directory>

# 禁止访问敏感目录
<Directory /usr/share/phpmyadmin/libraries>
    Require all denied
</Directory>
<Directory /usr/share/phpmyadmin/templates>
    Require all denied
</Directory>
EOF

# 启用配置并重启Apache
sudo a2enconf phpmyadmin
sudo systemctl reload apache2
```

### 11.2 配置SSL证书
```bash
# 安装Let's Encrypt客户端
sudo apt install certbot python3-certbot-apache -y

# 获取并安装SSL证书
sudo certbot --apache -d example.com -d www.example.com

# 测试自动续期
sudo certbot renew --dry-run

# 添加强化SSL配置
cat > /etc/apache2/conf-available/ssl-params.conf << EOF
SSLProtocol All -SSLv2 -SSLv3 -TLSv1 -TLSv1.1
SSLHonorCipherOrder On
SSLCipherSuite ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384
SSLCompression off
SSLSessionTickets off

# OCSP Stapling
SSLUseStapling on
SSLStaplingCache "shmcb:logs/stapling-cache(150000)"
SSLStaplingResponseMaxAge 86400
EOF

# 启用配置
sudo a2enconf ssl-params
sudo systemctl reload apache2
```

## 12. 故障排除指南

### 12.1 Apache常见问题
```bash
# 检查语法错误
sudo apache2ctl configtest

# 检查错误日志
sudo tail -f /var/log/apache2/error.log

# 检查模块加载情况
apache2ctl -M

# 常见问题解决方案
# 1. 端口冲突：检查并修改端口
sudo netstat -tulpn | grep :80
sudo vim /etc/apache2/ports.conf

# 2. 权限问题：修复目录权限
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html
```

### 12.2 MySQL常见问题
```bash
# 检查错误日志
sudo tail -f /var/log/mysql/error.log

# 检查连接限制
mysql -u root -p -e "SHOW VARIABLES LIKE 'max_connections';"

# 常见问题解决方案
# 1. 内存不足：调整缓冲区大小
sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf
# 添加或修改以下参数
# innodb_buffer_pool_size = 256M  # 调整为系统内存的50%左右

# 2. 表损坏修复
mysqlcheck -u root -p --auto-repair --check --optimize --all-databases
```

### 12.3 PHP常见问题
```bash
# 检查PHP配置
php -i | grep "Loaded Configuration File"

# 检查PHP错误日志
sudo tail -f /var/log/apache2/error.log

# 常见问题解决方案
# 1. 内存限制：增加PHP内存限制
sudo vim /etc/php/7.4/apache2/php.ini
# 修改 memory_limit = 256M

# 2. 执行时间：增加最大执行时间
# 修改 max_execution_time = 120

# 应用更改
sudo systemctl restart apache2
```