#!/bin/bash

# 创建基础目录结构
BASE_DIR="/Users/guanrunbai/my/kphub2/src/linux-ops"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Linux运维实战知识库
icon: linux
order: 1
---

# Linux运维实战知识库

本知识库涵盖了Linux运维工程师所需的核心技能和知识体系，从入门到精通，系统化地整理了运维领域的理论与实践。无论你是运维新手还是有经验的工程师，都能在这里找到有价值的内容，提升自己的专业能力。
EOF

# 创建学习指南目录
mkdir -p "$BASE_DIR/00-学习指南与路径规划"
cat > "$BASE_DIR/00-学习指南与路径规划/README.md" << 'EOF'
---
title: 学习指南与路径规划
icon: route
order: 1
---

# 学习指南与路径规划

本章节将帮助您了解Linux运维的知识体系，规划学习路径，并准备适合的学习环境。通过系统化的学习指导，让您能够更高效地掌握Linux运维技能，为后续的深入学习打下坚实基础。
EOF

# 创建知识体系概览目录
mkdir -p "$BASE_DIR/00-学习指南与路径规划/01-运维知识体系概览"
cat > "$BASE_DIR/00-学习指南与路径规划/01-运维知识体系概览/README.md" << 'EOF'
---
title: 运维知识体系概览
icon: mindmap
order: 1
---

# 运维知识体系概览

本节内容将帮助您了解Linux运维工程师的核心技能体系，为学习提供清晰的指导。通过全面的知识图谱和能力模型，让您对运维工作有整体认识，明确学习方向和目标。
EOF

# 创建Linux运维技能图谱文档
cat > "$BASE_DIR/00-学习指南与路径规划/01-运维知识体系概览/01-Linux运维技能图谱.md" << 'EOF'
---
title: Linux运维技能图谱
icon: diagram
order: 1
---

# Linux运维技能图谱

Linux运维工程师需要掌握的核心技能和知识领域全景图，帮助您了解运维工作的全貌。本文将系统梳理运维工程师所需的各项技能，从基础到进阶，构建完整的知识体系框架。
EOF

# 创建从入门到精通的学习路径文档
cat > "$BASE_DIR/00-学习指南与路径规划/01-运维知识体系概览/02-从入门到精通的学习路径.md" << 'EOF'
---
title: 从入门到精通的学习路径
icon: route
order: 2
---

# 从入门到精通的学习路径

本文将为您规划一条从Linux运维入门到精通的学习路径，帮助您系统化地掌握运维技能。通过分阶段学习计划，让您的技能提升更有针对性和连贯性。
EOF

# 创建不同岗位所需技能对照表文档
cat > "$BASE_DIR/00-学习指南与路径规划/01-运维知识体系概览/03-不同岗位所需技能对照表.md" << 'EOF'
---
title: 不同岗位所需技能对照表
icon: table
order: 3
---

# 不同岗位所需技能对照表

运维领域包含多种不同的岗位方向，每个方向所需的技能侧重点各不相同。本文将详细对比分析不同运维岗位的技能要求，帮助您根据职业规划选择学习重点。
EOF

# 创建运维工程师核心能力模型文档
cat > "$BASE_DIR/00-学习指南与路径规划/01-运维知识体系概览/04-运维工程师核心能力模型.md" << 'EOF'
---
title: 运维工程师核心能力模型
icon: ability
order: 4
---

# 运维工程师核心能力模型

本文详细阐述了优秀运维工程师应具备的核心能力模型，包括技术能力、问题解决能力、沟通协作能力等多个维度。通过这个模型，您可以全面评估自己的能力水平，有针对性地进行提升。
EOF

# 创建Linux运维发展趋势与前景文档
cat > "$BASE_DIR/00-学习指南与路径规划/01-运维知识体系概览/05-Linux运维发展趋势与前景.md" << 'EOF'
---
title: Linux运维发展趋势与前景
icon: trend
order: 5
---

# Linux运维发展趋势与前景

随着云计算、容器化、DevOps等技术的发展，Linux运维工作也在不断演进。本文分析了当前运维领域的技术趋势和未来发展方向，帮助您把握行业脉搏，做好职业规划。
EOF

# 创建学习环境准备目录
mkdir -p "$BASE_DIR/00-学习指南与路径规划/02-学习环境准备"
cat > "$BASE_DIR/00-学习指南与路径规划/02-学习环境准备/README.md" << 'EOF'
---
title: 学习环境准备
icon: tools
order: 2
---

# 学习环境准备

选择合适的学习环境是掌握Linux运维技能的重要基础，本节将介绍各种学习环境的搭建方法。通过对比分析不同环境的优缺点，帮助您选择最适合自己的学习方式。
EOF

# 创建Linux学习环境对比分析文档
cat > "$BASE_DIR/00-学习指南与路径规划/02-学习环境准备/01-Linux学习环境对比分析.md" << 'EOF'
---
title: Linux学习环境对比分析
icon: compare
order: 1
---

# Linux学习环境对比分析

不同的Linux学习环境各有优缺点，本文将帮助您选择最适合自己的学习环境。从物理机安装、虚拟机环境、云服务器到WSL和Docker容器，全面分析各种环境的特点和适用场景。
EOF

# 创建Windows/Mac下的学习环境搭建文档
cat > "$BASE_DIR/00-学习指南与路径规划/02-学习环境准备/02-Windows和Mac下的学习环境搭建.md" << 'EOF'
---
title: Windows和Mac下的学习环境搭建
icon: desktop
order: 2
---

# Windows和Mac下的学习环境搭建

在Windows或Mac系统上搭建Linux学习环境的详细指南。本文将介绍多种方法，包括虚拟机安装、WSL配置、Docker容器使用等，让您在不更换主系统的情况下高效学习Linux。
EOF

# 创建云服务器选择与配置指南文档
cat > "$BASE_DIR/00-学习指南与路径规划/02-学习环境准备/03-云服务器选择与配置指南.md" << 'EOF'
---
title: 云服务器选择与配置指南
icon: cloud
order: 3
---

# 云服务器选择与配置指南

云服务器是学习Linux运维的理想环境之一。本文将指导您如何选择合适的云服务提供商和实例类型，以及初始化配置的最佳实践，帮助您快速搭建安全、高效的学习环境。
EOF

# 创建常用工具与资源推荐文档
cat > "$BASE_DIR/00-学习指南与路径规划/02-学习环境准备/04-常用工具与资源推荐.md" << 'EOF'
---
title: 常用工具与资源推荐
icon: resource
order: 4
---

# 常用工具与资源推荐

本文推荐了Linux运维学习过程中常用的工具和学习资源，包括SSH客户端、终端模拟器、文本编辑器、在线学习平台、书籍和社区等，帮助您更高效地学习和工作。
EOF

# 创建高效学习方法与路径规划文档
cat > "$BASE_DIR/00-学习指南与路径规划/02-学习环境准备/05-高效学习方法与路径规划.md" << 'EOF'
---
title: 高效学习方法与路径规划
icon: study
order: 5
---

# 高效学习方法与路径规划

掌握高效的学习方法可以事半功倍。本文分享了学习Linux运维的有效策略和方法，包括实践驱动学习、项目式学习、问题导向学习等，以及如何制定个性化的学习计划和目标。
EOF

echo "Linux运维知识库目录结构和基础文档已创建完成！"#!/bin/bash

# 创建基础目录结构
BASE_DIR="/Users/guanrunbai/my/kphub2/src/linux-ops/01-Linux基础与安装配置"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Linux基础与安装配置
icon: server
order: 1
---

# Linux基础与安装配置

本章节介绍Linux系统的基础知识、安装配置方法以及入门级操作技巧，帮助初学者快速掌握Linux系统的基本使用。
EOF

# 创建Linux系统概述目录
mkdir -p "$BASE_DIR/01-Linux系统概述"
cat > "$BASE_DIR/01-Linux系统概述/README.md" << 'EOF'
---
title: Linux系统概述
icon: info
order: 1
---

# Linux系统概述

本节内容将帮助您了解Linux系统的基本概念、发展历史、主流发行版以及系统架构，为后续学习打下坚实基础。
EOF

# 创建Linux发展历史与核心理念文档
cat > "$BASE_DIR/01-Linux系统概述/01-Linux发展历史与核心理念.md" << 'EOF'
---
title: Linux发展历史与核心理念
icon: history
order: 1
---

# Linux发展历史与核心理念

Linux操作系统的诞生和发展是开源软件运动的重要里程碑。本文将介绍Linux的起源、发展历程以及支撑其成功的核心理念和设计哲学。
EOF

# 创建主流发行版对比与选择文档
cat > "$BASE_DIR/01-Linux系统概述/02-主流发行版对比与选择.md" << 'EOF'
---
title: 主流发行版对比与选择
icon: compare
order: 2
---

# 主流发行版对比与选择

Linux有众多发行版，各有特色和适用场景。本文将对主流Linux发行版进行详细对比，帮助您根据实际需求选择最适合的发行版。
EOF

# 创建Linux系统架构详解文档
cat > "$BASE_DIR/01-Linux系统概述/03-Linux系统架构详解.md" << 'EOF'
---
title: Linux系统架构详解
icon: structure
order: 3
---

# Linux系统架构详解

Linux系统采用分层架构设计，包括硬件层、内核层、系统调用接口、库函数和应用程序层。本文将详细介绍Linux系统的整体架构和各层次的功能与关系。
EOF

# 创建开源软件生态系统概述文档
cat > "$BASE_DIR/01-Linux系统概述/04-开源软件生态系统概述.md" << 'EOF'
---
title: 开源软件生态系统概述
icon: ecosystem
order: 4
---

# 开源软件生态系统概述

Linux作为开源软件的代表，已经形成了庞大而活跃的生态系统。本文将介绍开源软件的发展历程、开源许可证类型以及围绕Linux形成的软件生态。
EOF

# 创建Linux内核架构与模块化设计文档
cat > "$BASE_DIR/01-Linux系统概述/05-Linux内核架构与模块化设计.md" << 'EOF'
---
title: Linux内核架构与模块化设计
icon: kernel
order: 5
---

# Linux内核架构与模块化设计

Linux内核是操作系统的核心，采用模块化设计实现高效灵活的功能扩展。本文将介绍Linux内核的基本架构、主要子系统以及模块化设计的优势。
EOF

# 创建选择适合自己的Linux发行版文档
cat > "$BASE_DIR/01-Linux系统概述/06-选择适合自己的Linux发行版.md" << 'EOF'
---
title: 选择适合自己的Linux发行版
icon: select
order: 6
---

# 选择适合自己的Linux发行版

面对众多Linux发行版，如何选择最适合自己的版本是初学者常见的困惑。本文将提供实用的选择指南和决策流程，帮助您找到最适合自己需求的Linux发行版。
EOF

# 创建初学者常见问题与解答文档
cat > "$BASE_DIR/01-Linux系统概述/07-初学者常见问题与解答.md" << 'EOF'
---
title: 初学者常见问题与解答
icon: question
order: 7
---

# 初学者常见问题与解答

初次接触Linux系统时，常会遇到各种疑问和困惑。本文整理了Linux初学者最常见的问题和详细解答，帮助您快速度过入门阶段的困难。
EOF

# 创建系统安装与初始配置目录
mkdir -p "$BASE_DIR/02-系统安装与初始配置"
cat > "$BASE_DIR/02-系统安装与初始配置/README.md" << 'EOF'
---
title: 系统安装与初始配置
icon: install
order: 2
---

# 系统安装与初始配置

本节内容将指导您完成Linux系统的安装和初始配置，包括安装前的准备工作、不同环境下的安装方法以及安装后的必要设置。
EOF

# 创建安装前的规划与准备文档
cat > "$BASE_DIR/02-系统安装与初始配置/01-安装前的规划与准备.md" << 'EOF'
---
title: 安装前的规划与准备
icon: plan
order: 1
---

# 安装前的规划与准备

在安装Linux系统前，合理的规划和充分的准备工作能够避免许多潜在问题。本文将介绍安装前需要考虑的因素和准备工作，帮助您顺利完成安装过程。
EOF

# 创建分区方案设计原则文档
cat > "$BASE_DIR/02-系统安装与初始配置/02-分区方案设计原则.md" << 'EOF'
---
title: 分区方案设计原则
icon: partition
order: 2
---

# 分区方案设计原则

磁盘分区是Linux安装过程中的重要步骤，合理的分区方案对系统性能和安全性有重要影响。本文将介绍Linux分区的基本概念和设计原则，帮助您制定适合自己需求的分区方案。
EOF

# 创建引导加载过程详解文档
cat > "$BASE_DIR/02-系统安装与初始配置/03-引导加载过程详解.md" << 'EOF'
---
title: 引导加载过程详解
icon: boot
order: 3
---

# 引导加载过程详解

Linux系统的启动过程涉及多个阶段和组件，理解这一过程对系统维护和故障排查非常重要。本文将详细介绍从按下电源键到登录界面出现的整个引导加载过程。
EOF

# 创建物理机安装图解教程文档
cat > "$BASE_DIR/02-系统安装与初始配置/04-物理机安装图解教程.md" << 'EOF'
---
title: 物理机安装图解教程
icon: desktop
order: 4
---

# 物理机安装图解教程

在物理机上安装Linux系统需要注意许多细节。本文将通过详细的图解步骤，指导您在物理计算机上完成Linux系统的安装，包括BIOS设置、分区配置和安装选项等关键环节。
EOF

# 创建VirtualBox/VMware虚拟机部署文档
cat > "$BASE_DIR/02-系统安装与初始配置/05-VirtualBox和VMware虚拟机部署.md" << 'EOF'
---
title: VirtualBox和VMware虚拟机部署
icon: virtual
order: 5
---

# VirtualBox和VMware虚拟机部署

虚拟机是学习和测试Linux的理想环境。本文将详细介绍如何使用VirtualBox和VMware等虚拟化软件创建Linux虚拟机，包括虚拟机创建、系统安装和虚拟机优化等内容。
EOF

# 创建云服务器环境初始化文档
cat > "$BASE_DIR/02-系统安装与初始配置/06-云服务器环境初始化.md" << 'EOF'
---
title: 云服务器环境初始化
icon: cloud
order: 6
---

# 云服务器环境初始化

云服务器已成为部署Linux系统的主流方式。本文将介绍如何在主流云平台上创建和初始化Linux云服务器，包括实例选择、网络配置、安全设置和初始化脚本等内容。
EOF

# 创建系统安装后的必要配置文档
cat > "$BASE_DIR/02-系统安装与初始配置/07-系统安装后的必要配置.md" << 'EOF'
---
title: 系统安装后的必要配置
icon: config
order: 7
---

# 系统安装后的必要配置

Linux系统安装完成后，还需要进行一系列配置才能投入使用。本文将介绍系统安装后的必要配置步骤，包括网络设置、用户管理、软件源配置和基础软件安装等内容。
EOF

# 创建系统安全加固步骤详解文档
cat > "$BASE_DIR/02-系统安装与初始配置/08-系统安全加固步骤详解.md" << 'EOF'
---
title: 系统安全加固步骤详解
icon: security
order: 8
---

# 系统安全加固步骤详解

安全是Linux系统运行的重要保障。本文将详细介绍Linux系统的安全加固步骤，包括用户权限管理、服务安全配置、防火墙设置和安全审计等内容，帮助您构建一个安全可靠的Linux环境。
EOF

# 创建安装过程常见问题解决文档
cat > "$BASE_DIR/02-系统安装与初始配置/09-安装过程常见问题解决.md" << 'EOF'
---
title: 安装过程常见问题解决
icon: troubleshoot
order: 9
---

# 安装过程常见问题解决

在Linux系统安装过程中可能遇到各种问题。本文总结了安装过程中最常见的问题和解决方法，包括硬件兼容性问题、分区错误、引导加载失败和网络配置问题等，帮助您顺利完成安装。
EOF

echo "Linux基础与安装配置目录结构和基础文档已创建完成！"

#!/bin/bash

# 创建基础目录结构
BASE_DIR="/Users/guanrunbai/my/kphub2/src/linux-ops/01-Linux基础与安装配置"
CMD_DIR="/Users/guanrunbai/my/kphub2/src/linux-ops/02-命令行操作与文件管理"
mkdir -p "$BASE_DIR/03-Linux基础操作入门"
mkdir -p "$CMD_DIR/01-命令行基础"

# 创建Linux基础操作入门目录的README.md
cat > "$BASE_DIR/03-Linux基础操作入门/README.md" << 'EOF'
---
title: Linux基础操作入门
icon: command
order: 3
---

# Linux基础操作入门

本节内容将帮助初学者掌握Linux系统的基本操作方法，包括终端使用、命令行基础和远程连接等内容，为后续深入学习打下基础。
EOF

# 创建终端与Shell基础知识文档
cat > "$BASE_DIR/03-Linux基础操作入门/01-终端与Shell基础知识.md" << 'EOF'
---
title: 终端与Shell基础知识
icon: terminal
order: 1
---

# 终端与Shell基础知识

终端和Shell是Linux系统中用户与操作系统交互的重要接口。本文将介绍终端的概念、常见Shell类型及其基本工作原理，帮助初学者理解命令行环境的基础知识。
EOF

# 创建Linux哲学与设计思想文档
cat > "$BASE_DIR/03-Linux基础操作入门/02-Linux哲学与设计思想.md" << 'EOF'
---
title: Linux哲学与设计思想
icon: idea
order: 2
---

# Linux哲学与设计思想

Linux系统的设计遵循了Unix哲学的核心理念，包括"一切皆文件"、"小而美"、"组合优于复杂"等思想。本文将介绍Linux的设计哲学及其对系统架构和使用方式的影响。
EOF

# 创建命令行界面vs图形界面文档
cat > "$BASE_DIR/03-Linux基础操作入门/03-命令行界面vs图形界面.md" << 'EOF'
---
title: 命令行界面vs图形界面
icon: compare
order: 3
---

# 命令行界面vs图形界面

Linux系统同时支持命令行界面(CLI)和图形用户界面(GUI)两种交互方式。本文将对比这两种界面的特点、适用场景和优缺点，帮助用户根据需求选择合适的交互方式。
EOF

# 创建第一次使用命令行文档
cat > "$BASE_DIR/03-Linux基础操作入门/04-第一次使用命令行.md" << 'EOF'
---
title: 第一次使用命令行
icon: start
order: 4
---

# 第一次使用命令行

对于Linux初学者，第一次使用命令行可能会感到陌生和不适应。本文将通过简单易懂的示例，引导新手完成命令行的初次使用，建立对命令行操作的基本认识和信心。
EOF

# 创建必会的20个基础命令文档
cat > "$BASE_DIR/03-Linux基础操作入门/05-必会的20个基础命令.md" << 'EOF'
---
title: 必会的20个基础命令
icon: list
order: 5
---

# 必会的20个基础命令

本文精选了20个Linux系统中最常用、最基础的命令，包括文件操作、目录管理、系统信息查看等方面，并提供详细的使用示例，帮助初学者快速掌握Linux命令行的基本操作。
EOF

# 创建获取帮助的多种方式文档
cat > "$BASE_DIR/03-Linux基础操作入门/06-获取帮助的多种方式.md" << 'EOF'
---
title: 获取帮助的多种方式
icon: help
order: 6
---

# 获取帮助的多种方式

在Linux系统中，有多种方式可以获取命令和系统的帮助信息。本文将介绍man、info、help等帮助命令的使用方法，以及如何查找和理解Linux文档，帮助用户解决使用过程中的疑问。
EOF

# 创建远程连接Linux系统文档
cat > "$BASE_DIR/03-Linux基础操作入门/07-远程连接Linux系统.md" << 'EOF'
---
title: 远程连接Linux系统
icon: connect
order: 7
---

# 远程连接Linux系统

远程连接是Linux系统管理的重要方式，特别是对于服务器环境。本文将介绍SSH协议基础知识，以及如何使用SSH客户端从Windows、Mac或其他Linux系统远程连接到Linux服务器。
EOF

# 创建图形界面与命令行切换文档
cat > "$BASE_DIR/03-Linux基础操作入门/08-图形界面与命令行切换.md" << 'EOF'
---
title: 图形界面与命令行切换
icon: switch
order: 8
---

# 图形界面与命令行切换

Linux系统允许用户在图形界面和命令行终端之间灵活切换。本文将介绍不同运行级别的概念，以及如何在图形界面和纯命令行模式之间进行切换，满足不同的工作需求。
EOF

# 创建初学者常见错误文档
cat > "$BASE_DIR/03-Linux基础操作入门/09-初学者常见错误.md" << 'EOF'
---
title: 初学者常见错误
icon: error
order: 9
---

# 初学者常见错误

初学Linux时，常会遇到各种操作错误和困惑。本文总结了Linux初学者最常见的错误和误解，提供解决方法和预防措施，帮助新手避免不必要的挫折，加速学习进程。
EOF

# 创建命令行操作与文件管理目录的README.md
cat > "$CMD_DIR/README.md" << 'EOF'
---
title: 命令行操作与文件管理
icon: file
order: 2
---

# 命令行操作与文件管理

本章节将深入介绍Linux命令行操作技巧和文件系统管理方法，帮助用户掌握高效的命令行使用方式和文件操作技能。
EOF

# 创建命令行基础目录的README.md
cat > "$CMD_DIR/01-命令行基础/README.md" << 'EOF'
---
title: 命令行基础
icon: command
order: 1
---

# 命令行基础

本节内容将详细介绍Linux命令行的基础知识和使用技巧，帮助用户理解Shell环境的工作原理和高效使用命令行的方法。
EOF

# 创建Shell类型与特点对比文档
cat > "$CMD_DIR/01-命令行基础/01-Shell类型与特点对比.md" << 'EOF'
---
title: Shell类型与特点对比
icon: compare
order: 1
---

# Shell类型与特点对比

Linux系统中有多种Shell可供选择，如Bash、Zsh、Fish等。本文将对比不同Shell的特点、语法差异和适用场景，帮助用户选择最适合自己的Shell环境。
EOF

# 创建命令结构与参数规则文档
cat > "$CMD_DIR/01-命令行基础/02-命令结构与参数规则.md" << 'EOF'
---
title: 命令结构与参数规则
icon: structure
order: 2
---

# 命令结构与参数规则

Linux命令通常遵循特定的结构和参数规则。本文将详细介绍命令的基本组成部分、选项和参数的使用方法，以及命令行中的通配符和引号等特殊字符的用法。
EOF

# 创建Linux命令执行原理文档
cat > "$CMD_DIR/01-命令行基础/03-Linux命令执行原理.md" << 'EOF'
---
title: Linux命令执行原理
icon: process
order: 3
---

# Linux命令执行原理

当用户在终端输入命令时，Shell会经历一系列处理步骤来执行这些命令。本文将深入解析命令执行的完整过程，包括命令解析、查找、加载和执行等环节。
EOF

# 创建环境变量工作机制文档
cat > "$CMD_DIR/01-命令行基础/04-环境变量工作机制.md" << 'EOF'
---
title: 环境变量工作机制
icon: variable
order: 4
---

# 环境变量工作机制

环境变量是Linux系统中的重要概念，它们影响着命令的执行环境和系统行为。本文将介绍环境变量的定义、查看和修改方法，以及常见环境变量的作用和配置技巧。
EOF

# 创建命令查找路径与优先级文档
cat > "$CMD_DIR/01-命令行基础/05-命令查找路径与优先级.md" << 'EOF'
---
title: 命令查找路径与优先级
icon: search
order: 5
---

# 命令查找路径与优先级

当执行命令时，Linux系统会按照特定的路径和优先级规则查找可执行文件。本文将详细介绍PATH环境变量、命令查找机制以及如何管理命令的优先级和冲突。
EOF

# 创建命令行快捷键与效率技巧文档
cat > "$CMD_DIR/01-命令行基础/06-命令行快捷键与效率技巧.md" << 'EOF'
---
title: 命令行快捷键与效率技巧
icon: shortcut
order: 6
---

# 命令行快捷键与效率技巧

熟练使用命令行快捷键可以大幅提高工作效率。本文将介绍Bash和其他常见Shell中的快捷键组合，以及提高命令行操作效率的实用技巧和最佳实践。
EOF

# 创建历史命令与自动补全文档
cat > "$CMD_DIR/01-命令行基础/07-历史命令与自动补全.md" << 'EOF'
---
title: 历史命令与自动补全
icon: history
order: 7
---

# 历史命令与自动补全

命令历史记录和自动补全功能是提高命令行效率的重要工具。本文将详细介绍如何使用和配置历史命令功能，以及如何充分利用Tab补全提高输入效率。
EOF

# 创建管道与重定向实战应用文档
cat > "$CMD_DIR/01-命令行基础/08-管道与重定向实战应用.md" << 'EOF'
---
title: 管道与重定向实战应用
icon: pipe
order: 8
---

# 管道与重定向实战应用

管道和重定向是Linux命令行中强大的数据流控制机制。本文将通过实际案例，详细介绍标准输入输出、管道连接和各种重定向操作的使用方法和应用场景。
EOF

# 创建命令行环境个性化配置文档
cat > "$CMD_DIR/01-命令行基础/09-命令行环境个性化配置.md" << 'EOF'
---
title: 命令行环境个性化配置
icon: config
order: 9
---

# 命令行环境个性化配置

Shell环境可以根据个人偏好进行定制和优化。本文将介绍如何通过配置文件（如.bashrc、.bash_profile等）自定义命令行环境，包括提示符、颜色方案和功能扩展等。
EOF

# 创建别名设置提升效率文档
cat > "$CMD_DIR/01-命令行基础/10-别名设置提升效率.md" << 'EOF'
---
title: 别名设置提升效率
icon: alias
order: 10
---

# 别名设置提升效率

命令别名(alias)是简化复杂命令和提高工作效率的有效方法。本文将详细介绍如何创建、管理和使用命令别名，以及一些实用的别名设置示例和最佳实践。
EOF

# 创建10个提高效率的命令行工具文档
cat > "$CMD_DIR/01-命令行基础/11-10个提高效率的命令行工具.md" << 'EOF'
---
title: 10个提高效率的命令行工具
icon: tool
order: 11
---

# 10个提高效率的命令行工具

除了系统自带的命令外，还有许多第三方工具可以显著提升命令行工作效率。本文将介绍10个实用的命令行工具，包括功能说明、安装方法和使用技巧，帮助用户打造更高效的工作环境。
EOF

echo "Linux基础操作入门和命令行基础目录结构和基础文档已创建完成！"

#!/bin/bash

# 创建基础目录结构
CMD_DIR="/Users/guanrunbai/my/kphub2/src/linux-ops/02-命令行操作与文件管理"
mkdir -p "$CMD_DIR/02-文件系统操作"
mkdir -p "$CMD_DIR/03-用户与权限管理"

# 创建文件系统操作目录的README.md
cat > "$CMD_DIR/02-文件系统操作/README.md" << 'EOF'
---
title: 文件系统操作
icon: file
order: 2
---

# 文件系统操作

本节内容将详细介绍Linux文件系统的基本概念和常用操作方法，帮助用户掌握文件管理的核心技能，包括文件系统结构、文件属性、文件操作命令以及文件传输技术等内容。
EOF

# 创建Linux目录结构标准与意义文档
cat > "$CMD_DIR/02-文件系统操作/01-Linux目录结构标准与意义.md" << 'EOF'
---
title: Linux目录结构标准与意义
icon: folder
order: 1
---

# Linux目录结构标准与意义

Linux系统采用树状目录结构，每个目录都有其特定的用途和意义。本文将详细介绍Linux目录结构标准，包括根目录下各个子目录的功能和用途，帮助用户理解Linux文件系统的组织方式。
EOF

# 创建文件类型与属性详解文档
cat > "$CMD_DIR/02-文件系统操作/02-文件类型与属性详解.md" << 'EOF'
---
title: 文件类型与属性详解
icon: file-type
order: 2
---

# 文件类型与属性详解

Linux系统中的文件分为多种类型，每个文件都有一系列属性。本文将详细介绍Linux中的文件类型（普通文件、目录、链接、设备文件等）以及文件的基本属性（权限、所有者、时间戳等），帮助用户全面了解Linux文件系统的基础知识。
EOF

# 创建inode与数据块原理文档
cat > "$CMD_DIR/02-文件系统操作/03-inode与数据块原理.md" << 'EOF'
---
title: inode与数据块原理
icon: database
order: 3
---

# inode与数据块原理

inode是Linux文件系统的核心概念，它存储了文件的元数据信息。本文将深入解析inode和数据块的工作原理，包括inode的结构、数据块的分配机制以及它们如何共同组成完整的文件系统，帮助用户理解Linux文件系统的底层实现。
EOF

# 创建软链接与硬链接区别文档
cat > "$CMD_DIR/02-文件系统操作/04-软链接与硬链接区别.md" << 'EOF'
---
title: 软链接与硬链接区别
icon: link
order: 4
---

# 软链接与硬链接区别

链接是Linux文件系统中的重要概念，分为软链接（符号链接）和硬链接两种类型。本文将详细对比这两种链接的区别，包括创建方式、工作原理、使用限制和应用场景，帮助用户正确选择和使用链接功能。
EOF

# 创建文件系统层次结构标准文档
cat > "$CMD_DIR/02-文件系统操作/05-文件系统层次结构标准.md" << 'EOF'
---
title: 文件系统层次结构标准(FHS)
icon: structure
order: 5
---

# 文件系统层次结构标准(FHS)

文件系统层次结构标准(Filesystem Hierarchy Standard, FHS)定义了Linux系统中目录结构和内容的组织方式。本文将详细介绍FHS标准的内容和意义，包括各主要目录的用途和规范，帮助用户理解Linux发行版之间共同遵循的文件系统组织原则。
EOF

# 创建文件浏览与内容查看命令文档
cat > "$CMD_DIR/02-文件系统操作/06-文件浏览与内容查看命令.md" << 'EOF'
---
title: 文件浏览与内容查看命令
icon: view
order: 6
---

# 文件浏览与内容查看命令

Linux提供了丰富的命令用于浏览目录和查看文件内容。本文将详细介绍ls、cat、less、more、head、tail等常用命令的使用方法和实用技巧，帮助用户高效地浏览文件系统和查看文件内容。
EOF

# 创建文件创建、编辑与删除操作文档
cat > "$CMD_DIR/02-文件系统操作/07-文件创建编辑与删除操作.md" << 'EOF'
---
title: 文件创建、编辑与删除操作
icon: edit
order: 7
---

# 文件创建、编辑与删除操作

文件的基本操作包括创建、编辑和删除。本文将详细介绍touch、mkdir、cp、mv、rm等命令的使用方法，以及常见文本编辑器的基本操作，帮助用户掌握Linux文件系统的日常操作技能。
EOF

# 创建文件查找与检索实用技巧文档
cat > "$CMD_DIR/02-文件系统操作/08-文件查找与检索实用技巧.md" << 'EOF'
---
title: 文件查找与检索实用技巧
icon: search
order: 8
---

# 文件查找与检索实用技巧

在Linux系统中高效查找文件是一项重要技能。本文将详细介绍find、locate、which、whereis等查找命令的使用方法，以及结合grep进行内容检索的技巧，帮助用户快速定位所需的文件和信息。
EOF

# 创建文件压缩与解压缩操作文档
cat > "$CMD_DIR/02-文件系统操作/09-文件压缩与解压缩操作.md" << 'EOF'
---
title: 文件压缩与解压缩操作
icon: compress
order: 9
---

# 文件压缩与解压缩操作

文件压缩是节省存储空间和便于传输的重要手段。本文将详细介绍Linux中常用的压缩工具，包括gzip、bzip2、xz、zip和tar等，以及它们的使用方法和适用场景，帮助用户高效管理文件。
EOF

# 创建文件传输与同步方法文档
cat > "$CMD_DIR/02-文件系统操作/10-文件传输与同步方法.md" << 'EOF'
---
title: 文件传输与同步方法
icon: transfer
order: 10
---

# 文件传输与同步方法

在Linux系统之间传输和同步文件是常见需求。本文将详细介绍scp、rsync、sftp等工具的使用方法，以及文件传输的安全性考虑和性能优化技巧，帮助用户实现高效可靠的文件传输和同步。
EOF

# 创建文件操作常见错误文档
cat > "$CMD_DIR/02-文件系统操作/11-文件操作常见错误.md" << 'EOF'
---
title: 文件操作常见错误
icon: error
order: 11
---

# 文件操作常见错误

在进行文件操作时，用户可能会遇到各种错误和问题。本文总结了文件操作中的常见错误，包括权限问题、磁盘空间不足、文件锁定等情况的原因和解决方法，帮助用户快速排除故障。
EOF

# 创建用户与权限管理目录的README.md
cat > "$CMD_DIR/03-用户与权限管理/README.md" << 'EOF'
---
title: 用户与权限管理
icon: user
order: 3
---

# 用户与权限管理

本节内容将详细介绍Linux系统中的用户、组和权限管理机制，帮助用户理解Linux安全模型的基础，掌握用户管理和权限控制的核心技能，确保系统安全性和多用户环境的有效管理。
EOF

# 创建Linux用户与组的概念文档
cat > "$CMD_DIR/03-用户与权限管理/01-Linux用户与组的概念.md" << 'EOF'
---
title: Linux用户与组的概念
icon: user-group
order: 1
---

# Linux用户与组的概念

Linux是一个多用户操作系统，用户和组是其安全模型的基础。本文将详细介绍Linux中用户和组的概念、类型和作用，包括系统用户、普通用户、主组、附加组等内容，帮助用户理解Linux的多用户环境设计。
EOF

# 创建文件权限模型详解文档
cat > "$CMD_DIR/03-用户与权限管理/02-文件权限模型详解.md" << 'EOF'
---
title: 文件权限模型详解
icon: lock
order: 2
---

# 文件权限模型详解

Linux文件权限模型是系统安全的核心组成部分。本文将详细介绍Linux的基本权限（读、写、执行）和特殊权限（SUID、SGID、Sticky Bit）的含义和作用，以及权限表示方法和计算规则，帮助用户全面理解Linux权限系统。
EOF

# 创建权限管理的安全原则文档
cat > "$CMD_DIR/03-用户与权限管理/03-权限管理的安全原则.md" << 'EOF'
---
title: 权限管理的安全原则
icon: security
order: 3
---

# 权限管理的安全原则

合理的权限管理是系统安全的重要保障。本文将介绍Linux权限管理的核心安全原则，包括最小权限原则、职责分离、权限审计等内容，以及常见的权限管理最佳实践，帮助用户建立安全的权限管理体系。
EOF

# 创建PAM认证机制原理文档
cat > "$CMD_DIR/03-用户与权限管理/04-PAM认证机制原理.md" << 'EOF'
---
title: PAM认证机制原理
icon: authenticate
order: 4
---

# PAM认证机制原理

可插拔认证模块(PAM)是Linux系统中的认证框架。本文将详细介绍PAM的架构、工作原理和配置方法，包括认证、账户管理、会话管理和密码管理等功能模块，帮助用户理解Linux的认证机制。
EOF

# 创建ACL访问控制列表详解文档
cat > "$CMD_DIR/03-用户与权限管理/05-ACL访问控制列表详解.md" << 'EOF'
---
title: ACL访问控制列表详解
icon: acl
order: 5
---

# ACL访问控制列表详解

访问控制列表(ACL)是对传统Linux权限模型的扩展，提供了更精细的权限控制能力。本文将详细介绍ACL的概念、实现机制和使用方法，包括getfacl和setfacl命令的应用，帮助用户实现更灵活的权限管理。
EOF

# 创建用户账户创建与管理文档
cat > "$CMD_DIR/03-用户与权限管理/06-用户账户创建与管理.md" << 'EOF'
---
title: 用户账户创建与管理
icon: user-manage
order: 6
---

# 用户账户创建与管理

用户账户管理是系统管理的基本任务。本文将详细介绍用户创建、修改、删除等操作的命令和方法，包括useradd、usermod、userdel等工具的使用，以及用户配置文件的管理，帮助用户掌握账户管理的核心技能。
EOF

# 创建用户组配置与权限分配文档
cat > "$CMD_DIR/03-用户与权限管理/07-用户组配置与权限分配.md" << 'EOF'
---
title: 用户组配置与权限分配
icon: group
order: 7
---

# 用户组配置与权限分配

用户组是Linux权限管理的重要工具，可以简化对多用户的权限分配。本文将详细介绍用户组的创建、修改和删除操作，以及如何通过组成员关系管理用户权限，帮助用户实现高效的权限管理。
EOF

# 创建文件权限设置与修改文档
cat > "$CMD_DIR/03-用户与权限管理/08-文件权限设置与修改.md" << 'EOF'
---
title: 文件权限设置与修改
icon: permission
order: 8
---

# 文件权限设置与修改

文件权限的正确设置是系统安全的重要环节。本文将详细介绍chmod、chown和chgrp命令的使用方法，包括符号模式和数字模式的权限表示，以及递归修改和默认权限设置，帮助用户灵活管理文件权限。
EOF

# 创建特殊权限与访问控制列表文档
cat > "$CMD_DIR/03-用户与权限管理/09-特殊权限与访问控制列表.md" << 'EOF'
---
title: 特殊权限与访问控制列表
icon: special
order: 9
---

# 特殊权限与访问控制列表

除了基本的读写执行权限外，Linux还提供了特殊权限和访问控制列表功能。本文将详细介绍SUID、SGID、Sticky Bit等特殊权限的用途和设置方法，以及如何使用ACL实现更精细的权限控制，满足复杂环境下的权限管理需求。
EOF

# 创建sudo权限配置与安全管理文档
cat > "$CMD_DIR/03-用户与权限管理/10-sudo权限配置与安全管理.md" << 'EOF'
---
title: sudo权限配置与安全管理
icon: sudo
order: 10
---

# sudo权限配置与安全管理

sudo是Linux系统中实现权限提升的重要工具，可以让普通用户以受控方式执行特权命令。本文将详细介绍sudo的工作原理、配置方法和安全最佳实践，帮助用户在保障系统安全的前提下灵活分配管理权限。
EOF

# 创建多用户环境权限规划文档
cat > "$CMD_DIR/03-用户与权限管理/11-多用户环境权限规划.md" << 'EOF'
---
title: 多用户环境权限规划
icon: plan
order: 11
---

# 多用户环境权限规划

在多用户环境中，合理规划权限结构是系统管理的重要任务。本文将介绍多用户环境下的权限规划方法和最佳实践，包括用户分组策略、权限分配原则和共享资源管理，帮助管理员构建安全高效的多用户工作环境。
EOF

echo "文件系统操作和用户与权限管理目录结构和基础文档已创建完成！"


#!/bin/bash

# 创建基础目录结构
BASE_DIR="/Users/guanrunbai/my/kphub2/src/linux-ops/03-系统管理与监控"
mkdir -p "$BASE_DIR/01-进程管理"
mkdir -p "$BASE_DIR/02-系统监控与性能分析"

# 创建系统管理与监控目录的README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: 系统管理与监控
icon: monitor
order: 3
---

# 系统管理与监控

本章节将详细介绍Linux系统的管理与监控技术，包括进程管理、系统性能监控、计划任务和日志管理等内容，帮助用户全面掌握Linux系统的运行状态监控和管理方法。
EOF

# 创建进程管理目录的README.md
cat > "$BASE_DIR/01-进程管理/README.md" << 'EOF'
---
title: 进程管理
icon: process
order: 1
---

# 进程管理

本节内容将详细介绍Linux系统中的进程概念、生命周期和管理方法，帮助用户理解进程的工作原理并掌握进程管理的核心技能。
EOF

# 创建进程概念与生命周期文档
cat > "$BASE_DIR/01-进程管理/01-进程概念与生命周期.md" << 'EOF'
---
title: 进程概念与生命周期
icon: lifecycle
order: 1
---

# 进程概念与生命周期

进程是Linux系统中最基本的执行单元，理解进程的概念和生命周期对系统管理至关重要。本文将详细介绍进程的定义、组成部分、状态转换以及完整的生命周期，帮助用户建立对Linux进程的基本认识。
EOF

# 创建进程、线程与作业关系文档
cat > "$BASE_DIR/01-进程管理/02-进程线程与作业关系.md" << 'EOF'
---
title: 进程、线程与作业关系
icon: relation
order: 2
---

# 进程、线程与作业关系

进程、线程和作业是Linux系统中三个密切相关的概念。本文将详细介绍它们的定义、区别和联系，包括进程与线程的关系、线程的实现方式以及作业控制的基本概念，帮助用户理解这三者在系统中的角色和作用。
EOF

# 创建进程调度算法详解文档
cat > "$BASE_DIR/01-进程管理/03-进程调度算法详解.md" << 'EOF'
---
title: 进程调度算法详解
icon: algorithm
order: 3
---

# 进程调度算法详解

进程调度是操作系统核心功能之一，决定了系统资源的分配和使用效率。本文将详细介绍Linux系统中的进程调度算法，包括完全公平调度器(CFS)、实时调度算法以及优先级调度机制，帮助用户理解Linux如何管理和分配CPU资源。
EOF

# 创建进程间通信机制文档
cat > "$BASE_DIR/01-进程管理/04-进程间通信机制.md" << 'EOF'
---
title: 进程间通信机制
icon: communication
order: 4
---

# 进程间通信机制

进程间通信(IPC)是多进程协作的基础。本文将详细介绍Linux系统中的各种IPC机制，包括管道、信号、消息队列、共享内存、信号量和套接字等，分析它们的特点、适用场景和基本使用方法，帮助用户选择合适的进程间通信方式。
EOF

# 创建Linux进程状态与转换文档
cat > "$BASE_DIR/01-进程管理/05-Linux进程状态与转换.md" << 'EOF'
---
title: Linux进程状态与转换
icon: state
order: 5
---

# Linux进程状态与转换

Linux进程在其生命周期中会经历多种状态。本文将详细介绍Linux进程的各种状态（运行、睡眠、停止、僵尸等）及其转换条件，帮助用户理解进程状态变化的原理和影响因素，为进程管理和故障排查提供理论基础。
EOF

# 创建进程查看与监控命令文档
cat > "$BASE_DIR/01-进程管理/06-进程查看与监控命令.md" << 'EOF'
---
title: 进程查看与监控命令
icon: monitor
order: 6
---

# 进程查看与监控命令

监控和查看进程是系统管理的基本任务。本文将详细介绍Linux系统中常用的进程查看和监控命令，包括ps、top、htop、pgrep等工具的使用方法和常用选项，帮助用户实时掌握系统中进程的运行状态和资源使用情况。
EOF

# 创建进程控制与信号处理文档
cat > "$BASE_DIR/01-进程管理/07-进程控制与信号处理.md" << 'EOF'
---
title: 进程控制与信号处理
icon: control
order: 7
---

# 进程控制与信号处理

进程控制是系统管理的核心内容，而信号是控制进程的主要方式之一。本文将详细介绍Linux系统中的进程控制方法和信号处理机制，包括进程的启动、终止、暂停和恢复，以及各种信号的含义和使用场景，帮助用户有效管理系统进程。
EOF

# 创建前台与后台进程管理文档
cat > "$BASE_DIR/01-进程管理/08-前台与后台进程管理.md" << 'EOF'
---
title: 前台与后台进程管理
icon: background
order: 8
---

# 前台与后台进程管理

Linux系统支持进程在前台和后台运行，灵活切换可以提高工作效率。本文将详细介绍前台和后台进程的概念、区别以及管理方法，包括进程的前后台切换、后台进程的启动和监控，以及作业控制命令的使用技巧。
EOF

# 创建进程优先级调整技巧文档
cat > "$BASE_DIR/01-进程管理/09-进程优先级调整技巧.md" << 'EOF'
---
title: 进程优先级调整技巧
icon: priority
order: 9
---

# 进程优先级调整技巧

进程优先级决定了CPU资源分配的顺序和比例，合理调整可以优化系统性能。本文将详细介绍Linux系统中的进程优先级概念、nice值和实时优先级，以及如何使用nice、renice、chrt等命令调整进程优先级，帮助用户优化系统资源分配。
EOF

# 创建守护进程配置与管理文档
cat > "$BASE_DIR/01-进程管理/10-守护进程配置与管理.md" << 'EOF'
---
title: 守护进程配置与管理
icon: daemon
order: 10
---

# 守护进程配置与管理

守护进程是在后台运行的特殊进程，通常提供系统服务。本文将详细介绍守护进程的概念、特点和工作原理，以及如何创建、配置和管理守护进程，包括传统SysV方式和现代systemd方式的服务管理方法。
EOF

# 创建进程异常排查方法文档
cat > "$BASE_DIR/01-进程管理/11-进程异常排查方法.md" << 'EOF'
---
title: 进程异常排查方法
icon: troubleshoot
order: 11
---

# 进程异常排查方法

进程异常是系统管理中常见的问题，及时发现和解决对系统稳定性至关重要。本文将详细介绍进程异常的常见类型、症状和排查方法，包括进程僵死、内存泄漏、CPU占用过高等问题的诊断和解决技巧，帮助用户快速定位和修复进程相关故障。
EOF

# 创建系统监控与性能分析目录的README.md
cat > "$BASE_DIR/02-系统监控与性能分析/README.md" << 'EOF'
---
title: 系统监控与性能分析
icon: performance
order: 2
---

# 系统监控与性能分析

本节内容将详细介绍Linux系统的监控技术和性能分析方法，帮助用户全面了解系统运行状态，及时发现并解决性能瓶颈问题。
EOF

# 创建系统性能指标解析文档
cat > "$BASE_DIR/02-系统监控与性能分析/01-系统性能指标解析.md" << 'EOF'
---
title: 系统性能指标解析
icon: metrics
order: 1
---

# 系统性能指标解析

系统性能指标是评估系统状态的重要依据。本文将详细介绍Linux系统中的关键性能指标，包括CPU使用率、负载均衡、内存使用、磁盘IO、网络吞吐量等指标的含义、计算方法和正常范围，帮助用户建立系统性能评估的基础知识框架。
EOF

# 创建Linux内核性能子系统文档
cat > "$BASE_DIR/02-系统监控与性能分析/02-Linux内核性能子系统.md" << 'EOF'
---
title: Linux内核性能子系统
icon: kernel
order: 2
---

# Linux内核性能子系统

Linux内核提供了多个性能相关的子系统，为性能监控和分析提供基础支持。本文将详细介绍Linux内核中的性能子系统，包括procfs、sysfs、perf_events、cgroups等，分析它们的工作原理和应用场景，帮助用户理解Linux性能监控的底层机制。
EOF

# 创建监控数据采集原理文档
cat > "$BASE_DIR/02-系统监控与性能分析/03-监控数据采集原理.md" << 'EOF'
---
title: 监控数据采集原理
icon: collect
order: 3
---

# 监控数据采集原理

监控数据的采集是系统监控的基础环节。本文将详细介绍Linux系统中监控数据的来源、采集方式和处理流程，包括内核接口、系统调用、日志分析等数据采集机制，以及采样频率、数据聚合等关键概念，帮助用户理解监控系统的工作原理。
EOF

# 创建性能瓶颈分析方法论文档
cat > "$BASE_DIR/02-系统监控与性能分析/04-性能瓶颈分析方法论.md" << 'EOF'
---
title: 性能瓶颈分析方法论
icon: bottleneck
order: 4
---

# 性能瓶颈分析方法论

性能瓶颈分析是系统优化的关键步骤。本文将详细介绍系统性能瓶颈的分析方法和思路，包括自顶向下和自底向上的分析策略、USE方法（利用率-饱和度-错误）、RED方法（速率-错误-延迟）等性能分析方法论，帮助用户建立系统化的性能问题诊断思路。
EOF

# 创建系统负载评估模型文档
cat > "$BASE_DIR/02-系统监控与性能分析/05-系统负载评估模型.md" << 'EOF'
---
title: 系统负载评估模型
icon: load
order: 5
---

# 系统负载评估模型

系统负载是衡量系统繁忙程度的重要指标。本文将详细介绍Linux系统负载的概念、计算方法和评估模型，包括平均负载值的含义、合理负载范围的确定、负载与CPU利用率的关系等内容，帮助用户正确理解和评估系统负载状况。
EOF

# 创建系统负载监控工具使用文档
cat > "$BASE_DIR/02-系统监控与性能分析/06-系统负载监控工具使用.md" << 'EOF'
---
title: 系统负载监控工具使用
icon: tools
order: 6
---

# 系统负载监控工具使用

监控系统负载是日常运维的重要任务。本文将详细介绍Linux系统中常用的负载监控工具，包括uptime、top、vmstat、sar等命令的使用方法和输出解读，以及如何通过这些工具及时发现系统负载异常，帮助用户掌握系统负载监控的实用技能。
EOF

# 创建CPU性能分析与优化文档
cat > "$BASE_DIR/02-系统监控与性能分析/07-CPU性能分析与优化.md" << 'EOF'
---
title: CPU性能分析与优化
icon: cpu
order: 7
---

# CPU性能分析与优化

CPU是系统最核心的资源，其性能直接影响整体系统表现。本文将详细介绍CPU性能的分析方法和优化技巧，包括CPU使用率分析、上下文切换监控、运行队列评估以及常见CPU性能问题的诊断和解决方案，帮助用户优化系统的CPU资源利用。
EOF

#!/bin/bash

# 设置基础目录
BASE_DIR="/Users/guanrunbai/my/kphub2/src/linux-ops/03-系统管理与监控/02-系统监控与性能分析"

# 创建内存使用监控与管理文档
cat > "$BASE_DIR/08-内存使用监控与管理.md" << 'EOF'
---
title: 内存使用监控与管理
icon: memory
order: 8
---

# 内存使用监控与管理

内存是系统的关键资源，合理管理对系统稳定性至关重要。本文将详细介绍Linux系统中的内存架构、监控工具和管理方法，包括物理内存、虚拟内存、交换空间的概念，以及free、vmstat、smem等工具的使用，帮助用户全面掌握内存监控和优化技术。
EOF

# 创建磁盘IO性能分析工具文档
cat > "$BASE_DIR/09-磁盘IO性能分析工具.md" << 'EOF'
---
title: 磁盘IO性能分析工具
icon: disk
order: 9
---

# 磁盘IO性能分析工具

磁盘IO性能往往是系统瓶颈所在。本文将详细介绍Linux系统中的磁盘IO性能分析工具，包括iostat、iotop、blktrace、fio等工具的使用方法和输出解读，以及IOPS、吞吐量、响应时间等关键指标的分析，帮助用户诊断和解决磁盘IO相关的性能问题。
EOF

# 创建网络流量监控方法文档
cat > "$BASE_DIR/10-网络流量监控方法.md" << 'EOF'
---
title: 网络流量监控方法
icon: network
order: 10
---

# 网络流量监控方法

网络性能对分布式系统和网络服务至关重要。本文将详细介绍Linux系统中的网络流量监控方法和工具，包括netstat、ss、iftop、iperf、tcpdump、nload等工具的使用，以及带宽、延迟、丢包率等指标的分析，帮助用户全面掌握网络性能监控和分析技术。
EOF

# 创建综合性能监控工具应用文档
cat > "$BASE_DIR/11-综合性能监控工具应用.md" << 'EOF'
---
title: 综合性能监控工具应用
icon: monitor
order: 11
---

# 综合性能监控工具应用

综合性能监控工具可以提供系统整体性能视图。本文将详细介绍Linux系统中的综合性能监控工具，包括htop、glances、nmon、dstat、atop等工具的安装、配置和使用方法，以及如何通过这些工具快速获取系统整体性能状况，帮助用户选择合适的工具进行日常监控和性能分析。
EOF

# 创建构建简易系统监控平台文档
cat > "$BASE_DIR/12-构建简易系统监控平台.md" << 'EOF'
---
title: 构建简易系统监控平台
icon: project
order: 12
---

# 构建简易系统监控平台

构建自己的监控平台是运维工作的重要内容。本文将通过实战项目，详细介绍如何使用开源工具构建一个简易但实用的系统监控平台，包括数据采集、存储、可视化和告警等功能的实现，帮助用户掌握监控系统的构建方法，为后续更复杂的监控平台搭建奠定基础。

## 项目目标

- 实现对多台服务器的基础监控
- 收集CPU、内存、磁盘、网络等核心指标
- 构建简单的可视化界面
- 实现基本的告警功能

## 技术选型

- 数据采集：Telegraf/Collectd
- 数据存储：InfluxDB/Prometheus
- 可视化：Grafana
- 告警：Alertmanager

## 实施步骤

1. 环境准备与规划
2. 监控代理部署
3. 数据库安装与配置
4. Grafana安装与仪表盘设计
5. 告警规则配置
6. 系统测试与优化

## 扩展与进阶

- 自定义监控指标
- 监控数据分析
- 与现有系统集成
EOF

# 创建性能瓶颈定位流程文档
cat > "$BASE_DIR/13-性能瓶颈定位流程.md" << 'EOF'
---
title: 性能瓶颈定位流程
icon: troubleshoot
order: 13
---

# 性能瓶颈定位流程

系统性能问题的快速定位是运维工作的关键技能。本文将详细介绍系统性能瓶颈的定位流程和方法，包括问题现象分析、监控数据收集、瓶颈识别、根因分析等步骤，以及常见性能问题的排查思路和案例分析，帮助用户建立系统化的性能问题诊断能力。

## 性能瓶颈定位方法论

1. 问题现象收集与分析
2. 系统整体状态评估
3. 资源使用情况检查
4. 瓶颈点初步定位
5. 深入分析与验证
6. 解决方案制定与实施
7. 效果验证与复盘

## 常见性能瓶颈类型

- CPU瓶颈：高负载、高使用率、运行队列长
- 内存瓶颈：内存不足、频繁交换、OOM
- 磁盘IO瓶颈：高等待时间、低吞吐量
- 网络瓶颈：高延迟、低带宽、丢包
- 应用瓶颈：代码效率、锁竞争、资源泄漏

## 案例分析

本节将通过几个典型的性能问题案例，展示完整的瓶颈定位流程和思路，包括问题现象、监控数据分析、定位过程和解决方案。
EOF

echo "系统监控与性能分析目录结构的后续部分已创建完成！"

#!/bin/bash

# 设置基础目录
BASE_DIR="/Users/guanrunbai/my/kphub2/src/linux-ops/03-系统管理与监控/03-计划任务与日志管理"
mkdir -p "$BASE_DIR"

# 创建计划任务与日志管理目录的README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: 计划任务与日志管理
icon: schedule-log
order: 3
---

# 计划任务与日志管理

本节内容将详细介绍Linux系统中的计划任务和日志管理机制，帮助用户掌握自动化任务执行和系统日志分析的方法，提高系统管理效率和问题排查能力。
EOF

# 创建计划任务类型与应用场景文档
cat > "$BASE_DIR/01-计划任务类型与应用场景.md" << 'EOF'
---
title: 计划任务类型与应用场景
icon: task-type
order: 1
---

# 计划任务类型与应用场景

计划任务是Linux系统中实现自动化运维的重要工具。本文将详细介绍Linux系统中的各种计划任务类型，包括周期性任务、一次性任务、条件触发任务等，分析它们的特点和适用场景，帮助用户选择合适的计划任务机制满足不同的自动化需求。
EOF

# 创建Linux日志系统架构文档
cat > "$BASE_DIR/02-Linux日志系统架构.md" << 'EOF'
---
title: Linux日志系统架构
icon: log-architecture
order: 2
---

# Linux日志系统架构

日志系统是Linux操作系统的重要组成部分，为系统监控和问题排查提供了基础支持。本文将详细介绍Linux日志系统的整体架构，包括日志来源、收集机制、存储方式和管理工具，帮助用户理解Linux系统如何记录和管理各类日志信息。
EOF

# 创建syslog协议与实现机制文档
cat > "$BASE_DIR/03-syslog协议与实现机制.md" << 'EOF'
---
title: syslog协议与实现机制
icon: syslog
order: 3
---

# syslog协议与实现机制

syslog是Unix/Linux系统中的标准日志协议。本文将详细介绍syslog协议的规范和工作原理，以及在Linux系统中的实现机制，包括rsyslog和syslog-ng等常见实现，分析它们的配置方法和高级特性，帮助用户深入理解Linux日志系统的核心组件。
EOF

# 创建日志分析与安全审计理论文档
cat > "$BASE_DIR/04-日志分析与安全审计理论.md" << 'EOF'
---
title: 日志分析与安全审计理论
icon: log-analysis
order: 4
---

# 日志分析与安全审计理论

日志分析是系统管理和安全审计的重要手段。本文将详细介绍日志分析的理论基础和方法论，包括日志分类、关键信息提取、异常检测、关联分析等技术，以及如何利用日志进行安全审计和合规管理，帮助用户建立系统化的日志分析思路。
EOF

# 创建时间同步机制与重要性文档
cat > "$BASE_DIR/05-时间同步机制与重要性.md" << 'EOF'
---
title: 时间同步机制与重要性
icon: time-sync
order: 5
---

# 时间同步机制与重要性

准确的系统时间对于日志记录、计划任务和分布式系统至关重要。本文将详细介绍Linux系统中的时间同步机制，包括NTP协议原理、chrony工具使用、时间服务器配置等内容，分析时间同步的重要性和实现方法，帮助用户确保系统时间的准确性和一致性。
EOF

# 创建crontab计划任务配置文档
cat > "$BASE_DIR/06-crontab计划任务配置.md" << 'EOF'
---
title: crontab计划任务配置
icon: crontab
order: 6
---

# crontab计划任务配置

crontab是Linux系统中最常用的计划任务工具。本文将详细介绍crontab的使用方法和配置技巧，包括crontab文件格式、时间表达式语法、环境变量设置、日志记录等内容，通过实际案例展示如何使用crontab实现各种周期性任务的自动执行。
EOF

# 创建anacron与at命令应用文档
cat > "$BASE_DIR/07-anacron与at命令应用.md" << 'EOF'
---
title: anacron与at命令应用
icon: anacron-at
order: 7
---

# anacron与at命令应用

除了cron，Linux还提供了anacron和at等计划任务工具。本文将详细介绍anacron和at命令的使用方法和应用场景，包括anacron如何处理错过的任务、at如何执行一次性任务，以及它们与cron的区别和互补关系，帮助用户选择合适的工具满足不同的计划任务需求。
EOF

# 创建systemd定时器使用文档
cat > "$BASE_DIR/08-systemd定时器使用.md" << 'EOF'
---
title: systemd定时器使用
icon: systemd-timer
order: 8
---

# systemd定时器使用

systemd定时器是现代Linux系统中的新型计划任务机制。本文将详细介绍systemd定时器的概念、配置方法和使用技巧，包括定时器单元文件格式、时间表达式、触发条件等内容，以及如何将传统cron任务转换为systemd定时器，帮助用户掌握这一强大的计划任务工具。
EOF

# 创建日志文件分析技巧文档
cat > "$BASE_DIR/09-日志文件分析技巧.md" << 'EOF'
---
title: 日志文件分析技巧
icon: log-analysis-skills
order: 9
---

# 日志文件分析技巧

有效分析日志文件是排查问题和监控系统的关键技能。本文将详细介绍日志文件分析的实用技巧和常用工具，包括grep、awk、sed等文本处理命令的应用，以及journalctl、logwatch等专用日志工具的使用方法，通过实际案例展示如何从海量日志中快速提取有价值的信息。
EOF

# 创建日志轮转与归档配置文档
cat > "$BASE_DIR/10-日志轮转与归档配置.md" << 'EOF'
---
title: 日志轮转与归档配置
icon: log-rotate
order: 10
---

# 日志轮转与归档配置

合理的日志轮转和归档策略对于系统长期运行至关重要。本文将详细介绍Linux系统中的日志轮转机制和配置方法，包括logrotate工具的使用、轮转策略设计、压缩和归档选项等内容，帮助用户有效管理日志文件，避免磁盘空间耗尽和日志丢失问题。
EOF

# 创建集中式日志管理方案文档
cat > "$BASE_DIR/11-集中式日志管理方案.md" << 'EOF'
---
title: 集中式日志管理方案
icon: centralized-logging
order: 11
---

# 集中式日志管理方案

在多服务器环境中，集中式日志管理是必不可少的。本文将详细介绍Linux系统中实现集中式日志管理的方案和工具，包括rsyslog远程日志配置、ELK/EFK栈部署、Graylog平台使用等内容，帮助用户构建可扩展的集中式日志系统，实现多服务器日志的统一收集、存储和分析。
EOF

# 创建自动化日志分析系统文档
cat > "$BASE_DIR/12-自动化日志分析系统.md" << 'EOF'
---
title: 自动化日志分析系统
icon: automated-analysis
order: 12
---

# 自动化日志分析系统

自动化日志分析可以大幅提高运维效率和问题发现能力。本文将通过实战项目，详细介绍如何构建一个自动化日志分析系统，包括日志收集、预处理、分析规则设计、异常检测、告警通知等环节的实现方法，帮助用户打造智能化的日志分析平台，及时发现系统异常和安全威胁。

## 项目目标

- 实现多源日志的自动化收集
- 构建日志分析和异常检测规则
- 设计可视化报表和告警机制
- 支持历史日志查询和趋势分析

## 技术选型

- 日志收集：Filebeat/Fluentd
- 存储与检索：Elasticsearch
- 分析与可视化：Kibana/Grafana
- 告警系统：Elastalert/自定义脚本

## 实施步骤

1. 日志收集代理部署
2. 中央日志服务器配置
3. 日志解析与结构化处理
4. 分析规则与异常检测实现
5. 告警通知渠道配置
6. 可视化仪表盘设计
7. 系统测试与优化

## 扩展与进阶

- 机器学习辅助异常检测
- 日志关联分析能力
- 安全事件响应自动化
- 合规审计报告生成
EOF

echo "计划任务与日志管理目录结构和基础文档已创建完成！"