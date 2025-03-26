---
title: Keepalived+LVS高可用集群构建
icon: practice
order: 10
---

# Keepalived+LVS高可用集群构建

Keepalived与LVS的结合是构建高性能、高可用负载均衡集群的经典方案，通过这种组合可以同时实现负载均衡和故障转移功能。本文将详细介绍Keepalived+LVS高可用集群的架构设计、部署步骤和配置方法，帮助读者构建企业级的负载均衡解决方案。

## Keepalived+LVS架构概述

Keepalived+LVS高可用集群通常采用双机热备架构，包含以下组件：

1. **主负载均衡器**：运行LVS和Keepalived，处理正常流量
2. **备负载均衡器**：运行LVS和Keepalived，在主节点故障时接管服务
3. **真实服务器集群**：提供实际服务的后端服务器
4. **VIP(虚拟IP)**：对外提供服务的虚拟IP地址，由主负载均衡器持有
