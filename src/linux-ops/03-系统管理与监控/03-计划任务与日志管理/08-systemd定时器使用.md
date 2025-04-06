---
title: systemd定时器使用
icon: systemd-timer
order: 8
---

# systemd定时器使用

## systemd定时器基础

### 什么是systemd定时器

systemd定时器是systemd系统中的一种单元类型，用于在特定时间或时间间隔触发其他systemd单元（通常是服务单元）。作为现代Linux系统中cron的替代方案，systemd定时器提供了更强大、更灵活的计划任务功能，与整个systemd生态系统紧密集成。

systemd定时器由两个主要组件组成：

1. **定时器单元（Timer Unit）**：以`.timer`为扩展名的配置文件，定义何时触发操作
2. **目标单元（Target Unit）**：被定时器触发的单元，通常是服务（`.service`）单元

这种分离设计使得定时任务的配置更加清晰和模块化，便于管理和维护。

### systemd定时器与cron的比较

systemd定时器相比传统的cron系统有许多优势，但也有一些限制。以下是它们的主要区别：

| 特性 | systemd定时器 | cron |
|------|--------------|------|
| 配置方式 | 结构化的单元文件 | 文本行配置 |
| 日志记录 | 集成到systemd日志 | 依赖邮件或重定向 |
| 依赖管理 | 支持复杂的依赖关系 | 不支持 |
| 精确控制 | 支持毫秒级精度 | 最小精度为分钟 |
| 错过任务处理 | 可配置的行为 | 简单跳过 |
| 并行执行 | 内置支持 | 需要手动处理 |
| 资源控制 | 通过systemd限制 | 有限支持 |
| 条件执行 | 丰富的条件表达式 | 有限支持 |
| 学习曲线 | 较陡峭 | 相对简单 |
| 系统集成 | 与systemd紧密集成 | 独立系统 |

#### systemd定时器的优势

1. **更好的日志记录**：所有任务执行都记录在systemd日志中，可以通过`journalctl`轻松查看
2. **精细的依赖管理**：可以定义服务之间的依赖关系，确保按正确顺序执行
3. **更精确的时间控制**：支持毫秒级精度和更复杂的时间表达式
4. **资源限制**：可以为任务设置CPU、内存和I/O限制
5. **状态监控**：可以轻松查看定时器状态和历史执行情况
6. **错过执行的处理**：可以配置系统启动后如何处理错过的执行
7. **事务性执行**：任务可以作为systemd事务的一部分执行，支持回滚

#### systemd定时器的限制

1. **配置复杂度**：相比cron的简单语法，需要创建和管理多个配置文件
2. **学习曲线**：需要了解systemd的概念和工作方式
3. **兼容性**：仅适用于使用systemd的现代Linux发行版
4. **集中管理**：不像crontab那样支持每个用户有自己的任务列表（虽然可以通过用户单元实现类似功能）

### systemd定时器类型

systemd定时器支持两种主要类型：

#### 1. 实时定时器（Realtime Timers）

基于绝对时间点或相对于特定时间点的偏移触发。这类似于传统cron的工作方式。

配置示例：
```ini
[Timer]
OnCalendar=Mon,Tue *-*-* 02:00:00
```

这将在每周一和周二的凌晨2点触发。

#### 2. 单调定时器（Monotonic Timers）

基于相对于特定系统事件（如启动时间）的时间间隔触发，不受系统时钟调整的影响。

配置示例：
```ini
[Timer]
OnBootSec=15min
OnUnitActiveSec=1h
```

这将在系统启动后15分钟触发一次，然后每小时触发一次。

## systemd定时器配置

### 定时器单元文件结构

systemd定时器单元文件通常位于以下位置之一：

- `/etc/systemd/system/`：系统管理员创建的单元
- `/usr/lib/systemd/system/`：软件包安装的单元
- `~/.config/systemd/user/`：用户定义的单元（用户模式）

一个完整的定时器单元文件通常包含以下几个部分：

```ini
[Unit]
Description=描述定时器的用途
Documentation=相关文档链接
After=network.target
Requires=some-dependency.service

[Timer]
OnCalendar=*-*-* 02:00:00
AccuracySec=1h
RandomizedDelaySec=30min
Persistent=true
Unit=my-service.service

[Install]
WantedBy=timers.target
```

#### [Unit] 部分

包含定时器的基本信息和依赖关系：

- **Description**：定时器的描述
- **Documentation**：相关文档的URL
- **After**：定义启动顺序（在指定单元之后启动）
- **Requires**：定义硬依赖（如果依赖单元失败，此单元也会失败）
- **Wants**：定义软依赖（依赖单元失败不影响此单元）

#### [Timer] 部分

定义定时器的触发条件和行为：

- **OnCalendar**：基于日历时间触发（类似cron表达式）
- **OnBootSec**：系统启动后多长时间触发
- **OnStartupSec**：systemd启动后多长时间触发
- **OnActiveSec**：定时器激活后多长时间触发
- **OnUnitActiveSec**：目标单元完成后多长时间再次触发
- **OnUnitInactiveSec**：目标单元变为非活动状态后多长时间触发
- **AccuracySec**：时间精度（默认为1分钟）
- **RandomizedDelaySec**：随机延迟时间（防止多个定时器同时触发）
- **Persistent**：如果设为true，则系统启动后会触发错过的执行
- **WakeSystem**：如果设为true，则可以从休眠状态唤醒系统
- **Unit**：要触发的目标单元（默认为同名的.service文件）

#### [Install] 部分

定义如何启用定时器：

- **WantedBy**：定义此单元应被哪个目标单元拉入（通常是`timers.target`）
- **RequiredBy**：定义哪些单元需要此单元（更强的依赖关系）

### 时间表达式语法

systemd定时器使用自己的时间表达式语法，特别是在`OnCalendar`选项中。这种语法比cron表达式更灵活，但也更复杂。

#### 基本格式

`OnCalendar`的基本格式为：

```
日期 时间
```

其中：
- **日期**可以是：`星期几`、`年-月-日`或两者的组合
- **时间**格式为：`小时:分钟:秒`

#### 通配符和特殊值

- **星号 (*)**：匹配任何值
- **逗号 (,)**：列出多个值
- **连字符 (-)**：指定范围
- **斜杠 (/)**：指定步长
- **~**：表示范围的结束（如月份的最后一天）
- **..** 或 **...** ：表示连续的时间范围

#### 日期格式示例

```
Mon,Tue                # 周一和周二
Mon..Fri               # 周一到周五
Mon-Fri                # 同上，周一到周五
Sat,Sun                # 周末
Mon *-*-1..7           # 每月1日到7日的周一
*-*-1                  # 每月1日
*-*-1/2                # 每月的奇数日
*-*~1                  # 每月的最后一天
*-*~1/2                # 每月的最后一天和倒数第三天
*-*-7..31              # 每月7日到31日（如果当月有这些日期）
```

#### 时间格式示例

```
00:00:00               # 午夜零点
23:59:59               # 午夜前一秒
12:00:00               # 中午
*:00:00                # 每小时整点
*:*:00                 # 每分钟的开始
*:*:*                  # 每秒（不推荐，会导致过于频繁的触发）
*:00/15:00             # 每小时的0分、15分、30分和45分
```

#### 完整表达式示例

```
Mon *-*-* 00:00:00     # 每周一午夜
*-*-* 02:00:00         # 每天凌晨2点
*-*-* 00/6:00:00       # 每天0点、6点、12点和18点
*-*-1/2 00:00:00       # 每月奇数日的午夜
*-1,4,7,10-* 00:00:00  # 每季度第一个月的午夜
```

#### 使用systemd-analyze验证表达式

可以使用`systemd-analyze calendar`命令验证时间表达式的正确性并查看下次触发时间：

```bash
systemd-analyze calendar "Mon *-*-* 00:00:00"
```

输出示例：
```
  Original form: Mon *-*-* 00:00:00
Normalized form: Mon *-*-* 00:00:00
    Next elapse: Mon 2023-07-31 00:00:00 CST
       (in UTC): Sun 2023-07-30 16:00:00 UTC
       From now: 6h left
```

### 服务单元文件配置

定时器通常触发服务单元，因此需要创建对应的服务单元文件。一个基本的服务单元文件示例：

```ini
[Unit]
Description=我的定时任务
After=network.target

[Service]
Type=oneshot
ExecStart=/path/to/my/script.sh
User=username
Group=groupname
Environment="VAR1=value1" "VAR2=value2"

[Install]
WantedBy=multi-user.target
```

#### [Service] 部分的重要选项

- **Type**：服务类型，对于定时任务通常是`oneshot`（执行完就退出）
- **ExecStart**：要执行的命令或脚本
- **ExecStartPre**：在主命令之前执行的命令
- **ExecStartPost**：在主命令之后执行的命令
- **User/Group**：运行服务的用户和组
- **WorkingDirectory**：工作目录
- **Environment**：环境变量设置
- **StandardOutput/StandardError**：标准输出和错误输出的处理方式
- **SuccessExitStatus**：被视为成功的额外退出状态码
- **Restart**：失败时是否重启服务
- **RestartSec**：重启前等待的时间

## systemd定时器管理

### 创建和启用定时器

创建systemd定时器的基本步骤：

1. **创建服务单元文件**：定义要执行的任务

```bash
sudo nano /etc/systemd/system/my-task.service
```

```ini
[Unit]
Description=我的定时任务

[Service]
Type=oneshot
ExecStart=/path/to/my/script.sh

[Install]
WantedBy=multi-user.target
```

2. **创建定时器单元文件**：定义何时触发服务

```bash
sudo nano /etc/systemd/system/my-task.timer
```

```ini
[Unit]
Description=每天运行我的任务
Requires=my-task.service

[Timer]
Unit=my-task.service
OnCalendar=*-*-* 03:00:00
Persistent=true

[Install]
WantedBy=timers.target
```

3. **重新加载systemd配置**：

```bash
sudo systemctl daemon-reload
```

4. **启用并启动定时器**：

```bash
sudo systemctl enable my-task.timer
sudo systemctl start my-task.timer
```

### 管理定时器的常用命令

#### 查看所有定时器

```bash
# 查看所有定时器及其状态
systemctl list-timers --all

# 查看特定定时器的详细信息
systemctl status my-task.timer
```

`list-timers`的输出示例：
```
NEXT                         LEFT          LAST                         PASSED       UNIT                         ACTIVATES
Mon 2023-07-31 00:00:00 CST  5h 23min left Sun 2023-07-30 00:00:00 CST  18h ago      my-task.timer                my-task.service
Mon 2023-07-31 00:00:00 CST  5h 23min left Sun 2023-07-30 00:00:00 CST  18h ago      logrotate.timer              logrotate.service
```

#### 启动和停止定时器

```bash
# 启动定时器
sudo systemctl start my-task.timer

# 停止定时器
sudo systemctl stop my-task.timer

# 重启定时器
sudo systemctl restart my-task.timer
```

#### 启用和禁用定时器

```bash
# 启用定时器（开机自动启动）
sudo systemctl enable my-task.timer

# 禁用定时器（不再开机自动启动）
sudo systemctl disable my-task.timer

# 同时启用并立即启动
sudo systemctl enable --now my-task.timer
```

#### 手动触发服务

有时需要立即执行定时任务，而不等待定时器触发：

```bash
# 手动启动对应的服务单元
sudo systemctl start my-task.service
```

#### 查看日志

查看定时器和服务的日志：

```bash
# 查看定时器日志
journalctl -u my-task.timer

# 查看服务日志
journalctl -u my-task.service

# 实时查看日志
journalctl -u my-task.service -f

# 查看最近的日志
journalctl -u my-task.service -n 50

# 查看特定时间范围的日志
journalctl -u my-task.service --since "2023-07-30" --until "2023-07-31 03:00"
```

### 修改和更新定时器

修改定时器配置的步骤：

1. **编辑定时器文件**：

```bash
sudo nano /etc/systemd/system/my-task.timer
```

2. **重新加载systemd配置**：

```bash
sudo systemctl daemon-reload
```

3. **重启定时器**：

```bash
sudo systemctl restart my-task.timer
```

4. **验证更改**：

```bash
systemctl list-timers --all | grep my-task
```

## 实际应用案例

### 系统维护任务

#### 系统更新定时器

自动更新系统软件包：

1. 创建服务文件：

```bash
sudo nano /etc/systemd/system/auto-update.service
```

```ini
[Unit]
Description=自动系统更新
After=network-online.target
Wants=network-online.target

[Service]
Type=oneshot
ExecStart=/bin/bash -c 'apt-get update && apt-get -y upgrade'
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target
```

2. 创建定时器文件：

```bash
sudo nano /etc/systemd/system/auto-update.timer
```

```ini
[Unit]
Description=每周系统更新
Requires=auto-update.service

[Timer]
Unit=auto-update.service
OnCalendar=Sun 03:00:00
RandomizedDelaySec=30min
Persistent=true

[Install]
WantedBy=timers.target
```

3. 启用定时器：

```bash
sudo systemctl daemon-reload
sudo systemctl enable --now auto-update.timer
```

#### 日志清理定时器

定期清理旧日志文件：

1. 创建清理脚本：

```bash
sudo nano /usr/local/bin/clean-logs.sh
```

```bash
#!/bin/bash
# 清理超过30天的日志文件

find /var/log -name "*.log.*" -type f -mtime +30 -delete
find /var/log -name "*.gz" -type f -mtime +30 -delete
journalctl --vacuum-time=30d

echo "日志清理完成：$(date)"
```

2. 添加执行权限：

```bash
sudo chmod +x /usr/local/bin/clean-logs.sh
```

3. 创建服务文件：

```bash
sudo nano /etc/systemd/system/clean-logs.service
```

```ini
[Unit]
Description=清理旧日志文件
After=local-fs.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/clean-logs.sh
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target
```

4. 创建定时器文件：

```bash
sudo nano /etc/systemd/system/clean-logs.timer
```

```ini
[Unit]
Description=每月清理旧日志
Requires=clean-logs.service

[Timer]
Unit=clean-logs.service
OnCalendar=*-*-1 02:00:00
RandomizedDelaySec=15min
Persistent=true

[Install]
WantedBy=timers.target
```

5. 启用定时器：

```bash
sudo systemctl daemon-reload
sudo systemctl enable --now clean-logs.timer
```

### 数据备份任务

#### 数据库备份定时器

定期备份MySQL数据库：

1. 创建备份脚本：

```bash
sudo nano /usr/local/bin/backup-mysql.sh
```

```bash
#!/bin/bash
# MySQL数据库备份脚本

# 配置
BACKUP_DIR="/backup/mysql"
DATE=$(date +%Y%m%d)
MYSQL_USER="backup_user"
MYSQL_PASS="secure_password"
DATABASES=$(mysql -u$MYSQL_USER -p$MYSQL_PASS -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema|performance_schema)")

# 确保备份目录存在
mkdir -p $BACKUP_DIR

# 备份每个数据库
for DB in $DATABASES; do
    echo "备份数据库: $DB"
    mysqldump -u$MYSQL_USER -p$MYSQL_PASS --databases $DB | gzip > "$BACKUP_DIR/$DB-$DATE.sql.gz"
done

# 删除30天前的备份
find $BACKUP_DIR -name "*.sql.gz" -type f -mtime +30 -delete

echo "数据库备份完成：$(date)"
```

2. 添加执行权限：

```bash
sudo chmod +x /usr/local/bin/backup-mysql.sh
```

3. 创建服务文件：

```bash
sudo nano /etc/systemd/system/mysql-backup.service
```

```ini
[Unit]
Description=MySQL数据库备份
After=mysql.service
Requires=mysql.service

[Service]
Type=oneshot
ExecStart=/usr/local/bin/backup-mysql.sh
StandardOutput=journal
StandardError=journal
User=backup
Group=backup

[Install]
WantedBy=multi-user.target
```

4. 创建定时器文件：

```bash
sudo nano /etc/systemd/system/mysql-backup.timer
```

```ini
[Unit]
Description=每日MySQL备份
Requires=mysql-backup.service

[Timer]
Unit=mysql-backup.service
OnCalendar=*-*-* 01:00:00
RandomizedDelaySec=15min
Persistent=true

[Install]
WantedBy=timers.target
```

5. 启用定时器：

```bash
sudo systemctl daemon-reload
sudo systemctl enable --now mysql-backup.timer
```

### 监控和报告任务

#### 系统状态报告定时器

定期生成系统状态报告：

1. 创建报告脚本：

```bash
sudo nano /usr/local/bin/system-report.sh
```

```bash
#!/bin/bash
# 系统状态报告生成脚本

REPORT_DIR="/var/reports"
DATE=$(date +%Y%m%d)
REPORT_FILE="$REPORT_DIR/system-report-$DATE.txt"

# 确保报告目录存在
mkdir -p $REPORT_DIR

# 创建报告文件
echo "系统状态报告 - $(date)" > $REPORT_FILE
echo "===========================================" >> $REPORT_FILE

# 系统信息
echo -e "\n系统信息:" >> $REPORT_FILE
uname -a >> $REPORT_FILE
uptime >> $REPORT_FILE

# 磁盘使用情况
echo -e "\n磁盘使用情况:" >> $REPORT_FILE
df -h >> $REPORT_FILE

# 内存使用情况
echo -e "\n内存使用情况:" >> $REPORT_FILE
free -h >> $REPORT_FILE

# CPU负载
echo -e "\nCPU负载:" >> $REPORT_FILE
top -bn1 | head -15 >> $REPORT_FILE

# 最近的登录
echo -e "\n最近的登录:" >> $REPORT_FILE
last -n 10 >> $REPORT_FILE

# 活跃进程
echo -e "\n活跃进程:" >> $REPORT_FILE
ps aux --sort=-%cpu | head -10 >> $REPORT_FILE

# 网络连接
echo -e "\n网络连接:" >> $REPORT_FILE
netstat -tuln >> $REPORT_FILE

# 发送报告
if command -v mail &> /dev/null; then
    cat $REPORT_FILE | mail -s "系统状态报告 - $(date +%Y-%m-%d)" admin@example.com
fi

echo "系统报告已生成：$REPORT_FILE"
```

2. 添加执行权限：

```bash
sudo chmod +x /usr/local/bin/system-report.sh
```

3. 创建服务文件：

```bash
sudo nano /etc/systemd/system/system-report.service
```

```ini
[Unit]
Description=生成系统状态报告
After=network.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/system-report.sh
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target
```

4. 创建定时器文件：

```bash
sudo nano /etc/systemd/system/system-report.timer
```

```ini
[Unit]
Description=每日系统状态报告
Requires=system-report.service

[Timer]
Unit=system-report.service
OnCalendar=*-*-* 07:00:00
RandomizedDelaySec=5min
Persistent=true

[Install]
WantedBy=timers.target
```

5. 启用定时器：

```bash
sudo systemctl daemon-reload
sudo systemctl enable --now system-report.timer
```

## 高级技巧与最佳实践

### 用户级定时器

systemd不仅支持系统级定时器，还支持用户级定时器，无需root权限即可创建和管理：

1. 创建用户级服务目录（如果不存在）：

```bash
mkdir -p ~/.config/systemd/user/
```

2. 创建用户级服务文件：

```bash
nano ~/.config/systemd/user/my-user-task.service
```

```ini
[Unit]
Description=我的用户任务

[Service]
Type=oneshot
ExecStart=/home/username/scripts/my-script.sh

[Install]
WantedBy=default.target
```

3. 创建用户级定时器文件：

```bash
nano ~/.config/systemd/user/my-user-task.timer
```

```ini
[Unit]
Description=运行我的用户任务
Requires=my-user-task.service

[Timer]
Unit=my-user-task.service
OnCalendar=*-*-* 20:00:00
Persistent=true

[Install]
WantedBy=timers.target
```

4. 启用并启动用户级定时器：

```bash
systemctl --user daemon-reload
systemctl --user enable --now my-user-task.timer
```

5. 查看用户级定时器：

```bash
systemctl --user list-timers
```

注意：要使用户级定时器在用户注销后仍能运行，需要启用lingering：

```bash
sudo loginctl enable-linger username
```

### 条件触发

systemd定时器可以与条件表达式结合，实现更智能的触发机制：

#### 基于条件的服务

在服务单元中添加条件：

```ini
[Unit]
Description=条件执行的任务
ConditionPathExists=/path/to/some/file
ConditionACPower=true
```

常用条件指令：

- **ConditionPathExists**：指定路径存在时执行
- **ConditionPathIsDirectory**：指定路径是目录时执行
- **ConditionPathIsSymbolicLink**：指定路径是符号链接时执行
- **ConditionPathIsMountPoint**：指定路径是挂载点时执行
- **ConditionFileNotEmpty**：指定文件非空时执行
- **ConditionACPower**：接通交流电源时执行
- **ConditionHost**：主机名匹配时执行
- **ConditionKernelCommandLine**：内核命令行包含指定参数时执行
- **ConditionSecurity**：特定安全模块活动时执行

#### 基于事件的触发

除了基于时间的触发，systemd还支持基于事件的触发：

```ini
[Unit]
Description=在设备插入时执行的任务

[Path]
PathExists=/dev/sdb1
Unit=my-device-task.service

[Install]
WantedBy=multi-user.target
```

这需要使用`.path`单元而不是`.timer`单元。

### 资源限制和控制

systemd允许为服务设置资源限制，防止任务过度消耗系统资源：

```ini
[Service]
# CPU限制
CPUQuota=20%
CPUWeight=100

# 内存限制
MemoryLimit=500M

# I/O限制
IOWeight=100
IODeviceWeight=/dev/sda 500

# 进程数限制
LimitNPROC=10

# 文件大小限制
LimitFSIZE=100M
```

这些限制可以防止定时任务意外消耗过多资源或因错误导致系统不稳定。

### 错误处理和通知

#### 失败时的行为配置

可以配置服务在失败时的行为：

```ini
[Service]
Type=oneshot
ExecStart=/path/to/my/script.sh
Restart=on-failure
RestartSec=30s
StartLimitInterval=5min
StartLimitBurst=3
```

这将在失败时最多重试3次，每次间隔30秒，如果5分钟内失败超过3次则停止尝试。

#### 发送通知

可以配置在任务完成或失败时发送通知：

1. 创建通知脚本：

```bash
sudo nano /usr/local/bin/notify-admin.sh
```

```bash
#!/bin/bash
# 发送通知的脚本

SUBJECT="$1"
MESSAGE="$2"
EMAIL="admin@example.com"

# 发送邮件通知
echo "$MESSAGE" | mail -s "$SUBJECT" $EMAIL

# 可选：发送到其他通知系统（如Slack、Telegram等）
# curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$SUBJECT: $MESSAGE\"}" https://hooks.slack.com/services/YOUR/SLACK/WEBHOOK
```

2. 在服务中使用：

```ini
[Service]
Type=oneshot
ExecStart=/path/to/my/script.sh
ExecStartPost=/usr/local/bin/notify-admin.sh "任务成功" "脚本已成功执行"
ExecStopPost=/bin/bash -c 'if [ "$EXIT_STATUS" != "0" ]; then /usr/local/bin/notify-admin.sh "任务失败" "脚本执行失败，退出状态码: $EXIT_STATUS"; fi'
```

### 从cron迁移到systemd定时器

将现有的cron任务