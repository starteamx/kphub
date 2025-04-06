---
title: WordPress网站完整部署  
icon: practice  
order: 6  
---

# WordPress网站完整部署  

## 1. 环境准备  

### 1.1 系统要求  
| 组件       | 最低要求   | 推荐配置   |  
|------------|------------|------------|  
| PHP        | 7.4        | 8.1+       |  
| MySQL      | 5.6        | 8.0        |  
| Web服务器 | Apache/Nginx | Nginx      |  
| 内存       | 512MB      | 2GB+       |
| 存储空间   | 1GB        | 20GB+      |

**选择依据**：
- PHP 8.1+ 相比旧版本性能提升约30%，WordPress 6.0+完全兼容
- MySQL 8.0 提供更好的性能和安全性，支持JSON数据类型
- Nginx 比 Apache 占用资源更少，静态文件处理更高效
- 2GB内存可支持中等流量网站和多个插件同时运行
- 存储空间需考虑媒体文件增长，建议预留足够空间

### 1.2 基础环境安装  
```powershell
# 更新系统包
wsl sudo apt update && sudo apt upgrade -y

# 安装PHP和必要扩展
wsl sudo apt install php8.1 php8.1-fpm php8.1-mysql php8.1-curl php8.1-gd php8.1-mbstring php8.1-xml php8.1-zip php8.1-intl php8.1-bcmath php8.1-imagick -y

# 安装MySQL
wsl sudo apt install mysql-server -y

# 安装Nginx
wsl sudo apt install nginx -y

# 安装实用工具
wsl sudo apt install zip unzip curl wget git -y

# 安装WP-CLI（WordPress命令行工具）
wsl sudo curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
wsl sudo chmod +x wp-cli.phar
wsl sudo mv wp-cli.phar /usr/local/bin/wp
```

### 1.3 系统优化
```powershell
# 创建交换文件（如果内存小于1GB）
wsl sudo fallocate -l 1G /swapfile
wsl sudo chmod 600 /swapfile
wsl sudo mkswap /swapfile
wsl sudo swapon /swapfile
wsl echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# 优化PHP-FPM配置
wsl sudo tee /etc/php/8.1/fpm/pool.d/www.conf > /dev/null << 'EOF'
[www]
user = www-data
group = www-data
listen = /run/php/php8.1-fpm.sock
listen.owner = www-data
listen.group = www-data
pm = dynamic
pm.max_children = 25
pm.start_servers = 5
pm.min_spare_servers = 3
pm.max_spare_servers = 10
pm.max_requests = 500
EOF

# 重启PHP-FPM
wsl sudo systemctl restart php8.1-fpm
```

## 2. WordPress安装  

### 2.1 下载和解压  
```powershell
# 创建网站目录
wsl sudo mkdir -p /var/www/wordpress

# 下载最新版WordPress
wsl cd /var/www && sudo wget https://wordpress.org/latest.tar.gz

# 解压文件
wsl sudo tar -xzvf latest.tar.gz -C /var/www

# 设置正确的权限
wsl sudo chown -R www-data:www-data /var/www/wordpress
wsl sudo find /var/www/wordpress -type d -exec chmod 755 {} \;
wsl sudo find /var/www/wordpress -type f -exec chmod 644 {} \;

# 清理下载文件
wsl sudo rm /var/www/latest.tar.gz
```

### 2.2 数据库配置  
```powershell
# 登录MySQL
wsl sudo mysql -u root -p
```

在MySQL提示符下执行以下SQL命令：

```sql
# 创建WordPress数据库
CREATE DATABASE wordpress CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

# 创建专用数据库用户（使用强密码替换'SecurePass123!'）
CREATE USER 'wpuser'@'localhost' IDENTIFIED BY 'SecurePass123!';

# 授予权限
GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'localhost';

# 应用权限更改
FLUSH PRIVILEGES;

# 退出MySQL
EXIT;
```

### 2.3 创建配置文件
```powershell
# 复制示例配置文件
wsl sudo -u www-data cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

# 生成安全密钥
wsl KEYS=$(curl -s https://api.wordpress.org/secret-key/1.1/salt/)
wsl sudo -u www-data sed -i "s/define( 'AUTH_KEY',         'put your unique phrase here' );/$(echo $KEYS | sed -e 's/[\/&]/\\&/g')/g" /var/www/wordpress/wp-config.php

# 配置数据库连接
wsl sudo -u www-data sed -i "s/database_name_here/wordpress/g" /var/www/wordpress/wp-config.php
wsl sudo -u www-data sed -i "s/username_here/wpuser/g" /var/www/wordpress/wp-config.php
wsl sudo -u www-data sed -i "s/password_here/SecurePass123!/g" /var/www/wordpress/wp-config.php
wsl sudo -u www-data sed -i "s/localhost/localhost/g" /var/www/wordpress/wp-config.php

# 设置表前缀（可选，增强安全性）
wsl sudo -u www-data sed -i "s/wp_/wp_$(date +%s | sha256sum | base64 | head -c 6)_/g" /var/www/wordpress/wp-config.php
```

## 3. Nginx配置  

### 3.1 虚拟主机设置  
```nginx
server {
    listen 80;
    server_name example.com www.example.com;
    root /var/www/wordpress;
    
    # 日志配置
    access_log /var/log/nginx/wordpress_access.log;
    error_log /var/log/nginx/wordpress_error.log;
    
    # 默认索引文件
    index index.php;
    
    # WordPress固定链接支持
    location / {
        try_files $uri $uri/ /index.php?$args;
    }
    
    # 静态文件缓存
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ {
        expires 30d;
        add_header Cache-Control "public, no-transform";
        log_not_found off;
        access_log off;
    }
    
    # 禁止访问敏感文件
    location ~* \.(htaccess|htpasswd|ini|log|sh|sql)$ {
        deny all;
    }
    
    # 禁止访问隐藏文件和目录
    location ~ /\. {
        deny all;
        access_log off;
        log_not_found off;
    }
    
    # 禁止访问wp-content上传目录中的PHP文件
    location ~* /(?:uploads|files)/.*\.php$ {
        deny all;
    }
    
    # PHP文件处理
    location ~ \.php$ {
        try_files $uri =404;
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass unix:/run/php/php8.1-fpm.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
        
        # 防止PHP脚本执行超时
        fastcgi_read_timeout 300;
        fastcgi_buffer_size 128k;
        fastcgi_buffers 4 256k;
        fastcgi_busy_buffers_size 256k;
    }
    
    # 禁止直接访问wp-includes目录
    location ~* ^/wp-includes/.*\.php$ {
        deny all;
    }
    
    # 禁止直接访问wp-content/themes目录中的PHP文件
    location ~* ^/wp-content/themes/.*\.php$ {
        deny all;
    }
}
```

### 3.2 启用配置  
```powershell
# 创建Nginx配置文件
wsl sudo tee /etc/nginx/sites-available/wordpress.conf > /dev/null << 'EOF'
# 这里粘贴上面的Nginx配置
server {
    listen 80;
    server_name example.com www.example.com;
    root /var/www/wordpress;
    
    # 日志配置
    access_log /var/log/nginx/wordpress_access.log;
    error_log /var/log/nginx/wordpress_error.log;
    
    # 默认索引文件
    index index.php;
    
    # WordPress固定链接支持
    location / {
        try_files $uri $uri/ /index.php?$args;
    }
    
    # 静态文件缓存
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ {
        expires 30d;
        add_header Cache-Control "public, no-transform";
        log_not_found off;
        access_log off;
    }
    
    # 禁止访问敏感文件
    location ~* \.(htaccess|htpasswd|ini|log|sh|sql)$ {
        deny all;
    }
    
    # 禁止访问隐藏文件和目录
    location ~ /\. {
        deny all;
        access_log off;
        log_not_found off;
    }
    
    # 禁止访问wp-content上传目录中的PHP文件
    location ~* /(?:uploads|files)/.*\.php$ {
        deny all;
    }
    
    # PHP文件处理
    location ~ \.php$ {
        try_files $uri =404;
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass unix:/run/php/php8.1-fpm.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
        
        # 防止PHP脚本执行超时
        fastcgi_read_timeout 300;
        fastcgi_buffer_size 128k;
        fastcgi_buffers 4 256k;
        fastcgi_busy_buffers_size 256k;
    }
    
    # 禁止直接访问wp-includes目录
    location ~* ^/wp-includes/.*\.php$ {
        deny all;
    }
    
    # 禁止直接访问wp-content/themes目录中的PHP文件
    location ~* ^/wp-content/themes/.*\.php$ {
        deny all;
    }
}
EOF

# 启用站点配置
wsl sudo ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/

# 测试Nginx配置
wsl sudo nginx -t

# 重启Nginx
wsl sudo systemctl restart nginx
```

## 4. WordPress初始化  

### 4.1 安装向导  
完成上述配置后，可以通过浏览器访问WordPress安装向导：

1. 访问 http://example.com（或服务器IP地址）
2. 选择语言（中文或英文）
3. 填写网站信息：
   - 网站标题：您的网站名称
   - 用户名：管理员用户名（不要使用"admin"）
   - 密码：强密码（至少12位，包含大小写字母、数字和特殊字符）
   - 电子邮件：管理员邮箱地址
4. 点击"安装WordPress"完成初始化

也可以使用WP-CLI命令行工具完成安装：

```powershell
# 使用WP-CLI完成WordPress安装
wsl sudo -u www-data wp core install --path=/var/www/wordpress --url=example.com --title="我的WordPress网站" --admin_user=administrator --admin_password=StrongPassword123! --admin_email=admin@example.com
```

### 4.2 配置文件优化  
安装完成后，建议对`wp-config.php`文件进行额外优化：

```php
// 禁用文件编辑
define('DISALLOW_FILE_EDIT', true);

// 限制文件修改
define('DISALLOW_FILE_MODS', false); // 设置为true将禁止插件和主题安装

// 自动更新设置
define('WP_AUTO_UPDATE_CORE', 'minor'); // 只自动更新小版本

// 设置修订版本数量限制
define('WP_POST_REVISIONS', 5);

// 设置自动保存间隔（秒）
define('AUTOSAVE_INTERVAL', 180);

// 设置垃圾箱清空时间（天）
define('EMPTY_TRASH_DAYS', 7);

// 设置内存限制
define('WP_MEMORY_LIMIT', '256M');
define('WP_MAX_MEMORY_LIMIT', '512M');

// 强制SSL后台登录（如果已配置SSL）
// define('FORCE_SSL_ADMIN', true);

// 设置数据库修复
define('WP_ALLOW_REPAIR', false);

// 禁用调试模式（生产环境）
define('WP_DEBUG', false);
define('WP_DEBUG_LOG', false);
define('WP_DEBUG_DISPLAY', false);
```

将这些设置添加到`wp-config.php`文件中：

```powershell
wsl sudo -u www-data tee -a /var/www/wordpress/wp-config.php > /dev/null << 'EOF'

// 安全和性能优化设置
define('DISALLOW_FILE_EDIT', true);
define('WP_AUTO_UPDATE_CORE', 'minor');
define('WP_POST_REVISIONS', 5);
define('AUTOSAVE_INTERVAL', 180);
define('EMPTY_TRASH_DAYS', 7);
define('WP_MEMORY_LIMIT', '256M');
define('WP_MAX_MEMORY_LIMIT', '512M');
define('WP_DEBUG', false);
define('WP_DEBUG_LOG', false);
define('WP_DEBUG_DISPLAY', false);
EOF
```

## 5. 主题与插件  

### 5.1 主题安装  
WordPress默认主题通常已经安装，但您可以安装其他主题：

```powershell
# 使用WP-CLI安装并激活主题
wsl sudo -u www-data wp theme install twentytwentythree --activate --path=/var/www/wordpress

# 安装其他流行主题（不激活）
wsl sudo -u www-data wp theme install astra --path=/var/www/wordpress
wsl sudo -u www-data wp theme install generatepress --path=/var/www/wordpress
wsl sudo -u www-data wp theme install oceanwp --path=/var/www/wordpress
```

主题选择建议：
- **Twenty Twenty-Three**：WordPress官方主题，简洁现代
- **Astra**：轻量级主题，加载速度快，高度可定制
- **GeneratePress**：性能优化主题，代码精简
- **OceanWP**：功能丰富，适合各类网站

### 5.2 必备插件  
以下是建议安装的核心插件，分类列出：

```powershell
# 安全插件
wsl sudo -u www-data wp plugin install wordfence --activate --path=/var/www/wordpress
wsl sudo -u www-data wp plugin install sucuri-scanner --path=/var/www/wordpress

# 性能优化插件
wsl sudo -u www-data wp plugin install wp-super-cache --activate --path=/var/www/wordpress
wsl sudo -u www-data wp plugin install autoptimize --activate --path=/var/www/wordpress

# SEO插件
wsl sudo -u www-data wp plugin install wordpress-seo --activate --path=/var/www/wordpress

# 备份插件
wsl sudo -u www-data wp plugin install updraftplus --activate --path=/var/www/wordpress

# 表单插件
wsl sudo -u www-data wp plugin install contact-form-7 --activate --path=/var/www/wordpress

# 图像优化
wsl sudo -u www-data wp plugin install ewww-image-optimizer --activate --path=/var/www/wordpress

# 垃圾评论防护
wsl sudo -u www-data wp plugin install akismet --activate --path=/var/www/wordpress
```

插件功能说明：
1. **Wordfence**：全面的安全防护，包括防火墙和恶意软件扫描
2. **WP Super Cache**：生成静态HTML文件，减少PHP执行和数据库查询
3. **Autoptimize**：优化CSS、JavaScript和HTML代码
4. **Yoast SEO**：搜索引擎优化工具
5. **UpdraftPlus**：自动备份WordPress网站
6. **Contact Form 7**：创建联系表单
7. **EWWW Image Optimizer**：自动压缩上传的图像
8. **Akismet**：垃圾评论过滤

## 6. 性能优化  

### 6.1 缓存配置  
配置WP Super Cache插件：

```powershell
# 使用WP-CLI配置WP Super Cache
wsl sudo -u www-data wp super-cache enable --path=/var/www/wordpress

# 添加缓存配置到wp-config.php
wsl sudo -u www-data tee -a /var/www/wordpress/wp-config.php > /dev/null << 'EOF'

// WP Super Cache设置
define('WP_CACHE', true);
define('WPCACHEHOME', '/var/www/wordpress/wp-content/plugins/wp-super-cache/');
EOF
```

手动配置步骤（通过WordPress后台）：
1. 登录WordPress管理后台
2. 进入"设置" > "WP Super Cache"
3. 点击"缓存测试"确认功能正常
4. 在"高级"选项卡中：
   - 启用"压缩页面"
   - 启用"不要缓存已知用户"
   - 启用"使用mod_rewrite提供缓存文件"
   - 设置"缓存超时"为3600秒（1小时）
5. 点击"更新状态"保存设置

### 6.2 Nginx缓存规则  
增强Nginx配置以提高性能：

```nginx
# 在server块内添加以下配置

# 启用gzip压缩
gzip on;
gzip_comp_level 6;
gzip_min_length 1000;
gzip_proxied any;
gzip_types text/plain text/css application/json application/javascript application/x-javascript text/xml application/xml application/xml+rss text/javascript image/svg+xml;
gzip_vary on;

# 静态文件缓存规则
location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ {
    expires 1y;
    add_header Cache-Control "public, no-transform";
    log_not_found off;
    access_log off;
}

# 为wp-includes和wp-content设置长期缓存
location ~* ^/wp-(content|includes)/.*\.(js|css|png|jpg|jpeg|gif|ico)$ {
    expires 1y;
    add_header Cache-Control "public, no-transform";
}

# 禁止缓存PHP文件
location ~* \.php$ {
    expires -1;
    add_header Cache-Control "no-store, no-cache, must-revalidate, max-age=0";
}
```

更新Nginx配置：

```powershell
# 编辑Nginx配置文件
wsl sudo nano /etc/nginx/sites-available/wordpress.conf

# 测试配置
wsl sudo nginx -t

# 重新加载Nginx
wsl sudo systemctl reload nginx
```

### 6.3 PHP优化
优化PHP-FPM配置以提高性能：

```powershell
# 编辑PHP配置文件
wsl sudo tee /etc/php/8.1/fpm/conf.d/99-wordpress.ini > /dev/null << 'EOF'
; PHP优化设置
memory_limit = 256M
max_execution_time = 300
upload_max_filesize = 64M
post_max_size = 64M
max_input_vars = 3000
opcache.enable = 1
opcache.memory_consumption = 128
opcache.interned_strings_buffer = 8
opcache.max_accelerated_files = 10000
opcache.revalidate_freq = 60
EOF

# 重启PHP-FPM
wsl sudo systemctl restart php8.1-fpm
```

## 7. 安全加固  

### 7.1 文件权限  
设置正确的文件权限是WordPress安全的基础：

```powershell
# 设置目录权限为755
wsl sudo find /var/www/wordpress -type d -exec chmod 755 {} \;

# 设置文件权限为644
wsl sudo find /var/www/wordpress -type f -exec chmod 644 {} \;

# 设置wp-config.php特殊权限
wsl sudo chmod 600 /var/www/wordpress/wp-config.php

# 确保所有文件归www-data所有
wsl sudo chown -R www-data:www-data /var/www/wordpress

# 设置上传目录权限
wsl sudo chmod -R 755 /var/www/wordpress/wp-content/uploads
```

### 7.2 安全插件配置  
Wordfence是最流行的WordPress安全插件，以下是配置步骤：

1. 登录WordPress后台
2. 进入"Wordfence" > "防火墙"
3. 启用以下设置：
   - 启用"实时流量监控"
   - 启用"暴力破解保护"
   - 设置登录尝试限制为5次
   - 启用"高级阻止"选项
   - 启用"阻止假搜索引擎"
4. 进入"扫描"选项：
   - 设置每日自动扫描
   - 启用"扫描插件和主题中的恶意代码"
   - 启用"扫描核心文件完整性"
   - 启用"扫描公共目录中的可执行文件"

使用WP-CLI配置Wordfence基本设置：

```powershell
# 启用Wordfence自动扫描
wsl sudo -u www-data wp option update wordfence_scheduleScan '1' --path=/var/www/wordpress

# 启用暴力破解保护
wsl sudo -u www-data wp option update wordfence_blockFakeBots '1' --path=/var/www/wordpress
wsl sudo -u www-data wp option update wordfence_maxLoginErrors '5' --path=/var/www/wordpress
```

### 7.3 .htaccess安全规则
虽然Nginx不使用.htaccess文件，但如果您使用Apache，可以添加以下安全规则：

```apache
# 保护wp-config.php
<Files wp-config.php>
    Order Allow,Deny
    Deny from all
</Files>

# 禁止列出目录
Options -Indexes

# 保护.htaccess文件
<Files .htaccess>
    Order Allow,Deny
    Deny from all
</Files>

# 禁止访问包含敏感信息的文件
<FilesMatch "^(wp-config\.php|readme\.html|license\.txt|install\.php)">
    Order Allow,Deny
    Deny from all
</FilesMatch>

# 防止脚本注入
<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteCond %{QUERY_STRING} (\<|%3C).*script.*(\>|%3E) [NC,OR]
    RewriteCond %{QUERY_STRING} GLOBALS(=|\[|\%[0-9A-Z]{0,2}) [OR]
    RewriteCond %{QUERY_STRING} _REQUEST(=|\[|\%[0-9A-Z]{0,2})
    RewriteRule .* index.php [F,L]
</IfModule>
```

### 7.4 SSL配置
为WordPress网站启用HTTPS：

```powershell
# 安装Certbot（Let's Encrypt客户端）
wsl sudo apt install certbot python3-certbot-nginx -y

# 获取SSL证书
wsl sudo certbot --nginx -d example.com -d www.example.com

# 测试自动续期
wsl sudo certbot renew --dry-run
```

在WordPress中启用HTTPS：

```powershell
# 更新WordPress站点URL为HTTPS
wsl sudo -u www-data wp option update home 'https://example.com' --path=/var/www/wordpress
wsl sudo -u www-data wp option update siteurl 'https://example.com' --path=/var/www/wordpress

# 在wp-config.php中强制SSL
wsl sudo -u www-data tee -a /var/www/wordpress/wp-config.php > /dev/null << 'EOF'

// 强制使用HTTPS
define('FORCE_SSL_ADMIN', true);
EOF
```

## 8. 备份策略  

### 8.1 数据库备份  
创建自动数据库备份脚本：

```bash
#!/bin/bash
# WordPress数据库备份脚本

# 配置变量
DB_NAME="wordpress"
DB_USER="wpuser"
DB_PASS="SecurePass123!"
BACKUP_DIR="/var/backups/wordpress/database"
DATE=$(date +"%Y-%m-%d")
RETENTION_DAYS=30

# 创建备份目录
mkdir -p $BACKUP_DIR

# 执行备份
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME | gzip > $BACKUP_DIR/wordpress_db_$DATE.sql.gz

# 删除旧备份
find $BACKUP_DIR -type f -name "wordpress_db_*.sql.gz" -mtime +$RETENTION_DAYS -delete

# 输出结果
echo "数据库备份完成: $BACKUP_DIR/wordpress_db_$DATE.sql.gz"
```

保存脚本并设置定时任务：

```powershell
# 创建备份脚本
wsl sudo tee /usr/local/bin/wp-db-backup.sh > /dev/null << 'EOF'
#!/bin/bash
# WordPress数据库备份脚本

# 配置变量
DB_NAME="wordpress"
DB_USER="wpuser"
DB_PASS="SecurePass123!"
BACKUP_DIR="/var/backups/wordpress/database"
DATE=$(date +"%Y-%m-%d")
RETENTION_DAYS=30

# 创建备份目录
mkdir -p $BACKUP_DIR

# 执行备份
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME | gzip > $BACKUP_DIR/wordpress_db_$DATE.sql.gz

# 删除旧备份
find $BACKUP_DIR -type f -name "wordpress_db_*.sql.gz" -mtime +$RETENTION_DAYS -delete

# 输出结果
echo "数据库备份完成: $BACKUP_DIR/wordpress_db_$DATE.sql.gz"
EOF

# 设置执行权限
wsl sudo chmod +x /usr/local/bin/wp-db-backup.sh

# 创建定时任务（每天凌晨2点执行）
wsl sudo crontab -l | { cat; echo "0 2 * * * /usr/local/bin/wp-db-backup.sh"; } | sudo crontab -
```

### 8.2 文件备份  
创建自动文件备份脚本：

```bash
#!/bin/bash
# WordPress文件备份脚本

# 配置变量
WP_DIR="/var/www/wordpress"
BACKUP_DIR="/var/backups/wordpress/files"
DATE=$(date +"%Y-%m-%d")
RETENTION_DAYS=14

# 创建备份目录
mkdir -p $BACKUP_DIR

# 执行备份
tar -czf $BACKUP_DIR/wordpress_files_$DATE.tar.gz $WP_DIR

# 删除旧备份
find $BACKUP_DIR -type f -name "wordpress_files_*.tar.gz" -mtime +$RETENTION_DAYS -delete

# 输出结果
echo "文件备份完成: $BACKUP_DIR/wordpress_files_$DATE.tar.gz"
```

保存脚本并设置定时任务：

```powershell
# 创建备份脚本
wsl sudo tee /usr/local/bin/wp-files-backup.sh > /dev/null << 'EOF'
#!/bin/bash
# WordPress文件备份脚本

# 配置变量
WP_DIR="/var/www/wordpress"
BACKUP_DIR="/var/backups/wordpress/files"
DATE=$(date +"%Y-%m-%d")
RETENTION_DAYS=14

# 创建备份目录
mkdir -p $BACKUP_DIR

# 执行备份
tar -czf $BACKUP_DIR/wordpress_files
让我继续完成WordPress网站完整部署的文档：

```bash
# WordPress文件备份脚本

# 配置变量
WP_DIR="/var/www/wordpress"
BACKUP_DIR="/var/backups/wordpress/files"
DATE=$(date +"%Y-%m-%d")
RETENTION_DAYS=14

# 创建备份目录
mkdir -p $BACKUP_DIR

# 执行备份
tar -czf $BACKUP_DIR/wordpress_files_$DATE.tar.gz $WP_DIR

# 删除旧备份
find $BACKUP_DIR -type f -name "wordpress_files_*.tar.gz" -mtime +$RETENTION_DAYS -delete

# 输出结果
echo "文件备份完成: $BACKUP_DIR/wordpress_files_$DATE.tar.gz"
EOF

# 设置执行权限
wsl sudo chmod +x /usr/local/bin/wp-files-backup.sh

# 创建定时任务（每周日凌晨3点执行）
wsl sudo crontab -l | { cat; echo "0 3 * * 0 /usr/local/bin/wp-files-backup.sh"; } | sudo crontab -
```

### 8.3 使用UpdraftPlus插件备份

UpdraftPlus是WordPress最流行的备份插件，提供自动备份和云存储集成：

1. 登录WordPress后台
2. 进入"设置" > "UpdraftPlus备份"
3. 配置备份设置：
   - 自动备份频率：数据库（每日）、文件（每周）
   - 保留备份数量：设置为4-8个（根据存储空间决定）
   - 备份内容：选择所有（数据库、插件、主题、上传文件、其他内容）
   - 远程存储：配置云存储（如Dropbox、Google Drive或Amazon S3）

使用WP-CLI配置UpdraftPlus基本设置：

```powershell
# 设置自动备份频率
wsl sudo -u www-data wp option update updraft_interval 'daily' --path=/var/www/wordpress
wsl sudo -u www-data wp option update updraft_interval_database 'daily' --path=/var/www/wordpress
wsl sudo -u www-data wp option update updraft_interval_files 'weekly' --path=/var/www/wordpress

# 设置保留备份数量
wsl sudo -u www-data wp option update updraft_retain 4 --path=/var/www/wordpress
wsl sudo -u www-data wp option update updraft_retain_db 7 --path=/var/www/wordpress
```

## 9. 维护与更新

### 9.1 自动更新配置

WordPress支持自动更新核心、插件和主题。可以通过以下方式配置：

```php
// 在wp-config.php中添加以下代码

// 启用所有自动更新（核心、插件、主题）
define('AUTOMATIC_UPDATER_DISABLED', false);

// 仅启用小版本更新（推荐）
define('WP_AUTO_UPDATE_CORE', 'minor');

// 启用插件和主题自动更新
add_filter('auto_update_plugin', '__return_true');
add_filter('auto_update_theme', '__return_true');
```

添加到wp-config.php：

```powershell
wsl sudo -u www-data tee -a /var/www/wordpress/wp-config.php > /dev/null << 'EOF'

// 自动更新设置
define('WP_AUTO_UPDATE_CORE', 'minor');
EOF
```

创建自定义插件启用插件和主题自动更新：

```powershell
# 创建自定义插件目录
wsl sudo -u www-data mkdir -p /var/www/wordpress/wp-content/plugins/auto-updates

# 创建插件文件
wsl sudo -u www-data tee /var/www/wordpress/wp-content/plugins/auto-updates/auto-updates.php > /dev/null << 'EOF'
<?php
/**
 * Plugin Name: 自动更新管理器
 * Description: 启用插件和主题的自动更新
 * Version: 1.0
 * Author: 系统管理员
 */

// 启用插件自动更新
add_filter('auto_update_plugin', '__return_true');

// 启用主题自动更新
add_filter('auto_update_theme', '__return_true');

// 发送更新通知邮件
add_filter('auto_core_update_send_email', '__return_true');
EOF

# 激活插件
wsl sudo -u www-data wp plugin activate auto-updates --path=/var/www/wordpress
```

### 9.2 定期维护任务

创建WordPress维护脚本：

```bash
#!/bin/bash
# WordPress维护脚本

# 配置变量
WP_PATH="/var/www/wordpress"
LOG_FILE="/var/log/wordpress-maintenance.log"
DATE=$(date +"%Y-%m-%d %H:%M:%S")

# 记录开始时间
echo "[$DATE] 开始WordPress维护任务" >> $LOG_FILE

# 更新WordPress核心
sudo -u www-data wp core update --path=$WP_PATH >> $LOG_FILE 2>&1

# 更新数据库
sudo -u www-data wp core update-db --path=$WP_PATH >> $LOG_FILE 2>&1

# 更新所有插件
sudo -u www-data wp plugin update --all --path=$WP_PATH >> $LOG_FILE 2>&1

# 更新所有主题
sudo -u www-data wp theme update --all --path=$WP_PATH >> $LOG_FILE 2>&1

# 优化数据库
sudo -u www-data wp db optimize --path=$WP_PATH >> $LOG_FILE 2>&1

# 删除垃圾评论
sudo -u www-data wp comment delete $(wp comment list --status=spam --format=ids --path=$WP_PATH) --force --path=$WP_PATH >> $LOG_FILE 2>&1

# 删除修订版本（保留最近10个）
sudo -u www-data wp post delete --force $(wp post list --post_type=revision --format=ids --path=$WP_PATH | head -n -10) --path=$WP_PATH >> $LOG_FILE 2>&1

# 记录完成时间
DATE=$(date +"%Y-%m-%d %H:%M:%S")
echo "[$DATE] WordPress维护任务完成" >> $LOG_FILE
```

保存脚本并设置定时任务：

```powershell
# 创建维护脚本
wsl sudo tee /usr/local/bin/wp-maintenance.sh > /dev/null << 'EOF'
#!/bin/bash
# WordPress维护脚本

# 配置变量
WP_PATH="/var/www/wordpress"
LOG_FILE="/var/log/wordpress-maintenance.log"
DATE=$(date +"%Y-%m-%d %H:%M:%S")

# 记录开始时间
echo "[$DATE] 开始WordPress维护任务" >> $LOG_FILE

# 更新WordPress核心
sudo -u www-data wp core update --path=$WP_PATH >> $LOG_FILE 2>&1

# 更新数据库
sudo -u www-data wp core update-db --path=$WP_PATH >> $LOG_FILE 2>&1

# 更新所有插件
sudo -u www-data wp plugin update --all --path=$WP_PATH >> $LOG_FILE 2>&1

# 更新所有主题
sudo -u www-data wp theme update --all --path=$WP_PATH >> $LOG_FILE 2>&1

# 优化数据库
sudo -u www-data wp db optimize --path=$WP_PATH >> $LOG_FILE 2>&1

# 删除垃圾评论
sudo -u www-data wp comment delete $(wp comment list --status=spam --format=ids --path=$WP_PATH) --force --path=$WP_PATH >> $LOG_FILE 2>&1

# 删除修订版本（保留最近10个）
sudo -u www-data wp post delete --force $(wp post list --post_type=revision --format=ids --path=$WP_PATH | head -n -10) --path=$WP_PATH >> $LOG_FILE 2>&1

# 记录完成时间
DATE=$(date +"%Y-%m-%d %H:%M:%S")
echo "[$DATE] WordPress维护任务完成" >> $LOG_FILE
EOF

# 设置执行权限
wsl sudo chmod +x /usr/local/bin/wp-maintenance.sh

# 创建定时任务（每周一凌晨4点执行）
wsl sudo crontab -l | { cat; echo "0 4 * * 1 /usr/local/bin/wp-maintenance.sh"; } | sudo crontab -
```

## 10. 性能监控与优化

### 10.1 安装监控工具

```powershell
# 安装服务器监控工具
wsl sudo apt install -y htop iotop sysstat

# 安装Nginx监控模块
wsl sudo apt install -y nginx-extras

# 配置Nginx状态页面
wsl sudo tee /etc/nginx/conf.d/status.conf > /dev/null << 'EOF'
server {
    listen 127.0.0.1:8080;
    server_name localhost;
    
    # 禁止外部访问日志
    access_log off;
    
    location /nginx_status {
        stub_status on;
        allow 127.0.0.1;
        deny all;
    }
}
EOF

# 重新加载Nginx配置
wsl sudo nginx -t && sudo systemctl reload nginx
```

### 10.2 WordPress性能插件配置

Query Monitor是一个强大的WordPress开发和调试工具：

```powershell
# 安装Query Monitor插件
wsl sudo -u www-data wp plugin install query-monitor --activate --path=/var/www/wordpress
```

配置Autoptimize插件（已在前面安装）：

1. 登录WordPress后台
2. 进入"设置" > "Autoptimize"
3. 启用以下选项：
   - 优化JavaScript代码
   - 优化CSS代码
   - 优化HTML代码
   - 移除WordPress表情符号和版本
   - 延迟加载图像
4. 点击"保存更改并清除缓存"

### 10.3 数据库优化

```powershell
# 安装MySQL调优工具
wsl sudo apt install -y mysqltuner

# 运行MySQL调优顾问
wsl sudo mysqltuner --user root --pass YourRootPassword

# 优化数据库表
wsl sudo -u www-data wp db optimize --path=/var/www/wordpress
```

创建数据库优化脚本：

```powershell
# 创建数据库优化脚本
wsl sudo tee /usr/local/bin/wp-db-optimize.sh > /dev/null << 'EOF'
#!/bin/bash
# WordPress数据库优化脚本

# 配置变量
WP_PATH="/var/www/wordpress"
LOG_FILE="/var/log/wordpress-db-optimize.log"
DATE=$(date +"%Y-%m-%d %H:%M:%S")

# 记录开始时间
echo "[$DATE] 开始数据库优化" >> $LOG_FILE

# 优化数据库
sudo -u www-data wp db optimize --path=$WP_PATH >> $LOG_FILE 2>&1

# 清理自动草稿
sudo -u www-data wp post delete --force $(wp post list --post_status=auto-draft --format=ids --path=$WP_PATH) --path=$WP_PATH >> $LOG_FILE 2>&1

# 清理垃圾箱
sudo -u www-data wp post delete --force $(wp post list --post_status=trash --format=ids --path=$WP_PATH) --path=$WP_PATH >> $LOG_FILE 2>&1

# 清理垃圾评论
sudo -u www-data wp comment delete --force $(wp comment list --status=spam --format=ids --path=$WP_PATH) --path=$WP_PATH >> $LOG_FILE 2>&1
sudo -u www-data wp comment delete --force $(wp comment list --status=trash --format=ids --path=$WP_PATH) --path=$WP_PATH >> $LOG_FILE 2>&1

# 清理过期的临时选项
sudo -u www-data wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_transient_%' AND option_name NOT LIKE '%_site_transient_%';" --path=$WP_PATH >> $LOG_FILE 2>&1

# 记录完成时间
DATE=$(date +"%Y-%m-%d %H:%M:%S")
echo "[$DATE] 数据库优化完成" >> $LOG_FILE
EOF

# 设置执行权限
wsl sudo chmod +x /usr/local/bin/wp-db-optimize.sh

# 创建定时任务（每周日凌晨5点执行）
wsl sudo crontab -l | { cat; echo "0 5 * * 0 /usr/local/bin/wp-db-optimize.sh"; } | sudo crontab -
```

## 11. 故障排除

### 11.1 常见问题解决方案

**问题1：白屏或500错误**
```powershell
# 检查PHP错误日志
wsl sudo tail -f /var/log/php8.1-fpm.log

# 检查Nginx错误日志
wsl sudo tail -f /var/log/nginx/error.log

# 临时启用WordPress调试
wsl sudo -u www-data sed -i "s/define('WP_DEBUG', false);/define('WP_DEBUG', true);\ndefine('WP_DEBUG_LOG', true);\ndefine('WP_DEBUG_DISPLAY', false);/g" /var/www/wordpress/wp-config.php

# 检查WordPress调试日志
wsl sudo tail -f /var/www/wordpress/wp-content/debug.log
```

**问题2：无法上传文件**
```powershell
# 检查上传目录权限
wsl sudo chmod -R 755 /var/www/wordpress/wp-content/uploads
wsl sudo chown -R www-data:www-data /var/www/wordpress/wp-content/uploads

# 增加PHP上传限制
wsl sudo tee /etc/php/8.1/fpm/conf.d/99-uploads.ini > /dev/null << 'EOF'
upload_max_filesize = 64M
post_max_size = 64M
max_execution_time = 300
EOF

# 重启PHP-FPM
wsl sudo systemctl restart php8.1-fpm
```

**问题3：无法连接数据库**
```powershell
# 检查MySQL服务状态
wsl sudo systemctl status mysql

# 验证数据库连接信息
wsl sudo grep DB_ /var/www/wordpress/wp-config.php

# 测试数据库连接
wsl sudo mysql -u wpuser -p -e "USE wordpress; SHOW TABLES;"

# 重置数据库用户密码（如需要）
wsl sudo mysql -u root -p -e "ALTER USER 'wpuser'@'localhost' IDENTIFIED BY 'NewPassword123!';"
```

**问题4：网站加载缓慢**
```powershell
# 检查服务器负载
wsl top

# 检查MySQL慢查询
wsl sudo tail -f /var/log/mysql/mysql-slow.log

# 安装性能分析插件
wsl sudo -u www-data wp plugin install p3-profiler --activate --path=/var/www/wordpress

# 清理缓存
wsl sudo -u www-data wp cache flush --path=/var/www/wordpress
```

### 11.2 恢复备份

**从数据库备份恢复**：
```powershell
# 恢复数据库备份
wsl sudo gunzip -c /var/backups/wordpress/database/wordpress_db_2023-01-01.sql.gz | mysql -u wpuser -p wordpress
```

**从文件备份恢复**：
```powershell
# 恢复文件备份
wsl sudo mkdir -p /tmp/wp-restore
wsl sudo tar -xzf /var/backups/wordpress/files/wordpress_files_2023-01-01.tar.gz -C /tmp/wp-restore
wsl sudo rsync -av --delete /tmp/wp-restore/var/www/wordpress/ /var/www/wordpress/
wsl sudo chown -R www-data:www-data /var/www/wordpress
wsl sudo find /var/www/wordpress -type d -exec chmod 755 {} \;
wsl sudo find /var/www/wordpress -type f -exec chmod 644 {} \;
wsl sudo chmod 600 /var/www/wordpress/wp-config.php
```

**使用UpdraftPlus恢复**：
1. 登录WordPress后台
2. 进入"设置" > "UpdraftPlus备份"
3. 点击"恢复"选项卡
4. 选择要恢复的备份
5. 选择要恢复的组件（数据库、插件、主题等）
6. 点击"恢复"按钮

## 12. 多站点配置

### 12.1 启用WordPress多站点

```powershell
# 编辑wp-config.php添加多站点支持
wsl sudo -u www-data tee -a /var/www/wordpress/wp-config.php > /dev/null << 'EOF'

/* 多站点设置 */
define('WP_ALLOW_MULTISITE', true);
EOF
```

完成后，登录WordPress后台：
1. 进入"工具" > "网络安装"
2. 选择子站点结构（子域名或子目录）
3. 填写网络标题和管理员邮箱
4. 点击"安装"按钮

安装向导会提供额外的配置代码，需要添加到wp-config.php和.htaccess文件中。

### 12.2 Nginx多站点配置

对于子目录多站点，Nginx配置：

```nginx
server {
    listen 80;
    server_name example.com www.example.com;
    root /var/www/wordpress;
    index index.php;
    
    # WordPress多站点规则
    location / {
        try_files $uri $uri/ /index.php?$args;
    }
    
    # 添加子目录支持
    if (!-e $request_filename) {
        rewrite /wp-admin$ $scheme://$host$uri/ permanent;
        rewrite ^(/[^/]+)?(/wp-.*) $2 last;
        rewrite ^(/[^/]+)?(/.*\.php) $2 last;
    }
    
    # PHP处理
    location ~ \.php$ {
        try_files $uri =404;
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass unix:/run/php/php8.1-fpm.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }
}
```

对于子域名多站点，Nginx配置：

```nginx
server {
    listen 80;
    server_name example.com www.example.com *.example.com;
    root /var/www/wordpress;
    index index.php;
    
    # WordPress多站点规则
    location / {
        try_files $uri $uri/ /index.php?$args;
    }
    
    # PHP处理
    location ~ \.php$ {
        try_files $uri =404;
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass unix:/run/php/php8.1-fpm.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }
}
```

## 总结

通过本指南，您已经完成了WordPress网站的完整部署流程，包括环境准备、安装配置、性能优化、安全加固、备份策略和维护计划。这些步骤将帮助您构建一个高性能、安全可靠的WordPress网站。

关键要点回顾：
1. 选择合适的系统和软件版本
2. 正确配置Web服务器、PHP和MySQL
3. 安装必要的WordPress插件增强功能和安全性
4. 实施缓存策略提高性能
5. 设置正确的文件权限和安全措施
6. 建立自动备份和恢复机制
7. 制定定期维护计划

按照这些最佳实践，您的WordPress网站将能够稳定运行并支持业务增长。定期检查更新和安全漏洞，确保网站始终处于最佳状态。