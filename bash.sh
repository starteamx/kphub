#!/bin/bash

# 设置基础路径
BASE_PATH="/Users/guanrunbai/my/kphub/src/frontend/JavaScript"

# 创建03-高级主题目录及README
mkdir -p "$BASE_PATH/03-高级主题"
cat > "$BASE_PATH/03-高级主题/README.md" << 'EOF'
---
title: JavaScript高级主题
icon: javascript
order: 3
---

# JavaScript高级主题

本部分探讨JavaScript的高级主题和技术，适合已掌握中级知识的开发者。通过学习这部分内容，您将深入理解JavaScript的内部机制，掌握高级编程技巧和设计模式。

EOF

# 创建3.1-原型与继承目录及文件
mkdir -p "$BASE_PATH/03-高级主题/3.1-原型与继承"
cat > "$BASE_PATH/03-高级主题/3.1-原型与继承/README.md" << 'EOF'
---
title: 原型与继承
icon: javascript
order: 1
---

# 原型与继承

原型是JavaScript面向对象编程的核心机制。本节将深入探讨原型链、继承模式以及相关的高级概念。

EOF

cat > "$BASE_PATH/03-高级主题/3.1-原型与继承/3.1.1-原型链详解.md" << 'EOF'
---
title: 原型链详解
icon: javascript
order: 1
---

# 原型链详解

原型链是JavaScript实现继承的基础机制。本文将深入解析原型链的工作原理、属性查找过程以及原型链的构建方式，帮助您理解JavaScript对象系统的核心概念。

EOF

cat > "$BASE_PATH/03-高级主题/3.1-原型与继承/3.1.2-继承模式.md" << 'EOF'
---
title: 继承模式
icon: javascript
order: 2
---

# 继承模式

JavaScript提供了多种实现继承的方式。本文将详细介绍原型继承、构造函数继承、组合继承、寄生组合继承等模式的实现方法、优缺点以及适用场景。

EOF

cat > "$BASE_PATH/03-高级主题/3.1-原型与继承/3.1.3-instanceof与原型判断.md" << 'EOF'
---
title: instanceof与原型判断
icon: javascript
order: 3
---

# instanceof与原型判断

instanceof运算符用于检测对象是否属于特定类。本文将深入解析instanceof的工作原理、Object.prototype.isPrototypeOf()方法以及如何正确判断对象的原型关系。

EOF

cat > "$BASE_PATH/03-高级主题/3.1-原型与继承/3.1.4-多态与混入.md" << 'EOF'
---
title: 多态与混入
icon: javascript
order: 4
---

# 多态与混入

JavaScript不支持传统的多重继承，但可以通过混入(mixin)模式实现类似功能。本文将介绍多态的概念、混入模式的实现方法以及Object.assign()和展开运算符在混入中的应用。

EOF

# 创建3.2-内存管理目录及文件
mkdir -p "$BASE_PATH/03-高级主题/3.2-内存管理"
cat > "$BASE_PATH/03-高级主题/3.2-内存管理/README.md" << 'EOF'
---
title: 内存管理
icon: javascript
order: 2
---

# 内存管理

理解JavaScript的内存管理机制对于编写高效、无内存泄漏的应用至关重要。本节将深入探讨JavaScript的垃圾回收机制、内存泄漏问题以及性能优化策略。

EOF

cat > "$BASE_PATH/03-高级主题/3.2-内存管理/3.2.1-垃圾回收机制.md" << 'EOF'
---
title: 垃圾回收机制
icon: javascript
order: 1
---

# 垃圾回收机制

JavaScript引擎使用垃圾回收机制自动管理内存。本文将详细介绍标记清除和引用计数等垃圾回收算法的工作原理、优缺点以及JavaScript引擎如何实现内存管理。

EOF

cat > "$BASE_PATH/03-高级主题/3.2-内存管理/3.2.2-内存泄漏.md" << 'EOF'
---
title: 内存泄漏
icon: javascript
order: 2
---

# 内存泄漏

内存泄漏是指程序不再需要的内存没有被释放。本文将介绍JavaScript中常见的内存泄漏场景，如闭包、全局变量、事件监听器等，以及如何识别和解决这些问题。

EOF

cat > "$BASE_PATH/03-高级主题/3.2-内存管理/3.2.3-性能优化.md" << 'EOF'
---
title: 性能优化
icon: javascript
order: 3
---

# 性能优化

优化内存使用是提高JavaScript应用性能的重要方面。本文将介绍减少内存消耗的策略，如对象池、弱引用、适当的数据结构选择等，帮助您编写更高效的代码。

EOF

cat > "$BASE_PATH/03-高级主题/3.2-内存管理/3.2.4-内存分析工具.md" << 'EOF'
---
title: 内存分析工具
icon: javascript
order: 4
---

# 内存分析工具

分析和监控内存使用是解决内存问题的关键。本文将介绍Chrome DevTools等浏览器开发工具中的内存分析功能，包括堆快照、内存时间线、分配分析等，帮助您有效地诊断内存问题。

EOF

# 创建3.3-并发模型目录及文件
mkdir -p "$BASE_PATH/03-高级主题/3.3-并发模型"
cat > "$BASE_PATH/03-高级主题/3.3-并发模型/README.md" << 'EOF'
---
title: 并发模型
icon: javascript
order: 3
---

# 并发模型

JavaScript使用事件循环模型处理并发。本节将深入探讨JavaScript的并发模型、事件循环机制以及相关的高级概念。

EOF

cat > "$BASE_PATH/03-高级主题/3.3-并发模型/3.3.1-事件循环详解.md" << 'EOF'
---
title: 事件循环详解
icon: javascript
order: 1
---

# 事件循环详解

事件循环是JavaScript处理异步操作的核心机制。本文将深入分析事件循环的工作原理、执行栈、消息队列以及浏览器和Node.js环境中事件循环的差异。

EOF

cat > "$BASE_PATH/03-高级主题/3.3-并发模型/3.3.2-宏任务与微任务.md" << 'EOF'
---
title: 宏任务与微任务
icon: javascript
order: 2
---

# 宏任务与微任务

JavaScript中的任务分为宏任务和微任务，它们有不同的优先级和执行顺序。本文将详细介绍宏任务和微任务的概念、区别以及它们在事件循环中的处理方式。

EOF

cat > "$BASE_PATH/03-高级主题/3.3-并发模型/3.3.3-并发控制模式.md" << 'EOF'
---
title: 并发控制模式
icon: javascript
order: 3
---

# 并发控制模式

在处理大量异步操作时，需要适当控制并发度以避免资源耗尽。本文将介绍节流、防抖、并发限制等技术的实现和应用，帮助您有效管理异步操作的执行。

EOF

cat > "$BASE_PATH/03-高级主题/3.3-并发模型/3.3.4-Worker线程.md" << 'EOF'
---
title: Worker线程
icon: javascript
order: 4
---

# Worker线程

Web Worker和Worker Threads提供了在JavaScript中实现多线程的能力。本文将介绍不同类型的Worker、线程间通信机制以及如何利用Worker处理计算密集型任务，提高应用性能。

EOF

# 创建3.4-函数式编程目录及文件
mkdir -p "$BASE_PATH/03-高级主题/3.4-函数式编程"
cat > "$BASE_PATH/03-高级主题/3.4-函数式编程/README.md" << 'EOF'
---
title: 函数式编程
icon: javascript
order: 4
---

# 函数式编程

函数式编程是一种编程范式，强调使用纯函数、避免共享状态和可变数据。本节将介绍函数式编程的核心概念和在JavaScript中的应用。

EOF

cat > "$BASE_PATH/03-高级主题/3.4-函数式编程/3.4.1-纯函数与副作用.md" << 'EOF'
---
title: 纯函数与副作用
icon: javascript
order: 1
---

# 纯函数与副作用

纯函数是函数式编程的基础，它不依赖外部状态且不产生副作用。本文将详细介绍纯函数的概念、特点、优势以及如何识别和减少副作用，提高代码的可测试性和可维护性。

EOF

cat > "$BASE_PATH/03-高级主题/3.4-函数式编程/3.4.2-高阶函数.md" << 'EOF'
---
title: 高阶函数
icon: javascript
order: 2
---

# 高阶函数

高阶函数是接受函数作为参数或返回函数的函数。本文将介绍高阶函数的概念、常见的高阶函数如map、filter、reduce的实现原理，以及如何使用高阶函数简化代码和提高抽象级别。

EOF

cat > "$BASE_PATH/03-高级主题/3.4-函数式编程/3.4.3-函数组合与管道.md" << 'EOF'
---
title: 函数组合与管道
icon: javascript
order: 3
---

# 函数组合与管道

函数组合是将多个函数组合成一个新函数的技术。本文将介绍函数组合的概念、compose和pipe函数的实现，以及如何使用函数组合构建数据转换管道，提高代码的可读性和可维护性。

EOF

cat > "$BASE_PATH/03-高级主题/3.4-函数式编程/3.4.4-柯里化与偏应用.md" << 'EOF'
---
title: 柯里化与偏应用
icon: javascript
order: 4
---

# 柯里化与偏应用

柯里化和偏应用是函数式编程中的重要技术，用于创建更灵活、更可复用的函数。本文将详细介绍柯里化和偏应用的概念、实现方法以及它们在实际开发中的应用场景。

EOF

cat > "$BASE_PATH/03-高级主题/3.4-函数式编程/3.4.5-函数式库介绍.md" << 'EOF'
---
title: 函数式库介绍
icon: javascript
order: 5
---

# 函数式库介绍

JavaScript生态系统中有多个优秀的函数式编程库。本文将介绍Ramda、Lodash/fp等函数式库的特点、API设计理念以及如何在实际项目中使用这些库提高开发效率。

EOF

# 创建3.5-设计模式目录及文件
mkdir -p "$BASE_PATH/03-高级主题/3.5-设计模式"
cat > "$BASE_PATH/03-高级主题/3.5-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: javascript
order: 5
---

# 设计模式

设计模式是解决软件设计中常见问题的可复用方案。本节将介绍JavaScript中常用的设计模式及其实现方式。

EOF

cat > "$BASE_PATH/03-高级主题/3.5-设计模式/3.5.1-创建型模式.md" << 'EOF'
---
title: 创建型模式
icon: javascript
order: 1
---

# 创建型模式

创建型模式关注对象的创建机制。本文将介绍JavaScript中的工厂模式、单例模式、构建者模式等创建型设计模式的实现和应用场景，帮助您以更灵活、更适合特定场景的方式创建对象。

EOF

cat > "$BASE_PATH/03-高级主题/3.5-设计模式/3.5.2-结构型模式.md" << 'EOF'
---
title: 结构型模式
icon: javascript
order: 2
---

# 结构型模式

结构型模式关注类和对象的组合。本文将介绍适配器模式、装饰器模式、代理模式等结构型设计模式在JavaScript中的实现和应用，帮助您构建更灵活、更可扩展的代码结构。

EOF

cat > "$BASE_PATH/03-高级主题/3.5-设计模式/3.5.3-行为型模式.md" << 'EOF'
---
title: 行为型模式
icon: javascript
order: 3
---

# 行为型模式

行为型模式关注对象之间的通信。本文将介绍观察者模式、策略模式、命令模式等行为型设计模式在JavaScript中的实现和应用，帮助您设计更灵活、更可维护的对象交互方式。

EOF

cat > "$BASE_PATH/03-高级主题/3.5-设计模式/3.5.4-JavaScript特有模式.md" << 'EOF'
---
title: JavaScript特有模式
icon: javascript
order: 4
---

# JavaScript特有模式

JavaScript作为一种多范式语言，有一些特有的设计模式。本文将介绍模块模式、揭示模块模式、IIFE模式等JavaScript特有的设计模式，以及它们在实际开发中的应用场景。

EOF

# 创建3.6-元编程高级目录及文件
mkdir -p "$BASE_PATH/03-高级主题/3.6-元编程高级"
cat > "$BASE_PATH/03-高级主题/3.6-元编程高级/README.md" << 'EOF'
---
title: 元编程高级
icon: javascript
order: 6
---

# 元编程高级

元编程是指编写能够操作代码的代码。本节将深入探讨JavaScript的元编程特性，如Symbol、Proxy、Reflect以及装饰器等。

EOF

cat > "$BASE_PATH/03-高级主题/3.6-元编程高级/3.6.1-Symbol深入.md" << 'EOF'
---
title: Symbol深入
icon: javascript
order: 1
---

# Symbol深入

Symbol是ES6引入的原始数据类型，用于创建唯一的标识符。本文将深入介绍Symbol的高级用法、内置Symbol的作用以及如何利用Symbol实现元编程功能，如自定义迭代器和特殊方法。

EOF

cat > "$BASE_PATH/03-高级主题/3.6-元编程高级/3.6.2-Proxy高级应用.md" << 'EOF'
---
title: Proxy高级应用
icon: javascript
order: 2
---

# Proxy高级应用

Proxy对象允许您创建一个对象的代理，拦截和自定义对象的基本操作。本文将深入介绍Proxy的高级应用，如数据绑定、验证、日志记录以及如何实现响应式编程模型。

EOF

cat > "$BASE_PATH/03-高级主题/3.6-元编程高级/3.6.3-Reflect完全指南.md" << 'EOF'
---
title: Reflect完全指南
icon: javascript
order: 3
---

# Reflect完全指南

Reflect是ES6引入的内置对象，提供了用于拦截JavaScript操作的方法。本文将全面介绍Reflect API的所有方法、用法以及它与Object方法的区别，帮助您更有效地进行元编程。

EOF

cat > "$BASE_PATH/03-高级主题/3.6-元编程高级/3.6.4-装饰器模式.md" << 'EOF'
---
title: 装饰器模式
icon: javascript
order: 4
---

# 装饰器模式

装饰器是一种特殊的声明，可以附加到类、方法、属性等上。本文将介绍JavaScript中装饰器的概念、语法、实现原理以及常见的装饰器模式和应用场景。

EOF

# 创建3.7-性能优化目录及文件
mkdir -p "$BASE_PATH/03-高级主题/3.7-性能优化"
cat > "$BASE_PATH/03-高级主题/3.7-性能优化/README.md" << 'EOF'
---
title: 性能优化
icon: javascript
order: 7
---

# 性能优化

性能优化是开发高质量JavaScript应用的重要方面。本节将介绍JavaScript性能优化的各个方面，从代码层面到网络和渲染层面。

EOF

cat > "$BASE_PATH/03-高级主题/3.7-性能优化/3.7.1-代码优化策略.md" << 'EOF'
---
title: 代码优化策略
icon: javascript
order: 1
---

# 代码优化策略

JavaScript代码的性能直接影响应用的响应速度。本文将介绍JavaScript代码优化的策略和技巧，包括算法选择、数据结构优化、循环优化、内存管理等方面，帮助您编写高效的JavaScript代码。

EOF

cat > "$BASE_PATH/03-高级主题/3.7-性能优化/3.7.2-渲染性能.md" << 'EOF'
---
title: 渲染性能
icon: javascript
order: 2
---

# 渲染性能

浏览器渲染性能对用户体验至关重要。本文将介绍浏览器渲染流程、关键渲染路径、重排和重绘的优化，以及如何使用requestAnimationFrame等API提高动画性能。

EOF

cat > "$BASE_PATH/03-高级主题/3.7-性能优化/3.7.3-网络性能.md" << 'EOF'
---
title: 网络性能
icon: javascript
order: 3
---

# 网络性能

网络性能是Web应用性能的重要组成部分。本文将介绍资源加载优化、HTTP缓存策略、预加载和预连接技术、服务端推送等方法，帮助您减少网络延迟，提高应用加载速度。

EOF

cat > "$BASE_PATH/03-高级主题/3.7-性能优化/3.7.4-性能分析工具.md" << 'EOF'
---
title: 性能分析工具
icon: javascript
order: 4
---

# 性能分析工具

性能分析工具帮助您识别和解决性能瓶颈。本文将介绍Chrome DevTools、Lighthouse、WebPageTest等性能分析工具的使用方法，以及如何解读性能指标，进行有针对性的优化。

EOF

# 创建04-现代JavaScript目录及README
mkdir -p "$BASE_PATH/04-现代JavaScript"
cat > "$BASE_PATH/04-现代JavaScript/README.md" << 'EOF'
---
title: 现代JavaScript
icon: javascript
order: 4
---

# 现代JavaScript

本部分介绍现代JavaScript开发的特性、工具和最佳实践。通过学习这部分内容，您将了解最新的JavaScript语言特性和现代开发工具链，提高开发效率和代码质量。

EOF

# 创建4.1-ES6+特性目录及文件
mkdir -p "$BASE_PATH/04-现代JavaScript/4.1-ES6+特性"
cat > "$BASE_PATH/04-现代JavaScript/4.1-ES6+特性/README.md" << 'EOF'
---
title: ES6+特性
icon: javascript
order: 1
---

# ES6+特性

ECMAScript 6（ES6）及后续版本引入了许多新特性，极大地增强了JavaScript的能力。本节将介绍这些新特性及其使用方法。

EOF

cat > "$BASE_PATH/04-现代JavaScript/4.1-ES6+特性/4.1.1-ES6完全指南.md" << 'EOF'
---
title: ES6完全指南
icon: javascript
order: 1
---

# ES6完全指南

ES6（ECMAScript 2015）是JavaScript的一次重大更新，引入了许多新特性。本文将全面介绍ES6的核心特性，包括箭头函数、类、模块、解构赋值、模板字符串、Promise等，帮助您掌握现代JavaScript的基础。

EOF

cat > "$BASE_PATH/04-现代JavaScript/4.1-ES6+特性/4.1.2-ES2017-ES2019特性.md" << 'EOF'
---
title: ES2017-ES2019特性
icon: javascript
order: 2
---

# ES2017-ES2019特性

ES2017到ES2019引入了多项实用特性。本文将介绍这些版本的主要特性，包括async/await、Object.entries/values、Rest/Spread属性、可选的catch绑定、Array.prototype.flat等，帮助您了解这些年JavaScript的演进。

EOF

cat > "$BASE_PATH/04-现代JavaScript/4.1-ES6+特性/4.1.3-ES2020-ES2022特性.md" << 'EOF'
---
title: ES2020-ES2022特性
icon: javascript
order: 3
---

# ES2020-ES2022特性

ES2020到ES2022带来了更多现代JavaScript特性。本文将介绍这些版本的主要特性，包括可选链操作符、空值合并操作符、Promise.allSettled、逻辑赋值运算符、String.prototype.replaceAll等，帮助您跟上JavaScript的最新发展。

EOF

cat > "$BASE_PATH/04-现代JavaScript/4.1-ES6+特性/4.1.4-提案阶段特性.md" << 'EOF'
---
title: 提案阶段特性
icon: javascript
order: 4
---

# 提案阶段特性

TC39委员会负责JavaScript语言的标准化，有多个提案正在不同阶段。本文将介绍一些重要的提案阶段特性，如装饰器、管道操作符、记录与元组等，帮助您了解JavaScript的未来发展方向。

EOF

# 创建4.2-工具链目录及文件
mkdir -p "$BASE_PATH/04-现代JavaScript/4.2-工具链"
cat > "$BASE_PATH/04-现代JavaScript/4.2-工具链/README.md" << 'EOF'
---
title: 工具链
icon: javascript
order: 2
---

# 工具链

现代JavaScript开发离不开各种工具的支持。本节将介绍JavaScript开发中常用的工具链组件及其使用方法。

EOF

cat > "$BASE_PATH/04-现代JavaScript/4.2-工具链/4.2.1-打包工具.md" << 'EOF'
---
title: 打包工具
icon: javascript
order: 1
---

# 打包工具

打包工具帮助开发者将多个模块打包成适合浏览器使用的文件。本文将介绍Webpack、Rollup、Vite等主流打包工具的特点、配置方法以及适用场景，帮助您选择合适的工具并高效使用。

EOF

cat > "$BASE_PATH/04-现代JavaScript/4.2-工具链/4.2.2-转译器.md" << 'EOF'
---
title: 转译器
icon: javascript
order: 2
---

# 转译器

转译器将现代JavaScript代码转换为向后兼容的版本。本文将详细介绍Babel的工作原理、配置方法、常用插件和预设，以及如何根据目标环境优化转译结果，确保代码的兼容性和性能。

EOF

cat > "$BASE_PATH/04-现代JavaScript/4.2-工具链/4.2.3-代码检查.md" << 'EOF'
---
title: 代码检查
icon: javascript
order: 3
---

# 代码检查

代码检查工具帮助维护代码质量和一致性。本文将介绍ESLint和Prettier的配置和使用方法，常用的规则和插件，以及如何将它们集成到开发工作流中，提高代码质量和团队协作效率。

EOF

cat > "$BASE_PATH/04-现代JavaScript/4.2-工具链/4.2.4-测试工具.md" << 'EOF'
---
title: 测试工具
icon: javascript
order: 4
---

# 测试工具

测试是确保代码质量的重要手段。本文将介绍Jest、Mocha、Cypress等JavaScript测试框架和工具的使用方法，包括单元测试、集成测试和端到端测试的实践，帮助您构建可靠的测试策略。

EOF

# 创建4.3-模块化开发目录及文件
mkdir -p "$BASE_PATH/04-现代JavaScript/4.3-模块化开发"
cat > "$BASE_PATH/04-现代JavaScript/4.3-模块化开发/README.md" << 'EOF'
---
title: 模块化开发
icon: javascript
order: 3
---

# 模块化开发

模块化是现代JavaScript开发的基础。本节将深入探讨JavaScript的模块系统及相关的开发实践。

EOF

cat > "$BASE_PATH/04-现代JavaScript/4.3-模块化开发/4.3.1-模块格式对比.md" << 'EOF'
---
title: 模块格式对比
icon: javascript
order: 1
---

# 模块格式对比

JavaScript有多种模块格式，各有特点。本文将详细对比AMD、CommonJS、UMD和ES模块的语法、加载机制、兼容性以及使用场景，帮助您理解不同模块系统的优缺点和适用情况。

EOF

cat > "$BASE_PATH/04-现代JavaScript/4.3-模块化开发/4.3.2-动态导入.md" << 'EOF'
---
title: 动态导入
icon: javascript
order: 2
---

# 动态导入

动态导入是ES模块系统的一个强大特性，支持按需加载模块。本文将介绍动态导入的语法、使用场景以及如何利用它实现代码分割和懒加载，提高应用性能和用户体验。

EOF

# 继续创建4.3-模块化开发目录下的文件
cat > "$BASE_PATH/04-现代JavaScript/4.3-模块化开发/4.3.3-模块打包策略.md" << 'EOF'
---
title: 模块打包策略
icon: javascript
order: 3
---

# 模块打包策略

模块打包是现代前端开发的重要环节。本文将介绍不同的模块打包策略，如代码分割、树摇（Tree Shaking）、作用域提升（Scope Hoisting）等，以及如何根据项目需求选择合适的打包配置，优化应用性能。

EOF

cat > "$BASE_PATH/04-现代JavaScript/4.3-模块化开发/4.3.4-模块设计模式.md" << 'EOF'
---
title: 模块设计模式
icon: javascript
order: 4
---

# 模块设计模式

良好的模块设计对于构建可维护的应用至关重要。本文将介绍模块化开发的最佳实践，包括单一职责原则、接口设计、依赖管理以及如何组织大型应用的模块结构，帮助您设计出高内聚、低耦合的模块系统。

EOF