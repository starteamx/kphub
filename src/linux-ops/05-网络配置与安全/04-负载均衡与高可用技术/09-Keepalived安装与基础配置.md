---
title: Keepalived安装与基础配置
icon: practice
order: 9
---

# Keepalived安装与基础配置

Keepalived是实现高可用集群的关键软件，通过正确安装和配置Keepalived，可以为关键服务提供可靠的故障转移机制。本文将详细介绍Keepalived的安装步骤、基础配置和常用功能设置，帮助读者快速掌握Keepalived的基本使用方法。

## Keepalived安装

Keepalived可以通过包管理器安装或源码编译安装，以下是在主流Linux发行版上的安装方法：

### Debian/Ubuntu系统

```bash
sudo apt update
sudo apt install keepalived
```

### RHEL/CentOS系统

```bash
sudo yum install keepalived
```

### 源码编译安装

如果需要最新版本或自定义功能，可以选择源码编译安装：

```bash
wget https://www.keepalived.org/software/keepalived-2.2.7.tar.gz
tar -zxvf keepalived-2.2.7.tar.gz
cd keepalived-2.2.7
./configure
make
sudo make install
```
