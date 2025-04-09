BASE_DIR="c:\project\kphub\nodejs"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Node.js知识库
icon: node
order: 1
---

# Node.js知识库

本知识库系统整理了Node.js开发所需的核心知识体系，从基础入门到高级应用，涵盖了服务端开发的各个方面。无论您是Node.js初学者还是有经验的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/01-Node.js基础"
cat > "$BASE_DIR/01-Node.js基础/README.md" << 'EOF'
---
title: Node.js基础
icon: book
order: 1
---

# 第1章 Node.js基础

本章将介绍Node.js的基本概念、发展历史、核心架构以及安装配置方法，帮助开发者快速了解Node.js的技术背景和基本使用方法。
EOF

# 创建1.1节
cat > "$BASE_DIR/01-Node.js基础/1.1-Node.js简介.md" << 'EOF'
---
title: Node.js简介
icon: info-circle
order: 1
---

# 1.1 Node.js简介

Node.js是一个基于Chrome V8引擎的JavaScript运行时环境，它使用事件驱动、非阻塞I/O模型，使其轻量且高效。Node.js的包生态系统npm是全球最大的开源库生态系统。
EOF

# 创建1.2节
cat > "$BASE_DIR/01-Node.js基础/1.2-Node.js历史与发展.md" << 'EOF'
---
title: Node.js历史与发展
icon: history
order: 2
---

# 1.2 Node.js历史与发展

Node.js由Ryan Dahl于2009年首次发布，最初目的是为了解决高并发服务器性能问题。经过多年发展，现已成为构建高性能网络应用的首选技术之一。
EOF

# 创建1.4节目录
mkdir -p "$BASE_DIR/01-Node.js基础/1.4-Node.js安装配置"
cat > "$BASE_DIR/01-Node.js基础/1.4-Node.js安装配置/README.md" << 'EOF'
---
title: Node.js安装配置
icon: download
order: 4
---

# 1.4 Node.js安装配置

本节详细介绍在不同操作系统上安装和配置Node.js开发环境的方法，包括Windows、macOS和Linux系统。
EOF

# 创建1.4.1节
cat > "$BASE_DIR/01-Node.js基础/1.4-Node.js安装配置/1.4.1-Windows安装.md" << 'EOF'
---
title: Windows安装
icon: windows
order: 1
---

# 1.4.1 Windows安装

在Windows系统上安装Node.js非常简单，只需下载官方提供的.msi安装包，按照向导完成安装即可。安装完成后会自动配置环境变量，可直接在命令行中使用node和npm命令。
EOF
BASE_DIR="c:\project\kphub\nodejs"
mkdir -p "$BASE_DIR"

# 创建1.4.2节
cat > "$BASE_DIR/01-Node.js基础/1.4-Node.js安装配置/1.4.2-MacOS安装.md" << 'EOF'
---
title: MacOS安装
icon: apple
order: 2
---

# 1.4.2 MacOS安装

在MacOS系统上可以通过Homebrew包管理器安装Node.js，命令简单高效。安装完成后会自动配置环境变量，可直接在终端中使用node和npm命令。
EOF

# 创建1.4.3节
cat > "$BASE_DIR/01-Node.js基础/1.4-Node.js安装配置/1.4.3-Linux安装.md" << 'EOF'
---
title: Linux安装
icon: linux
order: 3
---

# 1.4.3 Linux安装

Linux系统可通过系统包管理器安装Node.js，不同发行版命令略有差异。Ubuntu/Debian使用apt，CentOS/RHEL使用yum，安装后需验证版本。
EOF

# 创建1.4.4节
cat > "$BASE_DIR/01-Node.js基础/1.4-Node.js安装配置/1.4.4-使用NVM管理版本.md" << 'EOF'
---
title: 使用NVM管理版本
icon: code-branch
order: 4
---

# 1.4.4 使用NVM管理版本

NVM(Node Version Manager)是Node.js版本管理工具，可以轻松切换不同Node版本。支持Windows、MacOS和Linux系统，适合多项目开发场景。
EOF

# 创建1.5节
cat > "$BASE_DIR/01-Node.js基础/1.5-Node.js创建第一个应用.md" << 'EOF'
---
title: Node.js创建第一个应用
icon: rocket
order: 5
---

# 1.5 Node.js创建第一个应用

本节将指导您创建简单的Node.js HTTP服务器，演示基本开发流程。从初始化项目到运行应用，体验Node.js开发的全过程。
EOF

# 创建1.6节
cat > "$BASE_DIR/01-Node.js基础/1.6-Node.jsREPL环境.md" << 'EOF'
---
title: Node.js REPL环境
icon: terminal
order: 6
---

# 1.6 Node.js REPL环境

REPL(Read-Eval-Print Loop)是Node.js的交互式解释器，可直接执行JavaScript代码。适合快速测试代码片段，支持多行编辑和自动补全功能。
EOF

# 创建1.7节目录
mkdir -p "$BASE_DIR/01-Node.js基础/1.7-Node.js全局对象"
cat > "$BASE_DIR/01-Node.js基础/1.7-Node.js全局对象/README.md" << 'EOF'
---
title: Node.js全局对象
icon: globe
order: 7
---

# 1.7 Node.js全局对象

本章介绍Node.js中的全局对象及其用法，包括global、process等核心对象。这些对象在所有模块中都可直接使用，无需require引入。
EOF

# 创建1.7.1节
cat > "$BASE_DIR/01-Node.js基础/1.7-Node.js全局对象/1.7.1-global对象.md" << 'EOF'
---
title: global对象
icon: cube
order: 1
---

# 1.7.1 global对象

global是Node.js的全局命名空间对象，类似于浏览器中的window。所有全局变量都是global对象的属性，在模块间共享数据时需谨慎使用。
EOF

# 创建1.7.2节
cat > "$BASE_DIR/01-Node.js基础/1.7-Node.js全局对象/1.7.2-process对象.md" << 'EOF'
---
title: process对象
icon: cog
order: 2
---

# 1.7.2 process对象

process对象提供当前Node.js进程的信息和控制方法。可以获取环境变量、命令行参数，监听进程事件，是系统交互的重要接口。
EOF
BASE_DIR="c:\project\kphub\nodejs"
mkdir -p "$BASE_DIR"

# 创建1.7.3节
cat > "$BASE_DIR\01-Node.js基础\1.7-Node.js全局对象\1.7.3-console对象.md" << 'EOF'
---
title: console对象
icon: terminal
order: 3
---

# 1.7.3 console对象

console对象提供了简单的调试控制台，类似于浏览器中的console。支持log、error、warn等方法，是Node.js开发中最常用的调试工具之一。
EOF

# 创建1.7.4节
cat > "$BASE_DIR\01-Node.js基础\1.7-Node.js全局对象\1.7.4-Buffer类.md" << 'EOF'
---
title: Buffer类
icon: database
order: 4
---

# 1.7.4 Buffer类

Buffer类用于直接操作二进制数据流，是Node.js处理TCP流和文件系统的重要工具。在不需要转码的情况下高效处理原始数据。
EOF

# 创建1.7.5节
cat > "$BASE_DIR\01-Node.js基础\1.7-Node.js全局对象\1.7.5-__dirname和__filename.md" << 'EOF'
---
title: __dirname和__filename
icon: folder-open
order: 5
---

# 1.7.5 __dirname和__filename

这两个全局变量分别表示当前模块所在目录的绝对路径和当前模块文件的绝对路径。在文件操作和模块引用时非常实用。
EOF

# 创建1.7.6节
cat > "$BASE_DIR\01-Node.js基础\1.7-Node.js全局对象\1.7.6-定时器函数.md" << 'EOF'
---
title: 定时器函数
icon: clock
order: 6
---

# 1.7.6 定时器函数

Node.js提供了setTimeout、setInterval等定时器函数，与浏览器环境类似但实现机制不同。是异步编程的基础工具之一。
EOF

# 创建1.8节目录
mkdir -p "$BASE_DIR\01-Node.js基础\1.8-Node.js常用工具"
cat > "$BASE_DIR\01-Node.js基础\1.8-Node.js常用工具\README.md" << 'EOF'
---
title: Node.js常用工具
icon: tools
order: 8
---

# 1.8 Node.js常用工具

本章介绍Node.js内置的核心工具模块，包括util、path、os等。这些模块为开发提供了各种实用功能，是Node.js开发的基础设施。
EOF

# 创建1.8.1节
cat > "$BASE_DIR\01-Node.js基础\1.8-Node.js常用工具\1.8.1-util模块.md" << 'EOF'
---
title: util模块
icon: magic
order: 1
---

# 1.8.1 util模块

util模块提供了各种实用功能，包括类型检查、继承工具、调试工具等。其中最常用的是promisify方法，可将回调函数转为Promise形式。
EOF

# 创建1.8.2节
cat > "$BASE_DIR\01-Node.js基础\1.8-Node.js常用工具\1.8.2-path模块.md" << 'EOF'
---
title: path模块
icon: project-diagram
order: 2
---

# 1.8.2 path模块

path模块提供了处理文件和目录路径的工具函数。可以跨平台处理路径拼接、解析、规范化等操作，避免手动拼接路径字符串的问题。
EOF

# 创建1.8.3节
cat > "$BASE_DIR\01-Node.js基础\1.8-Node.js常用工具\1.8.3-os模块.md" << 'EOF'
---
title: os模块
icon: desktop
order: 3
---

# 1.8.3 os模块

os模块提供了与操作系统相关的实用方法和属性。可以获取CPU、内存、网络接口等信息，是系统监控和性能优化的基础工具。
EOF
BASE_DIR="c:\project\kphub\nodejs"
mkdir -p "$BASE_DIR"

# 创建1.8.4节
cat > "$BASE_DIR\01-Node.js基础\1.8-Node.js常用工具\1.8.4-url模块.md" << 'EOF'
---
title: url模块
icon: link
order: 4
---

# 1.8.4 url模块

url模块提供了URL解析和格式化的工具函数。可以解析URL字符串获取协议、主机名、路径等组成部分，也能将对象格式化为URL字符串。
EOF

# 创建1.8.5节
cat > "$BASE_DIR\01-Node.js基础\1.8-Node.js常用工具\1.8.5-querystring模块.md" << 'EOF'
---
title: querystring模块
icon: code
order: 5
---

# 1.8.5 querystring模块

querystring模块用于解析和格式化URL查询字符串。可以将查询字符串转为对象，也能将对象转为查询字符串，处理表单数据时特别有用。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR\02-Node.js核心概念"
cat > "$BASE_DIR\02-Node.js核心概念\README.md" << 'EOF'
---
title: Node.js核心概念
icon: cube
order: 2
---

# 第2章 Node.js核心概念

本章深入讲解Node.js的核心工作机制，包括回调函数、事件循环、模块系统等。理解这些概念对掌握Node.js异步编程模型至关重要。
EOF

# 创建2.1节目录
mkdir -p "$BASE_DIR\02-Node.js核心概念\2.1-Node.js回调函数"
cat > "$BASE_DIR\02-Node.js核心概念\2.1-Node.js回调函数\README.md" << 'EOF'
---
title: Node.js回调函数
icon: exchange-alt
order: 1
---

# 2.1 Node.js回调函数

回调函数是Node.js异步编程的基础模式。本节将介绍回调函数的使用方法、常见问题以及解决方案，帮助您写出更健壮的异步代码。
EOF

# 创建2.1.1节
cat > "$BASE_DIR\02-Node.js核心概念\2.1-Node.js回调函数\2.1.1-回调函数模式.md" << 'EOF'
---
title: 回调函数模式
icon: sync
order: 1
---

# 2.1.1 回调函数模式

Node.js采用"错误优先"的回调风格，即回调函数的第一个参数是错误对象。这种约定俗成的模式使得错误处理更加统一和规范。
EOF

# 创建2.1.2节
cat > "$BASE_DIR\02-Node.js核心概念\2.1-Node.js回调函数\2.1.2-回调地狱及解决方案.md" << 'EOF'
---
title: 回调地狱及解决方案
icon: layer-group
order: 2
---

# 2.1.2 回调地狱及解决方案

多层嵌套的回调函数会形成难以维护的"回调地狱"。解决方案包括模块化拆分、使用Promise/async-await等，提升代码可读性。
EOF

# 创建2.2节
cat > "$BASE_DIR\02-Node.js核心概念\2.2-Node.js事件循环.md" << 'EOF'
---
title: Node.js事件循环
icon: infinity
order: 2
---

# 2.2 Node.js事件循环

事件循环是Node.js实现非阻塞I/O的核心机制。理解事件循环的各个阶段及其执行顺序，对编写高性能Node.js应用至关重要。
EOF
BASE_DIR="c:\project\kphub\nodejs"
mkdir -p "$BASE_DIR"

# 创建2.2.1节
cat > "$BASE_DIR\02-Node.js核心概念\2.2-Node.js事件循环\2.2.1-事件循环机制详解.md" << 'EOF'
---
title: 事件循环机制详解
icon: sync
order: 1
---

# 2.2.1 事件循环机制详解

Node.js事件循环由libuv库实现，包含多个阶段：定时器、I/O回调、闲置/准备、轮询、检查、关闭回调。每个阶段都有特定的任务队列和执行顺序。
EOF

# 创建2.2.2节
cat > "$BASE_DIR\02-Node.js核心概念\2.2-Node.js事件循环\2.2.2-微任务与宏任务.md" << 'EOF'
---
title: 微任务与宏任务
icon: tasks
order: 2
---

# 2.2.2 微任务与宏任务

微任务(Promise回调)在当前阶段结束后立即执行，宏任务(setTimeout等)在事件循环的特定阶段执行。理解执行顺序对避免竞态条件很重要。
EOF

# 创建2.2.3节
cat > "$BASE_DIR\02-Node.js核心概念\2.2-Node.js事件循环\2.2.3-定时器与事件循环.md" << 'EOF'
---
title: 定时器与事件循环
icon: clock
order: 3
---

# 2.2.3 定时器与事件循环

setTimeout和setInterval的延时参数是最小保证时间，实际执行可能因事件循环繁忙而延迟。定时器回调在事件循环的定时器阶段执行。
EOF

# 创建2.2.4节
cat > "$BASE_DIR\02-Node.js核心概念\2.2-Node.js事件循环\2.2.4-process.nextTick.md" << 'EOF'
---
title: process.nextTick()
icon: forward
order: 4
---

# 2.2.4 process.nextTick()

process.nextTick()回调在当前操作完成后立即执行，优先级高于Promise。常用于确保回调在当前事件循环阶段结束后、下一阶段开始前执行。
EOF

# 创建2.3节目录
mkdir -p "$BASE_DIR\02-Node.js核心概念\2.3-Node.jsEventEmitter"
cat > "$BASE_DIR\02-Node.js核心概念\2.3-Node.jsEventEmitter\README.md" << 'EOF'
---
title: Node.js EventEmitter
icon: bolt
order: 3
---

# 2.3 Node.js EventEmitter

EventEmitter是Node.js事件驱动架构的核心实现。本节介绍如何使用事件发射器模式构建松耦合、高内聚的应用程序。
EOF

# 创建2.3.1节
cat > "$BASE_DIR\02-Node.js核心概念\2.3-Node.jsEventEmitter\2.3.1-事件驱动编程.md" << 'EOF'
---
title: 事件驱动编程
icon: project-diagram
order: 1
---

# 2.3.1 事件驱动编程

事件驱动编程通过监听和触发事件实现组件间通信。这种模式解耦了事件生产者和消费者，适合构建可扩展的异步系统。
EOF

# 创建2.3.2节
cat > "$BASE_DIR\02-Node.js核心概念\2.3-Node.jsEventEmitter\2.3.2-EventEmitter类.md" << 'EOF'
---
title: EventEmitter类
icon: code
order: 2
---

# 2.3.2 EventEmitter类

EventEmitter是Node.js内置的事件发射器实现。通过继承EventEmitter类，可以创建自定义事件发射器，实现事件监听和触发功能。
EOF

# 创建2.3.3节
cat > "$BASE_DIR\02-Node.js核心概念\2.3-Node.jsEventEmitter\2.3.3-事件监听与触发.md" << 'EOF'
---
title: 事件监听与触发
icon: broadcast-tower
order: 3
---

# 2.3.3 事件监听与触发

使用on()方法监听事件，emit()方法触发事件。可以传递任意数量参数给监听器，支持一次性监听和移除监听器等高级功能。
EOF
BASE_DIR="c:\project\kphub\nodejs"
mkdir -p "$BASE_DIR"

# 创建2.3.4节
cat > "$BASE_DIR\02-Node.js核心概念\2.3-Node.jsEventEmitter\2.3.4-自定义事件.md" << 'EOF'
---
title: 自定义事件
icon: plus-circle
order: 4
---

# 2.3.4 自定义事件

通过继承EventEmitter类可以创建自定义事件，定义特定业务场景的事件名称和参数。合理的事件设计能提高代码可维护性和扩展性。
EOF

# 创建2.3.5节
cat > "$BASE_DIR\02-Node.js核心概念\2.3-Node.jsEventEmitter\2.3.5-错误事件处理.md" << 'EOF'
---
title: 错误事件处理
icon: exclamation-triangle
order: 5
---

# 2.3.5 错误事件处理

EventEmitter默认会抛出未监听的error事件。最佳实践是始终监听error事件，实现健壮的错误处理逻辑，避免进程崩溃。
EOF

# 创建2.4节目录
mkdir -p "$BASE_DIR\02-Node.js核心概念\2.4-Node.jsBuffer"
cat > "$BASE_DIR\02-Node.js核心概念\2.4-Node.jsBuffer\README.md" << 'EOF'
---
title: Node.js Buffer
icon: memory
order: 4
---

# 2.4 Node.js Buffer

Buffer类用于直接操作二进制数据，是处理文件、网络通信等I/O操作的基础。本章详细介绍Buffer的创建、操作和性能优化技巧。
EOF

# 创建2.4.1节
cat > "$BASE_DIR\02-Node.js核心概念\2.4-Node.jsBuffer\2.4.1-Buffer创建与操作.md" << 'EOF'
---
title: Buffer创建与操作
icon: plus-square
order: 1
---

# 2.4.1 Buffer创建与操作

Buffer可以通过alloc、from等方法创建，支持读写操作。注意Buffer大小固定，操作时需注意边界检查，避免内存越界。
EOF

# 创建2.4.2节
cat > "$BASE_DIR\02-Node.js核心概念\2.4-Node.jsBuffer\2.4.2-Buffer与字符编码.md" << 'EOF'
---
title: Buffer与字符编码
icon: font
order: 2
---

# 2.4.2 Buffer与字符编码

Buffer支持utf8、base64等多种编码转换。不同编码影响存储大小和传输效率，需要根据场景选择合适的编码方式。
EOF

# 创建2.4.3节
cat > "$BASE_DIR\02-Node.js核心概念\2.4-Node.jsBuffer\2.4.3-Buffer与二进制数据.md" << 'EOF'
---
title: Buffer与二进制数据
icon: file-binary
order: 3
---

# 2.4.3 Buffer与二进制数据

Buffer可以直接操作二进制数据，适合处理图像、音频等非文本数据。提供类似数组的接口但性能更高，是二进制处理的利器。
EOF

# 创建2.4.4节
cat > "$BASE_DIR\02-Node.js核心概念\2.4-Node.jsBuffer\2.4.4-Buffer与性能.md" << 'EOF'
---
title: Buffer与性能
icon: tachometer-alt
order: 4
---

# 2.4.4 Buffer与性能

合理使用Buffer能显著提升I/O性能。避免频繁创建销毁，考虑对象复用，注意内存管理，这些技巧对高性能应用至关重要。
EOF

# 创建2.5节目录
mkdir -p "$BASE_DIR\02-Node.js核心概念\2.5-Node.jsStream"
cat > "$BASE_DIR\02-Node.js核心概念\2.5-Node.jsStream\README.md" << 'EOF'
---
title: Node.js Stream
icon: stream
order: 5
---

# 2.5 Node.js Stream

Stream是Node.js处理大数据的核心抽象，分为可读、可写、双工和转换流四种类型。本章将深入讲解各种流的使用场景和实现原理。
EOF
BASE_DIR="c:\project\kphub\src\.help\rpa"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Node.js流处理知识库
icon: nodejs
order: 1
---

# Node.js流处理知识库

本知识库系统整理了Node.js中流处理的核心概念与实践应用，涵盖可读流、可写流、双工流等核心内容，帮助开发者掌握高效的数据处理方式，提升I/O密集型应用的性能。
EOF

# 创建2.5.1 流的概念与类型
mkdir -p "$BASE_DIR/2.5.1-流的概念与类型"
cat > "$BASE_DIR/2.5.1-流的概念与类型/README.md" << 'EOF'
---
title: 流的概念与类型
icon: stream
order: 1
---

# 流的概念与类型

Node.js中的流(Stream)是处理流式数据的抽象接口，分为四种基本类型：可读流、可写流、双工流和转换流。流处理的核心优势在于可以分块处理数据，而不需要一次性加载全部内容到内存。
EOF

# 创建2.5.2 可读流
mkdir -p "$BASE_DIR/2.5.2-可读流"
cat > "$BASE_DIR/2.5.2-可读流/README.md" << 'EOF'
---
title: 可读流
icon: book-reader
order: 2
---

# 可读流

可读流(Readable Stream)是数据源头的抽象，如文件读取流、HTTP请求体等。通过`data`和`end`事件处理数据，支持流动模式和非流动模式两种读取方式，适用于大数据量的高效读取。
EOF

# 创建2.5.3 可写流
mkdir -p "$BASE_DIR/2.5.3-可写流"
cat > "$BASE_DIR/2.5.3-可写流/README.md" << 'EOF'
---
title: 可写流
icon: pen-fancy
order: 3
---

# 可写流

可写流(Writable Stream)代表数据写入的目标，如文件写入流、HTTP响应等。通过`write()`方法写入数据，`end()`方法结束写入，支持背压机制防止内存溢出，确保数据写入的稳定性。
EOF

# 创建2.5.4 双工流
mkdir -p "$BASE_DIR/2.5.4-双工流"
cat > "$BASE_DIR/2.5.4-双工流/README.md" << 'EOF'
---
title: 双工流
icon: exchange-alt
order: 4
---

# 双工流

双工流(Duplex Stream)同时实现可读和可写接口，如TCP套接字。数据读写通道相互独立，可以同时进行读写操作，适用于需要双向通信的场景，如网络协议实现。
EOF

# 创建2.5.5 转换流
mkdir -p "$BASE_DIR/2.5.5-转换流"
cat > "$BASE_DIR/2.5.5-转换流/README.md" << 'EOF'
---
title: 转换流
icon: random
order: 5
---

# 转换流

转换流(Transform Stream)是特殊的双工流，如zlib压缩流。在读写过程中对数据进行转换处理，输出与输入存在计算关系，常用于数据格式转换、加密解密等数据处理场景。
EOF

# 创建2.5.6 管道与链式操作
mkdir -p "$BASE_DIR/2.5.6-管道与链式操作"
cat > "$BASE_DIR/2.5.6-管道与链式操作/README.md" << 'EOF'
---
title: 管道与链式操作
icon: link
order: 6
---

# 管道与链式操作

管道(pipe)机制可以将多个流连接形成处理链，自动处理背压和数据流动。通过`pipe()`方法实现流间数据传递，简化复杂的数据处理流程，如文件压缩后直接上传等组合操作。
EOF

# 创建2.5.7 流事件处理
mkdir -p "$BASE_DIR/2.5.7-流事件处理"
cat > "$BASE_DIR/2.5.7-流事件处理/README.md" << 'EOF'
---
title: 流事件处理
icon: calendar-alt
order: 7
---

# 流事件处理

Node.js流通过事件机制实现异步处理，主要事件包括：`data`(数据到达)、`end`(读取完成)、`error`(发生错误)等。合理监听这些事件可以实现健壮的流处理逻辑，应对各种I/O场景。
EOF

# 创建2.5.8 自定义流
mkdir -p "$BASE_DIR/2.5.8-自定义流"
cat > "$BASE_DIR/2.5.8-自定义流/README.md" << 'EOF'
---
title: 自定义流
icon: magic
order: 8
---

# 自定义流

通过继承stream模块的基类可以创建自定义流，实现特定数据处理逻辑。需要根据流类型实现`_read()`、`_write()`等方法，适用于封装特殊协议或定制化数据处理需求。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建主README.md
cat > "$BASE_DIR\README.md" << 'EOF'
---
title: Node.js核心知识库
icon: nodejs
order: 1
---

# Node.js核心知识库

本知识库系统整理了Node.js开发中的核心概念与关键技术，包含模块系统、函数特性等重要内容，帮助开发者深入理解Node.js运行机制，提升后端开发能力。
EOF

# 创建2.6 Node.js模块系统目录
mkdir -p "$BASE_DIR\2.6-Node.js模块系统"
cat > "$BASE_DIR\2.6-Node.js模块系统\README.md" << 'EOF'
---
title: Node.js模块系统
icon: puzzle-piece
order: 1
---

# Node.js模块系统

Node.js采用CommonJS模块规范，通过require和module.exports实现模块化开发。本章将详细介绍模块加载机制、缓存策略等核心内容，帮助理解Node.js的模块化实现原理。
EOF

# 创建2.6.1 CommonJS规范
mkdir -p "$BASE_DIR\2.6-Node.js模块系统\2.6.1-CommonJS规范"
cat > "$BASE_DIR\2.6-Node.js模块系统\2.6.1-CommonJS规范\README.md" << 'EOF'
---
title: CommonJS规范
icon: cube
order: 1
---

# CommonJS规范

CommonJS是Node.js默认模块系统规范，定义了require/module.exports/modules三个核心概念。每个文件被视为独立模块，通过同步方式加载，适用于服务端开发场景。
EOF

# 创建2.6.2 模块加载机制
mkdir -p "$BASE_DIR\2.6-Node.js模块系统\2.6.2-模块加载机制"
cat > "$BASE_DIR\2.6-Node.js模块系统\2.6.2-模块加载机制\README.md" << 'EOF'
---
title: 模块加载机制
icon: search
order: 2
---

# 模块加载机制

Node.js模块加载遵循特定查找规则：优先核心模块→文件模块→目录模块→node_modules。支持.js/.json/.node扩展名，通过Module._resolveFilename实现路径解析。
EOF

# 创建2.6.3 模块缓存
mkdir -p "$BASE_DIR\2.6-Node.js模块系统\2.6.3-模块缓存"
cat > "$BASE_DIR\2.6-Node.js模块系统\2.6.3-模块缓存\README.md" << 'EOF'
---
title: 模块缓存
icon: database
order: 3
---

# 模块缓存

Node.js通过require.cache对象缓存已加载模块，键为模块完整路径。缓存机制避免重复加载提升性能，但可能导致内存泄漏，可通过delete操作手动清除缓存。
EOF

# 创建2.6.4 循环依赖
mkdir -p "$BASE_DIR\2.6-Node.js模块系统\2.6.4-循环依赖"
cat > "$BASE_DIR\2.6-Node.js模块系统\2.6.4-循环依赖\README.md" << 'EOF'
---
title: 循环依赖
icon: infinity
order: 4
---

# 循环依赖

当模块A依赖B，B又依赖A时形成循环依赖。Node.js通过部分加载机制处理这种情况，但可能导致未完全初始化的模块被引用，应尽量避免这种设计。
EOF

# 创建2.6.5 ES模块支持
mkdir -p "$BASE_DIR\2.6-Node.js模块系统\2.6.5-ES模块支持"
cat > "$BASE_DIR\2.6-Node.js模块系统\2.6.5-ES模块支持\README.md" << 'EOF'
---
title: ES模块支持
icon: ecmascript
order: 5
---

# ES模块支持

Node.js通过.mjs扩展名或package.json的type字段支持ES模块。使用import/export语法，采用异步加载方式，与CommonJS存在互操作性限制，需注意使用场景。
EOF

# 创建2.7 Node.js函数目录
mkdir -p "$BASE_DIR\2.7-Node.js函数"
cat > "$BASE_DIR\2.7-Node.js函数\README.md" << 'EOF'
---
title: Node.js函数
icon: function
order: 2
---

# Node.js函数

函数是Node.js的基础构建块，本章涵盖函数声明、作用域、闭包等核心概念，特别关注回调函数、异步流程控制等Node.js特有函数应用模式。
EOF

# 创建2.7.1 函数声明与表达式
mkdir -p "$BASE_DIR\2.7-Node.js函数\2.7.1-函数声明与表达式"
cat > "$BASE_DIR\2.7-Node.js函数\2.7.1-函数声明与表达式\README.md" << 'EOF'
---
title: 函数声明与表达式
icon: code
order: 1
---

# 函数声明与表达式

Node.js支持function声明和箭头函数表达式。函数声明会提升而表达式不会，箭头函数没有自己的this绑定，这些特性直接影响异步回调中的行为表现。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建2.7.2 箭头函数
mkdir -p "$BASE_DIR\2.7-Node.js函数\2.7.2-箭头函数"
cat > "$BASE_DIR\2.7-Node.js函数\2.7.2-箭头函数\README.md" << 'EOF'
---
title: 箭头函数
icon: arrow-right
order: 2
---

# 箭头函数

箭头函数是ES6引入的简洁函数语法，没有自己的this绑定，arguments对象和prototype属性。在Node.js中常用于回调函数，能有效解决this指向问题，简化异步代码编写。
EOF

# 创建2.7.3 异步函数
mkdir -p "$BASE_DIR\2.7-Node.js函数\2.7.3-异步函数"
cat > "$BASE_DIR\2.7-Node.js函数\2.7.3-异步函数\README.md" << 'EOF'
---
title: 异步函数
icon: sync
order: 3
---

# 异步函数

async/await是处理异步操作的语法糖，基于Promise实现。在Node.js中能写出更线性的异步代码，通过try-catch捕获错误，配合util.promisify可转换回调风格的API。
EOF

# 创建2.7.4 函数作用域与闭包
mkdir -p "$BASE_DIR\2.7-Node.js函数\2.7.4-函数作用域与闭包"
cat > "$BASE_DIR\2.7-Node.js函数\2.7.4-函数作用域与闭包\README.md" << 'EOF'
---
title: 函数作用域与闭包
icon: lock
order: 4
---

# 函数作用域与闭包

Node.js采用词法作用域，函数可以访问定义时的上下文变量。闭包使内层函数能访问外层函数作用域，在模块封装、私有变量实现等方面有重要应用，需注意内存泄漏风险。
EOF

# 创建2.7.5 函数柯里化
mkdir -p "$BASE_DIR\2.7-Node.js函数\2.7.5-函数柯里化"
cat > "$BASE_DIR\2.7-Node.js函数\2.7.5-函数柯里化\README.md" << 'EOF'
---
title: 函数柯里化
icon: function
order: 5
---

# 函数柯里化

柯里化将多参数函数转换为单参数函数链，实现参数复用和延迟执行。在Node.js中常用于中间件组合、配置预设等场景，lodash.curry是常用工具函数。
EOF

# 创建第3章 Node.js文件系统目录
mkdir -p "$BASE_DIR\3-Node.js文件系统"
cat > "$BASE_DIR\3-Node.js文件系统\README.md" << 'EOF'
---
title: Node.js文件系统
icon: folder-open
order: 3
---

# Node.js文件系统

fs模块是Node.js核心模块，提供文件读写、目录操作等能力。本章详细介绍同步/异步API使用、文件流处理、权限控制等关键技术，掌握本地文件系统交互方法。
EOF

# 创建3.1 fs模块概述
mkdir -p "$BASE_DIR\3-Node.js文件系统\3.1-fs模块概述"
cat > "$BASE_DIR\3-Node.js文件系统\3.1-fs模块概述\README.md" << 'EOF'
---
title: fs模块概述
icon: info-circle
order: 1
---

# fs模块概述

fs模块提供文件系统操作API，包含300+方法，分为文件操作、目录操作、权限控制等类别。需通过require('fs')引入，同时提供Promise版本fs/promises。
EOF

# 创建3.2 同步与异步API
mkdir -p "$BASE_DIR\3-Node.js文件系统\3.2-同步与异步API"
cat > "$BASE_DIR\3-Node.js文件系统\3.2-同步与异步API\README.md" << 'EOF'
---
title: 同步与异步API
icon: exchange-alt
order: 2
---

# 同步与异步API

fs模块方法通常有Sync后缀的同步版本和无后缀的异步版本。同步API会阻塞事件循环，适合脚本场景；异步API采用回调风格，适合服务端应用，避免I/O阻塞。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建3.3 文件读写操作
mkdir -p "$BASE_DIR\3-Node.js文件系统\3.3-文件读写操作"
cat > "$BASE_DIR\3-Node.js文件系统\3.3-文件读写操作\README.md" << 'EOF'
---
title: 文件读写操作
icon: file-alt
order: 3
---

# 文件读写操作

fs模块提供readFile/writeFile等文件读写方法，支持文本和二进制模式。大文件建议使用流式操作，异步API需注意错误处理，同步版本适合配置加载等场景。
EOF

# 创建3.4 目录操作
mkdir -p "$BASE_DIR\3-Node.js文件系统\3.4-目录操作"
cat > "$BASE_DIR\3-Node.js文件系统\3.4-目录操作\README.md" << 'EOF'
---
title: 目录操作
icon: folder
order: 4
---

# 目录操作

通过mkdir/readdir/rmdir等方法管理目录，readdir可获取目录内容列表，递归操作需自行实现或使用第三方库如fs-extra，注意路径分隔符跨平台兼容性。
EOF

# 创建3.5 文件信息获取
mkdir -p "$BASE_DIR\3-Node.js文件系统\3.5-文件信息获取"
cat > "$BASE_DIR\3-Node.js文件系统\3.5-文件信息获取\README.md" << 'EOF'
---
title: 文件信息获取
icon: info-circle
order: 5
---

# 文件信息获取

stat/lstat方法返回fs.Stats对象，包含大小、类型、时间戳等信息。isFile/isDirectory等方法判断文件类型，注意符号链接需使用lstat获取自身信息。
EOF

# 创建3.6 文件监控
mkdir -p "$BASE_DIR\3-Node.js文件系统\3.6-文件监控"
cat > "$BASE_DIR\3-Node.js文件系统\3.6-文件监控\README.md" << 'EOF'
---
title: 文件监控
icon: eye
order: 6
---

# 文件监控

fs.watch/watchFile实现文件变更监听，watch使用操作系统原生事件更高效，watchFile通过轮询适合网络存储。注意不同平台事件触发行为和性能差异。
EOF

# 创建3.7 流式文件操作
mkdir -p "$BASE_DIR\3-Node.js文件系统\3.7-流式文件操作"
cat > "$BASE_DIR\3-Node.js文件系统\3.7-流式文件操作\README.md" << 'EOF'
---
title: 流式文件操作
icon: stream
order: 7
---

# 流式文件操作

createReadStream/createWriteStream处理大文件，通过pipe自动管理背压。可设置编码、缓冲区大小等参数优化性能，配合zlib等转换流实现压缩加密。
EOF

# 创建3.8 文件系统权限
mkdir -p "$BASE_DIR\3-Node.js文件系统\3.8-文件系统权限"
cat > "$BASE_DIR\3-Node.js文件系统\3.8-文件系统权限\README.md" << 'EOF'
---
title: 文件系统权限
icon: lock
order: 8
---

# 文件系统权限

access/chmod方法检查修改权限，使用POSIX权限位表示法。Windows平台部分权限受限，process.umask设置默认权限掩码，注意生产环境权限最小化原则。
EOF

# 创建3.9 临时文件与目录
mkdir -p "$BASE_DIR\3-Node.js文件系统\3.9-临时文件与目录"
cat > "$BASE_DIR\3-Node.js文件系统\3.9-临时文件与目录\README.md" << 'EOF'
---
title: 临时文件与目录
icon: clock
order: 9
---

# 临时文件与目录

os.tmpdir获取系统临时目录路径，第三方库tmp提供自动清理功能。临时文件应添加随机后缀防冲突，使用后及时删除避免堆积，敏感数据需安全擦除。
EOF

# 创建3.10 文件路径处理
mkdir -p "$BASE_DIR\3-Node.js文件系统\3.10-文件路径处理"
cat > "$BASE_DIR\3-Node.js文件系统\3.10-文件路径处理\README.md" << 'EOF'
---
title: 文件路径处理
icon: map-marked-alt
order: 10
---

# 文件路径处理

path模块处理路径拼接、解析等操作，join/resolve自动处理分隔符，parse解析路径组成部分。注意..和.的相对路径解析，__dirname获取当前模块目录。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建第4章 NPM包管理目录
mkdir -p "$BASE_DIR\4-NPM包管理"
cat > "$BASE_DIR\4-NPM包管理\README.md" << 'EOF'
---
title: NPM包管理
icon: npm
order: 4
---

# NPM包管理

NPM是Node.js的包管理工具，全球最大的开源库生态系统。本章将详细介绍package.json配置、依赖管理、脚本使用等核心功能，帮助开发者高效管理项目依赖。
EOF

# 创建4.1 NPM简介
mkdir -p "$BASE_DIR\4-NPM包管理\4.1-NPM简介"
cat > "$BASE_DIR\4-NPM包管理\4.1-NPM简介\README.md" << 'EOF'
---
title: NPM简介
icon: info-circle
order: 1
---

# NPM简介

NPM(Node Package Manager)是Node.js默认包管理器，包含CLI工具和软件仓库。提供40万+开源包，支持依赖管理、版本控制和脚本自动化，是Node.js生态的核心组成部分。
EOF

# 创建4.2 NPM使用介绍
mkdir -p "$BASE_DIR\4-NPM包管理\4.2-NPM使用介绍"
cat > "$BASE_DIR\4-NPM包管理\4.2-NPM使用介绍\README.md" << 'EOF'
---
title: NPM使用介绍
icon: terminal
order: 2
---

# NPM使用介绍

npm install安装依赖，-g全局安装，--save-dev开发依赖。update升级包，uninstall移除包，list查看已安装包。配置registry可切换镜像源提升安装速度。
EOF

# 创建4.3 package.json详解
mkdir -p "$BASE_DIR\4-NPM包管理\4.3-package.json详解"
cat > "$BASE_DIR\4-NPM包管理\4.3-package.json详解\README.md" << 'EOF'
---
title: package.json详解
icon: file-code
order: 3
---

# package.json详解

package.json定义项目元数据和依赖配置，包含name/version等必填字段。dependencies生产依赖，devDependencies开发依赖，peerDependencies同伴依赖，engines指定Node版本要求。
EOF

# 创建4.4 依赖管理
mkdir -p "$BASE_DIR\4-NPM包管理\4.4-依赖管理"
cat > "$BASE_DIR\4-NPM包管理\4.4-依赖管理\README.md" << 'EOF'
---
title: 依赖管理
icon: network-wired
order: 4
---

# 依赖管理

^1.2.3允许次版本和修订号升级，~1.2.3只允许修订号升级。npm audit检查安全漏洞，ci命令适合CI环境，lock文件确保依赖树一致性，避免"works on my machine"问题。
EOF

# 创建4.5 脚本与钩子
mkdir -p "$BASE_DIR\4-NPM包管理\4.5-脚本与钩子"
cat > "$BASE_DIR\4-NPM包管理\4.5-脚本与钩子\README.md" << 'EOF'
---
title: 脚本与钩子
icon: code
order: 5
---

# 脚本与钩子

scripts字段定义自动化脚本，如test/build。pre/post前缀实现钩子机制，如prepublish在发布前执行。npm run执行自定义脚本，可组合多个命令，简化开发流程。
EOF

# 创建4.6 发布自己的包
mkdir -p "$BASE_DIR\4-NPM包管理\4.6-发布自己的包"
cat > "$BASE_DIR\4-NPM包管理\4.6-发布自己的包\README.md" << 'EOF'
---
title: 发布自己的包
icon: upload
order: 6
---

# 发布自己的包

npm login登录账号，npm publish发布包。需注意版本号遵循semver规范，.npmignore控制发布内容。私有包可使用scope组织，企业版支持私有仓库管理。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建4.7 语义化版本控制
mkdir -p "$BASE_DIR\4-NPM包管理\4.7-语义化版本控制"
cat > "$BASE_DIR\4-NPM包管理\4.7-语义化版本控制\README.md" << 'EOF'
---
title: 语义化版本控制
icon: code-branch
order: 7
---

# 语义化版本控制

语义化版本(SemVer)采用MAJOR.MINOR.PATCH格式，MAJOR版本不兼容更新，MINOR版本向下兼容新增功能，PATCH版本向下兼容问题修正。遵循此规范可避免依赖地狱问题。
EOF

# 创建4.8 私有仓库
mkdir -p "$BASE_DIR\4-NPM包管理\4.8-私有仓库"
cat > "$BASE_DIR\4-NPM包管理\4.8-私有仓库\README.md" << 'EOF'
---
title: 私有仓库
icon: lock
order: 8
---

# 私有仓库

企业可使用Verdaccio搭建私有NPM仓库，通过.npmrc配置registry地址。私有包需登录授权，scope(@company/pkg)组织相关包，适合内部组件共享和商业软件发布。
EOF

# 创建4.9 NPM替代品：Yarn和pnpm
mkdir -p "$BASE_DIR\4-NPM包管理\4.9-NPM替代品：Yarn和pnpm"
cat > "$BASE_DIR\4-NPM包管理\4.9-NPM替代品：Yarn和pnpm\README.md" << 'EOF'
---
title: NPM替代品：Yarn和pnpm
icon: boxes
order: 9
---

# NPM替代品：Yarn和pnpm

Yarn提供确定性依赖安装和离线模式，pnpm使用硬链接节省磁盘空间。两者都兼容package.json，性能优于NPM，可根据项目需求选择合适的包管理工具。
EOF

# 创建第5章 Node.js网络编程目录
mkdir -p "$BASE_DIR\5-Node.js网络编程"
cat > "$BASE_DIR\5-Node.js网络编程\README.md" << 'EOF'
---
title: Node.js网络编程
icon: network-wired
order: 5
---

# Node.js网络编程

Node.js内置net/http/https等网络模块，适合构建高性能网络应用。本章涵盖HTTP服务器、TCP/UDP通信、WebSocket等核心技术，掌握后端服务开发基础能力。
EOF

# 创建5.1 HTTP模块
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.1-HTTP模块"
cat > "$BASE_DIR\5-Node.js网络编程\5.1-HTTP模块\README.md" << 'EOF'
---
title: HTTP模块
icon: globe
order: 1
---

# HTTP模块

http模块提供createServer方法创建Web服务器，基于事件驱动处理并发请求。支持HTTP/1.1协议，可结合cluster模块实现多进程负载均衡，构建高并发服务。
EOF

# 创建5.1.1 创建HTTP服务器
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.1-HTTP模块\5.1.1-创建HTTP服务器"
cat > "$BASE_DIR\5-Node.js网络编程\5.1-HTTP模块\5.1.1-创建HTTP服务器\README.md" << 'EOF'
---
title: 创建HTTP服务器
icon: server
order: 1
---

# 创建HTTP服务器

通过http.createServer()创建服务器实例，监听request事件处理请求。listen方法绑定端口，回调函数确认启动成功。示例3行代码即可运行基础Web服务。
EOF

# 创建5.1.2 处理HTTP请求
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.1-HTTP模块\5.1.2-处理HTTP请求"
cat > "$BASE_DIR\5-Node.js网络编程\5.1-HTTP模块\5.1.2-处理HTTP请求\README.md" << 'EOF'
---
title: 处理HTTP请求
icon: exchange-alt
order: 2
---

# 处理HTTP请求

请求对象(req)包含method/url/headers等信息，响应对象(res)控制状态码、头部和主体。需注意异步处理body数据，错误处理防止进程崩溃，常用框架简化此流程。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建5.1.3 HTTP客户端
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.1-HTTP模块\5.1.3-HTTP客户端"
cat > "$BASE_DIR\5-Node.js网络编程\5.1-HTTP模块\5.1.3-HTTP客户端\README.md" << 'EOF'
---
title: HTTP客户端
icon: download
order: 3
---

# HTTP客户端

http.request方法创建HTTP客户端，可发送GET/POST等请求。需处理响应事件流，第三方库如axios提供更友好的Promise API。注意设置timeout和错误处理避免请求挂起。
EOF

# 创建5.1.4 HTTP头部与状态码
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.1-HTTP模块\5.1.4-HTTP头部与状态码"
cat > "$BASE_DIR\5-Node.js网络编程\5.1-HTTP模块\5.1.4-HTTP头部与状态码\README.md" << 'EOF'
---
title: HTTP头部与状态码
icon: heading
order: 4
---

# HTTP头部与状态码

res.setHeader设置响应头，getHeader读取请求头。常见状态码如200(成功)、404(未找到)、500(服务器错误)。CORS需设置Access-Control-Allow-Origin，缓存控制通过Cache-Control实现。
EOF

# 创建5.2 HTTPS模块目录
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.2-HTTPS模块"
cat > "$BASE_DIR\5-Node.js网络编程\5.2-HTTPS模块\README.md" << 'EOF'
---
title: HTTPS模块
icon: lock
order: 2
---

# HTTPS模块

https模块提供安全HTTP通信，基于TLS/SSL加密传输数据。创建服务需配置证书和私钥，适用于敏感数据传输。与HTTP模块API兼容，可无缝切换。
EOF

# 创建5.2.1 SSL/TLS基础
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.2-HTTPS模块\5.2.1-SSL-TLS基础"
cat > "$BASE_DIR\5-Node.js网络编程\5.2-HTTPS模块\5.2.1-SSL-TLS基础\README.md" << 'EOF'
---
title: SSL/TLS基础
icon: shield-alt
order: 1
---

# SSL/TLS基础

SSL/TLS协议提供加密、身份验证和数据完整性。TLS1.2/1.3为当前主流版本，使用非对称加密交换密钥，对称加密传输数据。证书由CA签发，包含公钥和所有者信息。
EOF

# 创建5.2.2 创建HTTPS服务器
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.2-HTTPS模块\5.2.2-创建HTTPS服务器"
cat > "$BASE_DIR\5-Node.js网络编程\5.2-HTTPS模块\5.2.2-创建HTTPS服务器\README.md" << 'EOF'
---
title: 创建HTTPS服务器
icon: server
order: 2
---

# 创建HTTPS服务器

https.createServer需传入key/cert选项，指定私钥和证书文件路径。Let's Encrypt提供免费证书，生产环境应启用HSTS强制HTTPS，禁用不安全加密套件。
EOF

# 创建5.2.3 证书配置
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.2-HTTPS模块\5.2.3-证书配置"
cat > "$BASE_DIR\5-Node.js网络编程\5.2-HTTPS模块\5.2.3-证书配置\README.md" << 'EOF'
---
title: 证书配置
icon: certificate
order: 3
---

# 证书配置

证书文件通常为PEM格式，包含BEGIN CERTIFICATE标记。可配置SNI支持多域名，OCSP Stapling提升验证性能。开发环境可用self-signed证书，需添加至信任链。
EOF

# 创建5.3 网络套接字目录
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.3-网络套接字"
cat > "$BASE_DIR\5-Node.js网络编程\5.3-网络套接字\README.md" << 'EOF'
---
title: 网络套接字
icon: plug
order: 3
---

# 网络套接字

net模块提供TCP/IP套接字接口，适合构建自定义协议服务。支持全双工通信，可结合Stream实现高效数据传输，常用于数据库驱动、消息队列等底层通信。
EOF

# 创建5.3.1 TCP服务器与客户端
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.3-网络套接字\5.3.1-TCP服务器与客户端"
cat > "$BASE_DIR\5-Node.js网络编程\5.3-网络套接字\5.3.1-TCP服务器与客户端\README.md" << 'EOF'
---
title: TCP服务器与客户端
icon: network-wired
order: 1
---

# TCP服务器与客户端

net.createServer创建TCP服务，监听connection事件。socket对象可读写数据，需处理end/error事件。客户端通过net.connect建立连接，适合需要持久连接的场景。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建5.3.2 UDP通信
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.3-网络套接字\5.3.2-UDP通信"
cat > "$BASE_DIR\5-Node.js网络编程\5.3-网络套接字\5.3.2-UDP通信\README.md" << 'EOF'
---
title: UDP通信
icon: wifi
order: 2
---

# UDP通信

dgram模块实现UDP数据报通信，无连接不可靠但高效。createSocket创建套接字，send发送数据，message事件接收数据。适用于视频流、DNS查询等丢包不敏感场景。
EOF

# 创建5.4 WebSocket目录
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.4-WebSocket"
cat > "$BASE_DIR\5-Node.js网络编程\5.4-WebSocket\README.md" << 'EOF'
---
title: WebSocket
icon: comment-alt
order: 4
---

# WebSocket

WebSocket实现全双工实时通信，基于HTTP升级协议。相比轮询更高效，适合聊天、实时游戏等场景。ws库提供完整实现，支持二进制数据传输和心跳检测。
EOF

# 创建5.4.1 WebSocket协议
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.4-WebSocket\5.4.1-WebSocket协议"
cat > "$BASE_DIR\5-Node.js网络编程\5.4-WebSocket\5.4.1-WebSocket协议\README.md" << 'EOF'
---
title: WebSocket协议
icon: code
order: 1
---

# WebSocket协议

WebSocket通过HTTP/1.1 101状态码升级连接，使用帧格式传输数据。控制帧管理连接状态，数据帧分文本/二进制类型。掩码保护客户端数据，最大帧长默认16MB。
EOF

# 创建5.4.2 WebSocket服务器实现
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.4-WebSocket\5.4.2-WebSocket服务器实现"
cat > "$BASE_DIR\5-Node.js网络编程\5.4-WebSocket\5.4.2-WebSocket服务器实现\README.md" << 'EOF'
---
title: WebSocket服务器实现
icon: server
order: 2
---

# WebSocket服务器实现

ws库创建WebSocket.Server实例，监听connection事件。客户端通过new WebSocket()连接，onmessage处理消息。需处理error/close事件，心跳检测维持连接。
EOF

# 创建5.4.3 实时通信应用
mkdir -p "$BASE_DIR\5-Node.js网络编程\5.4-WebSocket\5.4.3-实时通信应用"
cat > "$BASE_DIR\5-Node.js网络编程\5.4-WebSocket\5.4.3-实时通信应用\README.md" << 'EOF'
---
title: 实时通信应用
icon: comments
order: 3
---

# 实时通信应用

结合Redis PUB/SUB实现多节点消息广播，房间模式隔离不同频道。前端使用EventSource或直接WebSocket API，注意重连策略和消息序列化格式选择。
EOF

# 创建第6章 Web开发基础目录
mkdir -p "$BASE_DIR\6-Web开发基础"
cat > "$BASE_DIR\6-Web开发基础\README.md" << 'EOF'
---
title: Web开发基础
icon: globe
order: 6
---

# Web开发基础

本章深入Node.js Web开发核心技术，涵盖HTTP模块高级用法、路由解析、中间件机制等。掌握这些基础能力后，可更高效使用Express等框架进行开发。
EOF

# 创建6.1 HTTP模块深入
mkdir -p "$BASE_DIR\6-Web开发基础\6.1-HTTP模块深入"
cat > "$BASE_DIR\6-Web开发基础\6.1-HTTP模块深入\README.md" << 'EOF'
---
title: HTTP模块深入
icon: code
order: 1
---

# HTTP模块深入

解析URL和查询参数，处理multipart文件上传。使用Agent管理连接池，设置keep-alive提升性能。自定义解析器处理非标准请求，实现底层HTTP协议扩展。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建6.1.1 创建HTTP服务器
mkdir -p "$BASE_DIR\6-Web开发基础\6.1-HTTP模块深入\6.1.1-创建HTTP服务器"
cat > "$BASE_DIR\6-Web开发基础\6.1-HTTP模块深入\6.1.1-创建HTTP服务器\README.md" << 'EOF'
---
title: 创建HTTP服务器
icon: server
order: 1
---

# 创建HTTP服务器

使用http.createServer()创建服务器实例，通过listen()方法指定端口启动服务。可设置超时时间、最大请求头数等参数优化性能，事件驱动模型处理高并发连接。
EOF

# 创建6.1.2 处理请求与响应
mkdir -p "$BASE_DIR\6-Web开发基础\6.1-HTTP模块深入\6.1.2-处理请求与响应"
cat > "$BASE_DIR\6-Web开发基础\6.1-HTTP模块深入\6.1.2-处理请求与响应\README.md" << 'EOF'
---
title: 处理请求与响应
icon: exchange-alt
order: 2
---

# 处理请求与响应

req对象包含method/url/headers等信息，res对象控制状态码、响应头和主体。异步处理请求体数据，使用pipeline优化响应流，注意设置Content-Type和字符编码。
EOF

# 创建6.1.3 HTTP客户端应用
mkdir -p "$BASE_DIR\6-Web开发基础\6.1-HTTP模块深入\6.1.3-HTTP客户端应用"
cat > "$BASE_DIR\6-Web开发基础\6.1-HTTP模块深入\6.1.3-HTTP客户端应用\README.md" << 'EOF'
---
title: HTTP客户端应用
icon: network-wired
order: 3
---

# HTTP客户端应用

http.request()发起HTTP请求，支持GET/POST等方法。处理重定向、超时和错误，使用Agent管理连接池提升性能。第三方库如axios提供更简洁的Promise API。
EOF

# 创建6.2 HTTPS与安全目录
mkdir -p "$BASE_DIR\6-Web开发基础\6.2-HTTPS与安全"
cat > "$BASE_DIR\6-Web开发基础\6.2-HTTPS与安全\README.md" << 'EOF'
---
title: HTTPS与安全
icon: lock
order: 2
---

# HTTPS与安全

HTTPS通过TLS加密通信数据，防止窃听和篡改。配置证书和私钥启用加密，设置安全头部如CSP/HSTS，遵循OWASP安全规范保护Web应用免受常见攻击。
EOF

# 创建6.2.1 HTTPS服务器配置
mkdir -p "$BASE_DIR\6-Web开发基础\6.2-HTTPS与安全\6.2.1-HTTPS服务器配置"
cat > "$BASE_DIR\6-Web开发基础\6.2-HTTPS与安全\6.2.1-HTTPS服务器配置\README.md" << 'EOF'
---
title: HTTPS服务器配置
icon: cog
order: 1
---

# HTTPS服务器配置

https.createServer()需要key/cert参数指定私钥和证书。Let's Encrypt提供免费证书，配置SNI支持多域名，禁用不安全的加密套件和协议版本。
EOF

# 创建6.2.2 证书管理
mkdir -p "$BASE_DIR\6-Web开发基础\6.2-HTTPS与安全\6.2.2-证书管理"
cat > "$BASE_DIR\6-Web开发基础\6.2-HTTPS与安全\6.2.2-证书管理\README.md" << 'EOF'
---
title: 证书管理
icon: certificate
order: 2
---

# 证书管理

PEM格式证书包含公钥和CA链，PFX格式适合Windows。使用openssl生成自签名证书，acme.sh自动化证书续期，监控证书过期时间避免服务中断。
EOF

# 创建6.2.3 安全最佳实践
mkdir -p "$BASE_DIR\6-Web开发基础\6.2-HTTPS与安全\6.2.3-安全最佳实践"
cat > "$BASE_DIR\6-Web开发基础\6.2-HTTPS与安全\6.2.3-安全最佳实践\README.md" << 'EOF'
---
title: 安全最佳实践
icon: shield-alt
order: 3
---

# 安全最佳实践

设置安全响应头(XSS保护/CSP)，输入验证防止注入攻击，限制请求频率防暴力破解。使用helmet中间件快速配置安全策略，定期更新依赖修复漏洞。
EOF

# 创建6.3 URL路由目录
mkdir -p "$BASE_DIR\6-Web开发基础\6.3-URL路由"
cat > "$BASE_DIR\6-Web开发基础\6.3-URL路由\README.md" << 'EOF'
---
title: URL路由
icon: route
order: 3
---

# URL路由

解析请求URL和查询参数，实现RESTful风格路由。支持参数占位符和正则匹配，分离路由逻辑与业务处理。Express等框架提供高级路由功能。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建6.3.1 基础路由实现
mkdir -p "$BASE_DIR\6-Web开发基础\6.3-URL路由\6.3.1-基础路由实现"
cat > "$BASE_DIR\6-Web开发基础\6.3-URL路由\6.3.1-基础路由实现\README.md" << 'EOF'
---
title: 基础路由实现
icon: code
order: 1
---

# 基础路由实现

通过解析req.url实现简单路由分发，switch-case结构匹配不同路径。支持GET/POST等方法判断，返回404处理未知路由。这是理解框架路由机制的基础实现方式。
EOF

# 创建6.3.2 路由参数处理
mkdir -p "$BASE_DIR\6-Web开发基础\6.3-URL路由\6.3.2-路由参数处理"
cat > "$BASE_DIR\6-Web开发基础\6.3-URL路由\6.3.2-路由参数处理\README.md" << 'EOF'
---
title: 路由参数处理
icon: puzzle-piece
order: 2
---

# 路由参数处理

使用正则表达式提取路径参数如/user/:id，querystring模块解析URL查询参数。实现RESTful风格路由，处理动态路由段和可选参数，注意URL编码解码问题。
EOF

# 创建6.3.3 路由中间件
mkdir -p "$BASE_DIR\6-Web开发基础\6.3-URL路由\6.3.3-路由中间件"
cat > "$BASE_DIR\6-Web开发基础\6.3-URL路由\6.3.3-路由中间件\README.md" << 'EOF'
---
title: 路由中间件
icon: layer-group
order: 3
---

# 路由中间件

中间件函数接收req/res/next参数，可修改请求对象或提前返回响应。实现路由级中间件，支持异步处理，组合多个中间件形成处理管道，注意错误传播机制。
EOF

# 创建6.4 请求参数处理目录
mkdir -p "$BASE_DIR\6-Web开发基础\6.4-请求参数处理"
cat > "$BASE_DIR\6-Web开发基础\6.4-请求参数处理\README.md" << 'EOF'
---
title: 请求参数处理
icon: inbox
order: 4
---

# 请求参数处理

Web请求包含多种参数传递方式，需要正确解析和验证。本章涵盖查询字符串、请求体、文件上传等常见参数处理技术，确保数据安全可靠地传递给业务逻辑。
EOF

# 创建6.4.1 查询字符串
mkdir -p "$BASE_DIR\6-Web开发基础\6.4-请求参数处理\6.4.1-查询字符串"
cat > "$BASE_DIR\6-Web开发基础\6.4-请求参数处理\6.4.1-查询字符串\README.md" << 'EOF'
---
title: 查询字符串
icon: question-circle
order: 1
---

# 查询字符串

querystring模块解析URL问号后的参数，处理键值对数组和嵌套结构。注意特殊字符编码问题，使用decodeURIComponent解码，限制参数长度防止DoS攻击。
EOF

# 创建6.4.2 请求体解析
mkdir -p "$BASE_DIR\6-Web开发基础\6.4-请求参数处理\6.4.2-请求体解析"
cat > "$BASE_DIR\6-Web开发基础\6.4-请求参数处理\6.4.2-请求体解析\README.md" << 'EOF'
---
title: 请求体解析
icon: code
order: 2
---

# 请求体解析

根据Content-Type处理JSON/URL编码/form-data等格式。监听data/end事件流式接收大数据，限制body大小防内存溢出。第三方库body-parser简化此过程。
EOF

# 创建6.4.3 文件上传处理
mkdir -p "$BASE_DIR\6-Web开发基础\6.4-请求参数处理\6.4.3-文件上传处理"
cat > "$BASE_DIR\6-Web开发基础\6.4-请求参数处理\6.4.3-文件上传处理\README.md" << 'EOF'
---
title: 文件上传处理
icon: file-upload
order: 3
---

# 文件上传处理

处理multipart/form-data格式，使用busboy等库解析文件流。设置临时目录存储上传文件，验证文件类型和大小，最终移动至持久存储。注意清理未完成上传。
EOF

# 创建6.5 静态文件服务目录
mkdir -p "$BASE_DIR\6-Web开发基础\6.5-静态文件服务"
cat > "$BASE_DIR\6-Web开发基础\6.5-静态文件服务\README.md" << 'EOF'
---
title: 静态文件服务
icon: file
order: 5
---

# 静态文件服务

高效提供HTML/CSS/JS等静态资源，设置缓存头优化性能。fs.createReadStream流式传输大文件，实现范围请求支持断点续传。注意路径安全防止目录遍历攻击。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建6.5.1 静态资源服务器实现
mkdir -p "$BASE_DIR\6-Web开发基础\6.5-静态文件服务\6.5.1-静态资源服务器实现"
cat > "$BASE_DIR\6-Web开发基础\6.5-静态文件服务\6.5.1-静态资源服务器实现\README.md" << 'EOF'
---
title: 静态资源服务器实现
icon: server
order: 1
---

# 静态资源服务器实现

基于fs模块实现静态文件服务，处理路径规范化安全检查。使用流式读取提升大文件传输效率，设置适当缓存头优化性能。支持目录索引和默认文档(index.html)。
EOF

# 创建6.5.2 缓存控制
mkdir -p "$BASE_DIR\6-Web开发基础\6.5-静态文件服务\6.5.2-缓存控制"
cat > "$BASE_DIR\6-Web开发基础\6.5-静态文件服务\6.5.2-缓存控制\README.md" << 'EOF'
---
title: 缓存控制
icon: clock
order: 2
---

# 缓存控制

通过Cache-Control设置强缓存(max-age)，ETag/Last-Modified实现协商缓存。区分开发和生产环境配置，版本化静态资源文件名实现长期缓存，避免更新失效。
EOF

# 创建6.5.3 MIME类型处理
mkdir -p "$BASE_DIR\6-Web开发基础\6.5-静态文件服务\6.5.3-MIME类型处理"
cat > "$BASE_DIR\6-Web开发基础\6.5-静态文件服务\6.5.3-MIME类型处理\README.md" << 'EOF'
---
title: MIME类型处理
icon: file-code
order: 3
---

# MIME类型处理

根据文件扩展名设置正确Content-Type，使用mime-types库自动识别。处理特殊类型如wasm/woff2，确保浏览器正确解析。配置默认类型和类型映射表增强兼容性。
EOF

# 创建6.6 模板引擎目录
mkdir -p "$BASE_DIR\6-Web开发基础\6.6-模板引擎"
cat > "$BASE_DIR\6-Web开发基础\6.6-模板引擎\README.md" << 'EOF'
---
title: 模板引擎
icon: code
order: 6
---

# 模板引擎

模板引擎将动态数据与HTML结构分离，支持逻辑控制、局部模板等特性。本章比较主流Node.js模板引擎，展示基础语法和高级用法，实现服务端渲染能力。
EOF

# 创建6.6.1 常用模板引擎对比
mkdir -p "$BASE_DIR\6-Web开发基础\6.6-模板引擎\6.6.1-常用模板引擎对比"
cat > "$BASE_DIR\6-Web开发基础\6.6-模板引擎\6.6.1-常用模板引擎对比\README.md" << 'EOF'
---
title: 常用模板引擎对比
icon: balance-scale
order: 1
---

# 常用模板引擎对比

EJS(嵌入式JS)、Pug(缩进语法)、Handlebars(逻辑较少)是三大主流方案。对比语法复杂度、性能、功能特性，根据项目需求选择，EJS适合初学者，Pug简洁高效。
EOF

# 创建6.6.2 EJS模板
mkdir -p "$BASE_DIR\6-Web开发基础\6.6-模板引擎\6.6.2-EJS模板"
cat > "$BASE_DIR\6-Web开发基础\6.6-模板引擎\6.6.2-EJS模板\README.md" << 'EOF'
---
title: EJS模板
icon: file-code
order: 2
---

# EJS模板

EJS使用<% %>嵌入JavaScript，支持条件判断、循环等逻辑。简单易学，类似PHP/ASP语法，缓存编译后模板提升性能。适合需要少量逻辑的HTML生成场景。
EOF

# 创建6.6.3 Pug模板
mkdir -p "$BASE_DIR\6-Web开发基础\6.6-模板引擎\6.6.3-Pug模板"
cat > "$BASE_DIR\6-Web开发基础\6.6-模板引擎\6.6.3-Pug模板\README.md" << 'EOF'
---
title: Pug模板
icon: indent
order: 3
---

# Pug模板

Pug(Jade)采用缩进语法，减少标签字符量。支持混合继承、包含等高级功能，编译为高效JS函数。学习曲线较陡但开发效率高，适合大型项目模板组织。
EOF

# 创建6.6.4 Handlebars模板
mkdir -p "$BASE_DIR\6-Web开发基础\6.6-模板引擎\6.6.4-Handlebars模板"
cat > "$BASE_DIR\6-Web开发基础\6.6-模板引擎\6.6.4-Handlebars模板\README.md" << 'EOF'
---
title: Handlebars模板
icon: braces
order: 4
---

# Handlebars模板

Handlebars强调逻辑与模板分离，使用{{}}插值表达式。支持预编译、助手函数和局部模板，安全性高。适合内容型应用，与前端框架配合良好。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建6.7 Cookie与Session目录
mkdir -p "$BASE_DIR\6-Web开发基础\6.7-Cookie与Session"
cat > "$BASE_DIR\6-Web开发基础\6.7-Cookie与Session\README.md" << 'EOF'
---
title: Cookie与Session
icon: user-shield
order: 7
---

# Cookie与Session

Cookie和Session是Web应用中维护用户状态的两种主要方式。Cookie存储在客户端，Session存储在服务端，两者配合实现用户身份识别和个性化体验。
EOF

# 创建6.7.1 Cookie管理
mkdir -p "$BASE_DIR\6-Web开发基础\6.7-Cookie与Session\6.7.1-Cookie管理"
cat > "$BASE_DIR\6-Web开发基础\6.7-Cookie与Session\6.7.1-Cookie管理\README.md" << 'EOF'
---
title: Cookie管理
icon: cookie
order: 1
---

# Cookie管理

通过Set-Cookie响应头设置Cookie，可配置过期时间、域名、路径等属性。cookie-parser中间件简化操作，注意HttpOnly/Secure标记增强安全性，限制大小避免性能问题。
EOF

# 创建6.7.2 Session实现
mkdir -p "$BASE_DIR\6-Web开发基础\6.7-Cookie与Session\6.7.2-Session实现"
cat > "$BASE_DIR\6-Web开发基础\6.7-Cookie与Session\6.7.2-Session实现\README.md" << 'EOF'
---
title: Session实现
icon: id-card
order: 2
---

# Session实现

express-session中间件实现Session管理，默认内存存储。Session ID通过Cookie传递，服务端存储用户数据。注意配置密钥防止篡改，生产环境应使用Redis等持久化存储。
EOF

# 创建6.7.3 会话存储
mkdir -p "$BASE_DIR\6-Web开发基础\6.7-Cookie与Session\6.7.3-会话存储"
cat > "$BASE_DIR\6-Web开发基础\6.7-Cookie与Session\6.7.3-会话存储\README.md" << 'EOF'
---
title: 会话存储
icon: database
order: 3
---

# 会话存储

内存存储仅适合开发环境，生产环境需使用Redis/MongoDB等。connect-redis提供Redis会话存储，支持集群和过期自动清理。注意会话数据不宜过大，定期清理过期会话。
EOF

# 创建6.8 身份验证目录
mkdir -p "$BASE_DIR\6-Web开发基础\6.8-身份验证"
cat > "$BASE_DIR\6-Web开发基础\6.8-身份验证\README.md" << 'EOF'
---
title: 身份验证
icon: fingerprint
order: 8
---

# 身份验证

身份验证是Web应用安全的基础，确保用户身份真实可信。本章介绍主流认证方案，从基础认证到现代JWT，帮助开发者选择适合的认证策略。
EOF

# 创建6.8.1 基本认证
mkdir -p "$BASE_DIR\6-Web开发基础\6.8-身份验证\6.8.1-基本认证"
cat > "$BASE_DIR\6-Web开发基础\6.8-身份验证\6.8.1-基本认证\README.md" << 'EOF'
---
title: 基本认证
icon: lock-open
order: 1
---

# 基本认证

HTTP Basic认证通过Authorization头传输Base64编码的凭证，简单但不安全。适合内部工具或配合HTTPS使用，需自行实现用户验证逻辑，不建议生产环境单独使用。
EOF

# 创建6.8.2 Session认证
mkdir -p "$BASE_DIR\6-Web开发基础\6.8-身份验证\6.8.2-Session认证"
cat > "$BASE_DIR\6-Web开发基础\6.8-身份验证\6.8.2-Session认证\README.md" << 'EOF'
---
title: Session认证
icon: user-lock
order: 2
---

# Session认证

基于Session的认证是传统Web应用主流方案。用户登录后创建会话，后续请求通过Cookie携带Session ID。需防范CSRF攻击，配置合理过期时间，实现注销功能。
EOF

# 创建6.8.3 JWT认证
mkdir -p "$BASE_DIR\6-Web开发基础\6.8-身份验证\6.8.3-JWT认证"
cat > "$BASE_DIR\6-Web开发基础\6.8-身份验证\6.8.3-JWT认证\README.md" << 'EOF'
---
title: JWT认证
icon: key
order: 3
---

# JWT认证

JWT(JSON Web Token)是无状态认证方案，包含签名信息的JSON令牌。适合前后端分离应用，jsonwebtoken库实现签发验证，注意密钥保护和令牌刷新机制。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建6.8.4 OAuth集成
mkdir -p "$BASE_DIR\6-Web开发基础\6.8-身份验证\6.8.4-OAuth集成"
cat > "$BASE_DIR\6-Web开发基础\6.8-身份验证\6.8.4-OAuth集成\README.md" << 'EOF'
---
title: OAuth集成
icon: user-check
order: 4
---

# OAuth集成

OAuth2.0是行业标准授权协议，支持第三方登录。使用passport.js实现GitHub/Google等社交登录，处理授权码流程，获取用户基本信息并创建本地账号关联。
EOF

# 创建6.9 中间件模式目录
mkdir -p "$BASE_DIR\6-Web开发基础\6.9-中间件模式"
cat > "$BASE_DIR\6-Web开发基础\6.9-中间件模式\README.md" << 'EOF'
---
title: 中间件模式
icon: code-branch
order: 9
---

# 中间件模式

中间件是Node.js Web开发的核心模式，处理请求/响应管道中的各种横切关注点。本章详解中间件工作原理、实现方式和最佳实践，构建灵活可扩展的应用架构。
EOF

# 创建6.9.1 中间件概念
mkdir -p "$BASE_DIR\6-Web开发基础\6.9-中间件模式\6.9.1-中间件概念"
cat > "$BASE_DIR\6-Web开发基础\6.9-中间件模式\6.9.1-中间件概念\README.md" << 'EOF'
---
title: 中间件概念
icon: puzzle-piece
order: 1
---

# 中间件概念

中间件是接收req/res/next参数的函数，可修改请求对象、返回响应或传递控制权。分为应用级和路由级中间件，实现日志、压缩、验证等通用功能解耦。
EOF

# 创建6.9.2 中间件链
mkdir -p "$BASE_DIR\6-Web开发基础\6.9-中间件模式\6.9.2-中间件链"
cat > "$BASE_DIR\6-Web开发基础\6.9-中间件模式\6.9.2-中间件链\README.md" << 'EOF'
---
title: 中间件链
icon: link
order: 2
---

# 中间件链

中间件按添加顺序执行，next()调用下一个中间件。错误处理中间件需四个参数，异步中间件应返回Promise。组合多个中间件完成复杂处理流程，注意执行顺序影响。
EOF

# 创建6.9.3 常用中间件实现
mkdir -p "$BASE_DIR\6-Web开发基础\6.9-中间件模式\6.9.3-常用中间件实现"
cat > "$BASE_DIR\6-Web开发基础\6.9-中间件模式\6.9.3-常用中间件实现\README.md" << 'EOF'
---
title: 常用中间件实现
icon: cog
order: 3
---

# 常用中间件实现

morgan记录HTTP日志，compression压缩响应体，cors处理跨域请求，helmet设置安全头部。自定义中间件实现业务逻辑，如权限检查、数据预处理等特定需求。
EOF

# 创建6.10 RESTful API设计目录
mkdir -p "$BASE_DIR\6-Web开发基础\6.10-RESTfulAPI设计"
cat > "$BASE_DIR\6-Web开发基础\6.10-RESTfulAPI设计\README.md" << 'EOF'
---
title: RESTful API设计
icon: route
order: 10
---

# RESTful API设计

RESTful API基于资源设计，使用HTTP方法表达操作意图。本章介绍设计原则、版本控制和文档化实践，构建易于理解、扩展和维护的Web API接口规范。
EOF

# 创建6.10.1 REST原则
mkdir -p "$BASE_DIR\6-Web开发基础\6.10-RESTfulAPI设计\6.10.1-REST原则"
cat > "$BASE_DIR\6-Web开发基础\6.10-RESTfulAPI设计\6.10.1-REST原则\README.md" << 'EOF'
---
title: REST原则
icon: check-circle
order: 1
---

# REST原则

REST六大原则：客户端-服务器、无状态、可缓存、统一接口、分层系统、按需代码。资源使用名词复数形式，HTTP方法对应CRUD操作，状态码表达结果语义。
EOF

# 创建6.10.2 API版本控制
mkdir -p "$BASE_DIR\6-Web开发基础\6.10-RESTfulAPI设计\6.10.2-API版本控制"
cat > "$BASE_DIR\6-Web开发基础\6.10-RESTfulAPI设计\6.10.2-API版本控制\README.md" << 'EOF'
---
title: API版本控制
icon: code-branch
order: 2
---

# API版本控制

常见版本控制方式：URL路径(v1/api)、查询参数(?v=1)、请求头(Accept-Version)。语义化版本控制MAJOR.MINOR，维护旧版本兼容性，提供清晰的弃用策略。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建6.10.3 状态码与错误处理
mkdir -p "$BASE_DIR\6-Web开发基础\6.10-RESTfulAPI设计\6.10.3-状态码与错误处理"
cat > "$BASE_DIR\6-Web开发基础\6.10-RESTfulAPI设计\6.10.3-状态码与错误处理\README.md" << 'EOF'
---
title: 状态码与错误处理
icon: exclamation-circle
order: 3
---

# 状态码与错误处理

2xx表示成功，4xx客户端错误，5xx服务端错误。统一错误格式包含code/message/details，使用http-errors库创建标准错误对象，中间件集中处理未捕获异常。
EOF

# 创建6.10.4 API文档生成
mkdir -p "$BASE_DIR\6-Web开发基础\6.10-RESTfulAPI设计\6.10.4-API文档生成"
cat > "$BASE_DIR\6-Web开发基础\6.10-RESTfulAPI设计\6.10.4-API文档生成\README.md" << 'EOF'
---
title: API文档生成
icon: file-alt
order: 4
---

# API文档生成

使用Swagger/OpenAPI规范编写API文档，swagger-jsdoc解析代码注释生成定义。UI界面展示接口详情，支持在线测试。文档与代码同步更新，降低维护成本。
EOF

# 创建第7章 Express框架目录
mkdir -p "$BASE_DIR\7-Express框架"
cat > "$BASE_DIR\7-Express框架\README.md" << 'EOF'
---
title: Express框架
icon: bolt
order: 7
---

# Express框架

Express是Node.js最流行的Web框架，提供路由、中间件等核心功能。本章系统介绍Express的使用方法和原理，从基础到高级特性，掌握高效Web开发的核心技术。
EOF

# 创建7.1 Express简介
mkdir -p "$BASE_DIR\7-Express框架\7.1-Express简介"
cat > "$BASE_DIR\7-Express框架\7.1-Express简介\README.md" << 'EOF'
---
title: Express简介
icon: info-circle
order: 1
---

# Express简介

Express是Node.js的轻量级Web框架，由TJ Holowaychuk创建。基于中间件架构，提供简洁API和丰富插件生态，适合快速构建Web应用和API服务。
EOF

# 创建7.1.1 Express历史与理念
mkdir -p "$BASE_DIR\7-Express框架\7.1-Express简介\7.1.1-Express历史与理念"
cat > "$BASE_DIR\7-Express框架\7.1-Express简介\7.1.1-Express历史与理念\README.md" << 'EOF'
---
title: Express历史与理念
icon: history
order: 1
---

# Express历史与理念

Express诞生于2010年，受Ruby的Sinatra框架启发。核心理念是"小而美"，通过中间件机制实现可扩展性。现由Node.js基金会维护，保持API稳定和向后兼容。
EOF

# 创建7.1.2 安装与基本使用
mkdir -p "$BASE_DIR\7-Express框架\7.1-Express简介\7.1.2-安装与基本使用"
cat > "$BASE_DIR\7-Express框架\7.1-Express简介\7.1.2-安装与基本使用\README.md" << 'EOF'
---
title: 安装与基本使用
icon: download
order: 2
---

# 安装与基本使用

npm install express安装框架，require导入创建应用实例。app.get定义路由，listen启动服务。5行代码即可运行Web服务器，支持热重载开发模式。
EOF

# 创建7.1.3 应用程序生成器
mkdir -p "$BASE_DIR\7-Express框架\7.1-Express简介\7.1.3-应用程序生成器"
cat > "$BASE_DIR\7-Express框架\7.1-Express简介\7.1.3-应用程序生成器\README.md" << 'EOF'
---
title: 应用程序生成器
icon: magic
order: 3
---

# 应用程序生成器

express-generator工具快速创建项目骨架，包含基础目录结构和常用中间件。支持模板引擎配置，生成的路由模块化组织，适合中大型项目初始化。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建7.2 路由系统目录
mkdir -p "$BASE_DIR\7-Express框架\7.2-路由系统"
cat > "$BASE_DIR\7-Express框架\7.2-路由系统\README.md" << 'EOF'
---
title: 路由系统
icon: route
order: 2
---

# 路由系统

Express的路由系统将HTTP方法和URL路径映射到处理函数，支持链式调用和模块化组织。本章详解路由匹配规则、参数获取和模块化拆分技巧，构建可维护的路由结构。
EOF

# 创建7.2.1 基本路由
mkdir -p "$BASE_DIR\7-Express框架\7.2-路由系统\7.2.1-基本路由"
cat > "$BASE_DIR\7-Express框架\7.2-路由系统\7.2.1-基本路由\README.md" << 'EOF'
---
title: 基本路由
icon: code
order: 1
---

# 基本路由

app.METHOD()定义路由，如get/post/put/delete等。路径支持字符串模式和正则表达式，处理函数接收req/res参数。链式调用处理同一路径的不同方法。
EOF

# 创建7.2.2 路由参数
mkdir -p "$BASE_DIR\7-Express框架\7.2-路由系统\7.2.2-路由参数"
cat > "$BASE_DIR\7-Express框架\7.2-路由系统\7.2.2-路由参数\README.md" << 'EOF'
---
title: 路由参数
icon: puzzle-piece
order: 2
---

# 路由参数

路径中使用:name定义参数，通过req.params获取。支持可选参数和正则约束，app.param()实现参数预处理。注意参数编码解码，验证参数合法性保证安全。
EOF

# 创建7.2.3 路由处理器
mkdir -p "$BASE_DIR\7-Express框架\7.2-路由系统\7.2.3-路由处理器"
cat > "$BASE_DIR\7-Express框架\7.2-路由系统\7.2.3-路由处理器\README.md" << 'EOF'
---
title: 路由处理器
icon: cog
order: 3
---

# 路由处理器

路由处理函数可接受多个回调，通过next传递控制权。使用try-catch处理异步错误，模块化业务逻辑。响应方法如res.json()/res.send()简化输出。
EOF

# 创建7.2.4 路由模块化
mkdir -p "$BASE_DIR\7-Express框架\7.2-路由系统\7.2.4-路由模块化"
cat > "$BASE_DIR\7-Express框架\7.2-路由系统\7.2.4-路由模块化\README.md" << 'EOF'
---
title: 路由模块化
icon: project-diagram
order: 4
---

# 路由模块化

express.Router()创建独立路由实例，导出后通过app.use()挂载。支持路径前缀和中间件隔离，按功能或资源拆分路由，保持代码结构清晰。
EOF

# 创建7.3 中间件目录
mkdir -p "$BASE_DIR\7-Express框架\7.3-中间件"
cat > "$BASE_DIR\7-Express框架\7.3-中间件\README.md" << 'EOF'
---
title: 中间件
icon: layer-group
order: 3
---

# 中间件

Express中间件是处理请求/响应的函数管道，可访问修改req/res对象。本章介绍内置和第三方中间件使用，以及自定义中间件开发，实现功能解耦。
EOF

# 创建7.3.1 内置中间件
mkdir -p "$BASE_DIR\7-Express框架\7.3-中间件\7.3.1-内置中间件"
cat > "$BASE_DIR\7-Express框架\7.3-中间件\7.3.1-内置中间件\README.md" << 'EOF'
---
title: 内置中间件
icon: cube
order: 1
---

# 内置中间件

express.json()解析JSON请求体，express.urlencoded()处理表单数据，express.static()托管静态文件。express.Router()实现路由中间件，按需组合使用。
EOF

# 创建7.3.2 第三方中间件
mkdir -p "$BASE_DIR\7-Express框架\7.3-中间件\7.3.2-第三方中间件"
cat > "$BASE_DIR\7-Express框架\7.3-中间件\7.3.2-第三方中间件\README.md" << 'EOF'
---
title: 第三方中间件
icon: puzzle-piece
order: 2
---

# 第三方中间件

morgan记录访问日志，compression压缩响应，cors处理跨域，helmet增强安全。中间件通过app.use()加载，注意安装顺序影响处理流程。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建7.3.3 自定义中间件
mkdir -p "$BASE_DIR\7-Express框架\7.3-中间件\7.3.3-自定义中间件"
cat > "$BASE_DIR\7-Express框架\7.3-中间件\7.3.3-自定义中间件\README.md" << 'EOF'
---
title: 自定义中间件
icon: code
order: 3
---

# 自定义中间件

自定义中间件函数接收req/res/next参数，可修改请求对象或提前返回响应。实现业务逻辑复用，如权限验证、数据预处理等，注意错误处理和异步支持。
EOF

# 创建7.3.4 错误处理中间件
mkdir -p "$BASE_DIR\7-Express框架\7.3-中间件\7.3.4-错误处理中间件"
cat > "$BASE_DIR\7-Express框架\7.3-中间件\7.3.4-错误处理中间件\README.md" << 'EOF'
---
title: 错误处理中间件
icon: exclamation-triangle
order: 4
---

# 错误处理中间件

错误处理中间件需四个参数(err,req,res,next)，捕获同步/异步错误。集中处理各类异常，记录错误日志，返回统一格式的错误响应，增强应用健壮性。
EOF

# 创建7.4 请求与响应对象目录
mkdir -p "$BASE_DIR\7-Express框架\7.4-请求与响应对象"
cat > "$BASE_DIR\7-Express框架\7.4-请求与响应对象\README.md" << 'EOF'
---
title: 请求与响应对象
icon: exchange-alt
order: 4
---

# 请求与响应对象

Express扩展了Node.js原生req/res对象，提供更便捷的API。本章详解常用属性和方法，掌握请求数据获取和响应控制的技巧，优化请求处理流程。
EOF

# 创建7.4.1 请求对象属性与方法
mkdir -p "$BASE_DIR\7-Express框架\7.4-请求与响应对象\7.4.1-请求对象属性与方法"
cat > "$BASE_DIR\7-Express框架\7.4-请求与响应对象\7.4.1-请求对象属性与方法\README.md" << 'EOF'
---
title: 请求对象属性与方法
icon: search
order: 1
---

# 请求对象属性与方法

req.params获取路由参数，req.query解析查询字符串，req.body读取请求体。req.ip获取客户端IP，req.xhr判断AJAX请求，req.get()读取特定请求头。
EOF

# 创建7.4.2 响应对象属性与方法
mkdir -p "$BASE_DIR\7-Express框架\7.4-请求与响应对象\7.4.2-响应对象属性与方法"
cat > "$BASE_DIR\7-Express框架\7.4-请求与响应对象\7.4.2-响应对象属性与方法\README.md" << 'EOF'
---
title: 响应对象属性与方法
icon: reply
order: 2
---

# 响应对象属性与方法

res.status()设置状态码，res.set()配置响应头，res.cookie()管理Cookie。res.json()发送JSON响应，res.send()自动推断类型，res.redirect()重定向。
EOF

# 创建7.4.3 请求-响应周期
mkdir -p "$BASE_DIR\7-Express框架\7.4-请求与响应对象\7.4.3-请求-响应周期"
cat > "$BASE_DIR\7-Express框架\7.4-请求与响应对象\7.4.3-请求-响应周期\README.md" << 'EOF'
---
title: 请求-响应周期
icon: sync-alt
order: 3
---

# 请求-响应周期

从请求到达至响应返回的完整流程：中间件处理、路由匹配、业务逻辑执行、响应生成。理解生命周期有助于调试和优化，避免常见陷阱如多次响应。
EOF

# 创建7.5 错误处理目录
mkdir -p "$BASE_DIR\7-Express框架\7.5-错误处理"
cat > "$BASE_DIR\7-Express框架\7.5-错误处理\README.md" << 'EOF'
---
title: 错误处理
icon: bug
order: 5
---

# 错误处理

Express应用需要妥善处理各类错误，包括同步异常、异步错误和拒绝的Promise。本章介绍错误捕获和处理的策略，构建稳定可靠的Web应用。
EOF

# 创建7.5.1 同步错误处理
mkdir -p "$BASE_DIR\7-Express框架\7.5-错误处理\7.5.1-同步错误处理"
cat > "$BASE_DIR\7-Express框架\7.5-错误处理\7.5.1-同步错误处理\README.md" << 'EOF'
---
title: 同步错误处理
icon: shield-alt
order: 1
---

# 同步错误处理

同步代码中的错误会被Express自动捕获，传递到错误处理中间件。使用try-catch处理可能抛出异常的代码，结合自定义错误类实现精细化的错误分类和处理。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建7.5.2 异步错误处理
mkdir -p "$BASE_DIR\7-Express框架\7.5-错误处理\7.5.2-异步错误处理"
cat > "$BASE_DIR\7-Express框架\7.5-错误处理\7.5.2-异步错误处理\README.md" << 'EOF'
---
title: 异步错误处理
icon: sync
order: 2
---

# 异步错误处理

异步操作需显式捕获错误并调用next(err)。Promise使用.catch(next)，async/await用try-catch包裹。错误冒泡机制确保最终由错误处理中间件统一处理。
EOF

# 创建7.5.3 集中式错误处理
mkdir -p "$BASE_DIR\7-Express框架\7.5-错误处理\7.5.3-集中式错误处理"
cat > "$BASE_DIR\7-Express框架\7.5-错误处理\7.5.3-集中式错误处理\README.md" << 'EOF'
---
title: 集中式错误处理
icon: shield-alt
order: 3
---

# 集中式错误处理

定义错误处理中间件作为最后防线，格式化错误响应。区分开发/生产环境显示不同错误详情，记录错误日志，监控系统集成报警机制。
EOF

# 创建7.6 视图与模板目录
mkdir -p "$BASE_DIR\7-Express框架\7.6-视图与模板"
cat > "$BASE_DIR\7-Express框架\7.6-视图与模板\README.md" << 'EOF'
---
title: 视图与模板
icon: file-code
order: 6
---

# 视图与模板

Express支持多种模板引擎渲染动态视图。本章介绍模板配置、数据绑定和布局复用技巧，实现服务端渲染(SSR)和前后端分离的视图层解决方案。
EOF

# 创建7.6.1 模板引擎配置
mkdir -p "$BASE_DIR\7-Express框架\7.6-视图与模板\7.6.1-模板引擎配置"
cat > "$BASE_DIR\7-Express框架\7.6-视图与模板\7.6.1-模板引擎配置\README.md" << 'EOF'
---
title: 模板引擎配置
icon: cog
order: 1
---

# 模板引擎配置

app.set('views')设置模板目录，app.set('view engine')指定引擎如ejs/pug。配置模板缓存策略，开发时禁用缓存便于调试，生产环境启用提升性能。
EOF

# 创建7.6.2 视图渲染
mkdir -p "$BASE_DIR\7-Express框架\7.6-视图与模板\7.6.2-视图渲染"
cat > "$BASE_DIR\7-Express框架\7.6-视图与模板\7.6.2-视图渲染\README.md" << 'EOF'
---
title: 视图渲染
icon: magic
order: 2
---

# 视图渲染

res.render()渲染模板并发送HTML响应，第二个参数传递模板变量。支持局部模板和动态布局，错误处理中可渲染错误页面，保持UI一致性。
EOF

# 创建7.6.3 布局与片段
mkdir -p "$BASE_DIR\7-Express框架\7.6-视图与模板\7.6.3-布局与片段"
cat > "$BASE_DIR\7-Express框架\7.6-视图与模板\7.6.3-布局与片段\README.md" << 'EOF'
---
title: 布局与片段
icon: puzzle-piece
order: 3
---

# 布局与片段

模板继承实现布局复用，定义可替换块(block)。include引入公共组件如页头页脚，宏(macro)封装可重用UI逻辑，减少代码重复。
EOF

# 创建7.7 静态资源目录
mkdir -p "$BASE_DIR\7-Express框架\7.7-静态资源"
cat > "$BASE_DIR\7-Express框架\7.7-静态资源\README.md" << 'EOF'
---
title: 静态资源
icon: file-image
order: 7
---

# 静态资源

静态资源如CSS/JS/图片等需要高效安全地提供服务。本章介绍Express静态文件中间件配置、缓存控制和CDN集成，优化前端资源加载性能。
EOF

# 创建7.7.1 静态文件中间件
mkdir -p "$BASE_DIR\7-Express框架\7.7-静态资源\7.7.1-静态文件中间件"
cat > "$BASE_DIR\7-Express框架\7.7-静态资源\7.7.1-静态文件中间件\README.md" << 'EOF'
---
title: 静态文件中间件
icon: server
order: 1
---

# 静态文件中间件

express.static()托管静态文件，配置缓存头(maxAge)和压缩。多目录挂载支持，设置虚拟路径前缀，生产环境建议使用CDN分担流量压力。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建7.7.2 多目录静态文件
mkdir -p "$BASE_DIR\7-Express框架\7.7-静态资源\7.7.2-多目录静态文件"
cat > "$BASE_DIR\7-Express框架\7.7-静态资源\7.7.2-多目录静态文件\README.md" << 'EOF'
---
title: 多目录静态文件
icon: folder-open
order: 2
---

# 多目录静态文件

多次调用express.static()挂载不同物理目录，按优先级查找资源。区分公共资源和用户上传文件目录，设置不同缓存策略，注意文件系统权限控制。
EOF

# 创建7.7.3 虚拟路径前缀
mkdir -p "$BASE_DIR\7-Express框架\7.7-静态资源\7.7.3-虚拟路径前缀"
cat > "$BASE_DIR\7-Express框架\7.7-静态资源\7.7.3-虚拟路径前缀\README.md" << 'EOF'
---
title: 虚拟路径前缀
icon: link
order: 3
---

# 虚拟路径前缀

express.static()第一个参数指定虚拟路径如'/static'，隐藏真实目录结构。配合Nginx反向代理时需保持配置一致，避免路径冲突导致404错误。
EOF

# 创建7.8 文件上传目录
mkdir -p "$BASE_DIR\7-Express框架\7.8-文件上传"
cat > "$BASE_DIR\7-Express框架\7.8-文件上传\README.md" << 'EOF'
---
title: 文件上传
icon: upload
order: 8
---

# 文件上传

Web应用常需要处理文件上传需求。本章介绍multer中间件的使用、文件存储策略和安全验证，实现可靠的文件上传功能，防范常见安全风险。
EOF

# 创建7.8.1 multer中间件
mkdir -p "$BASE_DIR\7-Express框架\7.8-文件上传\7.8.1-multer中间件"
cat > "$BASE_DIR\7-Express框架\7.8-文件上传\7.8.1-multer中间件\README.md" << 'EOF'
---
title: multer中间件
icon: cloud-upload-alt
order: 1
---

# multer中间件

multer处理multipart/form-data格式，配置存储引擎和文件过滤器。single()处理单个文件，array()多文件，fields()混合上传，注意内存存储限制。
EOF

# 创建7.8.2 文件存储策略
mkdir -p "$BASE_DIR\7-Express框架\7.8-文件上传\7.8.2-文件存储策略"
cat > "$BASE_DIR\7-Express框架\7.8-文件上传\7.8.2-文件存储策略\README.md" << 'EOF'
---
title: 文件存储策略
icon: database
order: 2
---

# 文件存储策略

磁盘存储需管理上传目录，云存储对接AWS S3等服务。文件名生成策略(原始名/hash)，目录按日期/用户分类，定期清理临时文件，考虑分布式存储方案。
EOF

# 创建7.8.3 文件验证与限制
mkdir -p "$BASE_DIR\7-Express框架\7.8-文件上传\7.8.3-文件验证与限制"
cat > "$BASE_DIR\7-Express框架\7.8-文件上传\7.8.3-文件验证与限制\README.md" << 'EOF'
---
title: 文件验证与限制
icon: shield-alt
order: 3
---

# 文件验证与限制

限制文件类型(白名单)、大小和数量，检测文件魔数防伪装。病毒扫描集成，图片压缩处理，前端后端双重验证，防范恶意上传耗尽存储。
EOF

# 创建7.9 会话管理目录
mkdir -p "$BASE_DIR\7-Express框架\7.9-会话管理"
cat > "$BASE_DIR\7-Express框架\7.9-会话管理\README.md" << 'EOF'
---
title: 会话管理
icon: user-clock
order: 9
---

# 会话管理

HTTP无状态协议需要会话机制维持用户状态。本章介绍express-session中间件的配置和使用，实现用户认证和个性化体验，注意会话安全防护。
EOF

# 创建7.9.1 express-session
mkdir -p "$BASE_DIR\7-Express框架\7.9-会话管理\7.9.1-express-session"
cat > "$BASE_DIR\7-Express框架\7.9-会话管理\7.9.1-express-session\README.md" << 'EOF'
---
title: express-session
icon: id-card
order: 1
---

# express-session

express-session创建服务端会话，默认内存存储。配置cookie属性(secure/httpOnly)，生产环境使用Redis等持久化存储，定期清理过期会话数据。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建7.9.2 会话存储选项
mkdir -p "$BASE_DIR\7-Express框架\7.9-会话管理\7.9.2-会话存储选项"
cat > "$BASE_DIR\7-Express框架\7.9-会话管理\7.9.2-会话存储选项\README.md" << 'EOF'
---
title: 会话存储选项
icon: database
order: 2
---

# 会话存储选项

内存存储仅适合开发，生产环境需Redis/MongoDB等持久化方案。connect-redis实现Redis存储，配置连接池和TTL，集群环境确保会话同步，定期清理过期数据。
EOF

# 创建7.9.3 会话安全
mkdir -p "$BASE_DIR\7-Express框架\7.9-会话管理\7.9.3-会话安全"
cat > "$BASE_DIR\7-Express框架\7.9-会话管理\7.9.3-会话安全\README.md" << 'EOF'
---
title: 会话安全
icon: shield-alt
order: 3
---

# 会话安全

配置secure标记强制HTTPS，httpOnly防止XSS，sameSite限制CSRF。定期更换会话密钥，设置合理过期时间，实现主动注销功能，监控异常会话活动。
EOF

# 创建7.10 安全最佳实践目录
mkdir -p "$BASE_DIR\7-Express框架\7.10-安全最佳实践"
cat > "$BASE_DIR\7-Express框架\7.10-安全最佳实践\README.md" << 'EOF'
---
title: 安全最佳实践
icon: lock
order: 10
---

# 安全最佳实践

Web应用面临多种安全威胁，需实施纵深防御。本章介绍Express应用的安全加固措施，从常见漏洞防护到运维安全，构建可信赖的Web服务。
EOF

# 创建7.10.1 Helmet中间件
mkdir -p "$BASE_DIR\7-Express框架\7.10-安全最佳实践\7.10.1-Helmet中间件"
cat > "$BASE_DIR\7-Express框架\7.10-安全最佳实践\7.10.1-Helmet中间件\README.md" << 'EOF'
---
title: Helmet中间件
icon: helmet-safety
order: 1
---

# Helmet中间件

Helmet通过设置安全HTTP头防护常见攻击：CSP内容安全策略，XSS过滤，禁用MIME嗅探等。按需配置各子中间件，测试环境可暂时禁用某些严格策略。
EOF

# 创建7.10.2 CSRF防护
mkdir -p "$BASE_DIR\7-Express框架\7.10-安全最佳实践\7.10.2-CSRF防护"
cat > "$BASE_DIR\7-Express框架\7.10-安全最佳实践\7.10.2-CSRF防护\README.md" << 'EOF'
---
title: CSRF防护
icon: user-shield
order: 2
---

# CSRF防护

csurf中间件生成并验证令牌，配合sameSite Cookie使用。表单隐藏字段或自定义头传递令牌，AJAX请求需额外处理，注意排除公共API接口。
EOF

# 创建7.10.3 速率限制
mkdir -p "$BASE_DIR\7-Express框架\7.10-安全最佳实践\7.10.3-速率限制"
cat > "$BASE_DIR\7-Express框架\7.10-安全最佳实践\7.10.3-速率限制\README.md" << 'EOF'
---
title: 速率限制
icon: tachometer-alt
order: 3
---

# 速率限制

express-rate-limit防止暴力破解和DDoS，配置窗口期和最大请求数。按路由差异化设置，关键接口严格限制，配合Nginx层全局限流，记录异常请求。
EOF

# 创建7.10.4 安全HTTP头
mkdir -p "$BASE_DIR\7-Express框架\7.10-安全最佳实践\7.10.4-安全HTTP头"
cat > "$BASE_DIR\7-Express框架\7.10-安全最佳实践\7.10.4-安全HTTP头\README.md" << 'EOF'
---
title: 安全HTTP头
icon: heading
order: 4
---

# 安全HTTP头

手动设置安全响应头：X-Frame-Options防点击劫持，X-Content-Type-Options防MIME混淆，Referrer-Policy控制来源泄露，Feature-Policy限制浏览器特性访问。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建第8章 数据库集成目录
mkdir -p "$BASE_DIR\8-数据库集成"
cat > "$BASE_DIR\8-数据库集成\README.md" << 'EOF'
---
title: 数据库集成
icon: database
order: 8
---

# 数据库集成

Node.js应用需要与各类数据库交互存储数据。本章介绍主流关系型和NoSQL数据库的集成方案，从驱动配置到ORM使用，实现高效安全的数据持久化。
EOF

# 创建8.1 关系型数据库目录
mkdir -p "$BASE_DIR\8-数据库集成\8.1-关系型数据库"
cat > "$BASE_DIR\8-数据库集成\8.1-关系型数据库\README.md" << 'EOF'
---
title: 关系型数据库
icon: table
order: 1
---

# 关系型数据库

关系型数据库以表格形式存储结构化数据，支持ACID事务。本章介绍MySQL、PostgreSQL等数据库的Node.js驱动配置和基本CRUD操作，构建可靠的数据层。
EOF

# 创建8.1.1 MySQL集成
mkdir -p "$BASE_DIR\8-数据库集成\8.1-关系型数据库\8.1.1-MySQL集成"
cat > "$BASE_DIR\8-数据库集成\8.1-关系型数据库\8.1.1-MySQL集成\README.md" << 'EOF'
---
title: MySQL集成
icon: mysql
order: 1
---

# MySQL集成

mysql2驱动连接MySQL数据库，配置连接池提升性能。预处理语句防SQL注入，事务处理保证数据一致性，结合ORM如Sequelize简化复杂查询。
EOF

# 创建8.1.2 PostgreSQL集成
mkdir -p "$BASE_DIR\8-数据库集成\8.1-关系型数据库\8.1.2-PostgreSQL集成"
cat > "$BASE_DIR\8-数据库集成\8.1-关系型数据库\8.1.2-PostgreSQL集成\README.md" << 'EOF'
---
title: PostgreSQL集成
icon: postgresql
order: 2
---

# PostgreSQL集成

pg模块连接PostgreSQL，支持Promise接口。利用JSONB类型存储半结构化数据，窗口函数实现复杂分析，pg-promise简化异步操作。
EOF

# 创建8.1.3 SQLite集成
mkdir -p "$BASE_DIR\8-数据库集成\8.1-关系型数据库\8.1.3-SQLite集成"
cat > "$BASE_DIR\8-数据库集成\8.1-关系型数据库\8.1.3-SQLite集成\README.md" << 'EOF'
---
title: SQLite集成
icon: database
order: 3
---

# SQLite集成

sqlite3模块操作本地SQLite文件数据库，无需服务进程。适合小型应用和开发测试，注意并发写入限制，结合Knex.js构建查询构建器。
EOF

# 创建8.2 NoSQL数据库目录
mkdir -p "$BASE_DIR\8-数据库集成\8.2-NoSQL数据库"
cat > "$BASE_DIR\8-数据库集成\8.2-NoSQL数据库\README.md" << 'EOF'
---
title: NoSQL数据库
icon: server
order: 2
---

# NoSQL数据库

NoSQL数据库提供灵活的数据模型和水平扩展能力。本章介绍文档型MongoDB和键值存储Redis的集成方案，处理非结构化数据和高性能缓存。
EOF

# 创建8.2.1 MongoDB集成
mkdir -p "$BASE_DIR\8-数据库集成\8.2-NoSQL数据库\8.2.1-MongoDB集成"
cat > "$BASE_DIR\8-数据库集成\8.2-NoSQL数据库\8.2.1-MongoDB集成\README.md" << 'EOF'
---
title: MongoDB集成
icon: mongodb
order: 1
---

# MongoDB集成

mongodb驱动或mongoose ODM连接MongoDB，定义Schema验证数据。利用聚合管道处理复杂查询，副本集配置保证高可用，合理设计文档结构提升性能。
EOF

# 创建8.2.2 Redis集成
mkdir -p "$BASE_DIR\8-数据库集成\8.2-NoSQL数据库\8.2.2-Redis集成"
cat > "$BASE_DIR\8-数据库集成\8.2-NoSQL数据库\8.2.2-Redis集成\README.md" << 'EOF'
---
title: Redis集成
icon: redis
order: 2
---

# Redis集成

ioredis连接Redis服务器，支持集群和哨兵模式。实现缓存加速、会话存储和消息队列，利用数据结构如Hash/SortedSet解决特定场景问题。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建8.3 ORM与ODM目录
mkdir -p "$BASE_DIR\8-数据库集成\8.3-ORM与ODM"
cat > "$BASE_DIR\8-数据库集成\8.3-ORM与ODM\README.md" << 'EOF'
---
title: ORM与ODM
icon: layer-group
order: 3
---

# ORM与ODM

对象关系映射(ORM)和对象文档映射(ODM)工具简化数据库操作。本章介绍主流Node.js ORM/ODM框架的使用，通过面向对象方式操作数据库，提高开发效率。
EOF

# 创建8.3.1 Sequelize
mkdir -p "$BASE_DIR\8-数据库集成\8.3-ORM与ODM\8.3.1-Sequelize"
cat > "$BASE_DIR\8-数据库集成\8.3-ORM与ODM\8.3.1-Sequelize\README.md" << 'EOF'
---
title: Sequelize
icon: database
order: 1
---

# Sequelize

Sequelize支持PostgreSQL/MySQL等关系型数据库。定义模型关联，使用Promise链式查询，事务管理保证数据一致性，钩子函数实现业务逻辑。
EOF

# 创建8.3.2 Mongoose
mkdir -p "$BASE_DIR\8-数据库集成\8.3-ORM与ODM\8.3.2-Mongoose"
cat > "$BASE_DIR\8-数据库集成\8.3-ORM与ODM\8.3.2-Mongoose\README.md" << 'EOF'
---
title: Mongoose
icon: leaf
order: 2
---

# Mongoose

Mongoose是MongoDB的ODM工具。Schema定义文档结构，中间件处理保存逻辑，Population实现文档引用，内置验证器和类型转换简化数据处理。
EOF

# 创建8.3.3 TypeORM
mkdir -p "$BASE_DIR\8-数据库集成\8.3-ORM与ODM\8.3.3-TypeORM"
cat > "$BASE_DIR\8-数据库集成\8.3-ORM与ODM\8.3.3-TypeORM\README.md" << 'EOF'
---
title: TypeORM
icon: type
order: 3
---

# TypeORM

TypeORM支持TypeScript和JavaScript。装饰器定义实体，Active Record和Data Mapper模式，跨数据库支持，迁移管理数据库变更，适合大型项目。
EOF

# 创建8.3.4 Prisma
mkdir -p "$BASE_DIR\8-数据库集成\8.3-ORM与ODM\8.3.4-Prisma"
cat > "$BASE_DIR\8-数据库集成\8.3-ORM与ODM\8.3.4-Prisma\README.md" << 'EOF'
---
title: Prisma
icon: cube
order: 4
---

# Prisma

Prisma是新一代ORM工具。Schema定义数据模型，类型安全的客户端，直观的数据浏览器，支持关系型和文档型数据库，简化复杂查询构建。
EOF

# 创建8.4 数据库连接池目录
mkdir -p "$BASE_DIR\8-数据库集成\8.4-数据库连接池"
cat > "$BASE_DIR\8-数据库集成\8.4-数据库连接池\README.md" << 'EOF'
---
title: 数据库连接池
icon: project-diagram
order: 4
---

# 数据库连接池

连接池管理数据库连接复用，提升应用性能。本章介绍连接池配置参数、连接生命周期管理和监控，优化数据库资源使用，避免连接泄漏。
EOF

# 创建8.4.1 连接池配置
mkdir -p "$BASE_DIR\8-数据库集成\8.4-数据库连接池\8.4.1-连接池配置"
cat > "$BASE_DIR\8-数据库集成\8.4-数据库连接池\8.4.1-连接池配置\README.md" << 'EOF'
---
title: 连接池配置
icon: cog
order: 1
---

# 连接池配置

配置最大/最小连接数，连接超时时间，空闲连接回收策略。不同环境差异化设置，开发环境减少连接数，生产环境根据负载动态调整参数。
EOF

# 创建8.4.2 连接管理
mkdir -p "$BASE_DIR\8-数据库集成\8.4-数据库连接池\8.4.2-连接管理"
cat > "$BASE_DIR\8-数据库集成\8.4-数据库连接池\8.4.2-连接管理\README.md" << 'EOF'
---
title: 连接管理
icon: sync-alt
order: 2
---

# 连接管理

连接获取和释放的最佳实践，错误重试机制，连接健康检查。监控连接池状态，日志记录异常情况，实现优雅关闭释放所有连接。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建8.5 事务处理目录
mkdir -p "$BASE_DIR\8-数据库集成\8.5-事务处理"
cat > "$BASE_DIR\8-数据库集成\8.5-事务处理\README.md" << 'EOF'
---
title: 事务处理
icon: exchange-alt
order: 5
---

# 事务处理

事务确保数据库操作的原子性和一致性。本章介绍ACID原则、事务实现方式和分布式事务解决方案，处理复杂业务场景下的数据完整性要求。
EOF

# 创建8.5.1 ACID原则
mkdir -p "$BASE_DIR\8-数据库集成\8.5-事务处理\8.5.1-ACID原则"
cat > "$BASE_DIR\8-数据库集成\8.5-事务处理\8.5.1-ACID原则\README.md" << 'EOF'
---
title: ACID原则
icon: atom
order: 1
---

# ACID原则

原子性(Atomicity)、一致性(Consistency)、隔离性(Isolation)、持久性(Durability)构成事务核心特性。不同隔离级别解决脏读/幻读问题，根据业务需求权衡性能与一致性。
EOF

# 创建8.5.2 事务实现
mkdir -p "$BASE_DIR\8-数据库集成\8.5-事务处理\8.5.2-事务实现"
cat > "$BASE_DIR\8-数据库集成\8.5-事务处理\8.5.2-事务实现\README.md" << 'EOF'
---
title: 事务实现
icon: code
order: 2
---

# 事务实现

BEGIN/COMMIT/ROLLBACK控制事务边界，ORM如Sequelize提供transaction()方法。嵌套事务处理复杂场景，保存点实现部分回滚，超时设置避免长事务阻塞。
EOF

# 创建8.5.3 分布式事务
mkdir -p "$BASE_DIR\8-数据库集成\8.5-事务处理\8.5.3-分布式事务"
cat > "$BASE_DIR\8-数据库集成\8.5-事务处理\8.5.3-分布式事务\README.md" << 'EOF'
---
title: 分布式事务
icon: network-wired
order: 3
---

# 分布式事务

跨服务/数据库的事务采用Saga/TCC等模式。消息队列实现最终一致性，Seata框架协调分布式事务，设计补偿机制处理失败场景，保证系统可用性。
EOF

# 创建8.6 数据库迁移目录
mkdir -p "$BASE_DIR\8-数据库集成\8.6-数据库迁移"
cat > "$BASE_DIR\8-数据库集成\8.6-数据库迁移\README.md" << 'EOF'
---
title: 数据库迁移
icon: truck-loading
order: 6
---

# 数据库迁移

数据库结构变更需要系统化管理。本章介绍迁移工具使用、版本控制策略和种子数据生成，实现安全可靠的数据库演进和团队协作。
EOF

# 创建8.6.1 迁移工具
mkdir -p "$BASE_DIR\8-数据库集成\8.6-数据库迁移\8.6.1-迁移工具"
cat > "$BASE_DIR\8-数据库集成\8.6-数据库迁移\8.6.1-迁移工具\README.md" << 'EOF'
---
title: 迁移工具
icon: tools
order: 1
---

# 迁移工具

Knex.js、TypeORM Migration等工具管理迁移脚本。编写up/down方法实现可逆变更，命令行生成和执行迁移，集成到CI/CD流程实现自动化部署。
EOF

# 创建8.6.2 版本控制
mkdir -p "$BASE_DIR\8-数据库集成\8.6-数据库迁移\8.6.2-版本控制"
cat > "$BASE_DIR\8-数据库集成\8.6-数据库迁移\8.6.2-版本控制\README.md" << 'EOF'
---
title: 版本控制
icon: code-branch
order: 2
---

# 版本控制

迁移文件按时间戳/序列号命名，版本表记录当前状态。团队协作时避免冲突，回滚指定版本恢复状态，生产环境严格测试后执行变更。
EOF

# 创建8.6.3 种子数据
mkdir -p "$BASE_DIR\8-数据库集成\8.6-数据库迁移\8.6.3-种子数据"
cat > "$BASE_DIR\8-数据库集成\8.6-数据库迁移\8.6.3-种子数据\README.md" << 'EOF'
---
title: 种子数据
icon: database
order: 3
---

# 种子数据

种子脚本初始化基础数据如配置/管理员账号。区分开发/测试/生产环境数据，使用Faker生成测试数据，确保数据符合业务规则和约束条件。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建8.7 查询优化目录
mkdir -p "$BASE_DIR\8-数据库集成\8.7-查询优化"
cat > "$BASE_DIR\8-数据库集成\8.7-查询优化\README.md" << 'EOF'
---
title: 查询优化
icon: tachometer-alt
order: 7
---

# 查询优化

数据库查询性能直接影响应用响应速度。本章介绍索引设计、查询分析和常见性能问题解决方案，帮助开发者编写高效的数据库查询语句。
EOF

# 创建8.7.1 索引优化
mkdir -p "$BASE_DIR\8-数据库集成\8.7-查询优化\8.7.1-索引优化"
cat > "$BASE_DIR\8-数据库集成\8.7-查询优化\8.7.1-索引优化\README.md" << 'EOF'
---
title: 索引优化
icon: search-plus
order: 1
---

# 索引优化

合理设计索引加速查询，避免全表扫描。复合索引遵循最左前缀原则，定期分析索引使用情况，删除冗余索引，注意索引维护开销。
EOF

# 创建8.7.2 查询分析
mkdir -p "$BASE_DIR\8-数据库集成\8.7-查询优化\8.7.2-查询分析"
cat > "$BASE_DIR\8-数据库集成\8.7-查询优化\8.7.2-查询分析\README.md" << 'EOF'
---
title: 查询分析
icon: chart-line
order: 2
---

# 查询分析

使用EXPLAIN分析查询执行计划，识别性能瓶颈。ORM生成的SQL需要审查，避免不必要的数据加载，分页查询优化大数据集处理。
EOF

# 创建8.7.3 N+1问题解决
mkdir -p "$BASE_DIR\8-数据库集成\8.7-查询优化\8.7.3-N+1问题解决"
cat > "$BASE_DIR\8-数据库集成\8.7-查询优化\8.7.3-N+1问题解决\README.md" << 'EOF'
---
title: N+1问题解决
icon: sync
order: 3
---

# N+1问题解决

ORM懒加载导致的N+1查询问题。使用预加载(eager loading)或批量查询优化，Dataloader实现请求合并，减少数据库往返次数。
EOF

# 创建第9章 测试与调试目录
mkdir -p "$BASE_DIR\9-测试与调试"
cat > "$BASE_DIR\9-测试与调试\README.md" << 'EOF'
---
title: 测试与调试
icon: vials
order: 9
---

# 测试与调试

完善的测试体系保障代码质量。本章介绍Node.js应用的测试策略和工具链，从单元测试到集成测试，以及调试技巧和性能分析工具。
EOF

# 创建9.1 单元测试目录
mkdir -p "$BASE_DIR\9-测试与调试\9.1-单元测试"
cat > "$BASE_DIR\9-测试与调试\9.1-单元测试\README.md" << 'EOF'
---
title: 单元测试
icon: check-circle
order: 1
---

# 单元测试

单元测试验证独立模块的正确性。本章介绍测试框架使用、测试用例编写和覆盖率统计，构建可靠的测试基础保障代码质量。
EOF

# 创建9.1.1 Jest框架
mkdir -p "$BASE_DIR\9-测试与调试\9.1-单元测试\9.1.1-Jest框架"
cat > "$BASE_DIR\9-测试与调试\9.1-单元测试\9.1.1-Jest框架\README.md" << 'EOF'
---
title: Jest框架
icon: jest
order: 1
---

# Jest框架

Jest是流行的JavaScript测试框架。零配置启动，快照测试验证UI，模拟函数隔离依赖，并行测试提升速度，集成覆盖率报告。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建9.1.2 Mocha与Chai
mkdir -p "$BASE_DIR\9-测试与调试\9.1-单元测试\9.1.2-Mocha与Chai"
cat > "$BASE_DIR\9-测试与调试\9.1-单元测试\9.1.2-Mocha与Chai\README.md" << 'EOF'
---
title: Mocha与Chai
icon: mocha
order: 2
---

# Mocha与Chai

Mocha提供灵活的测试结构，Chai提供多种断言风格。结合sinon进行测试替身，使用nyc生成覆盖率报告，适合需要高度定制化的测试场景。
EOF

# 创建9.1.3 测试驱动开发
mkdir -p "$BASE_DIR\9-测试与调试\9.1-单元测试\9.1.3-测试驱动开发"
cat > "$BASE_DIR\9-测试与调试\9.1-单元测试\9.1.3-测试驱动开发\README.md" << 'EOF'
---
title: 测试驱动开发
icon: tdd
order: 3
---

# 测试驱动开发

TDD遵循红-绿-重构循环。先编写失败测试，实现最小通过代码，持续重构优化。提升代码质量，减少回归缺陷，适合需求明确的核心逻辑开发。
EOF

# 创建9.2 集成测试目录
mkdir -p "$BASE_DIR\9-测试与调试\9.2-集成测试"
cat > "$BASE_DIR\9-测试与调试\9.2-集成测试\README.md" << 'EOF'
---
title: 集成测试
icon: puzzle-piece
order: 2
---

# 集成测试

验证模块间交互和外部依赖。本章介绍API测试、数据库测试和测试环境配置，确保系统各组件协同工作，模拟真实运行环境进行验证。
EOF

# 创建9.2.1 API测试
mkdir -p "$BASE_DIR\9-测试与调试\9.2-集成测试\9.2.1-API测试"
cat > "$BASE_DIR\9-测试与调试\9.2-集成测试\9.2.1-API测试\README.md" << 'EOF'
---
title: API测试
icon: api
order: 1
---

# API测试

supertest测试Express路由，验证状态码和响应体。模拟认证头，测试错误场景，结合OpenAPI规范进行契约测试，确保接口符合设计规范。
EOF

# 创建9.2.2 数据库测试
mkdir -p "$BASE_DIR\9-测试与调试\9.2-集成测试\9.2.2-数据库测试"
cat > "$BASE_DIR\9-测试与调试\9.2-集成测试\9.2.2-数据库测试\README.md" << 'EOF'
---
title: 数据库测试
icon: database
order: 2
---

# 数据库测试

使用内存数据库或测试容器隔离环境。事务回滚保持测试独立性，工厂模式生成测试数据，验证复杂查询和事务逻辑，确保数据持久层正确性。
EOF

# 创建9.2.3 测试环境配置
mkdir -p "$BASE_DIR\9-测试与调试\9.2-集成测试\9.2.3-测试环境配置"
cat > "$BASE_DIR\9-测试与调试\9.2-集成测试\9.2.3-测试环境配置\README.md" << 'EOF'
---
title: 测试环境配置
icon: cog
order: 3
---

# 测试环境配置

dotenv管理环境变量，jest-setup初始化测试上下文。Mock服务替代外部依赖，Docker容器提供隔离环境，确保测试可重复性和一致性。
EOF

# 创建9.3 端到端测试目录
mkdir -p "$BASE_DIR\9-测试与调试\9.3-端到端测试"
cat > "$BASE_DIR\9-测试与调试\9.3-端到端测试\README.md" << 'EOF'
---
title: 端到端测试
icon: e2e
order: 3
---

# 端到端测试

模拟真实用户操作验证完整流程。本章介绍浏览器自动化测试工具，从UI交互到后端验证，确保系统从用户角度满足需求。
EOF

# 创建9.3.1 Cypress
mkdir -p "$BASE_DIR\9-测试与调试\9.3-端到端测试\9.3.1-Cypress"
cat > "$BASE_DIR\9-测试与调试\9.3-端到端测试\9.3.1-Cypress\README.md" << 'EOF'
---
title: Cypress
icon: cypress
order: 1
---

# Cypress

Cypress提供实时重载和时间旅行调试。内置断言和自动等待，支持网络请求控制和截图录制，适合现代Web应用的端到端测试需求。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建9.3.2 Puppeteer
mkdir -p "$BASE_DIR\9-测试与调试\9.3-端到端测试\9.3.2-Puppeteer"
cat > "$BASE_DIR\9-测试与调试\9.3-端到端测试\9.3.2-Puppeteer\README.md" << 'EOF'
---
title: Puppeteer
icon: puppeteer
order: 2
---

# Puppeteer

Puppeteer控制Headless Chrome实现自动化测试。模拟用户交互生成PDF/截图，拦截网络请求测试加载性能，适合需要精细控制浏览器的测试场景。
EOF

# 创建9.3.3 测试场景设计
mkdir -p "$BASE_DIR\9-测试与调试\9.3-端到端测试\9.3.3-测试场景设计"
cat > "$BASE_DIR\9-测试与调试\9.3-端到端测试\9.3.3-测试场景设计\README.md" << 'EOF'
---
title: 测试场景设计
icon: clipboard-list
order: 3
---

# 测试场景设计

基于用户旅程设计测试用例。覆盖关键路径和边界条件，数据驱动测试提高覆盖率，并行执行加速测试，持续集成中运行回归测试保障质量。
EOF

# 创建9.4 测试覆盖率目录
mkdir -p "$BASE_DIR\9-测试与调试\9.4-测试覆盖率"
cat > "$BASE_DIR\9-测试与调试\9.4-测试覆盖率\README.md" << 'EOF'
---
title: 测试覆盖率
icon: chart-pie
order: 4
---

# 测试覆盖率

量化测试完整性评估代码质量。本章介绍覆盖率工具使用、报告分析和目标设定，帮助团队建立科学的测试质量评估体系。
EOF

# 创建9.4.1 覆盖率工具
mkdir -p "$BASE_DIR\9-测试与调试\9.4-测试覆盖率\9.4.1-覆盖率工具"
cat > "$BASE_DIR\9-测试与调试\9.4-测试覆盖率\9.4.1-覆盖率工具\README.md" << 'EOF'
---
title: 覆盖率工具
icon: toolbox
order: 1
---

# 覆盖率工具

Istanbul(nyc)统计语句/分支/函数覆盖率。Jest内置覆盖率报告，V8内置覆盖率支持ES模块，配置阈值确保关键代码充分测试。
EOF

# 创建9.4.2 覆盖率报告
mkdir -p "$BASE_DIR\9-测试与调试\9.4-测试覆盖率\9.4.2-覆盖率报告"
cat > "$BASE_DIR\9-测试与调试\9.4-测试覆盖率\9.4.2-覆盖率报告\README.md" << 'EOF'
---
title: 覆盖率报告
icon: file-alt
order: 2
---

# 覆盖率报告

HTML报告可视化覆盖情况，LCOV格式集成CI系统。SonarQube长期跟踪趋势，注释忽略无需覆盖代码，聚焦核心业务逻辑测试。
EOF

# 创建9.4.3 覆盖率目标
mkdir -p "$BASE_DIR\9-测试与调试\9.4-测试覆盖率\9.4.3-覆盖率目标"
cat > "$BASE_DIR\9-测试与调试\9.4-测试覆盖率\9.4.3-覆盖率目标\README.md" << 'EOF'
---
title: 覆盖率目标
icon: bullseye
order: 3
---

# 覆盖率目标

根据项目阶段设定合理目标。核心模块要求100%覆盖，工具类80%以上，UI组件侧重交互测试，避免盲目追求数字忽视测试价值。
EOF

# 创建9.5 模拟与存根目录
mkdir -p "$BASE_DIR\9-测试与调试\9.5-模拟与存根"
cat > "$BASE_DIR\9-测试与调试\9.5-模拟与存根\README.md" << 'EOF'
---
title: 模拟与存根
icon: magic
order: 5
---

# 模拟与存根

测试替身隔离被测对象依赖。本章介绍测试替身类型和使用场景，通过模拟外部依赖行为实现可靠、可重复的单元测试。
EOF

# 创建9.5.1 Sinon.js
mkdir -p "$BASE_DIR\9-测试与调试\9.5-模拟与存根\9.5.1-Sinon.js"
cat > "$BASE_DIR\9-测试与调试\9.5-模拟与存根\9.5.1-Sinon.js\README.md" << 'EOF'
---
title: Sinon.js
icon: sinon
order: 1
---

# Sinon.js

Sinon提供spies/mocks/stubs三种测试替身。模拟定时器测试异步逻辑，伪造HTTP请求测试网络交互，验证函数调用情况确保正确协作。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建9.5.2 模拟外部依赖
mkdir -p "$BASE_DIR\9-测试与调试\9.5-模拟与存根\9.5.2-模拟外部依赖"
cat > "$BASE_DIR\9-测试与调试\9.5-模拟与存根\9.5.2-模拟外部依赖\README.md" << 'EOF'
---
title: 模拟外部依赖
icon: plug
order: 2
---

# 模拟外部依赖

模拟HTTP API/数据库等外部服务。nock拦截HTTP请求，mock-knex模拟Knex查询，隔离测试环境避免对外部系统影响，确保测试稳定性。
EOF

# 创建9.5.3 时间与定时器模拟
mkdir -p "$BASE_DIR\9-测试与调试\9.5-模拟与存根\9.5.3-时间与定时器模拟"
cat > "$BASE_DIR\9-测试与调试\9.5-模拟与存根\9.5.3-时间与定时器模拟\README.md" << 'EOF'
---
title: 时间与定时器模拟
icon: clock
order: 3
---

# 时间与定时器模拟

Sinon模拟setTimeout/Date等时间相关API。快进时间测试定时任务，验证异步逻辑时序，避免测试因等待实际时间而变慢。
EOF

# 创建9.6 调试技术目录
mkdir -p "$BASE_DIR\9-测试与调试\9.6-调试技术"
cat > "$BASE_DIR\9-测试与调试\9.6-调试技术\README.md" << 'EOF'
---
title: 调试技术
icon: bug
order: 6
---

# 调试技术

高效调试是开发必备技能。本章介绍Node.js应用的调试工具和技术，从基础控制台输出到高级性能分析，快速定位和解决问题。
EOF

# 创建9.6.1 控制台调试
mkdir -p "$BASE_DIR\9-测试与调试\9.6-调试技术\9.6.1-控制台调试"
cat > "$BASE_DIR\9-测试与调试\9.6-调试技术\9.6.1-控制台调试\README.md" << 'EOF'
---
title: 控制台调试
icon: terminal
order: 1
---

# 控制台调试

console.log/error等基础输出调试。util.inspect格式化复杂对象，console.trace打印调用栈，彩色输出区分日志级别，适合简单问题定位。
EOF

# 创建9.6.2 调试器使用
mkdir -p "$BASE_DIR\9-测试与调试\9.6-调试技术\9.6.2-调试器使用"
cat > "$BASE_DIR\9-测试与调试\9.6-调试技术\9.6.2-调试器使用\README.md" << 'EOF'
---
title: 调试器使用
icon: code
order: 2
---

# 调试器使用

Chrome DevTools调试Node应用。设置断点检查变量，条件断点过滤场景，step into/out控制执行流，REPL实时执行代码片段。
EOF

# 创建9.6.3 性能分析
mkdir -p "$BASE_DIR\9-测试与调试\9.6-调试技术\9.6.3-性能分析"
cat > "$BASE_DIR\9-测试与调试\9.6-调试技术\9.6.3-性能分析\README.md" << 'EOF'
---
title: 性能分析
icon: tachometer-alt
order: 3
---

# 性能分析

Node内置profiler生成CPU火焰图。clinic.js诊断性能问题，0x可视化分析，定位热点函数和内存瓶颈，优化关键路径性能。
EOF

# 创建9.6.4 内存泄漏检测
mkdir -p "$BASE_DIR\9-测试与调试\9.6-调试技术\9.6.4-内存泄漏检测"
cat > "$BASE_DIR\9-测试与调试\9.6-调试技术\9.6.4-内存泄漏检测\README.md" << 'EOF'
---
title: 内存泄漏检测
icon: memory
order: 4
---

# 内存泄漏检测

heapdump生成内存快照对比分析。Chrome DevTools Memory面板检查对象保留路径，避免闭包/全局变量/定时器导致的内存泄漏问题。
EOF

# 创建9.7 日志管理目录
mkdir -p "$BASE_DIR\9-测试与调试\9.7-日志管理"
cat > "$BASE_DIR\9-测试与调试\9.7-日志管理\README.md" << 'EOF'
---
title: 日志管理
icon: file-alt
order: 7
---

# 日志管理

完善的日志系统帮助问题追踪。本章介绍日志分级、结构化日志和集中式管理，实现生产环境高效日志收集和分析。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建9.7.1 日志级别
mkdir -p "$BASE_DIR\9-测试与调试\9.7-日志管理\9.7.1-日志级别"
cat > "$BASE_DIR\9-测试与调试\9.7-日志管理\9.7.1-日志级别\README.md" << 'EOF'
---
title: 日志级别
icon: signal
order: 1
---

# 日志级别

定义error/warn/info/debug等日志级别。生产环境记录error以上级别，开发环境开启debug日志，动态调整级别无需重启应用。
EOF

# 创建9.7.2 日志框架
mkdir -p "$BASE_DIR\9-测试与调试\9.7-日志管理\9.7.2-日志框架"
cat > "$BASE_DIR\9-测试与调试\9.7-日志管理\9.7.2-日志框架\README.md" << 'EOF'
---
title: 日志框架
icon: box-open
order: 2
---

# 日志框架

winston/pino等日志框架提供丰富功能。多传输器输出到不同目标，自定义格式化器美化输出，子日志器分类管理，结构化日志便于分析。
EOF

# 创建9.7.3 日志轮转
mkdir -p "$BASE_DIR\9-测试与调试\9.7-日志管理\9.7.3-日志轮转"
cat > "$BASE_DIR\9-测试与调试\9.7-日志管理\9.7.3-日志轮转\README.md" << 'EOF'
---
title: 日志轮转
icon: sync
order: 3
---

# 日志轮转

按时间或大小分割日志文件。winston-daily-rotate-file自动归档旧日志，压缩节省空间，保留期限策略清理历史，避免磁盘占满。
EOF

# 创建9.7.4 集中式日志
mkdir -p "$BASE_DIR\9-测试与调试\9.7-日志管理\9.7.4-集中式日志"
cat > "$BASE_DIR\9-测试与调试\9.7-日志管理\9.7.4-集中式日志\README.md" << 'EOF'
---
title: 集中式日志
icon: server
order: 4
---

# 集中式日志

ELK/Graylog等平台收集多节点日志。日志染色追踪请求链路，上下文信息辅助排查，可视化分析日志模式，快速定位异常。
EOF

# 创建9.8 错误监控目录
mkdir -p "$BASE_DIR\9-测试与调试\9.8-错误监控"
cat > "$BASE_DIR\9-测试与调试\9.8-错误监控\README.md" << 'EOF'
---
title: 错误监控
icon: exclamation-triangle
order: 8
---

# 错误监控

实时监控应用异常保障稳定性。本章介绍错误捕获机制、监控工具集成和告警策略，构建完整的应用健康监测体系。
EOF

# 创建9.8.1 错误捕获
mkdir -p "$BASE_DIR\9-测试与调试\9.8-错误监控\9.8.1-错误捕获"
cat > "$BASE_DIR\9-测试与调试\9.8-错误监控\9.8.1-错误捕获\README.md" << 'EOF'
---
title: 错误捕获
icon: bug
order: 1
---

# 错误捕获

process.on捕获未处理异常，domain管理异步错误。Express错误中间件处理HTTP错误，记录完整堆栈和上下文，避免进程崩溃。
EOF

# 创建9.8.2 监控工具
mkdir -p "$BASE_DIR\9-测试与调试\9.8-错误监控\9.8.2-监控工具"
cat > "$BASE_DIR\9-测试与调试\9.8-错误监控\9.8.2-监控工具\README.md" << 'EOF'
---
title: 监控工具
icon: chart-line
order: 2
---

# 监控工具

Sentry/NewRelic等工具实时监控错误。记录错误频率和影响范围，用户行为复现场景，性能指标关联分析，生成诊断报告。
EOF

# 创建9.8.3 告警系统
mkdir -p "$BASE_DIR\9-测试与调试\9.8-错误监控\9.8.3-告警系统"
cat > "$BASE_DIR\9-测试与调试\9.8-错误监控\9.8.3-告警系统\README.md" << 'EOF'
---
title: 告警系统
icon: bell
order: 3
---

# 告警系统

配置错误阈值触发告警。分级通知(邮件/短信/钉钉)，智能降噪避免告警风暴，值班轮岗及时响应，事后复盘改进流程。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建第10章 Node.js 性能优化目录
mkdir -p "$BASE_DIR\10-Node.js性能优化"
cat > "$BASE_DIR\10-Node.js性能优化\README.md" << 'EOF'
---
title: Node.js 性能优化
icon: tachometer-alt
order: 10
---

# Node.js 性能优化

本章将深入探讨Node.js应用的性能优化技巧，从代码层面到架构设计，帮助开发者构建高性能的Node.js应用。
EOF

# 创建10.1 性能指标
mkdir -p "$BASE_DIR\10-Node.js性能优化\10.1-性能指标"
cat > "$BASE_DIR\10-Node.js性能优化\10.1-性能指标\README.md" << 'EOF'
---
title: 性能指标
icon: chart-bar
order: 1
---

# 性能指标

响应时间、吞吐量、并发数是核心指标。使用PerfHooks测量执行时间，process.memoryUsage监控内存，建立性能基线指导优化方向。
EOF

# 创建10.2 代码优化
mkdir -p "$BASE_DIR\10-Node.js性能优化\10.2-代码优化"
cat > "$BASE_DIR\10-Node.js性能优化\10.2-代码优化\README.md" << 'EOF'
---
title: 代码优化
icon: code
order: 2
---

# 代码优化

避免阻塞事件循环，优化热点函数。减少闭包使用，选择高效算法，V8优化模式，基准测试验证改进效果。
EOF

# 创建10.3 内存管理
mkdir -p "$BASE_DIR\10-Node.js性能优化\10.3-内存管理"
cat > "$BASE_DIR\10-Node.js性能优化\10.3-内存管理\README.md" << 'EOF'
---
title: 内存管理
icon: memory
order: 3
---

# 内存管理

控制内存增长，避免泄漏。流处理大文件，对象池复用，Buffer复用，监控堆外内存，垃圾回收调优。
EOF

# 创建10.4 CPU 密集型任务优化
mkdir -p "$BASE_DIR\10-Node.js性能优化\10.4-CPU密集型任务优化"
cat > "$BASE_DIR\10-Node.js性能优化\10.4-CPU密集型任务优化\README.md" << 'EOF'
---
title: CPU 密集型任务优化
icon: microchip
order: 4
---

# CPU 密集型任务优化

分解长任务避免阻塞。使用worker_threads多线程，C++插件加速，任务分片，负载均衡。
EOF

# 创建10.5 I/O 密集型任务优化
mkdir -p "$BASE_DIR\10-Node.js性能优化\10.5-I_O密集型任务优化"
cat > "$BASE_DIR\10-Node.js性能优化\10.5-I_O密集型任务优化\README.md" << 'EOF'
---
title: I/O 密集型任务优化
icon: hdd
order: 5
---

# I/O 密集型任务优化

异步非阻塞I/O最大化并发。连接池复用，批量操作减少请求，流式处理，零拷贝技术。
EOF

# 创建10.6 缓存策略
mkdir -p "$BASE_DIR\10-Node.js性能优化\10.6-缓存策略"
cat > "$BASE_DIR\10-Node.js性能优化\10.6-缓存策略\README.md" << 'EOF'
---
title: 缓存策略
icon: database
order: 6
---

# 缓存策略

多级缓存架构提升性能。内存缓存高频数据，Redis分布式缓存，缓存失效策略，防缓存击穿。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建10.7 负载均衡
mkdir -p "$BASE_DIR\10-Node.js性能优化\10.7-负载均衡"
cat > "$BASE_DIR\10-Node.js性能优化\10.7-负载均衡\README.md" << 'EOF'
---
title: 负载均衡
icon: balance-scale
order: 7
---

# 负载均衡

Nginx反向代理分发请求。轮询/权重/IP哈希策略，健康检查剔除故障节点，会话保持，动态扩容应对流量高峰。
EOF

# 创建10.8 集群与扩展
mkdir -p "$BASE_DIR\10-Node.js性能优化\10.8-集群与扩展"
cat > "$BASE_DIR\10-Node.js性能优化\10.8-集群与扩展\README.md" << 'EOF'
---
title: 集群与扩展
icon: expand
order: 8
---

# 集群与扩展

cluster模块利用多核CPU。无状态设计水平扩展，微服务拆分，消息队列解耦，服务发现动态扩容。
EOF

# 创建10.9 性能测试与基准测试
mkdir -p "$BASE_DIR\10-Node.js性能优化\10.9-性能测试与基准测试"
cat > "$BASE_DIR\10-Node.js性能优化\10.9-性能测试与基准测试\README.md" << 'EOF'
---
title: 性能测试与基准测试
icon: stopwatch
order: 9
---

# 性能测试与基准测试

ab/wrk压力测试工具。模拟并发用户，收集吞吐/延迟指标，对比优化前后数据，确定系统瓶颈和容量。
EOF

# 创建第11章 Node.js 部署目录
mkdir -p "$BASE_DIR\11-Node.js部署"
cat > "$BASE_DIR\11-Node.js部署\README.md" << 'EOF'
---
title: Node.js 部署
icon: rocket
order: 11
---

# Node.js 部署

本章介绍Node.js应用的生产环境部署方案，从基础配置到高级架构，确保应用稳定高效运行。
EOF

# 创建11.1 环境配置
mkdir -p "$BASE_DIR\11-Node.js部署\11.1-环境配置"
cat > "$BASE_DIR\11-Node.js部署\11.1-环境配置\README.md" << 'EOF'
---
title: 环境配置
icon: cog
order: 1
---

# 环境配置

NVM管理Node版本，环境变量区分配置。生产环境关闭调试日志，性能优化参数调优，安全加固防攻击。
EOF

# 创建11.2 进程管理
mkdir -p "$BASE_DIR\11-Node.js部署\11.2-进程管理"
cat > "$BASE_DIR\11-Node.js部署\11.2-进程管理\README.md" << 'EOF'
---
title: 进程管理
icon: tasks
order: 2
---

# 进程管理

PM2守护Node进程。集群模式利用多核，日志管理，性能监控，零停机重启，异常自动恢复。
EOF

# 创建11.3 容器化部署
mkdir -p "$BASE_DIR\11-Node.js部署\11.3-容器化部署"
cat > "$BASE_DIR\11-Node.js部署\11.3-容器化部署\README.md" << 'EOF'
---
title: 容器化部署
icon: docker
order: 3
---

# 容器化部署

Docker镜像打包应用。多阶段构建减小体积，K8s编排管理容器，健康检查，自动扩缩容。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建11.4 CI/CD 流程
mkdir -p "$BASE_DIR\11-Node.js部署\11.4-CI_CD流程"
cat > "$BASE_DIR\11-Node.js部署\11.4-CI_CD流程\README.md" << 'EOF'
---
title: CI/CD 流程
icon: sync-alt
order: 4
---

# CI/CD 流程

自动化构建测试部署流程。Git Hook触发构建，Jenkins/GitHub Actions执行流水线，多环境配置管理，版本回滚机制。
EOF

# 创建11.5 云平台部署
mkdir -p "$BASE_DIR\11-Node.js部署\11.5-云平台部署"
cat > "$BASE_DIR\11-Node.js部署\11.5-云平台部署\README.md" << 'EOF'
---
title: 云平台部署
icon: cloud
order: 5
---

# 云平台部署

AWS/阿里云等云平台部署方案。ECS虚拟机部署，Serverless无服务架构，自动扩缩容策略，云原生服务集成。
EOF

# 创建11.6 监控与日志
mkdir -p "$BASE_DIR\11-Node.js部署\11.6-监控与日志"
cat > "$BASE_DIR\11-Node.js部署\11.6-监控与日志\README.md" << 'EOF'
---
title: 监控与日志
icon: chart-line
order: 6
---

# 监控与日志

Prometheus收集指标，Grafana可视化展示。ELK集中管理日志，自定义告警规则，实时监控应用健康状态。
EOF

# 创建11.7 灾备与恢复
mkdir -p "$BASE_DIR\11-Node.js部署\11.7-灾备与恢复"
cat > "$BASE_DIR\11-Node.js部署\11.7-灾备与恢复\README.md" << 'EOF'
---
title: 灾备与恢复
icon: shield-alt
order: 7
---

# 灾备与恢复

多可用区部署保障高可用。定期备份关键数据，故障转移演练，灾难恢复预案，最小化服务中断时间。
EOF

# 创建第12章 Node.js 高级主题目录
mkdir -p "$BASE_DIR\12-Node.js高级主题"
cat > "$BASE_DIR\12-Node.js高级主题\README.md" << 'EOF'
---
title: Node.js 高级主题
icon: star
order: 12
---

# Node.js 高级主题

本章探讨Node.js的高级特性和底层原理，帮助开发者深入理解运行时机制并开发高性能扩展。
EOF

# 创建12.1 C++ 插件开发
mkdir -p "$BASE_DIR\12-Node.js高级主题\12.1-C++插件开发"
cat > "$BASE_DIR\12-Node.js高级主题\12.1-C++插件开发\README.md" << 'EOF'
---
title: C++ 插件开发
icon: cpp
order: 1
---

# C++ 插件开发

N-API开发原生插件。绑定C++类到Node模块，处理V8数据类型转换，线程安全注意事项，性能关键路径优化。
EOF

# 创建12.2 Worker 线程
mkdir -p "$BASE_DIR\12-Node.js高级主题\12.2-Worker线程"
cat > "$BASE_DIR\12-Node.js高级主题\12.2-Worker线程\README.md" << 'EOF'
---
title: Worker 线程
icon: threads
order: 2
---

# Worker 线程

worker_threads模块实现多线程。共享内存通信，任务队列分发，避免全局状态污染，CPU密集型任务优化。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建12.3 集群模式
mkdir -p "$BASE_DIR\12-Node.js高级主题\12.3-集群模式"
cat > "$BASE_DIR\12-Node.js高级主题\12.3-集群模式\README.md" << 'EOF'
---
title: 集群模式
icon: sitemap
order: 3
---

# 集群模式

cluster模块实现多进程架构。主进程管理工作进程，进程间通信，共享端口监听，零停机重启策略。
EOF

# 创建12.4 微服务架构
mkdir -p "$BASE_DIR\12-Node.js高级主题\12.4-微服务架构"
cat > "$BASE_DIR\12-Node.js高级主题\12.4-微服务架构\README.md" << 'EOF'
---
title: 微服务架构
icon: microchip
order: 4
---

# 微服务架构

Node.js构建轻量级微服务。服务拆分原则，API网关集成，服务发现机制，分布式事务处理方案。
EOF

# 创建12.5 GraphQL 实现
mkdir -p "$BASE_DIR\12-Node.js高级主题\12.5-GraphQL实现"
cat > "$BASE_DIR\12-Node.js高级主题\12.5-GraphQL实现\README.md" << 'EOF'
---
title: GraphQL 实现
icon: graphql
order: 5
---

# GraphQL 实现

Apollo Server搭建GraphQL服务。类型系统定义，查询优化，数据加载器解决N+1问题，订阅实现实时更新。
EOF

# 创建12.6 WebAssembly 集成
mkdir -p "$BASE_DIR\12-Node.js高级主题\12.6-WebAssembly集成"
cat > "$BASE_DIR\12-Node.js高级主题\12.6-WebAssembly集成\README.md" << 'EOF'
---
title: WebAssembly 集成
icon: wasm
order: 6
---

# WebAssembly 集成

Node.js调用WebAssembly模块。Rust/C++编译为wasm，性能关键路径优化，内存管理注意事项。
EOF

# 创建第13章 Node.js AI 编程目录
mkdir -p "$BASE_DIR\13-Node.js AI编程"
cat > "$BASE_DIR\13-Node.js AI编程\README.md" << 'EOF'
---
title: Node.js AI 编程
icon: robot
order: 13
---

# Node.js AI 编程

本章介绍Node.js在人工智能领域的应用，从基础概念到实际集成，探索JavaScript在AI生态中的可能性。
EOF

# 创建13.1 AI 与 Node.js 概述
mkdir -p "$BASE_DIR\13-Node.js AI编程\13.1-AI与Node.js概述"
cat > "$BASE_DIR\13-Node.js AI编程\13.1-AI与Node.js概述\README.md" << 'EOF'
---
title: AI 与 Node.js 概述
icon: brain
order: 1
---

# AI 与 Node.js 概述

Node.js在AI领域的优势与局限。事件驱动架构适合实时AI应用，性能敏感场景的优化策略，与Python生态的互操作。
EOF

# 创建13.2 机器学习库集成
mkdir -p "$BASE_DIR\13-Node.js AI编程\13.2-机器学习库集成"
cat > "$BASE_DIR\13-Node.js AI编程\13.2-机器学习库集成\README.md" << 'EOF'
---
title: 机器学习库集成
icon: machine-learning
order: 2
---

# 机器学习库集成

TensorFlow.js实现浏览器和Node端机器学习。模型训练与推理，预训练模型使用，ONNX格式模型部署。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建13.3 自然语言处理
mkdir -p "$BASE_DIR\13-Node.js AI编程\13.3-自然语言处理"
cat > "$BASE_DIR\13-Node.js AI编程\13.3-自然语言处理\README.md" << 'EOF'
---
title: 自然语言处理
icon: language
order: 3
---

# 自然语言处理

Node.js实现文本分析与处理。分词、情感分析、实体识别，结合NLP.js等库构建智能文本处理应用。
EOF

# 创建13.4 图像识别应用
mkdir -p "$BASE_DIR\13-Node.js AI编程\13.4-图像识别应用"
cat > "$BASE_DIR\13-Node.js AI编程\13.4-图像识别应用\README.md" << 'EOF'
---
title: 图像识别应用
icon: image
order: 4
---

# 图像识别应用

OpenCV.js与Node.js结合处理图像。人脸检测、物体识别、二维码生成解析，构建智能图像处理服务。
EOF

# 创建13.5 AI API 调用
mkdir -p "$BASE_DIR\13-Node.js AI编程\13.5-AI API调用"
cat > "$BASE_DIR\13-Node.js AI编程\13.5-AI API调用\README.md" << 'EOF'
---
title: AI API 调用
icon: cloud
order: 5
---

# AI API 调用

集成第三方AI云服务API。OpenAI、Azure AI等接口调用，流式处理响应，构建AI增强型Node应用。
EOF

# 创建13.6 TensorFlow.js 与 Node.js
mkdir -p "$BASE_DIR\13-Node.js AI编程\13.6-TensorFlow.js与Node.js"
cat > "$BASE_DIR\13-Node.js AI编程\13.6-TensorFlow.js与Node.js\README.md" << 'EOF'
---
title: TensorFlow.js 与 Node.js
icon: tensorflow
order: 6
---

# TensorFlow.js 与 Node.js

TensorFlow.js在Node环境运行模型。加载预训练模型，自定义模型训练，GPU加速推理性能优化。
EOF

# 创建13.7 构建智能聊天机器人
mkdir -p "$BASE_DIR\13-Node.js AI编程\13.7-构建智能聊天机器人"
cat > "$BASE_DIR\13-Node.js AI编程\13.7-构建智能聊天机器人\README.md" << 'EOF'
---
title: 构建智能聊天机器人
icon: robot
order: 7
---

# 构建智能聊天机器人

基于NLP技术的对话系统实现。意图识别、上下文管理、多轮对话，集成到WebSocket实时聊天应用。
EOF

# 创建13.8 AI 辅助开发工具
mkdir -p "$BASE_DIR\13-Node.js AI编程\13.8-AI辅助开发工具"
cat > "$BASE_DIR\13-Node.js AI编程\13.8-AI辅助开发工具\README.md" << 'EOF'
---
title: AI 辅助开发工具
icon: tools
order: 8
---

# AI 辅助开发工具

AI增强开发工作流。代码自动补全、错误检测、测试生成，利用AI提升Node.js开发效率与质量。
EOF

# 创建第14章 Node.js 最佳实践目录
mkdir -p "$BASE_DIR\14-Node.js最佳实践"
cat > "$BASE_DIR\14-Node.js最佳实践\README.md" << 'EOF'
---
title: Node.js 最佳实践
icon: check-circle
order: 14
---

# Node.js 最佳实践

本章汇集Node.js开发中的行业最佳实践，从代码风格到架构设计，帮助开发者构建健壮、可维护的应用。
EOF
BASE_DIR="c:\project\kphub\src\.help\nodejs"

# 创建14.1 项目结构组织
mkdir -p "$BASE_DIR\14-Node.js最佳实践\14.1-项目结构组织"
cat > "$BASE_DIR\14-Node.js最佳实践\14.1-项目结构组织\README.md" << 'EOF'
---
title: 项目结构组织
icon: folder-tree
order: 1
---

# 项目结构组织

分层架构与功能模块划分。src目录组织业务代码，config存放配置，tests测试文件，lib共享工具类，保持结构清晰可维护。
EOF

# 创建14.2 错误处理策略
mkdir -p "$BASE_DIR\14-Node.js最佳实践\14.2-错误处理策略"
cat > "$BASE_DIR\14-Node.js最佳实践\14.2-错误处理策略\README.md" << 'EOF'
---
title: 错误处理策略
icon: exclamation-circle
order: 2
---

# 错误处理策略

统一错误处理中间件。自定义错误类型，错误码规范，上下文信息记录，友好错误消息返回，监控系统集成。
EOF

# 创建14.3 日志管理
mkdir -p "$BASE_DIR\14-Node.js最佳实践\14.3-日志管理"
cat > "$BASE_DIR\14-Node.js最佳实践\14.3-日志管理\README.md" << 'EOF'
---
title: 日志管理
icon: file-alt
order: 3
---

# 日志管理

结构化日志记录关键信息。请求ID追踪链路，敏感信息脱敏，日志分级输出，集中式日志收集分析。
EOF

# 创建14.4 配置管理
mkdir -p "$BASE_DIR\14-Node.js最佳实践\14.4-配置管理"
cat > "$BASE_DIR\14-Node.js最佳实践\14.4-配置管理\README.md" << 'EOF'
---
title: 配置管理
icon: cog
order: 4
---

# 配置管理

环境区分配置管理。dotenv加载环境变量，配置验证，敏感信息加密，多环境配置自动切换。
EOF

# 创建14.5 代码风格与质量
mkdir -p "$BASE_DIR\14-Node.js最佳实践\14.5-代码风格与质量"
cat > "$BASE_DIR\14-Node.js最佳实践\14.5-代码风格与质量\README.md" << 'EOF'
---
title: 代码风格与质量
icon: code
order: 5
---

# 代码风格与质量

ESLint统一代码风格。Prettier自动格式化，Husky提交前检查，SonarQube静态分析，保持代码整洁一致。
EOF

# 创建14.6 文档生成
mkdir -p "$BASE_DIR\14-Node.js最佳实践\14.6-文档生成"
cat > "$BASE_DIR\14-Node.js最佳实践\14.6-文档生成\README.md" << 'EOF'
---
title: 文档生成
icon: book
order: 6
---

# 文档生成

JSDoc生成API文档。Swagger UI交互式文档，Markdown编写指南，文档版本与代码同步更新。
EOF

# 创建14.7 版本控制工作流
mkdir -p "$BASE_DIR\14-Node.js最佳实践\14.7-版本控制工作流"
cat > "$BASE_DIR\14-Node.js最佳实践\14.7-版本控制工作流\README.md" << 'EOF'
---
title: 版本控制工作流
icon: code-branch
order: 7
---

# 版本控制工作流

Git Flow分支模型。语义化版本控制，CHANGELOG生成，Pull Request代码审查，自动化版本发布流程。
EOF

# 创建14.8 持续学习资源
mkdir -p "$BASE_DIR\14-Node.js最佳实践\14.8-持续学习资源"
cat > "$BASE_DIR\14-Node.js最佳实践\14.8-持续学习资源\README.md" << 'EOF'
---
title: 持续学习资源
icon: graduation-cap
order: 8
---

# 持续学习资源

Node.js官方文档、技术博客、开源项目、社区论坛等优质学习资源推荐，保持技术更新与技能提升。
EOF