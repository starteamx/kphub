---
title: LVS-NAT模式实现方案
icon: practice
order: 7
---

# LVS-NAT模式实现方案

LVS-NAT(Network Address Translation)模式是LVS最基础的工作模式，通过网络地址转换技术实现负载均衡。本文将详细介绍LVS-NAT模式的工作原理、网络拓扑和具体配置步骤，帮助读者掌握这一常用负载均衡模式的实现方法。

## LVS-NAT模式原理

LVS-NAT模式基于网络地址转换技术，其工作流程如下：

1. 客户端发送请求到VIP(虚拟IP)
2. 负载均衡器接收请求，根据调度算法选择一台后端服务器
3. 负载均衡器修改请求报文的目标地址为选中服务器的IP地址
4. 后端服务器处理请求后，响应返回到负载均衡器
5. 负载均衡器修改响应报文的源地址为VIP，发送给客户端

NAT模式的核心在于数据包的地址转换过程。当客户端的请求到达Director(负载均衡器)时，Director会根据预设的调度算法选择一台Real Server(真实服务器)，然后将数据包的目标IP地址从VIP修改为选中服务器的IP地址，同时修改目标端口(如果需要)。当Real Server处理完请求后，响应数据包会返回给Director，Director再将源IP地址从Real Server的IP修改为VIP，然后发送给客户端。

## LVS-NAT模式网络拓扑

LVS-NAT模式的典型网络拓扑如下图所示：

```
                  Internet
                      |
                      |
                 +---------+
                 | Director |
                 +---------+
                      |
                      |
        +-------------+-------------+
        |             |             |
   +---------+   +---------+   +---------+
   |  Real    |   |  Real    |   |  Real    |
   | Server 1 |   | Server 2 |   | Server 3 |
   +---------+   +---------+   +---------+
```

在这个拓扑中：

1. Director(负载均衡器)有两个网卡：
   - 外网网卡：连接互联网，配置VIP
   - 内网网卡：连接Real Server，配置内网IP

2. Real Server(真实服务器)只有一个网卡，连接内网，默认网关指向Director的内网IP

3. 所有的Real Server必须与Director位于同一个内网中

4. 客户端的请求和响应都必须经过Director

## LVS-NAT模式的优缺点

### 优点

1. **配置简单**：NAT模式是LVS三种模式中配置最简单的一种
2. **支持端口映射**：可以将请求从一个端口映射到另一个端口
3. **适用范围广**：Real Server可以使用任何支持TCP/IP的操作系统
4. **安全性好**：Real Server隐藏在Director后面，不直接暴露给外网

### 缺点

1. **扩展性有限**：所有请求和响应都必须经过Director，当并发连接数增加时，Director可能成为瓶颈
2. **网络结构限制**：Real Server必须将Director设置为默认网关，限制了网络拓扑的灵活性
3. **单点故障风险**：如果Director发生故障，整个集群将不可用(可通过Keepalived等工具实现高可用)

## LVS-NAT模式实现步骤

下面我们将详细介绍如何在CentOS/RHEL系统上实现LVS-NAT模式的负载均衡。

### 环境准备

假设我们有以下服务器配置：

- Director(负载均衡器)：
  - 外网IP：192.168.1.100
  - 内网IP：10.0.0.1
  - VIP：192.168.1.200

- Real Server 1：
  - IP：10.0.0.2
  - 服务：Web服务器(Nginx)

- Real Server 2：
  - IP：10.0.0.3
  - 服务：Web服务器(Nginx)

### 1. Director配置

#### 1.1 安装ipvsadm工具

ipvsadm是LVS的管理工具，用于配置和管理IPVS(IP Virtual Server)：

```bash
# 安装ipvsadm
yum install -y ipvsadm

# 启动ipvsadm服务
systemctl start ipvsadm
systemctl enable ipvsadm
```

#### 1.2 配置网络接口

确保Director有两个网卡，分别连接外网和内网：

```bash
# 配置外网接口
cat > /etc/sysconfig/network-scripts/ifcfg-eth0 << EOF
TYPE=Ethernet
BOOTPROTO=static
DEVICE=eth0
ONBOOT=yes
IPADDR=192.168.1.100
NETMASK=255.255.255.0
GATEWAY=192.168.1.1
EOF

# 配置内网接口
cat > /etc/sysconfig/network-scripts/ifcfg-eth1 << EOF
TYPE=Ethernet
BOOTPROTO=static
DEVICE=eth1
ONBOOT=yes
IPADDR=10.0.0.1
NETMASK=255.255.255.0
EOF

# 重启网络服务
systemctl restart network
```

#### 1.3 配置VIP

在外网接口上配置VIP：

```bash
# 添加VIP到eth0
ip addr add 192.168.1.200/32 dev eth0

# 设置开机自动配置VIP
echo "ip addr add 192.168.1.200/32 dev eth0" >> /etc/rc.local
chmod +x /etc/rc.local
```

#### 1.4 开启IP转发

LVS-NAT模式需要开启IP转发功能：

```bash
# 临时开启IP转发
echo 1 > /proc/sys/net/ipv4/ip_forward

# 永久开启IP转发
cat > /etc/sysctl.d/ipforward.conf << EOF
net.ipv4.ip_forward = 1
EOF

sysctl -p /etc/sysctl.d/ipforward.conf
```

#### 1.5 配置IPVS规则

使用ipvsadm配置负载均衡规则：

```bash
# 清除现有IPVS规则
ipvsadm -C

# 设置连接超时时间(单位：秒)
ipvsadm --set 30 5 60

# 添加虚拟服务
ipvsadm -A -t 192.168.1.200:80 -s rr

# 添加Real Server
ipvsadm -a -t 192.168.1.200:80 -r 10.0.0.2:80 -m
ipvsadm -a -t 192.168.1.200:80 -r 10.0.0.3:80 -m

# 保存IPVS规则
ipvsadm-save > /etc/sysconfig/ipvsadm
```

上述命令说明：
- `-A`：添加一个虚拟服务
- `-t`：指定TCP服务
- `-s rr`：使用轮询(Round Robin)调度算法
- `-a`：添加一个Real Server
- `-r`：指定Real Server的地址和端口
- `-m`：使用NAT模式(masquerading)

#### 1.6 创建自动化脚本

为了方便管理，我们可以创建一个脚本来自动配置LVS-NAT：

```bash
#!/bin/bash
# 文件名: /usr/local/bin/lvs-nat-setup.sh

# 清除现有IPVS规则
ipvsadm -C

# 设置VIP
VIP=192.168.1.200
PORT=80

# 添加VIP到eth0
ip addr add $VIP/32 dev eth0 2>/dev/null

# 开启IP转发
echo 1 > /proc/sys/net/ipv4/ip_forward

# 添加虚拟服务
ipvsadm -A -t $VIP:$PORT -s rr

# 添加Real Server
ipvsadm -a -t $VIP:$PORT -r 10.0.0.2:$PORT -m
ipvsadm -a -t $VIP:$PORT -r 10.0.0.3:$PORT -m

# 保存IPVS规则
ipvsadm-save > /etc/sysconfig/ipvsadm

echo "LVS-NAT配置完成"
ipvsadm -L -n
```

设置脚本权限并执行：

```bash
chmod +x /usr/local/bin/lvs-nat-setup.sh
/usr/local/bin/lvs-nat-setup.sh
```

### 2. Real Server配置

#### 2.1 配置网络

在每台Real Server上配置网络，将默认网关指向Director的内网IP：

```bash
# Real Server 1配置
cat > /etc/sysconfig/network-scripts/ifcfg-eth0 << EOF
TYPE=Ethernet
BOOTPROTO=static
DEVICE=eth0
ONBOOT=yes
IPADDR=10.0.0.2
NETMASK=255.255.255.0
GATEWAY=10.0.0.1
EOF

# Real Server 2配置
cat > /etc/sysconfig/network-scripts/ifcfg-eth0 << EOF
TYPE=Ethernet
BOOTPROTO=static
DEVICE=eth0
ONBOOT=yes
IPADDR=10.0.0.3
NETMASK=255.255.255.0
GATEWAY=10.0.0.1
EOF

# 重启网络服务
systemctl restart network
```

#### 2.2 安装Web服务

在每台Real Server上安装并配置Web服务(以Nginx为例)：

```bash
# 安装Nginx
yum install -y epel-release
yum install -y nginx

# 创建测试页面
cat > /usr/share/nginx/html/index.html << EOF
<!DOCTYPE html>
<html>
<head>
    <title>Real Server Test</title>
</head>
<body>
    <h1>Welcome to Real Server $(hostname)</h1>
    <p>IP Address: $(hostname -I)</p>
    <p>Date and Time: $(date)</p>
</body>
</html>
EOF

# 启动Nginx服务
systemctl start nginx
systemctl enable nginx
```

### 3. 测试负载均衡

#### 3.1 验证IPVS规则

在Director上查看IPVS规则：

```bash
ipvsadm -L -n
```

输出应类似于：

```
IP Virtual Server version 1.2.1 (size=4096)
Prot LocalAddress:Port Scheduler Flags
  -> RemoteAddress:Port           Forward Weight ActiveConn InActConn
TCP  192.168.1.200:80 rr
  -> 10.0.0.2:80                  Masq    1      0          0         
  -> 10.0.0.3:80                  Masq    1      0          0
```

#### 3.2 客户端测试

从外部客户端访问VIP：

```bash
# 使用curl多次访问VIP
for i in {1..10}; do curl -s http://192.168.1.200 | grep "Real Server"; done
```

如果配置正确，应该能看到请求在两台Real Server之间轮询分发。

#### 3.3 连接状态查看

在Director上查看当前连接状态：

```bash
ipvsadm -L -n --stats
ipvsadm -L -n --rate
ipvsadm -L -n --connections
```

## LVS-NAT模式的调度算法

LVS支持多种调度算法，可以根据实际需求选择合适的算法：

1. **rr (Round Robin)**：轮询，将请求平均分配给每台Real Server
2. **wrr (Weighted Round Robin)**：加权轮询，根据权重分配请求
3. **lc (Least Connection)**：最少连接，将请求分配给当前连接数最少的Real Server
4. **wlc (Weighted Least Connection)**：加权最少连接，结合权重和当前连接数进行分配
5. **sh (Source Hashing)**：源地址哈希，来自同一IP的请求总是发送到同一台Real Server
6. **dh (Destination Hashing)**：目标地址哈希，发往同一目标IP的请求总是发送到同一台Real Server

修改调度算法示例：

```bash
# 修改为加权轮询，并设置不同权重
ipvsadm -E -t 192.168.1.200:80 -s wrr
ipvsadm -e -t 192.168.1.200:80 -r 10.0.0.2:80 -m -w 2
ipvsadm -e -t 192.168.1.200:80 -r 10.0.0.3:80 -m -w 1
```

## LVS-NAT模式的持久连接

持久连接(Persistence)可以确保来自同一客户端的请求总是被发送到同一台Real Server，这对于需要会话一致性的应用非常重要：

```bash
# 添加持久连接，超时时间为300秒
ipvsadm -A -t 192.168.1.200:80 -s rr -p 300

# 或修改现有虚拟服务
ipvsadm -E -t 192.168.1.200:80 -s rr -p 300
```

## LVS-NAT模式的高可用配置

为了避免Director成为单点故障，可以使用Keepalived实现LVS的高可用：

### 1. 安装Keepalived

在主备Director上安装Keepalived：

```bash
yum install -y keepalived
```

### 2. 配置主Director

```bash
cat > /etc/keepalived/keepalived.conf << EOF
global_defs {
   router_id LVS_MASTER
}

vrrp_instance VI_1 {
    state MASTER
    interface eth0
    virtual_router_id 51
    priority 100
    advert_int 1
    authentication {
        auth_type PASS
        auth_pass 1111
    }
    virtual_ipaddress {
        192.168.1.200
    }
}

virtual_server 192.168.1.200 80 {
    delay_loop 6
    lb_algo rr
    lb_kind NAT
    persistence_timeout 300
    protocol TCP

    real_server 10.0.0.2 80 {
        weight 1
        TCP_CHECK {
            connect_timeout 3
            nb_get_retry 3
            delay_before_retry 3
            connect_port 80
        }
    }
    
    real_server 10.0.0.3 80 {
        weight 1
        TCP_CHECK {
            connect_timeout 3
            nb_get_retry 3
            delay_before_retry 3
            connect_port 80
        }
    }
}
EOF
```

### 3. 配置备Director

```bash
cat > /etc/keepalived/keepalived.conf << EOF
global_defs {
   router_id LVS_BACKUP
}

vrrp_instance VI_1 {
    state BACKUP
    interface eth0
    virtual_router_id 51
    priority 90
    advert_int 1
    authentication {
        auth_type PASS
        auth_pass 1111
    }
    virtual_ipaddress {
        192.168.1.200
    }
}

virtual_server 192.168.1.200 80 {
    delay_loop 6
    lb_algo rr
    lb_kind NAT
    persistence_timeout 300
    protocol TCP

    real_server 10.0.0.2 80 {
        weight 1
        TCP_CHECK {
            connect_timeout 3
            nb_get_retry 3
            delay_before_retry 3
            connect_port 80
        }
    }
    
    real_server 10.0.0.3 80 {
        weight 1
        TCP_CHECK {
            connect_timeout 3
            nb_get_retry 3
            delay_before_retry 3
            connect_port 80
        }
    }
}
EOF
```

### 4. 启动Keepalived服务

在主备Director上启动Keepalived服务：

```bash
systemctl start keepalived
systemctl enable keepalived
```

## 故障排除

在实施LVS-NAT模式时可能遇到的常见问题及解决方法：

### 1. 无法访问VIP

检查以下几点：
- VIP是否正确配置在Director上
- 防火墙是否允许相关流量
- IP转发是否已启用

```bash
# 检查VIP配置
ip addr show

# 检查防火墙规则
iptables -L -n

# 检查IP转发
cat /proc/sys/net/ipv4/ip_forward
```

### 2. Real Server无法访问外网

确保Real Server的默认网关正确指向Director的内网IP：

```bash
# 检查路由表
ip route show

# 测试网络连接
ping -c 4 8.8.8.8
```

### 3. 负载不均衡

检查调度算法和Real Server权重：

```bash
# 查看当前IPVS配置
ipvsadm -L -n

# 检查连接统计
ipvsadm -L -n --stats
```

### 4. 连接超时或中断

可能是连接超时设置过短：

```bash
# 查看当前超时设置
ipvsadm -L --timeout

# 调整超时设置(TCP超时、TCP FIN超时、UDP超时)
ipvsadm --set 120 30 300
```

## 性能优化

为了提高LVS-NAT模式的性能，可以考虑以下优化措施：

### 1. 内核参数优化

```bash
cat > /etc/sysctl.d/lvs-performance.conf << EOF
# 增加连接跟踪表大小
net.netfilter.nf_conntrack_max = 1000000
net.nf_conntrack_max = 1000000

# 增加本地端口范围
net.ipv4.ip_local_port_range = 1024 65000

# 优化TCP参数
net.ipv4.tcp_fin_timeout = 30
net.ipv4.tcp_keepalive_time = 1200
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_tw_recycle = 0

# 优化网络接口队列
net.core.somaxconn = 65535
net.core.netdev_max_backlog = 65535
EOF

sysctl -p /etc/sysctl.d/lvs-performance.conf
```

### 2. 增加Director硬件资源

由于NAT模式下所有流量都经过Director，应确保Director有足够的硬件资源：
- 多核CPU
- 足够的内存
- 高性能网卡

### 3. 使用多队列网卡和中断绑定

对于高流量环境，可以使用多队列网卡并将中断绑定到特定CPU核心：

```bash
# 查看网卡队列
ethtool -l eth0

# 设置网卡队列数
ethtool -L eth0 combined 4

# 查看中断
cat /proc/interrupts | grep eth0

# 使用irqbalance或手动绑定中断到CPU
```

## 总结

LVS-NAT模式是一种简单易用的负载均衡解决方案，适合中小规模的应用场景。它的主要优势在于配置简单、支持端口映射和良好的安全性。但在大规模高并发环境下，由于所有流量都需要经过Director，可能会成为性能瓶颈。

在实际应用中，可以根据需求选择合适的调度算法，并通过Keepalived实现高可用，以提高系统的可靠性。对于更大规模的应用，可以考虑使用LVS的其他模式，如DR模式或TUN模式，它们能够提供更好的扩展性和性能。

通过本文的详细介绍，读者应该能够理解LVS-NAT模式的工作原理，并能够在实际环境中成功部署和配置LVS-NAT负载均衡系统。