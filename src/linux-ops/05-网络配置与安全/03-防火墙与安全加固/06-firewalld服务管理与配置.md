---
title: firewalld服务管理与配置
icon: practice
order: 6
---

# firewalld服务管理与配置

firewalld是现代Linux发行版中常用的动态防火墙管理工具，提供了更简单、更灵活的防火墙配置方式。本文将详细介绍firewalld的架构、配置方法和常见应用场景，帮助读者掌握这一现代防火墙工具的使用技巧。

## firewalld简介

firewalld是一个动态防火墙管理器，它使用"区域"和"服务"的概念来简化防火墙配置。与传统的iptables相比，firewalld支持动态规则更新，无需重启防火墙服务即可应用新规则，适合频繁变化的网络环境。

### firewalld与iptables的区别

虽然firewalld和iptables都是用于管理Linux防火墙的工具，但它们在设计理念和使用方式上有显著差异：

| 特性 | firewalld | iptables |
|------|-----------|----------|
| 规则更新 | 动态更新，无需重启服务 | 静态规则集，更改后需要重载所有规则 |
| 配置方式 | 基于区域和服务的高级抽象 | 直接操作规则链和表 |
| 持久化 | 自动保存配置 | 需要额外工具保存配置 |
| 运行时/永久规则 | 支持区分运行时和永久规则 | 无内置区分机制 |
| 接口 | 提供CLI和D-Bus API | 仅CLI接口 |
| 底层实现 | 仍使用netfilter框架，通过nftables或iptables实现 | 直接使用netfilter框架 |

### firewalld架构

firewalld采用分层架构设计，主要包含以下组件：

```
┌─────────────────────────────────────────────────────────┐
│                     用户接口层                           │
│  ┌───────────────┐  ┌───────────────┐  ┌───────────────┐ │
│  │  firewall-cmd │  │firewall-config│  │  firewall-applet│ │
│  │  (命令行工具) │  │ (图形化工具)  │  │  (系统托盘工具)│ │
│  └───────────────┘  └───────────────┘  └───────────────┘ │
└───────────────────────────┬─────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────┐
│                     D-Bus接口                           │
└───────────────────────────┬─────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────┐
│                  firewalld守护进程                      │
│  ┌───────────────┐  ┌───────────────┐  ┌───────────────┐ │
│  │    区域管理   │  │   服务管理    │  │   直接规则    │ │
│  └───────────────┘  └───────────────┘  └───────────────┘ │
└───────────────────────────┬─────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────┐
│                     后端实现                            │
│  ┌───────────────┐            ┌───────────────┐         │
│  │   nftables    │◄──或者────►│   iptables    │         │
│  └───────────────┘            └───────────────┘         │
└─────────────────────────────────────────────────────────┘
```

1. **用户接口层**：提供命令行工具(firewall-cmd)、图形界面(firewall-config)和系统托盘应用(firewall-applet)
2. **D-Bus接口**：提供进程间通信机制，允许应用程序与firewalld守护进程交互
3. **firewalld守护进程**：核心组件，负责管理防火墙规则
4. **后端实现**：根据系统配置使用nftables或iptables实现具体的防火墙规则

### 配置文件结构

firewalld的配置文件分为两类：

1. **默认配置**：位于`/usr/lib/firewalld/`目录
   - `zones/`：预定义区域配置
   - `services/`：预定义服务配置
   - `icmptypes/`：ICMP类型定义
   - `helpers/`：连接跟踪助手配置
   - `ipsets/`：IP集合定义

2. **系统配置**：位于`/etc/firewalld/`目录，覆盖默认配置
   - `firewalld.conf`：主配置文件
   - `zones/`：自定义区域配置
   - `services/`：自定义服务配置
   - 其他与默认配置相同的目录结构

当系统配置与默认配置存在冲突时，系统配置优先。这种设计允许用户自定义配置而不影响原始默认配置。

## 基本操作与管理

### 服务管理

firewalld作为系统服务，可以通过systemd进行管理：

```bash
# 启动firewalld服务
sudo systemctl start firewalld

# 停止firewalld服务
sudo systemctl stop firewalld

# 重启firewalld服务
sudo systemctl restart firewalld

# 查看firewalld状态
sudo systemctl status firewalld

# 设置开机自启
sudo systemctl enable firewalld

# 禁用开机自启
sudo systemctl disable firewalld
```

### 运行时与永久配置

firewalld支持两种配置模式：

1. **运行时配置(Runtime)**：立即生效，但系统重启后会丢失
2. **永久配置(Permanent)**：保存到配置文件，但需要重载才能生效

默认情况下，`firewall-cmd`命令只修改运行时配置。要修改永久配置，需要添加`--permanent`选项：

```bash
# 运行时配置（立即生效，重启后丢失）
sudo firewall-cmd --add-service=http

# 永久配置（重启后仍然有效，但不立即生效）
sudo firewall-cmd --permanent --add-service=http

# 永久配置并立即生效（组合使用）
sudo firewall-cmd --add-service=http
sudo firewall-cmd --permanent --add-service=http

# 或者使用这种方式（先永久配置，再重载）
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload
```

### 查看防火墙状态

```bash
# 检查firewalld是否运行
sudo firewall-cmd --state

# 查看firewalld版本
sudo firewall-cmd --version

# 显示防火墙完整状态信息
sudo firewall-cmd --list-all

# 显示特定区域的状态
sudo firewall-cmd --zone=public --list-all

# 列出所有可用区域
sudo firewall-cmd --get-zones

# 查看默认区域
sudo firewall-cmd --get-default-zone

# 列出所有支持的服务
sudo firewall-cmd --get-services
```

## 区域(Zone)管理

区域是firewalld的核心概念，它定义了不同网络连接的信任级别和默认行为。

### 预定义区域

firewalld预定义了以下区域，从最不信任到最信任排序：

1. **drop**：丢弃所有入站连接，不回应；只允许出站连接
2. **block**：拒绝所有入站连接，使用icmp-host-prohibited回应；只允许出站连接
3. **public**：公共区域，只接受指定的连接，适用于公共网络
4. **external**：外部网络，通常用于启用了伪装功能的外部网络接口
5. **internal**：内部网络，信任程度高于public，用于内部网络
6. **dmz**：隔离区，用于允许有限访问的非军事区服务器
7. **work**：工作区域，信任网络中的大多数计算机，适用于工作环境
8. **home**：家庭区域，信任网络中的大多数计算机，适用于家庭环境
9. **trusted**：信任所有网络连接

### 区域管理操作

```bash
# 查看默认区域
sudo firewall-cmd --get-default-zone

# 设置默认区域
sudo firewall-cmd --set-default-zone=home

# 查看活动区域（已分配网络接口的区域）
sudo firewall-cmd --get-active-zones

# 将网络接口分配到特定区域
sudo firewall-cmd --zone=internal --change-interface=eth0

# 查询网络接口所属区域
sudo firewall-cmd --get-zone-of-interface=eth0

# 创建新区域
sudo firewall-cmd --permanent --new-zone=myzone
sudo firewall-cmd --reload

# 删除自定义区域
sudo firewall-cmd --permanent --delete-zone=myzone
sudo firewall-cmd --reload
```

### 区域配置示例

以下是一个典型的区域配置文件示例(`/etc/firewalld/zones/custom.xml`)：

```xml
<?xml version="1.0" encoding="utf-8"?>
<zone>
  <short>Custom</short>
  <description>自定义区域，用于特定应用</description>
  <service name="ssh"/>
  <service name="http"/>
  <service name="https"/>
  <port port="8080" protocol="tcp"/>
  <forward-port port="80" protocol="tcp" to-port="8080"/>
  <masquerade/>
  <rule family="ipv4">
    <source address="192.168.1.0/24"/>
    <accept/>
  </rule>
</zone>
```

## 服务与端口管理

### 服务管理

firewalld使用服务定义来简化常见应用的防火墙规则配置。服务定义包含端口、协议和模块等信息。

```bash
# 列出所有可用服务
sudo firewall-cmd --get-services

# 查看特定服务定义
sudo firewall-cmd --info-service=http

# 在区域中添加服务
sudo firewall-cmd --zone=public --add-service=http

# 在区域中移除服务
sudo firewall-cmd --zone=public --remove-service=http

# 检查服务是否已启用
sudo firewall-cmd --zone=public --query-service=http
```

### 自定义服务

可以创建自定义服务来定义特定应用的防火墙规则：

```bash
# 创建新服务
sudo firewall-cmd --permanent --new-service=myapp

# 设置服务属性
sudo firewall-cmd --permanent --service=myapp --set-short="My Application"
sudo firewall-cmd --permanent --service=myapp --set-description="My custom application"
sudo firewall-cmd --permanent --service=myapp --add-port=8080/tcp
sudo firewall-cmd --permanent --service=myapp --add-port=8081/udp

# 重载防火墙使配置生效
sudo firewall-cmd --reload

# 在区域中启用自定义服务
sudo firewall-cmd --zone=public --add-service=myapp
```

自定义服务配置文件示例(`/etc/firewalld/services/myapp.xml`)：

```xml
<?xml version="1.0" encoding="utf-8"?>
<service>
  <short>My Application</short>
  <description>My custom application</description>
  <port protocol="tcp" port="8080"/>
  <port protocol="udp" port="8081"/>
</service>
```

### 端口管理

除了使用服务定义，也可以直接管理端口：

```bash
# 添加端口
sudo firewall-cmd --zone=public --add-port=8080/tcp

# 移除端口
sudo firewall-cmd --zone=public --remove-port=8080/tcp

# 检查端口是否开放
sudo firewall-cmd --zone=public --query-port=8080/tcp

# 添加端口范围
sudo firewall-cmd --zone=public --add-port=5000-5100/tcp
```

### 协议管理

firewalld还支持基于协议的规则：

```bash
# 添加协议
sudo firewall-cmd --zone=public --add-protocol=icmp

# 移除协议
sudo firewall-cmd --zone=public --remove-protocol=icmp

# 检查协议是否允许
sudo firewall-cmd --zone=public --query-protocol=icmp
```

## 高级功能配置

### 伪装(Masquerade)与NAT

伪装是一种特殊形式的NAT(网络地址转换)，允许内部网络通过单个公共IP地址访问外部网络：

```bash
# 启用区域的伪装功能
sudo firewall-cmd --zone=external --add-masquerade

# 禁用区域的伪装功能
sudo firewall-cmd --zone=external --remove-masquerade

# 检查伪装是否启用
sudo firewall-cmd --zone=external --query-masquerade
```

### 端口转发

端口转发允许将到达特定端口的流量重定向到另一个端口或地址：

```bash
# 将本地80端口转发到8080端口
sudo firewall-cmd --zone=public --add-forward-port=port=80:proto=tcp:toport=8080

# 将本地80端口转发到另一台主机的8080端口
sudo firewall-cmd --zone=public --add-forward-port=port=80:proto=tcp:toport=8080:toaddr=192.168.1.10

# 移除端口转发
sudo firewall-cmd --zone=public --remove-forward-port=port=80:proto=tcp:toport=8080

# 注意：端口转发通常需要启用伪装功能
sudo firewall-cmd --zone=public --add-masquerade
```

### 富规则(Rich Rules)

富规则提供了更复杂、更精细的规则定义能力，超越了基本的服务和端口管理：

```bash
# 允许特定源IP访问SSH服务
sudo firewall-cmd --zone=public --add-rich-rule='rule family="ipv4" source address="192.168.1.10" service name="ssh" accept'

# 拒绝特定IP范围访问HTTP服务
sudo firewall-cmd --zone=public --add-rich-rule='rule family="ipv4" source address="192.168.1.0/24" service name="http" reject'

# 限制连接速率（每分钟最多3个新连接）
sudo firewall-cmd --zone=public --add-rich-rule='rule family="ipv4" service name="http" limit value="3/m" accept'

# 在特定时间段内允许访问
sudo firewall-cmd --zone=public --add-rich-rule='rule family="ipv4" service name="http" timestart="9:00" timestop="18:00" accept'

# 记录特定连接
sudo firewall-cmd --zone=public --add-rich-rule='rule family="ipv4" source address="192.168.1.0/24" service name="http" log prefix="HTTP_ACCESS" level="notice" limit value="3/m" accept'

# 移除富规则
sudo firewall-cmd --zone=public --remove-rich-rule='rule family="ipv4" source address="192.168.1.10" service name="ssh" accept'
```

富规则语法非常灵活，可以组合多种条件和动作：

```
rule [family="ipv4|ipv6"]
    [ source address="address[/mask]" [invert="True"] ]
    [ destination address="address[/mask]" [invert="True"] ]
    [ <service name="service name"> |
      <port port="port" protocol="protocol"> |
      <protocol value="protocol"> |
      <icmp-block name="icmptype"> |
      <icmp-type name="icmptype"> |
      <masquerade> |
      <forward-port port="port" protocol="protocol" to-port="port" to-addr="address"> ]
    [ <log [prefix="prefix text"] [level="log level"] [limit value="rate/duration"]> ]
    [ <audit> ]
    [ <accept> | <reject [type="reject type"]> | <drop> | <mark set="mark[/mask]"> ]
```

### 直接规则

直接规则允许直接访问底层的iptables、ip6tables或ebtables规则，适用于firewalld无法通过其他方式实现的复杂规则：

```bash
# 添加直接规则（临时）
sudo firewall-cmd --direct --add-rule ipv4 filter INPUT 0 -p tcp --dport 9000 -j ACCEPT

# 添加永久直接规则
sudo firewall-cmd --permanent --direct --add-rule ipv4 filter INPUT 0 -p tcp --dport 9000 -j ACCEPT

# 列出所有直接规则
sudo firewall-cmd --direct --get-all-rules

# 移除直接规则
sudo firewall-cmd --direct --remove-rule ipv4 filter INPUT 0 -p tcp --dport 9000 -j ACCEPT
```

直接规则的参数格式为：`<table_family> <table> <chain> <priority> <args>`

### IP集合(IPSet)

IP集合允许管理IP地址或网络列表，可用于简化防火墙规则：

```bash
# 创建新的IP集合
sudo firewall-cmd --permanent --new-ipset=blacklist --type=hash:ip

# 添加IP地址到集合
sudo firewall-cmd --permanent --ipset=blacklist --add-entry=192.168.1.10

# 重载使永久配置生效
sudo firewall-cmd --reload

# 使用IP集合创建富规则
sudo firewall-cmd --add-rich-rule='rule family="ipv4" source ipset="blacklist" drop'

# 列出IP集合中的条目
sudo firewall-cmd --ipset=blacklist --get-entries

# 检查IP是否在集合中
sudo firewall-cmd --ipset=blacklist --query-entry=192.168.1.10

# 从集合中移除IP
sudo firewall-cmd --permanent --ipset=blacklist --remove-entry=192.168.1.10
```

IP集合配置文件示例(`/etc/firewalld/ipsets/blacklist.xml`)：

```xml
<?xml version="1.0" encoding="utf-8"?>
<ipset type="hash:ip">
  <short>Blacklisted IPs</short>
  <description>IPs that should be blocked</description>
  <entry>192.168.1.10</entry>
  <entry>192.168.1.11</entry>
  <entry>192.168.1.12</entry>
</ipset>
```

## 实际应用场景

### 基本服务器配置

以下是一个基本的Web服务器防火墙配置示例：

```bash
# 设置默认区域为public
sudo firewall-cmd --set-default-zone=public

# 允许SSH、HTTP和HTTPS服务
sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https

# 允许自定义Web应用端口
sudo firewall-cmd --permanent --add-port=8080/tcp

# 应用配置
sudo firewall-cmd --reload

# 验证配置
sudo firewall-cmd --list-all
```

### 多网卡服务器配置

对于具有多个网络接口的服务器，可以为不同接口分配不同的安全级别：

```bash
# 将外网接口分配到public区域
sudo firewall-cmd --permanent --zone=public --change-interface=eth0

# 将内网接口分配到trusted区域
sudo firewall-cmd --permanent --zone=trusted --change-interface=eth1

# 在public区域只允许必要服务
sudo firewall-cmd --permanent --zone=public --add-service=http
sudo firewall-cmd --permanent --zone=public --add-service=https

# 在trusted区域允许更多服务
sudo firewall-cmd --permanent --zone=trusted --add-service=ssh
sudo firewall-cmd --permanent --zone=trusted --add-service=mysql
sudo firewall-cmd --permanent --zone=trusted --add-service=dns

# 应用配置
sudo firewall-cmd --reload
```

### 构建简单的路由器/NAT网关

使用firewalld可以将Linux服务器配置为简单的路由器或NAT网关：

```bash
# 启用IP转发（在/etc/sysctl.conf中设置）
echo "net.ipv4.ip_forward=1" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# 将外网接口分配到external区域
sudo firewall-cmd --permanent --zone=external --change-interface=eth0

# 将内网接口分配到internal区域
sudo firewall-cmd --permanent --zone=internal --change-interface=eth1

# 在external区域启用伪装（NAT）
sudo firewall-cmd --permanent --zone=external --add-masquerade

# 允许内部网络访问DNS和HTTP服务
sudo firewall-cmd --permanent --zone=internal --add-service=dns
sudo firewall-cmd --permanent --zone=internal --add-service=http
sudo firewall-cmd --permanent --zone=internal --add-service=https

# 应用配置
sudo firewall-cmd --reload
```

### 保护Web服务器

以下是一个更复杂的Web服务器保护配置：

```bash
# 创建自定义区域
sudo firewall-cmd --permanent --new-zone=webserver
sudo firewall-cmd --reload

# 将网络接口分配到自定义区域
sudo firewall-cmd --permanent --zone=webserver --change-interface=eth0

# 允许基本服务
sudo firewall-cmd --permanent --zone=webserver --add-service=ssh
sudo firewall-cmd --permanent --zone=webserver --add-service=http
sudo firewall-cmd --permanent --zone=webserver --add-service=https

# 限制SSH访问只允许特定IP
sudo firewall-cmd --permanent --zone=webserver --add-rich-rule='rule family="ipv4" source address="192.168.1.0/24" service name="ssh" accept'
sudo firewall-cmd --permanent --zone=webserver --add-rich-rule='rule family="ipv4" service name="ssh" drop'

# 限制HTTP连接速率（防止DoS攻击）
sudo firewall-cmd --permanent --zone=webserver --add-rich-rule='rule family="ipv4" service name="http" limit value="100/m" accept'
sudo firewall-cmd --permanent --zone=webserver --add-rich-rule='rule family="ipv4" service name="https" limit value="100/m" accept'

# 记录可疑访问
sudo firewall-cmd --permanent --zone=webserver --add-rich-rule='rule family="ipv4" source address="10.0.0.0/8" service name="http" log prefix="SUSPICIOUS_HTTP" level="warning" limit value="3/m" reject'

# 应用配置
sudo firewall-cmd --reload
```

### 创建DMZ区域

对于需要部署DMZ(隔离区)的环境，可以使用以下配置：

```bash
# 将DMZ网络接口分配到dmz区域
sudo firewall-cmd --permanent --zone=dmz --change-interface=eth1

# 将内网接口分配到internal区域
sudo firewall-cmd --permanent --zone=internal --change-interface=eth2

# 将外网接口分配到external区域
sudo firewall-cmd --permanent --zone=external --change-interface=eth0

# 在external区域启用伪装
sudo firewall-cmd --permanent --zone=external --add-masquerade

# 允许外部访问DMZ中的Web服务
sudo firewall-cmd --permanent --zone=dmz --add-service=http
sudo firewall-cmd --permanent --zone=dmz --add-service=https

# 允许内部网络访问DMZ
sudo firewall-cmd --permanent --zone=internal --add-rich-rule='rule family="ipv4" destination address="192.168.2.0/24" accept'

# 允许DMZ访问外部特定服务（如DNS）
sudo firewall-cmd --permanent --zone=dmz --add-service=dns

# 应用配置
sudo firewall-cmd --reload
```

## 故障排查与最佳实践

### 常见问题排查

1. **规则不生效**
   - 检查是否使用了`--permanent`但忘记`--reload`
   - 验证规则是否添加到正确的区域
   - 检查网络接口是否分配到预期的区域

   ```bash
   # 检查活动区域和接口分配
   sudo firewall-cmd --get-active-zones
   
   # 检查规则是否存在
   sudo firewall-cmd --zone=public --list-all
   ```

2. **服务无法访问**
   - 确认服务端口是否正确开放
   - 检查是否有富规则或直接规则阻止了访问
   - 验证服务是否正在运行

   ```bash
   # 检查端口是否开放
   sudo firewall-cmd --zone=public --query-port=80/tcp
   
   # 临时禁用防火墙测试
   sudo systemctl stop firewalld
   ```

3. **日志分析**
   - 启用防火墙日志记录以诊断问题

   ```bash
   # 添加日志规则
   sudo firewall-cmd --add-rich-rule='rule family="ipv4" service name="http" log prefix="HTTP_ACCESS" level="info" limit value="3/m" accept'
   
   # 查看日志
   sudo journalctl -f | grep HTTP_ACCESS
   ```

### 安全最佳实践

1. **最小权限原则**
   - 只开放必要的服务和端口
   - 使用富规则限制来源IP访问敏感服务
   - 对不同网络接口使用不同的安全级别

2. **定期审核防火墙规则**
   - 定期检查并移除不再需要的规则
   - 验证规则是否符合当前安全策略

   ```bash
   # 导出当前配置进行审核
   sudo firewall-cmd --list-all-zones > firewall_audit.txt
   ```

3. **使用永久规则**
   - 确保所有规则都设置为永久规则，防止系统重启后丢失
   - 使用配置管理工具管理防火墙规则

4. **备份与恢复**
   - 定期备份防火墙配置
   - 在进行重大更改前创建备份

   ```bash
   # 备份配置文件
   sudo cp -r /etc/firewalld /etc/firewalld.bak
   
   # 如果使用配置管理工具，确保防火墙配置被纳入版本控制
   ```

5. **使用区域隔离不同安全级别的网络**
   - 为不同信任级别的网络使用不同区域
   - 明确定义区域间的访问策略

6. **监控与日志**
   - 配置关键规则的日志记录
   - 将防火墙日志集成到集中式日志管理系统

   ```bash
   # 为敏感服务添加日志规则
   sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" service name="ssh" log prefix="SSH_ACCESS" level="info" accept'
   ```

## 与其他安全工具集成

### SELinux集成

firewalld可以与SELinux(安全增强型Linux)协同工作，提供更全面的安全保护：

```bash
# 检查SELinux状态
getenforce

# 确保防火墙规则考虑SELinux上下文
# 例如，更改Web服务端口时需要设置正确的SELinux端口标签
sudo semanage port -a -t http_port_t -p tcp 8080
```

### 系统审计集成

将firewalld与系统审计工具集成可以提供更好的安全可见性：

```bash
# 配置auditd监控防火墙配置更改
sudo auditctl -w /etc/firewalld/ -p wa -k firewall_config_change

# 查看防火墙配置更改审计日志
sudo ausearch -k firewall_config_change
```

### 安全监控集成

将firewalld日志集成到安全信息和事件管理(SIEM)系统：

```bash
# 配置rsyslog转发防火墙日志
sudo cat > /etc/rsyslog.d/firewalld.conf << EOF
:msg, contains, "FIREWALL" @siem-server:514
EOF

# 重启rsyslog服务
sudo systemctl restart rsyslog
```

## 总结

firewalld提供了一个灵活、动态的防火墙管理框架，通过区域和服务的