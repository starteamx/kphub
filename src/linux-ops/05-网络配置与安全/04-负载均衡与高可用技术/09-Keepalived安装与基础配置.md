---
title: Keepalived安装与基础配置
icon: practice
order: 9
---

# Keepalived安装与基础配置

Keepalived是实现高可用集群的关键软件，通过正确安装和配置Keepalived，可以为关键服务提供可靠的故障转移机制。本文将详细介绍Keepalived的安装步骤、基础配置和常用功能设置，帮助读者快速掌握Keepalived的基本使用方法。

## Keepalived简介

Keepalived是一个用C语言编写的开源软件，主要用于实现Linux系统下的高可用性（High Availability）解决方案。它的核心功能是通过VRRP（Virtual Router Redundancy Protocol，虚拟路由冗余协议）实现IP地址的故障转移，同时还提供了强大的健康检查机制，可以监控服务的状态并做出相应的故障处理。

Keepalived的主要特点包括：

1. **高可用性**：通过VRRP协议实现虚拟IP（VIP）在多台服务器之间的自动漂移
2. **健康检查**：支持多种健康检查方式，包括TCP、HTTP、SSL等
3. **负载均衡**：可以与LVS（Linux Virtual Server）集成，实现负载均衡的高可用
4. **简单易用**：配置相对简单，易于部署和维护
5. **资源占用少**：运行时资源消耗小，适合各种规模的系统

## Keepalived安装

Keepalived可以通过包管理器安装或源码编译安装，以下是在主流Linux发行版上的安装方法：

### Debian/Ubuntu系统

在Debian或Ubuntu系统上，可以直接使用apt包管理器安装：

```bash
sudo apt update
sudo apt install keepalived
```

安装完成后，Keepalived的主要文件位置：
- 配置文件：`/etc/keepalived/keepalived.conf`
- 服务脚本：`/etc/init.d/keepalived`或`/lib/systemd/system/keepalived.service`
- 日志文件：通常记录在`/var/log/syslog`中

### RHEL/CentOS系统

在RHEL或CentOS系统上，可以使用yum或dnf包管理器安装：

```bash
# CentOS 7/RHEL 7
sudo yum install keepalived

# CentOS 8+/RHEL 8+
sudo dnf install keepalived
```

安装完成后，Keepalived的主要文件位置：
- 配置文件：`/etc/keepalived/keepalived.conf`
- 服务脚本：`/etc/init.d/keepalived`或`/usr/lib/systemd/system/keepalived.service`
- 日志文件：通常记录在`/var/log/messages`中

### 源码编译安装

如果需要最新版本或自定义功能，可以选择源码编译安装：

```bash
# 安装依赖包
sudo apt install build-essential libssl-dev libnl-3-dev libnl-genl-3-dev libsnmp-dev  # Debian/Ubuntu
# 或
sudo yum install gcc openssl-devel libnl3-devel net-snmp-devel  # RHEL/CentOS

# 下载源码
wget https://www.keepalived.org/software/keepalived-2.2.7.tar.gz
tar -zxvf keepalived-2.2.7.tar.gz
cd keepalived-2.2.7

# 配置、编译和安装
./configure --with-kernel-dir=/lib/modules/$(uname -r)/build
make
sudo make install

# 创建配置目录
sudo mkdir -p /etc/keepalived

# 复制配置文件示例
sudo cp /usr/local/etc/keepalived/keepalived.conf.sample /etc/keepalived/keepalived.conf

# 复制服务脚本
sudo cp keepalived/etc/init.d/keepalived /etc/init.d/
# 或对于systemd系统
sudo cp keepalived/keepalived.service /lib/systemd/system/
sudo systemctl daemon-reload
```

## Keepalived服务管理

安装完成后，可以通过以下命令管理Keepalived服务：

### 启动服务

```bash
# 使用SysVinit
sudo service keepalived start

# 使用systemd
sudo systemctl start keepalived
```

### 设置开机自启

```bash
# 使用SysVinit
sudo chkconfig keepalived on

# 使用systemd
sudo systemctl enable keepalived
```

### 查看服务状态

```bash
# 使用SysVinit
sudo service keepalived status

# 使用systemd
sudo systemctl status keepalived
```

### 重启服务

```bash
# 使用SysVinit
sudo service keepalived restart

# 使用systemd
sudo systemctl restart keepalived
```

### 重新加载配置

```bash
# 使用SysVinit
sudo service keepalived reload

# 使用systemd
sudo systemctl reload keepalived
```

## Keepalived基础配置

Keepalived的配置文件是`/etc/keepalived/keepalived.conf`，它由三个主要部分组成：

1. **全局配置（global_defs）**：定义全局参数
2. **VRRP实例配置（vrrp_instance）**：定义VRRP实例的参数
3. **虚拟服务器配置（virtual_server）**：定义LVS负载均衡的参数（可选）

### 基本配置结构

一个典型的Keepalived配置文件结构如下：

```
global_defs {
    # 全局配置参数
}

vrrp_script <脚本名> {
    # 健康检查脚本配置
}

vrrp_instance <实例名> {
    # VRRP实例配置
}

virtual_server <VIP地址> <端口> {
    # LVS虚拟服务器配置（可选）
}
```

### 全局配置（global_defs）

全局配置部分定义了Keepalived的全局参数，例如：

```
global_defs {
    notification_email {
        admin@example.com
    }
    notification_email_from keepalived@example.com
    smtp_server 127.0.0.1
    smtp_connect_timeout 30
    router_id LVS_MASTER
    vrrp_skip_check_adv_addr
    vrrp_strict
    vrrp_garp_interval 0
    vrrp_gna_interval 0
}
```

主要参数说明：
- **notification_email**：当发生故障转移时，发送通知邮件的目标地址
- **notification_email_from**：发送通知邮件的源地址
- **smtp_server**：邮件服务器地址
- **smtp_connect_timeout**：连接邮件服务器的超时时间
- **router_id**：路由器标识，在一个局域网内应该唯一
- **vrrp_skip_check_adv_addr**：跳过检查VRRP通告包的源地址
- **vrrp_strict**：严格遵守VRRP协议
- **vrrp_garp_interval**：发送免费ARP的间隔时间
- **vrrp_gna_interval**：发送免费NA（IPv6）的间隔时间

### VRRP实例配置（vrrp_instance）

VRRP实例配置定义了虚拟路由器的参数，是Keepalived的核心配置：

#### 主节点配置示例

```
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
        192.168.1.100/24
    }
}
```

#### 备节点配置示例

```
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
        192.168.1.100/24
    }
}
```

主要参数说明：
- **state**：初始状态，可以是MASTER或BACKUP
- **interface**：VRRP实例绑定的网络接口
- **virtual_router_id**：虚拟路由器ID，同一个VRRP实例在一个网段内必须相同
- **priority**：优先级，取值范围0-255，数值越大优先级越高
- **advert_int**：VRRP通告的间隔时间（秒）
- **authentication**：认证配置，包括认证类型和密码
- **virtual_ipaddress**：虚拟IP地址列表

### 健康检查配置（vrrp_script）

Keepalived可以通过脚本检查服务的健康状态，并根据检查结果决定是否进行故障转移：

```
vrrp_script check_nginx {
    script "/usr/local/bin/check_nginx.sh"
    interval 2
    weight -20
    fall 3
    rise 2
}

vrrp_instance VI_1 {
    # ... 其他配置 ...
    track_script {
        check_nginx
    }
}
```

主要参数说明：
- **script**：执行的脚本路径
- **interval**：检查的间隔时间（秒）
- **weight**：检查失败时对优先级的调整值
- **fall**：连续多少次检查失败才算真正失败
- **rise**：连续多少次检查成功才算真正成功
- **track_script**：在vrrp_instance中引用脚本

### 检查脚本示例

以下是一个简单的Nginx健康检查脚本示例：

```bash
#!/bin/bash
# 文件名: /usr/local/bin/check_nginx.sh

# 检查Nginx进程是否存在
if pidof nginx > /dev/null; then
    # 检查Nginx是否能正常响应
    if curl -s http://localhost/ > /dev/null; then
        exit 0
    else
        exit 1
    fi
else
    exit 1
fi
```

确保脚本有执行权限：

```bash
sudo chmod +x /usr/local/bin/check_nginx.sh
```

## 实际配置案例

下面提供几个常见场景的Keepalived配置案例：

### 案例一：简单的高可用Web服务器

这个案例展示如何为Web服务器（如Nginx）配置高可用：

#### 主节点配置

```
global_defs {
    router_id NGINX_MASTER
}

vrrp_script check_nginx {
    script "/usr/local/bin/check_nginx.sh"
    interval 2
    weight -20
    fall 3
    rise 2
}

vrrp_instance VI_WEB {
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
        192.168.1.100/24
    }
    track_script {
        check_nginx
    }
}
```

#### 备节点配置

```
global_defs {
    router_id NGINX_BACKUP
}

vrrp_script check_nginx {
    script "/usr/local/bin/check_nginx.sh"
    interval 2
    weight -20
    fall 3
    rise 2
}

vrrp_instance VI_WEB {
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
        192.168.1.100/24
    }
    track_script {
        check_nginx
    }
}
```

### 案例二：高可用LVS负载均衡器

这个案例展示如何为LVS负载均衡器配置高可用：

#### 主节点配置

```
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
        192.168.1.100/24
    }
}

virtual_server 192.168.1.100 80 {
    delay_loop 6
    lb_algo rr
    lb_kind DR
    persistence_timeout 300
    protocol TCP

    real_server 192.168.1.101 80 {
        weight 1
        TCP_CHECK {
            connect_timeout 3
            nb_get_retry 3
            delay_before_retry 3
            connect_port 80
        }
    }
    
    real_server 192.168.1.102 80 {
        weight 1
        TCP_CHECK {
            connect_timeout 3
            nb_get_retry 3
            delay_before_retry 3
            connect_port 80
        }
    }
}
```

#### 备节点配置

```
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
        192.168.1.100/24
    }
}

virtual_server 192.168.1.100 80 {
    delay_loop 6
    lb_algo rr
    lb_kind DR
    persistence_timeout 300
    protocol TCP

    real_server 192.168.1.101 80 {
        weight 1
        TCP_CHECK {
            connect_timeout 3
            nb_get_retry 3
            delay_before_retry 3
            connect_port 80
        }
    }
    
    real_server 192.168.1.102 80 {
        weight 1
        TCP_CHECK {
            connect_timeout 3
            nb_get_retry 3
            delay_before_retry 3
            connect_port 80
        }
    }
}
```

### 案例三：多实例配置

这个案例展示如何在一台服务器上配置多个VRRP实例，用于不同的服务：

```
global_defs {
    router_id MULTI_INSTANCE
}

# Web服务实例
vrrp_instance VI_WEB {
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
        192.168.1.100/24
    }
}

# 数据库服务实例
vrrp_instance VI_DB {
    state BACKUP
    interface eth0
    virtual_router_id 52
    priority 90
    advert_int 1
    authentication {
        auth_type PASS
        auth_pass 2222
    }
    virtual_ipaddress {
        192.168.1.200/24
    }
}
```

## 通知和脚本执行

Keepalived可以在状态变化时执行自定义脚本，用于通知管理员或执行其他操作：

```
vrrp_instance VI_1 {
    # ... 其他配置 ...
    
    # 当实例变为MASTER状态时执行的脚本
    notify_master "/usr/local/bin/notify_master.sh"
    
    # 当实例变为BACKUP状态时执行的脚本
    notify_backup "/usr/local/bin/notify_backup.sh"
    
    # 当实例出现故障时执行的脚本
    notify_fault "/usr/local/bin/notify_fault.sh"
    
    # 所有状态变化都会执行的脚本
    notify "/usr/local/bin/notify.sh"
}
```

### 通知脚本示例

```bash
#!/bin/bash
# 文件名: /usr/local/bin/notify.sh

# 获取参数
TYPE=$1      # 实例类型
NAME=$2      # 实例名称
STATE=$3     # 状态（MASTER/BACKUP/FAULT）

# 记录日志
logger -t keepalived "Keepalived实例 $NAME 状态变为 $STATE"

# 发送邮件通知
echo "Keepalived实例 $NAME 状态变为 $STATE" | mail -s "Keepalived状态变化通知" admin@example.com

# 如果变为MASTER状态，可以执行一些额外操作
if [ "$STATE" == "MASTER" ]; then
    # 例如：启动某些只在主节点运行的服务
    systemctl start special-service
fi

exit 0
```

确保脚本有执行权限：

```bash
sudo chmod +x /usr/local/bin/notify.sh
```

## 高级配置选项

### 非抢占模式

默认情况下，Keepalived使用抢占模式，即优先级高的节点会抢占当前的MASTER角色。如果希望避免不必要的切换，可以配置非抢占模式：

```
vrrp_instance VI_1 {
    # ... 其他配置 ...
    nopreempt
    preempt_delay 300  # 抢占延迟时间（秒）
}
```

### 同步组

当有多个VRRP实例时，可以使用同步组确保它们同时进行状态切换：

```
vrrp_sync_group VG_1 {
    group {
        VI_WEB
        VI_DB
    }
    notify_master "/usr/local/bin/notify_master.sh"
    notify_backup "/usr/local/bin/notify_backup.sh"
    notify_fault "/usr/local/bin/notify_fault.sh"
}

vrrp_instance VI_WEB {
    # ... 配置 ...
}

vrrp_instance VI_DB {
    # ... 配置 ...
}
```

### 多网卡绑定

如果服务器有多个网卡，可以配置Keepalived在不同网卡上绑定虚拟IP：

```
vrrp_instance VI_1 {
    # ... 其他配置 ...
    virtual_ipaddress {
        192.168.1.100/24 dev eth0
        10.0.0.100/24 dev eth1
    }
}
```

### SMTP通知

除了执行脚本外，Keepalived还可以直接发送邮件通知：

```
global_defs {
    notification_email {
        admin@example.com
        support@example.com
    }
    notification_email_from keepalived@example.com
    smtp_server 192.168.1.10
    smtp_connect_timeout 30
    router_id LVS_MASTER
}
```

## 故障排除

在使用Keepalived时可能遇到的常见问题及解决方法：

### 1. 虚拟IP无法绑定

检查以下几点：
- 网络接口名称是否正确
- 是否有足够的权限（需要root权限）
- 是否有防火墙规则阻止VRRP通信（端口112）

```bash
# 检查网络接口
ip addr show

# 检查防火墙规则
iptables -L -n | grep 112
```

### 2. 状态无法正确切换

可能的原因：
- VRRP通信被阻断
- 认证配置不匹配
- 优先级或virtual_router_id配置错误

```bash
# 检查VRRP通信
tcpdump -i eth0 vrrp

# 检查日志
tail -f /var/log/syslog    # Debian/Ubuntu
tail -f /var/log/messages  # RHEL/CentOS
```

### 3. 健康检查脚本不生效

检查以下几点：
- 脚本是否有执行权限
- 脚本路径是否正确
- 脚本是否能正常执行并返回正确的退出码

```bash
# 测试脚本执行
sudo /usr/local/bin/check_nginx.sh
echo $?  # 查看退出码，0表示成功，非0表示失败
```

### 4. 查看Keepalived状态

```bash
# 查看进程状态
ps aux | grep keepalived

# 查看VRRP实例状态
ip addr show

# 查看日志
journalctl -u keepalived
```

## 最佳实践

### 1. 安全性考虑

- 使用强密码进行VRRP认证
- 限制VRRP通信只在内部网络
- 定期更新Keepalived版本以修复安全漏洞

```bash
# 配置防火墙允许VRRP通信（仅限内部网络）
iptables -A INPUT -p vrrp -s 192.168.1.0/24 -j ACCEPT
iptables -A INPUT -p vrrp -j DROP
```

### 2. 监控和日志

- 配置详细的日志记录
- 设置监控系统监控Keepalived状态
- 配置通知机制及时发现问题

```bash
# 增加日志详细程度
global_defs {
    # ... 其他配置 ...
    vrrp_garp_master_delay 10
    vrrp_garp_master_repeat 1
    vrrp_garp_lower_prio_delay 10
    vrrp_garp_lower_prio_repeat 1
    vrrp_higher_prio_send_advert true
    vrrp_version 3
    log_facility 7
}
```

### 3. 配置备份和版本控制

- 定期备份Keepalived配置
- 使用版本控制系统管理配置文件
- 在修改配置前进行测试

```bash
# 备份配置文件
cp /etc/keepalived/keepalived.conf /etc/keepalived/keepalived.conf.bak

# 测试配置文件语法
keepalived -t -f /etc/keepalived/keepalived.conf
```

### 4. 定期测试故障转移

- 定期进行故障转移测试
- 模拟各种故障场景并验证系统行为
- 记录测试结果并优化配置

```bash
# 模拟主节点故障
sudo systemctl stop keepalived

# 或者临时降低优先级
sudo killall -TERM keepalived
sudo sed -i 's/priority 100/priority 50/' /etc/keepalived/keepalived.conf
sudo systemctl start keepalived
```

## 总结

Keepalived是一个功能强大且灵活的高可用解决方案，通过正确的安装和配置，可以为各种服务提供可靠的故障转移机制。本文详细介绍了Keepalived的安装步骤、基础配置和常用功能设置，并提供了多个实际应用案例和故障排除方法。

通过掌握Keepalived的基本使用方法，读者可以构建稳定可靠的高可用系统，确保关键服务的连续性和可用性。随着对Keepalived的深入了解和实践，还可以探索更多高级功能和优化技巧，进一步提升系统的可靠性和性能。