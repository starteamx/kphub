---
title: nftables新一代防火墙使用
icon: practice
order: 7
---

# nftables新一代防火墙使用

nftables是Linux内核中的下一代包过滤框架，旨在替代iptables、ip6tables、arptables和ebtables。本文将详细介绍nftables的架构、语法和配置方法，帮助读者掌握这一现代防火墙技术的使用技巧。

## nftables简介

nftables于Linux内核3.13版本引入，是netfilter项目的一部分，提供了一个全新的、更高效的包过滤框架。与iptables相比，nftables具有以下优势：

1. **统一的框架**：整合了IPv4、IPv6、ARP和以太网桥接的过滤功能
2. **简化的规则集**：使用表达式而非比较操作，减少了规则数量
3. **改进的性能**：优化了规则评估路径，提高了处理效率
4. **动态更新**：支持原子规则替换，无需清空现有规则

### nftables与iptables的对比

为了更清晰地理解nftables的优势，下面是与iptables的详细对比：

| 特性 | nftables | iptables |
|------|----------|----------|
| 内核实现 | 使用虚拟机解释器 | 硬编码的规则匹配 |
| 表和链 | 完全自定义 | 预定义的表和链 |
| 规则语法 | 表达式和函数 | 选项和目标 |
| 原子规则更新 | 支持 | 不支持 |
| 集合和映射 | 内置支持 | 需要ipset扩展 |
| 动态规则生成 | 支持 | 有限支持 |
| 协议族 | 统一框架 | 分离的工具 |
| 规则效率 | 高效 | 较低 |
| 维护状态 | 活跃开发 | 维护模式 |

### nftables架构

nftables采用了模块化的架构设计，主要由以下组件组成：

```
┌─────────────────────────────────────────────────────────┐
│                     用户空间                             │
│  ┌───────────────┐  ┌───────────────┐  ┌───────────────┐ │
│  │     nft       │  │  libnftables  │  │ 兼容层(iptables)│ │
│  │  (命令行工具) │  │  (库函数)     │  │ (兼容工具)     │ │
│  └───────┬───────┘  └───────┬───────┘  └───────┬───────┘ │
└──────────┼─────────────────┼─────────────────┼───────────┘
           │                 │                 │
           ▼                 ▼                 ▼
┌─────────────────────────────────────────────────────────┐
│                     内核空间                             │
│  ┌───────────────────────────────────────────────────┐  │
│  │                   Netlink接口                      │  │
│  └───────────────────────┬───────────────────────────┘  │
│                          │                              │
│  ┌───────────────────────▼───────────────────────────┐  │
│  │                   nf_tables核心                    │  │
│  └───────────────────────┬───────────────────────────┘  │
│                          │                              │
│  ┌─────────┬─────────────┼─────────────┬─────────────┐  │
│  │ IPv4    │    IPv6     │    ARP      │  Bridge     │  │
│  │ 协议族  │    协议族   │    协议族   │  协议族     │  │
│  └─────────┴─────────────┴─────────────┴─────────────┘  │
└─────────────────────────────────────────────────────────┘
```

1. **用户空间工具**：
   - `nft`：主要的命令行工具，用于管理规则
   - `libnftables`：C库，提供API接口
   - 兼容层：提供与iptables兼容的工具

2. **内核组件**：
   - Netlink接口：用户空间与内核通信的通道
   - nf_tables核心：处理规则评估和执行
   - 协议族模块：处理特定协议的包过滤

### 基本概念

nftables的核心概念包括：

1. **表(Tables)**：顶层容器，按协议族分类
2. **链(Chains)**：规则容器，定义处理点和优先级
3. **规则(Rules)**：定义匹配条件和动作
4. **表达式(Expressions)**：构成规则的基本单元
5. **集合(Sets)**：存储多个值的数据结构
6. **映射(Maps)**：键值对数据结构
7. **元素(Elements)**：集合或映射中的条目
8. **数据类型(Data Types)**：定义值的类型和操作

## 基本操作与管理

### 安装nftables

在大多数现代Linux发行版中，nftables已经预装或可以通过包管理器安装：

```bash
# Debian/Ubuntu系统
sudo apt update
sudo apt install nftables

# CentOS/RHEL系统
sudo yum install nftables

# Arch Linux
sudo pacman -S nftables
```

### 服务管理

nftables作为系统服务，可以通过systemd进行管理：

```bash
# 启动nftables服务
sudo systemctl start nftables

# 停止nftables服务
sudo systemctl stop nftables

# 重启nftables服务
sudo systemctl restart nftables

# 查看nftables状态
sudo systemctl status nftables

# 设置开机自启
sudo systemctl enable nftables

# 禁用开机自启
sudo systemctl disable nftables
```

### 配置文件

nftables的主要配置文件是`/etc/nftables.conf`，系统启动时会加载此文件中的规则。典型的配置文件结构如下：

```nft
#!/usr/sbin/nft -f

flush ruleset

table inet filter {
    chain input {
        type filter hook input priority 0; policy drop;
        
        # 允许本地回环接口
        iif lo accept
        
        # 允许已建立的连接
        ct state established,related accept
        
        # 允许SSH连接
        tcp dport 22 accept
        
        # 默认丢弃其他流量
        # (由于链策略已设为drop，此处可省略)
    }
    
    chain forward {
        type filter hook forward priority 0; policy drop;
    }
    
    chain output {
        type filter hook output priority 0; policy accept;
    }
}
```

### 基本命令

nftables的主要命令行工具是`nft`，以下是一些基本操作：

```bash
# 列出所有规则
sudo nft list ruleset

# 列出特定表的规则
sudo nft list table inet filter

# 清空所有规则
sudo nft flush ruleset

# 从文件加载规则
sudo nft -f /etc/nftables.conf

# 保存当前规则到文件
sudo nft list ruleset > backup.nft
```

## 表和链管理

### 表管理

表是nftables中的顶层容器，按协议族分类：

```bash
# 创建表
sudo nft add table inet my_filter

# 列出所有表
sudo nft list tables

# 删除表
sudo nft delete table inet my_filter
```

nftables支持以下协议族：

- `ip`：IPv4协议
- `ip6`：IPv6协议
- `inet`：IPv4和IPv6协议
- `arp`：ARP协议
- `bridge`：以太网桥接
- `netdev`：网络设备入口点

### 链管理

链是规则的容器，定义了处理点和优先级：

```bash
# 创建基本链
sudo nft add chain inet my_filter input { type filter hook input priority 0\; policy accept\; }

# 创建常规链（不直接挂钩到协议栈）
sudo nft add chain inet my_filter my_chain

# 列出表中的所有链
sudo nft list chains

# 删除链
sudo nft delete chain inet my_filter my_chain
```

链类型和钩子点：

| 协议族 | 钩子点 | 描述 |
|--------|--------|------|
| ip/ip6/inet | prerouting | 进入系统的包，路由前 |
| ip/ip6/inet | input | 发往本机的包 |
| ip/ip6/inet | forward | 经过本机转发的包 |
| ip/ip6/inet | output | 本机发出的包 |
| ip/ip6/inet | postrouting | 离开系统的包，路由后 |
| netdev | ingress | 网络设备驱动层入口 |

优先级决定了链的执行顺序，标准优先级值包括：

- `NF_IP_PRI_RAW` = -300
- `NF_IP_PRI_MANGLE` = -150
- `NF_IP_PRI_NAT_DST` = -100
- `NF_IP_PRI_FILTER` = 0
- `NF_IP_PRI_NAT_SRC` = 100

## 规则管理与语法

### 基本规则语法

nftables规则由匹配条件和动作组成，基本语法如下：

```
nft add rule [<family>] <table> <chain> [<position>] <matches> <statements>
```

例如：

```bash
# 添加规则到链末尾
sudo nft add rule inet filter input tcp dport 80 accept

# 添加规则到链开头
sudo nft insert rule inet filter input tcp dport 443 accept

# 在特定位置添加规则
sudo nft add rule inet filter input position 3 udp dport 53 accept

# 删除规则
sudo nft delete rule inet filter input handle 4
```

### 匹配条件

nftables支持多种匹配条件：

#### 协议匹配

```bash
# 匹配IP协议
sudo nft add rule inet filter input ip protocol tcp accept

# 匹配IPv6协议
sudo nft add rule inet filter input ip6 nexthdr tcp accept

# 匹配以太网类型
sudo nft add rule inet filter input ether type ip accept
```

#### 地址匹配

```bash
# 匹配源IP地址
sudo nft add rule inet filter input ip saddr 192.168.1.1 accept

# 匹配目标IP地址
sudo nft add rule inet filter input ip daddr 192.168.1.100 accept

# 匹配IP地址范围
sudo nft add rule inet filter input ip saddr 192.168.1.0/24 accept

# 匹配多个IP地址
sudo nft add rule inet filter input ip saddr { 192.168.1.1, 192.168.1.2 } accept
```

#### 端口匹配

```bash
# 匹配单个端口
sudo nft add rule inet filter input tcp dport 22 accept

# 匹配端口范围
sudo nft add rule inet filter input tcp dport 1000-2000 accept

# 匹配多个端口
sudo nft add rule inet filter input tcp dport { 22, 80, 443 } accept
```

#### 连接跟踪

```bash
# 匹配连接状态
sudo nft add rule inet filter input ct state established,related accept

# 匹配连接状态和协议
sudo nft add rule inet filter input ct state new tcp dport 22 accept

# 匹配连接跟踪标记
sudo nft add rule inet filter input ct mark 1 accept
```

#### 接口匹配

```bash
# 匹配入站接口
sudo nft add rule inet filter input iif eth0 accept

# 匹配出站接口
sudo nft add rule inet filter output oif eth0 accept

# 匹配接口名称（使用通配符）
sudo nft add rule inet filter input iifname "eth*" accept
```

### 动作语句

nftables支持多种动作语句：

#### 基本动作

```bash
# 接受数据包
sudo nft add rule inet filter input tcp dport 22 accept

# 丢弃数据包
sudo nft add rule inet filter input tcp dport 23 drop

# 拒绝数据包（发送ICMP错误）
sudo nft add rule inet filter input tcp dport 25 reject

# 拒绝并指定类型
sudo nft add rule inet filter input tcp dport 25 reject with icmp type admin-prohibited
```

#### 日志记录

```bash
# 基本日志
sudo nft add rule inet filter input tcp dport 22 log accept

# 自定义日志前缀
sudo nft add rule inet filter input tcp dport 22 log prefix \"SSH connection: \" accept

# 设置日志级别
sudo nft add rule inet filter input tcp dport 22 log level info accept
```

#### 数据包修改

```bash
# 修改TTL
sudo nft add rule inet filter output ip ttl set 64

# 修改DSCP值
sudo nft add rule inet filter output ip dscp set 0x10

# 修改TCP MSS
sudo nft add rule inet filter output tcp flags syn tcp option maxseg size set 1400
```

#### 跳转和返回

```bash
# 跳转到其他链
sudo nft add rule inet filter input tcp dport 22 jump my_ssh_chain

# 返回到调用链
sudo nft add rule inet filter my_ssh_chain return

# 跳转到特定规则
sudo nft add rule inet filter input goto my_chain
```

## 高级功能

### 集合与映射

nftables提供了强大的集合和映射功能，用于高效处理多值匹配：

#### 匿名集合

匿名集合在规则中直接定义，适用于简单场景：

```bash
# 匿名IP地址集合
sudo nft add rule inet filter input ip saddr { 192.168.1.1, 192.168.1.2 } accept

# 匿名端口集合
sudo nft add rule inet filter input tcp dport { 22, 80, 443 } accept
```

#### 命名集合

命名集合可以在多个规则中重用，支持动态更新：

```bash
# 创建命名集合
sudo nft add set inet filter allowed_ips { type ipv4_addr\; }

# 添加元素到集合
sudo nft add element inet filter allowed_ips { 192.168.1.1, 192.168.1.2 }

# 使用命名集合
sudo nft add rule inet filter input ip saddr @allowed_ips accept

# 删除集合中的元素
sudo nft delete element inet filter allowed_ips { 192.168.1.2 }
```

#### 区间集合

区间集合用于匹配值范围：

```bash
# 创建区间集合
sudo nft add set inet filter port_ranges { type inet_service\; flags interval\; }

# 添加区间
sudo nft add element inet filter port_ranges { 1000-2000, 3000-4000 }

# 使用区间集合
sudo nft add rule inet filter input tcp dport @port_ranges accept
```

#### 映射

映射是键值对数据结构，用于动态选择动作：

```bash
# 创建端口到标记的映射
sudo nft add map inet filter port_marks { type inet_service : mark\; }

# 添加映射元素
sudo nft add element inet filter port_marks { 22 : 0x1, 80 : 0x2, 443 : 0x3 }

# 使用映射
sudo nft add rule inet filter input tcp dport vmap @port_marks
```

### 字典

字典是一种特殊的映射，允许多个匹配条件映射到一个结果：

```bash
# 创建IP和端口到动作的字典
sudo nft add map inet filter verdict_map { type ipv4_addr . inet_service : verdict\; }

# 添加字典元素
sudo nft add element inet filter verdict_map { 192.168.1.1 . 22 : accept, 192.168.1.2 . 80 : drop }

# 使用字典
sudo nft add rule inet filter input ip saddr . tcp dport vmap @verdict_map
```

### 变量

nftables支持定义变量，简化复杂配置：

```bash
# 在脚本中定义变量
define allowed_ports = { 22, 80, 443 }
define admin_ips = { 192.168.1.0/24, 10.0.0.0/8 }

# 使用变量
table inet filter {
    chain input {
        type filter hook input priority 0; policy drop;
        ip saddr $admin_ips tcp dport $allowed_ports accept
    }
}
```

### NAT配置

nftables提供了全面的NAT功能：

#### 源NAT (SNAT)

```bash
# 创建NAT表和链
sudo nft add table nat
sudo nft add chain nat postrouting { type nat hook postrouting priority 100\; }

# 基本SNAT
sudo nft add rule nat postrouting ip saddr 192.168.1.0/24 oif eth0 snat to 203.0.113.1

# 使用伪装（动态SNAT）
sudo nft add rule nat postrouting ip saddr 192.168.1.0/24 oif eth0 masquerade
```

#### 目标NAT (DNAT)

```bash
# 创建NAT表和链
sudo nft add table nat
sudo nft add chain nat prerouting { type nat hook prerouting priority -100\; }

# 端口转发
sudo nft add rule nat prerouting iif eth0 tcp dport 80 dnat to 192.168.1.100:8080

# 多目标负载均衡
sudo nft add rule nat prerouting iif eth0 tcp dport 80 dnat to numgen random mod 2 map { 0 : 192.168.1.101, 1 : 192.168.1.102 }
```

### 限速与配额

nftables支持限制连接速率和数据包数量：

```bash
# 限制SSH连接速率（每分钟10个新连接）
sudo nft add rule inet filter input tcp dport 22 ct state new limit rate 10/minute accept

# 限制ICMP数据包（每秒5个）
sudo nft add rule inet filter input icmp type echo-request limit rate 5/second accept

# 设置每日配额（1GB）
sudo nft add rule inet filter output ip daddr 192.168.1.0/24 limit rate over 1 gbytes/day drop
```

### 计数器与配额

```bash
# 添加计数器
sudo nft add rule inet filter input tcp dport 80 counter accept

# 命名计数器
sudo nft add counter inet filter http_requests
sudo nft add rule inet filter input tcp dport 80 counter name \"http_requests\" accept

# 查看计数器
sudo nft list counter inet filter http_requests
```

## 实际应用场景

### 基本防火墙配置

以下是一个基本的防火墙配置示例，适用于大多数服务器：

```nft
#!/usr/sbin/nft -f

flush ruleset

# 定义变量
define internal_net = 192.168.1.0/24
define admin_ips = { 192.168.1.10, 192.168.1.11 }
define allowed_tcp_ports = { 22, 80, 443 }
define allowed_udp_ports = { 53, 123 }

table inet filter {
    # 基本集合
    set admin_hosts {
        type ipv4_addr
        elements = $admin_ips
    }
    
    chain input {
        type filter hook input priority 0; policy drop;
        
        # 允许本地回环接口
        iif lo accept
        
        # 允许已建立的连接
        ct state established,related accept
        
        # 允许ICMP
        icmp type { echo-request, destination-unreachable, time-exceeded } accept
        icmpv6 type { echo-request, destination-unreachable, time-exceeded, nd-neighbor-solicit, nd-router-advert, nd-neighbor-advert } accept
        
        # 允许SSH仅从管理IP
        ip saddr @admin_hosts tcp dport 22 accept
        
        # 允许HTTP/HTTPS从任何地址
        tcp dport { 80, 443 } accept
        
        # 允许DNS和NTP
        udp dport { 53, 123 } accept
        
        # 记录并丢弃其他流量
        log prefix "INPUT-DROP: " drop
    }
    
    chain forward {
        type filter hook forward priority 0; policy drop;
    }
    
    chain output {
        type filter hook output priority 0; policy accept;
    }
}
```

### 多网卡服务器配置

对于具有多个网络接口的服务器，可以为不同接口设置不同的规则：

```nft
#!/usr/sbin/nft -f

flush ruleset

table inet filter {
    chain input {
        type filter hook input priority 0; policy drop;
        
        # 允许本地回环接口
        iif lo accept
        
        # 允许已建立的连接
        ct state established,related accept
        
        # 外网接口(eth0)只允许SSH、HTTP和HTTPS
        iif eth0 tcp dport { 22, 80, 443 } accept
        
        # 内网接口(eth1)允许更多服务
        iif eth1 tcp dport { 22, 80, 443, 3306, 8080-8090 } accept
        iif eth1 udp dport { 53, 123, 161, 1194 } accept
        
        # 记录并丢弃其他流量
        log prefix "INPUT-DROP: " drop
    }
    
    chain forward {
        type filter hook forward priority 0; policy drop;
    }
    
    chain output {
        type filter hook output priority 0; policy accept;
    }
}
```

### 构建NAT网关

使用nftables可以将Linux服务器配置为NAT网关：

```nft
#!/usr/sbin/nft -f

flush ruleset

define internal_net = 192.168.1.0/24
define internal_if = eth1
define external_if = eth0

table inet nat {
    chain prerouting {
        type nat hook prerouting priority -100; policy accept;
        
        # 端口转发示例：外部80端口转发到内部Web服务器
        iif $external_if tcp dport 80 dnat to 192.168.1.100
        
        # 端口转发示例：外部443端口转发到内部Web服务器
        iif $external_if tcp dport 443 dnat to 192.168.1.100
        
        # 端口转发示例：外部3389端口转发到内部RDP服务器
        iif $external_if tcp dport 3389 dnat to 192.168.1.101:3389
    }
    
    chain postrouting {
        type nat hook postrouting priority 100; policy accept;
        
        # 源地址转换：内部网络访问外部时使用外部接口IP
        ip saddr $internal_net oif $external_if masquerade
    }
}

table inet filter {
    chain input {
        type filter hook input priority 0; policy drop;
        
        # 允许本地回环接口
        iif lo accept
        
        # 允许已建立的连接
        ct state established,related accept
        
        # 允许内网访问
        iif $internal_if accept
        
        # 允许外网SSH访问
        iif $external_if tcp dport 22 accept
        
        # 允许ICMP
        icmp type { echo-request, destination-unreachable, time-exceeded } accept
        
        # 记录并丢弃其他流量
        log prefix "INPUT-DROP: " drop
    }
    
    chain forward {
        type filter hook forward priority 0; policy drop;
        
        # 允许已建立的连接
        ct state established,related accept
        
        # 允许内网访问外网
        iif $internal_if oif $external_if accept
        
        # 允许外网访问内网的端口转发
        iif $external_if oif $internal_if ct state new tcp dport { 80, 443, 3389 } accept
        
        # 记录并丢弃其他流量
        log prefix "FORWARD-DROP: " drop
    }
    
    chain output {
        type filter hook output priority 0; policy accept;
    }
}
```

### 负载均衡配置

nftables可以实现简单的负载均衡功能：

```nft
#!/usr/sbin/nft -f

flush ruleset

table inet nat {
    chain prerouting {
        type nat hook prerouting priority -100; policy accept;
        
        # 轮询负载均衡
        tcp dport 80 dnat to numgen inc mod 3 map { 0 : 192.168.1.101, 1 : 192.168.1.102, 2 : 192.168.1.103 }
        
        # 随机负载均衡
        tcp dport 443 dnat to numgen random mod 2 map { 0 : 192.168.1.101, 1 : 192.168.1.102 }
    }
}

table inet filter {
    chain forward {
        type filter hook forward priority 0; policy accept;
        
        # 允许到负载均衡服务器的流量
        ip daddr { 192.168.1.101, 192.168.1.102, 192.168.1.103 } tcp dport { 80, 443 } accept
    }
}
```

### 防御常见攻击

使用nftables可以配置防御常见网络攻击的规则：

```nft
#!/usr/sbin/nft -f

flush ruleset

table inet filter {
    # 创建集合跟踪可疑IP
    set port_scanners {
        type ipv4_addr
        flags dynamic,timeout
        timeout 1h
    }
    
    set syn_flood {
        type ipv4_addr
        flags dynamic,timeout
        timeout 10m
    }
    
    chain input {
        type filter hook input priority 0; policy drop;
        
        # 允许本地回环接口
        iif lo accept
        
        # 允许已建立的连接
        ct state established,related accept
        
        # 防止SYN洪水攻击
        tcp flags syn tcp dport { 80, 443 } ct state new limit rate over 10/second add @syn_flood { ip saddr } drop
        ip saddr @syn_flood drop
        
        # 防止端口扫描
        tcp flags syn ct state new meter flood size 1024 { ip saddr limit rate over 15/minute } add @port_scanners { ip saddr } drop
        ip saddr @port_scanners drop
        
        # 防止分片攻击
        ip frag-off & 0x1fff != 0 drop
        
        # 防止XMAS扫描
        tcp flags & (fin|syn|rst|psh|ack|urg) == fin|syn|rst|psh|ack|urg drop
        
        # 防止NULL扫描
        tcp flags & (fin|syn|rst|psh|ack|urg) == 0 drop
        
        # 允许常规服务
        tcp dport { 22, 80, 443 } accept
        
        # 记录并丢弃其他流量
        log prefix "INPUT-DROP: " drop
    }
}
```

## 故障排查与最佳实践

### 调试技巧

调试nftables规则时，可以使用以下技巧：

#### 启用跟踪

```bash
# 加载nf_log模块
sudo modprobe nf_log

# 启用跟踪
sudo nft add rule inet filter input tcp dport 22 log flags all

# 查看日志
sudo dmesg | grep 'IN='
```

#### 使用计数器

```bash
# 添加计数器到规则
sudo nft add rule inet filter input tcp dport 22 counter accept

# 查看计数器
sudo nft list ruleset -a
```

#### 临时测试规则

```bash
# 创建临时表和链
sudo nft add table inet temp
sudo nft add chain inet temp input { type filter hook input priority 0\; policy accept\; }

# 添加测试规则
sudo nft add rule inet temp input tcp dport 22 counter

# 测试完成后删除
sudo nft delete table inet temp
```

### 常见问题排查

1. **规则不生效**
   - 检查规则优先级是否正确
   - 验证链类型和钩子点是否匹配
   - 确认规则顺序是否合理

   ```bash
   # 检查完整规则集
   sudo nft list ruleset
   
   # 检查特定表
   sudo nft list table inet filter
   ```

2. **服务无法访问**
   