---
title: AppArmor应用程序防护
icon: practice
order: 9
---

# AppArmor应用程序防护

AppArmor是一个强大的Linux安全模块，通过限制程序的资源访问能力来提供应用程序隔离和保护。本文将详细介绍AppArmor的工作原理、配置方法和最佳实践，帮助读者掌握这一重要安全工具的使用技巧。

## AppArmor简介

AppArmor(Application Armor)是一个Linux安全模块，实现了强制访问控制(MAC)，通过将安全配置文件与应用程序关联来限制应用程序的能力。与SELinux相比，AppArmor更加关注应用程序而非对象标签，配置相对简单直观。
