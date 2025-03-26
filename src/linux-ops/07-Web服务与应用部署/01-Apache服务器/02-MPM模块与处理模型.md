---
title: MPM模块与处理模型
icon: theory
order: 2
---

# MPM模块与处理模型

多处理模块(MPM)是Apache HTTP Server处理并发连接的核心机制，不同的MPM模块采用不同的处理模型来管理请求。本文将详细介绍Apache中的各种MPM模块，包括prefork、worker和event等，分析它们的工作原理、适用场景以及性能特点，帮助读者选择最适合自己环境的处理模型。
