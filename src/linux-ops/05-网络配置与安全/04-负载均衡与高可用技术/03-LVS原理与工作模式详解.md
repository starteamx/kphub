---
title: LVS原理与工作模式详解
icon: theory
order: 3
---

# LVS原理与工作模式详解

LVS(Linux Virtual Server)是Linux平台下最流行的负载均衡解决方案之一，通过在内核层实现IP负载均衡技术，提供高性能、高可用的服务。本文将详细介绍LVS的工作原理、架构组成和三种主要工作模式，帮助读者深入理解LVS技术的核心机制。

## LVS简介

LVS是章文嵩博士开发的基于Linux内核的开源负载均衡项目，它通过IPVS(IP Virtual Server)模块实现，IPVS是运行在内核空间的负载均衡调度器，可以将对虚拟服务的请求转发到真实服务器上。
