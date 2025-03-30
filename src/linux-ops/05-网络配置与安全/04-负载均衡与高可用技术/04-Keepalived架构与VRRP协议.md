---
title: Keepalived架构与VRRP协议
icon: theory
order: 4
---

# Keepalived架构与VRRP协议

Keepalived是一个用于实现高可用性的开源软件，通过VRRP协议实现负载均衡器的故障转移，确保服务的连续性。本文将详细介绍Keepalived的架构设计、VRRP协议原理和工作机制，帮助读者理解高可用集群的核心技术。

## Keepalived简介

Keepalived是一个基于VRRP协议的高可用解决方案，主要用于实现负载均衡器、路由器等关键网络设备的故障转移，防止单点故障导致的服务中断。它最初设计用于LVS集群系统，后来发展成为一个独立的、功能丰富的高可用软件。
