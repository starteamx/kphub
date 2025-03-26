---
title: iSCSI存储配置与使用
icon: practice
order: 9
---

# iSCSI存储配置与使用

iSCSI(Internet Small Computer System Interface)是一种基于IP网络的存储协议，允许通过网络访问块设备。本文将详细介绍iSCSI的工作原理、服务器(Target)和客户端(Initiator)的配置方法，以及在Linux系统中使用iSCSI存储的最佳实践。

## iSCSI技术概述

iSCSI是一种将SCSI协议封装在TCP/IP网络中传输的技术，使得可以通过标准的网络设备构建存储区域网络(SAN)，而不需要专用的光纤通道设备。iSCSI系统主要包含两个角色：

1. **iSCSI Target**：提供存储资源的服务器端
2. **iSCSI Initiator**：访问存储资源的客户端
