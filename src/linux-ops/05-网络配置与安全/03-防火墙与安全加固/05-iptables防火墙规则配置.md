---
title: iptables防火墙规则配置
icon: practice
order: 5
---

# iptables防火墙规则配置

iptables是Linux系统中强大的防火墙工具，通过配置网络包过滤规则来控制网络流量。本文将详细介绍iptables的工作原理、规则配置和常见应用场景，帮助读者掌握Linux防火墙的基本配置和管理技能。

## iptables基础概念

iptables是Linux内核中netfilter框架的用户空间工具，用于配置IPv4数据包过滤规则。它通过定义规则链和表来组织和管理防火墙规则，主要包括以下核心概念：

### 表(Tables)

iptables包含多个表，每个表用于特定类型的数据包处理：

- **filter表**：默认表，用于过滤数据包
- **nat表**：用于网络地址转换
- **mangle表**：用于特殊数据包修改
- **raw表**：用于配置豁免连接跟踪
- **security表**：用于强制访问控制网络规则

### 链(Chains)

每个表包含预定义的链，链是规则的集合，数据包按照链中规则的顺序进行处理：

- **INPUT**：处理发往本机的数据包
- **OUTPUT**：处理从本机发出的数据包
- **FORWARD**：处理经过本机转发的数据包
- **PREROUTING**：在路由决策前处理数据包
- **POSTROUTING**：在路由决策后处理数据包

不同的表包含不同的链：

| 表名 | 包含的链 |
|------|----------|
| filter | INPUT, OUTPUT, FORWARD |
| nat | PREROUTING, OUTPUT, POSTROUTING |
| mangle | PREROUTING, INPUT, FORWARD, OUTPUT, POSTROUTING |
| raw | PREROUTING, OUTPUT |
| security | INPUT, OUTPUT, FORWARD |

### 规则(Rules)

规则定义了对数据包的匹配条件和处理动作。每条规则包括：

- **匹配条件**：如源/目标IP地址、端口、协议等
- **目标(Target)**：匹配成功后的处理动作，如ACCEPT、DROP、REJECT等

### 数据包流向

了解数据包在iptables中的流向对于正确配置规则至关重要：

```
                                    本地进程
                                        ↑↓
                                        │
           ┌───────────────────────────┼───────────────────────────┐
           │                           │                           │
           │                           │                           │
           ▼                           │                           ▼
┌─────────────────────┐      ┌─────────────────────┐      ┌─────────────────────┐
│     PREROUTING      │      │        INPUT        │      │      FORWARD        │
│  (raw, mangle, nat) │ ───► │   (mangle, filter,  │      │  (mangle, filter,   │
└─────────────────────┘      │      security)      │      │     security)       │
           │                 └─────────────────────┘      └─────────────────────┘
           │                                                        │
           │                                                        │
           │                                                        ▼
           │                 ┌─────────────────────┐      ┌─────────────────────┐
           │                 │       OUTPUT        │      │     POSTROUTING     │
           └───────────────► │ (raw, mangle, nat,  │ ───► │   (mangle, nat)     │
                             │  filter, security)  │      │                     │
                             └─────────────────────┘      └─────────────────────┘
                                        │                           │
                                        │                           │
                                        └───────────────────────────┘
                                                     │
                                                     ▼
                                              网络接口输出
```

1. **进入数据包**：
   - PREROUTING链（raw、mangle、nat表）
   - 路由决策（决定数据包是发往本机还是转发）
   - 如果发往本机：INPUT链（mangle、filter、security表）
   - 如果需要转发：FORWARD链（mangle、filter、security表）

2. **发出数据包**：
   - OUTPUT链（raw、mangle、nat、filter、security表）
   - POSTROUTING链（mangle、nat表）

## iptables基本操作

### 安装iptables

在大多数Linux发行版中，iptables已预装。如果需要安装：

```bash
# Debian/Ubuntu
sudo apt update
sudo apt install iptables

# RHEL/CentOS
sudo yum install iptables-services
```

### 查看当前规则

```bash
# 查看filter表的所有规则
sudo iptables -L

# 查看特定表的规则（如nat表）
sudo iptables -t nat -L

# 显示详细信息，包括包计数器和字节计数器
sudo iptables -L -v

# 显示规则的行号
sudo iptables -L --line-numbers

# 不进行DNS解析，加快显示速度
sudo iptables -L -n
```

### 管理规则

#### 添加规则

```bash
# 在INPUT链末尾添加规则
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# 在INPUT链开头插入规则
sudo iptables -I INPUT -p tcp --dport 80 -j ACCEPT

# 在指定位置插入规则（如第3位）
sudo iptables -I INPUT 3 -p tcp --dport 443 -j ACCEPT
```

#### 删除规则

```bash
# 通过规则内容删除
sudo iptables -D INPUT -p tcp --dport 22 -j ACCEPT

# 通过规则序号删除（先使用--line-numbers查看序号）
sudo iptables -D INPUT 3
```

#### 修改规则

```bash
# 替换指定位置的规则
sudo iptables -R INPUT 3 -p tcp --dport 8080 -j ACCEPT
```

#### 设置链的默认策略

```bash
# 设置INPUT链默认策略为DROP
sudo iptables -P INPUT DROP

# 设置FORWARD链默认策略为DROP
sudo iptables -P FORWARD DROP
```

#### 清空规则

```bash
# 清空特定链的规则
sudo iptables -F INPUT

# 清空所有规则
sudo iptables -F
```

### 保存和恢复规则

iptables规则在系统重启后会丢失，需要保存规则：

```bash
# Debian/Ubuntu
sudo netfilter-persistent save

# 或使用iptables-save
sudo iptables-save > /etc/iptables/rules.v4

# RHEL/CentOS
sudo service iptables save
```

恢复规则：

```bash
# 使用iptables-restore
sudo iptables-restore < /etc/iptables/rules.v4

# Debian/Ubuntu
sudo netfilter-persistent reload

# RHEL/CentOS
sudo service iptables restart
```

## 规则匹配条件

iptables提供了丰富的匹配条件，用于精确控制数据包过滤：

### 基本匹配

```bash
# 匹配源IP地址
sudo iptables -A INPUT -s 192.168.1.100 -j ACCEPT

# 匹配目标IP地址
sudo iptables -A INPUT -d 192.168.1.1 -j ACCEPT

# 匹配网段
sudo iptables -A INPUT -s 192.168.1.0/24 -j ACCEPT

# 匹配协议
sudo iptables -A INPUT -p tcp -j ACCEPT
sudo iptables -A INPUT -p udp -j ACCEPT
sudo iptables -A INPUT -p icmp -j ACCEPT
```

### 接口匹配

```bash
# 匹配入站接口
sudo iptables -A INPUT -i eth0 -j ACCEPT

# 匹配出站接口
sudo iptables -A OUTPUT -o eth0 -j ACCEPT
```

### 端口匹配

```bash
# 匹配单个目标端口
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# 匹配端口范围
sudo iptables -A INPUT -p tcp --dport 1024:2048 -j ACCEPT

# 匹配源端口
sudo iptables -A INPUT -p tcp --sport 1024:65535 -j ACCEPT
```

### 连接状态匹配

使用conntrack模块跟踪连接状态：

```bash
# 允许已建立和相关连接
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# 允许新连接到特定端口
sudo iptables -A INPUT -p tcp --dport 22 -m conntrack --ctstate NEW -j ACCEPT
```

连接状态包括：
- **NEW**：新连接请求
- **ESTABLISHED**：已建立的连接
- **RELATED**：与已建立连接相关的新连接
- **INVALID**：无法识别的连接
- **UNTRACKED**：未被跟踪的连接

### 限速匹配

使用limit模块限制连接速率：

```bash
# 限制ICMP请求速率（每分钟5个）
sudo iptables -A INPUT -p icmp --icmp-type echo-request -m limit --limit 5/minute --limit-burst 5 -j ACCEPT
sudo iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
```

### 多端口匹配

使用multiport模块匹配多个端口：

```bash
# 匹配多个目标端口
sudo iptables -A INPUT -p tcp -m multiport --dports 22,80,443 -j ACCEPT
```

### 时间匹配

使用time模块在特定时间段应用规则：

```bash
# 工作时间（周一至周五8:00-18:00）允许访问
sudo iptables -A INPUT -p tcp --dport 80 -m time --timestart 8:00 --timestop 18:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
```

### IP集合匹配

使用ipset管理大量IP地址：

```bash
# 创建IP集合
sudo ipset create blacklist hash:ip

# 添加IP到集合
sudo ipset add blacklist 192.168.1.100
sudo ipset add blacklist 192.168.1.101

# 在iptables中使用IP集合
sudo iptables -A INPUT -m set --match-set blacklist src -j DROP
```

## 目标动作

iptables规则匹配成功后，会执行指定的目标动作：

### 基本目标

- **ACCEPT**：允许数据包通过
  ```bash
  sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
  ```

- **DROP**：丢弃数据包，不发送任何通知
  ```bash
  sudo iptables -A INPUT -p tcp --dport 23 -j DROP
  ```

- **REJECT**：拒绝数据包，并发送错误信息
  ```bash
  sudo iptables -A INPUT -p tcp --dport 23 -j REJECT --reject-with icmp-port-unreachable
  ```

### 跳转目标

- **RETURN**：返回上一级调用链
  ```bash
  sudo iptables -A INPUT -p tcp --dport 80 -j RETURN
  ```

- **自定义链**：跳转到自定义链继续处理
  ```bash
  # 创建自定义链
  sudo iptables -N HTTP_CHAIN
  
  # 在自定义链中添加规则
  sudo iptables -A HTTP_CHAIN -p tcp --dport 80 -j ACCEPT
  
  # 从INPUT链跳转到自定义链
  sudo iptables -A INPUT -p tcp -j HTTP_CHAIN
  ```

### 特殊目标

- **LOG**：记录数据包信息到系统日志
  ```bash
  sudo iptables -A INPUT -p tcp --dport 22 -j LOG --log-prefix "SSH connection: " --log-level 4
  ```

- **MARK**：标记数据包，用于后续处理
  ```bash
  sudo iptables -t mangle -A PREROUTING -p tcp --dport 80 -j MARK --set-mark 1
  ```

- **DNAT**：目标网络地址转换（端口转发）
  ```bash
  sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 192.168.1.100:8080
  ```

- **SNAT**：源网络地址转换
  ```bash
  sudo iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source 203.0.113.1
  ```

- **MASQUERADE**：动态源网络地址转换（适用于动态IP）
  ```bash
  sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
  ```

## 常见防火墙配置场景

### 基本防火墙配置

以下是一个基本的防火墙配置，适用于大多数服务器：

```bash
# 清空现有规则
sudo iptables -F
sudo iptables -X
sudo iptables -t nat -F
sudo iptables -t nat -X
sudo iptables -t mangle -F
sudo iptables -t mangle -X

# 设置默认策略
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT ACCEPT

# 允许本地回环接口
sudo iptables -A INPUT -i lo -j ACCEPT

# 允许已建立和相关连接
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# 允许SSH连接
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# 允许HTTP和HTTPS连接
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# 允许ICMP（ping）
sudo iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT

# 记录并丢弃其他所有数据包
sudo iptables -A INPUT -j LOG --log-prefix "IPTables-Dropped: " --log-level 4
sudo iptables -A INPUT -j DROP
```

### Web服务器防火墙配置

针对Web服务器的防火墙配置：

```bash
# 允许HTTP和HTTPS流量
sudo iptables -A INPUT -p tcp -m multiport --dports 80,443 -j ACCEPT

# 限制每个IP的HTTP连接数
sudo iptables -A INPUT -p tcp --dport 80 -m connlimit --connlimit-above 20 --connlimit-mask 32 -j DROP

# 防止SYN洪水攻击
sudo iptables -A INPUT -p tcp --syn -m limit --limit 1/s --limit-burst 3 -j ACCEPT
sudo iptables -A INPUT -p tcp --syn -j DROP

# 限制Web服务器的连接速率
sudo iptables -A INPUT -p tcp --dport 80 -m state --state NEW -m recent --set
sudo iptables -A INPUT -p tcp --dport 80 -m state --state NEW -m recent --update --seconds 60 --hitcount 20 -j DROP
```

### 数据库服务器防火墙配置

保护数据库服务器的防火墙配置：

```bash
# 只允许特定IP访问MySQL/MariaDB
sudo iptables -A INPUT -p tcp --dport 3306 -s 192.168.1.0/24 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 3306 -j DROP

# 只允许特定IP访问PostgreSQL
sudo iptables -A INPUT -p tcp --dport 5432 -s 192.168.1.0/24 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 5432 -j DROP
```

### 邮件服务器防火墙配置

邮件服务器的防火墙配置：

```bash
# 允许SMTP、POP3和IMAP连接
sudo iptables -A INPUT -p tcp -m multiport --dports 25,110,143,465,587,993,995 -j ACCEPT

# 限制SMTP连接速率，防止垃圾邮件发送
sudo iptables -A INPUT -p tcp --dport 25 -m state --state NEW -m recent --set
sudo iptables -A INPUT -p tcp --dport 25 -m state --state NEW -m recent --update --seconds 60 --hitcount 10 -j DROP
```

### NAT和端口转发配置

配置网络地址转换和端口转发：

```bash
# 启用IP转发
echo 1 > /proc/sys/net/ipv4/ip_forward

# 配置NAT（网络地址转换）
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

# 端口转发（将外部80端口转发到内部服务器192.168.1.100的8080端口）
sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j DNAT --to-destination 192.168.1.100:8080
sudo iptables -A FORWARD -p tcp -d 192.168.1.100 --dport 8080 -j ACCEPT
```

### DMZ区域配置

配置DMZ（隔离区）：

```bash
# 允许从内网访问DMZ
sudo iptables -A FORWARD -i eth1 -o eth2 -j ACCEPT

# 允许从DMZ返回内网的已建立连接
sudo iptables -A FORWARD -i eth2 -o eth1 -m state --state ESTABLISHED,RELATED -j ACCEPT

# 允许从互联网访问DMZ的特定服务
sudo iptables -A FORWARD -i eth0 -o eth2 -p tcp --dport 80 -j ACCEPT
sudo iptables -A FORWARD -i eth0 -o eth2 -p tcp --dport 443 -j ACCEPT

# 阻止DMZ访问内网
sudo iptables -A FORWARD -i eth2 -o eth1 -j DROP
```

## 高级iptables技术

### 自定义链

自定义链可以组织和简化复杂的规则集：

```bash
# 创建自定义链
sudo iptables -N SSH_RULES

# 在自定义链中添加规则
sudo iptables -A SSH_RULES -s 192.168.1.0/24 -j ACCEPT
sudo iptables -A SSH_RULES -j DROP

# 从主链跳转到自定义链
sudo iptables -A INPUT -p tcp --dport 22 -j SSH_RULES
```

### 字符串匹配

使用string模块匹配数据包内容：

```bash
# 阻止包含特定字符串的HTTP请求
sudo iptables -A INPUT -p tcp --dport 80 -m string --string "attack_pattern" --algo bm -j DROP
```

### 速率限制

使用hashlimit模块进行更精细的速率限制：

```bash
# 限制每个IP对SSH的连接尝试
sudo iptables -A INPUT -p tcp --dport 22 -m hashlimit --hashlimit-name SSH --hashlimit-upto 3/minute --hashlimit-burst 5 --hashlimit-mode srcip -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j DROP
```

### 负载均衡

使用statistic模块实现简单的负载均衡：

```bash
# 将HTTP请求平均分配到两个后端服务器
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -m statistic --mode random --probability 0.5 -j DNAT --to-destination 192.168.1.101:80
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 192.168.1.102:80
```

### 端口敲门

实现端口敲门(Port Knocking)技术，增强安全性：

```bash
# 创建跟踪链
sudo iptables -N KNOCKING
sudo iptables -A INPUT -p tcp --dport 22 -j KNOCKING

# 设置敲门序列
sudo iptables -A KNOCKING -m recent --name AUTH1 --remove
sudo iptables -A KNOCKING -m recent --name AUTH2 --remove
sudo iptables -A KNOCKING -m recent --name AUTH3 --remove

sudo iptables -A KNOCKING -m recent --name AUTH3 --rcheck --seconds 10 -j ACCEPT

sudo iptables -A KNOCKING -m recent --name AUTH2 --rcheck --seconds 10 -m tcp --dport 3333 -j LOG --log-prefix "KNOCK3: "
sudo iptables -A KNOCKING -m recent --name AUTH2 --rcheck --seconds 10 -m tcp --dport 3333 -m recent --name AUTH3 --set -j DROP

sudo iptables -A KNOCKING -m recent --name AUTH1 --rcheck --seconds 10 -m tcp --dport 2222 -j LOG --log-prefix "KNOCK2: "
sudo iptables -A KNOCKING -m recent --name AUTH1 --rcheck --seconds 10 -m tcp --dport 2222 -m recent --name AUTH2 --set -j DROP

sudo iptables -A KNOCKING -p tcp --dport 1111 -j LOG --log-prefix "KNOCK1: "
sudo iptables -A KNOCKING -p tcp --dport 1111 -m recent --name AUTH1 --set -j DROP

sudo iptables -A KNOCKING -j DROP
```

使用端口敲门时，客户端需要按顺序连接端口1111、2222、3333，然后才能访问SSH端口。

## iptables调试与故障排除

### 启用日志记录

使用LOG目标记录数据包信息：

```bash
# 记录被丢弃的数据包
sudo iptables -A INPUT -j LOG --log-prefix "IPTables-Dropped: " --log-level 4
```

日志通常保存在`/var/log/syslog`或`/var/log/messages`中。

### 跟踪数据包

使用TRACE目标跟踪数据包通过iptables的路径：

```bash
# 启用跟踪
sudo modprobe ipt_LOG
sudo sysctl net.netfilter.nf_log.2=ipt_LOG

# 添加跟踪规则
sudo iptables -t raw -A PREROUTING -p tcp --dport 80 -j TRACE
sudo iptables -t raw -A OUTPUT -p tcp --sport 80 -j TRACE
```

跟踪信息会记录在内核日志中，可以通过`dmesg`或`/var/log/kern.log`查看。

### 常见问题排查

1. **规则顺序问题**：
   - 使用`--line-numbers`查看规则顺序
   - 确保更具体的规则在通用规则之前

2. **默认策略问题**：
   - 检查链的默认策略
   - 在更改默认策略前确保有允许必要连接的规则

3. **模块加载问题**：
   - 使用`lsmod | grep ip`检查所需模块是否已加载
   - 使用`modprobe`加载缺失的模块

4. **连接跟踪问题**：
   - 检查连接跟踪表大小：`cat /proc/sys/net/netfilter/nf_conntrack_count`
   - 增加连接跟踪表大小：`sysctl -w net.netfilter.nf_conntrack_max=131072`

## iptables与其他防火墙工具的比较

### iptables vs nftables

nftables是iptables的继任者，提供了更现代化的语法和功能：

| 特性 | iptables | nftables |
|------|----------|----------|
| 语法 | 命令行参数 | 类似脚本的语法 |
| 表和链 | 预定义 | 完全自定义 |
| 性能 | 良好 | 更好（特别是大型规则集） |
| 原子更新 | 不支持 | 支持 |
| 动态集合 | 需要ipset | 内置支持 |
| 兼容性 | 广泛支持 | 较新系统支持 |

nftables基本用法示例：

```bash
# 创建表和链
nft add table inet filter
nft add chain inet filter input { type filter hook input priority 0 \; policy drop \; }

# 添加规则
nft add rule inet filter input ct state established,related accept
nft add rule inet filter input iif lo accept
nft add rule inet filter input tcp dport 22 accept
```

### iptables vs firewalld

firewalld是基于iptables的高级防火墙管理工具，提供了更简单的接口：

| 特性 | iptables | firewalld |
|------|----------|-----------|
| 配置方式 | 命令行规则 | 区域和服务 |
| 动态更新 | 需要刷新所有规则 | 支持动态更新 |
| 接口 | 命令行 | 命令行和图形界面 |
| 复杂性 | 较高 | 较低 |
| 精细控制 | 非常精细 | 较为抽象 |

firewalld基本用法示例：

```bash
# 允许服务
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https

# 允许端口
firewall-cmd --permanent --add-port=8080/tcp

# 重新加载配置
firewall-cmd --reload
```

## 最佳实践与安全建议

### 防火墙设计原则

1. **默认拒绝策略**：
   - 设置INPUT和FORWARD链的默认策略为DROP
   - 明确允许需要的流量

2. **最小权限原则**：
   - 只开放必要的端口和服务
   - 限制访问来源

3. **深度防御**：
   - 结合主机防火墙和网络防火墙
   - 使用多层过滤规则

4. **定期审核**：
   - 定期检查防火墙规则
   - 移除不再需要的规则

### 安全加固建议

1. **限制连接速率**：
   - 使用limit或hashlimit模块限制连接速率
   - 防止DoS攻击

2. **状态跟踪**：
   - 使用连接状态跟踪
   - 只允许已建立的连接返回

3. **日志记录**：
   - 记录可疑活动
   - 定期分析日志

4. **规则管理**：
   - 使用脚本管理规则
   - 备份防火墙配置

5. **定期更新**：
   - 保持系统和防火墙工具更新
   - 关注安全公告

## 总结

iptables是Linux系统中功能强大的防火墙工具，通过灵活的规则配置，可以实现从简单的端口过滤到复杂的网络地址转换和负载均衡等多种功能。掌握iptables的基本概念和操作，对于保障Linux系统的网络安全至关重要。

随着技术的发展，nftables正逐渐取代iptables成为Linux的默认防火墙框架。不过，由于iptables的广泛应用和丰富的文档资源，它仍将在相当长的时间内继续发挥重要作用。无论使用哪种工具，理解网络包过滤的基本原理和安全设计原则，才是构建有效防火墙的关键。