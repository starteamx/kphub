# Objective-C教程目录创建脚本

BASE_DIR="c:\project\kphub\src\objective-c"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Objective-C教程
icon: apple
order: 1
---

# Objective-C教程

本教程系统地介绍了Objective-C编程语言的核心概念和实践应用，从面向对象的基础理念到具体的语法特性，帮助读者全面掌握Objective-C开发技能。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-面向对象的编程"
cat > "$BASE_DIR/第1章-面向对象的编程/README.md" << 'EOF'
---
title: 面向对象的编程
icon: object
order: 1
---

# 第1章 面向对象的编程

本章介绍面向对象编程的基本概念和原理，帮助读者理解Objective-C的设计思想和核心特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-面向对象的编程/1.1-对象的概念"
cat > "$BASE_DIR/第1章-面向对象的编程/1.1-对象的概念/README.md" << 'EOF'
---
title: 对象的概念
icon: concept
order: 1
---

# 1.1 对象的概念

本节详细介绍对象的基本概念，包括对象的定义、特性以及在Objective-C中的应用。
EOF

# 创建1.1.1文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.1-对象的概念/1.1.1-面向功能的软件设计的局限性.md" << 'EOF'
---
title: 面向功能的软件设计的局限性
icon: limitation
order: 1
---

# 1.1.1 面向功能的软件设计的局限性

## 概述
面向功能的软件设计方法将程序看作一系列功能模块的集合，这种设计方法在处理复杂系统时存在诸多局限性。

## 主要局限性
- 数据与处理数据的函数分离
- 全局数据的滥用导致程序难以维护
- 代码重用困难
- 系统扩展性差
- 难以适应需求变化
EOF

# 创建1.1.2文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.1-对象的概念/1.1.2-面向对象的模块化.md" << 'EOF'
---
title: 面向对象的模块化
icon: module
order: 2
---

# 1.1.2 面向对象的模块化

## 概述
面向对象编程通过将数据和操作数据的方法封装在一起，形成独立的对象，实现了更高级的模块化。

## 核心特点
- 封装：将数据和方法绑定在一起
- 信息隐藏：对象内部实现对外部不可见
- 接口与实现分离：通过公共接口访问对象功能
- 模块间低耦合：对象之间通过明确定义的接口交互
EOF

# 创建1.1.3文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.1-对象的概念/1.1.3-消息传递.md" << 'EOF'
---
title: 消息传递
icon: message
order: 3
---

# 1.1.3 消息传递

## 概述
Objective-C中对象间通信采用消息传递机制，这是区别于其他面向对象语言的重要特性。

## 消息传递机制
- 消息发送语法：[receiver message]
- 动态绑定：运行时确定方法调用
- 消息转发：对象可以将无法处理的消息转发给其他对象
- 选择器(Selector)：用于标识消息的名称
EOF

# 创建1.1.4文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.1-对象的概念/1.1.4-模块的抽象化.md" << 'EOF'
---
title: 模块的抽象化
icon: abstract
order: 4
---

# 1.1.4 模块的抽象化

## 概述
抽象是面向对象设计的核心原则之一，通过抽象可以隐藏复杂性，突出本质特性。

## 抽象的实现方式
- 类的定义：抽象出对象的共同特性
- 接口设计：定义对象的行为而不关注实现
- 继承体系：通过继承关系表达抽象层次
- 多态：同一接口，不同实现

## Objective-C中的抽象
- 协议(Protocol)：定义接口规范
- 抽象类：提供基本实现框架
- 类别(Category)：扩展现有类的功能
EOF
BASE_DIR="c:\project\kphub\src\objective-c"

# 创建1.1.5文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.1-对象的概念/1.1.5-对象的属性.md" << 'EOF'
---
title: 对象的属性
icon: property
order: 5
---

# 1.1.5 对象的属性

## 概述
对象的属性是对象状态的表示，在Objective-C中，属性是类定义中的重要组成部分。

## 属性特性
- 数据封装：通过属性实现对象状态的封装
- 访问控制：属性可以设置为只读或读写
- 内存管理：属性可以指定内存管理策略
- KVC/KVO：键值编码和键值观察机制

## Objective-C属性声明
- @property语法
- 属性特性：atomic/nonatomic, strong/weak/copy, readonly/readwrite
- 属性合成：@synthesize和自动合成
EOF

# 创建专栏文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.1-对象的概念/专栏-面向对象的方方面面.md" << 'EOF'
---
title: 专栏-面向对象的方方面面
icon: column
order: 6
---

# 专栏：面向对象的方方面面

## 面向对象的三大特性
- 封装：将数据和方法封装在对象内部，对外提供接口
- 继承：子类继承父类的特性，实现代码重用
- 多态：同一接口，不同实现，增强系统的可扩展性

## 面向对象设计原则
- 单一职责原则：一个类只负责一个功能领域
- 开闭原则：对扩展开放，对修改关闭
- 里氏替换原则：子类能够替换父类并且不影响程序功能
- 依赖倒置原则：依赖抽象而不是具体实现
- 接口隔离原则：使用多个专门的接口比使用单一的总接口要好

## 面向对象在Objective-C中的实现
- 类与对象
- 协议与代理模式
- 类别与扩展
- 动态绑定与运行时
EOF

# 创建1.1.6文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.1-对象的概念/1.1.6-类.md" << 'EOF'
---
title: 类
icon: class
order: 7
---

# 1.1.6 类

## 概述
类是对象的蓝图或模板，定义了对象的属性和行为。在Objective-C中，类是创建对象的基础。

## 类的组成
- 实例变量：存储对象状态
- 方法：定义对象行为
- 属性：对实例变量的封装
- 协议遵守：声明类遵循的协议

## Objective-C类的特点
- 单继承：一个类只能有一个父类
- 动态绑定：方法调用在运行时确定
- 元类：类本身也是对象
- 类方法与实例方法的区分
EOF

# 创建专栏文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.1-对象的概念/专栏-Cocoa和Objective-C的历史.md" << 'EOF'
---
title: 专栏-Cocoa和Objective-C的历史
icon: history
order: 8
---

# 专栏：Cocoa和Objective-C的历史

## Objective-C的起源
- 由Brad Cox和Tom Love在1980年代初创建
- 基于C语言，增加了Smalltalk风格的消息传递
- 最初由Stepstone公司开发和销售

## NeXT和Apple的采用
- 1988年，NeXT公司获得Objective-C许可
- NeXT开发了NeXTSTEP操作系统和应用框架
- 1996年，Apple收购NeXT
- NeXTSTEP演变为Mac OS X和Cocoa框架

## 现代发展
- 2007年：iPhone发布，iOS开发使用Objective-C
- 2014年：Swift语言发布，作为Objective-C的现代替代
- Objective-C与Swift共存，大量遗留代码仍使用Objective-C
- 现代Cocoa和Cocoa Touch框架支持两种语言
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-面向对象的编程/1.2-模块和对象"
cat > "$BASE_DIR/第1章-面向对象的编程/1.2-模块和对象/README.md" << 'EOF'
---
title: 模块和对象
icon: module
order: 2
---

# 1.2 模块和对象

本节探讨软件模块化设计的原则以及对象作为模块化单元的特性和优势。
EOF

# 创建1.2.1文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.2-模块和对象/1.2.1-软件模块.md" << 'EOF'
---
title: 软件模块
icon: module
order: 1
---

# 1.2.1 软件模块

## 概述
软件模块是具有特定功能的、相对独立的程序单元，是软件工程中实现复杂系统的基本构建块。

## 模块的特性
- 功能内聚：模块内部功能紧密相关
- 接口明确：定义清晰的输入输出接口
- 相对独立：模块间低耦合
- 可复用：设计良好的模块可在不同场景复用

## 模块化设计的优势
- 降低复杂度：将大问题分解为小问题
- 提高可维护性：局部修改不影响整体
- 团队协作：不同开发者可并行开发不同模块
- 测试便利：模块可独立测试
EOF

# 创建1.2.2文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.2-模块和对象/1.2.2-高独立性的模块.md" << 'EOF'
---
title: 高独立性的模块
icon: independent
order: 2
---

# 1.2.2 高独立性的模块

## 概述
高独立性模块是模块化设计的理想状态，它最小化了模块间的依赖，最大化了内部聚合。

## 实现高独立性的策略
- 信息隐藏：隐藏实现细节，只暴露必要接口
- 松散耦合：减少模块间的依赖关系
- 接口设计：设计稳定、明确的接口
- 依赖注入：通过接口而非具体实现建立依赖

## Objective-C中的模块独立性
- 头文件与实现文件分离
- 类扩展隐藏私有实现
- 协议定义接口规范
- 类别实现功能扩展
EOF
BASE_DIR="c:\project\kphub\src\objective-c"

# 创建1.2.3文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.2-模块和对象/1.2.3-模块的信息隐蔽.md" << 'EOF'
---
title: 模块的信息隐蔽
icon: hide
order: 3
---

# 1.2.3 模块的信息隐蔽

## 概述
信息隐蔽是模块化设计的核心原则，通过隐藏模块内部实现细节，只对外暴露必要的接口，提高系统的可维护性和灵活性。

## 信息隐蔽的优势
- 降低模块间耦合度
- 限制错误影响范围
- 简化接口，降低使用复杂度
- 允许内部实现变更而不影响外部调用

## Objective-C中的信息隐蔽
- 私有方法和实例变量
- 类扩展（Class Extension）
- 头文件中的接口声明与实现文件分离
- 属性访问控制
EOF

# 创建1.2.4文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.2-模块和对象/1.2.4-类的定义和接口.md" << 'EOF'
---
title: 类的定义和接口
icon: interface
order: 4
---

# 1.2.4 类的定义和接口

## 概述
在Objective-C中，类的定义包括接口声明和实现两部分，接口定义了类对外提供的功能，实现则包含了具体的代码逻辑。

## 类接口
- @interface声明
- 实例变量定义
- 方法声明
- 属性声明
- 协议遵守声明

## 类实现
- @implementation实现
- 方法定义
- 属性合成
- 私有辅助方法

## 接口设计原则
- 简洁明了：只暴露必要的方法和属性
- 一致性：命名和参数设计保持一致
- 易用性：接口设计符合直觉
- 可扩展性：预留未来扩展的可能
EOF

# 创建1.2.5文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.2-模块和对象/1.2.5-消息发送的实现.md" << 'EOF'
---
title: 消息发送的实现
icon: message
order: 5
---

# 1.2.5 消息发送的实现

## 概述
Objective-C的消息发送机制是其区别于其他面向对象语言的核心特性，它在运行时而非编译时确定方法的调用。

## 消息发送原理
- 消息表达式：[receiver message:argument]
- 运行时查找：通过objc_msgSend函数查找方法实现
- 方法缓存：提高重复调用的性能
- 动态方法解析：运行时添加方法实现

## 消息转发机制
- 动态方法解析：+resolveInstanceMethod:
- 备用接收者：-forwardingTargetForSelector:
- 完整转发：-methodSignatureForSelector: 和 -forwardInvocation:

## 性能考虑
- 消息发送开销
- 方法缓存优化
- 内联缓存技术
EOF

# 创建专栏文件
cat > "$BASE_DIR/第1章-面向对象的编程/1.2-模块和对象/专栏-C语言的新标准.md" << 'EOF'
---
title: 专栏-C语言的新标准
icon: c-language
order: 6
---

# 专栏：C语言的新标准

## C语言标准演进
- C89/C90：第一个ANSI/ISO标准
- C99：增加了inline函数、可变长数组、复数支持等
- C11：增加了多线程支持、原子操作、通用指针等
- C17/C18：错误修正版本
- C23：最新标准（开发中）

## 现代C语言特性
- 可变参数宏
- 线程局部存储
- 匿名结构体和联合体
- 静态断言
- Unicode支持

## C语言与Objective-C的关系
- Objective-C是C语言的超集
- C语言新特性对Objective-C的影响
- 在Objective-C中使用现代C语言特性
- 混合编程的最佳实践
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-Objective-C程序设计"
cat > "$BASE_DIR/第2章-Objective-C程序设计/README.md" << 'EOF'
---
title: Objective-C程序设计
icon: code
order: 2
---

# 第2章 Objective-C程序设计

本章详细介绍Objective-C编程语言的核心概念和语法特性，包括对象、消息、类、方法等基础内容，帮助读者掌握Objective-C程序设计的基本技能。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-Objective-C程序设计/2.1-对象和消息"
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.1-对象和消息/README.md" << 'EOF'
---
title: 对象和消息
icon: object
order: 1
---

# 2.1 对象和消息

本节介绍Objective-C中对象的创建、使用以及对象间通过消息进行交互的机制，这是Objective-C编程的核心概念。
EOF

# 创建2.1.1文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.1-对象和消息/2.1.1-消息表达式.md" << 'EOF'
---
title: 消息表达式
icon: expression
order: 1
---

# 2.1.1 消息表达式

## 概述
消息表达式是Objective-C中对象间通信的基本方式，通过方括号语法将消息发送给接收者对象。

## 消息表达式语法
- 基本形式：[receiver message]
- 带参数：[receiver message:argument]
- 多参数：[receiver message:arg1 withParam:arg2]
- 嵌套消息：[receiver message:[anotherReceiver anotherMessage]]

## 消息与方法调用的区别
- 动态绑定：运行时确定方法实现
- 灵活性：可以向任何对象发送任何消息
- 消息转发：处理未知消息的机制
- nil接收者：向nil发送消息不会崩溃

## 返回值处理
- 基本类型返回值
- 对象返回值
- void返回值
- 链式消息发送
EOF
BASE_DIR="c:\project\kphub\src\objective-c"

# 创建2.1.2文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.1-对象和消息/2.1.2-消息选择器.md" << 'EOF'
---
title: 消息选择器
icon: selector
order: 2
---

# 2.1.2 消息选择器

## 概述
选择器(Selector)是方法的唯一标识符，用于在运行时识别和调用方法。

## 选择器的特性
- 方法名即选择器
- SEL类型表示
- 编译时确定
- 运行时比较

## 选择器的使用
- @selector()语法
- performSelector:方法族
- 动态方法调用
- 方法签名匹配
EOF

# 创建2.1.3文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.1-对象和消息/2.1.3-实例变量的生成和初始化.md" << 'EOF'
---
title: 实例变量的生成和初始化
icon: instance
order: 3
---

# 2.1.3 实例变量的生成和初始化

## 概述
对象实例化过程中实例变量的创建和初始化是确保对象正确工作的关键步骤。

## 实例变量声明
- 实例变量类型
- 访问权限控制
- 原子性考虑
- 内存管理属性

## 初始化方法
- init方法规范
- 指定初始化方法
- 便利初始化方法
- 初始化失败处理
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-Objective-C程序设计/2.2-类的定义"
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.2-类的定义/README.md" << 'EOF'
---
title: 类的定义
icon: class
order: 2
---

# 2.2 类的定义

本节详细介绍Objective-C中类的定义方式，包括接口声明和实现两个主要部分。
EOF

# 创建2.2.1文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.2-类的定义/2.2.1-类的接口声明.md" << 'EOF'
---
title: 类的接口声明
icon: interface
order: 1
---

# 2.2.1 类的接口声明

## 概述
类的接口声明定义了类的公共API，包括属性、方法和继承关系。

## 接口组成部分
- 类名和父类
- 实例变量声明
- 属性定义
- 方法声明
- 协议遵守
EOF

# 创建专栏-布尔类型文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.2-类的定义/专栏-各种各样的布尔类型.md" << 'EOF'
---
title: 专栏-各种各样的布尔类型
icon: boolean
order: 2
---

# 专栏：各种各样的布尔类型

## C语言布尔值
- 传统整数表示：0和非0
- _Bool类型
- bool宏定义

## Objective-C布尔值
- BOOL类型
- YES和NO常量
- true/false关键字
- NSNumber布尔值封装
EOF

# 创建专栏-返回值文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.2-类的定义/专栏-不指定方法的返回值.md" << 'EOF'
---
title: 专栏-不指定方法的返回值
icon: return
order: 3
---

# 专栏：不指定方法的返回值

## 返回值类型
- void返回类型
- id类型返回值
- 隐式返回类型
- 返回值类型推断

## 最佳实践
- 明确指定返回类型的重要性
- 类型安全考虑
- 代码可维护性
- 编译器优化
EOF

# 创建2.2.2文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.2-类的定义/2.2.2-类的实现.md" << 'EOF'
---
title: 类的实现
icon: implementation
order: 4
---

# 2.2.2 类的实现

## 概述
类的实现包含了类声明的方法的具体实现代码，以及私有方法和属性的定义。

## 实现文件组成
- @implementation指令
- 方法实现
- 私有辅助方法
- 属性合成
- 类扩展实现
EOF
BASE_DIR="c:\project\kphub\src\objective-c"

# 创建2.2.3文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.2-类的定义/2.2.3-一个遥控器的例子.md" << 'EOF'
---
title: 一个遥控器的例子
icon: example
order: 5
---

# 2.2.3 一个遥控器的例子

## 类的设计
- 遥控器类的属性
- 基本操作方法
- 状态管理
- 信号发送机制

## 实现细节
- 按键映射
- 红外信号编码
- 电池状态监控
- 错误处理机制
EOF

# 创建2.3目录
mkdir -p "$BASE_DIR/第2章-Objective-C程序设计/2.3-编译"
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.3-编译/README.md" << 'EOF'
---
title: 编译
icon: compile
order: 3
---

# 2.3 编译

本节介绍Objective-C程序的编译过程和方法，包括单文件编译和多文件项目的编译管理。
EOF

# 创建2.3.1文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.3-编译/2.3.1-简单的编译方法.md" << 'EOF'
---
title: 简单的编译方法
icon: compile
order: 1
---

# 2.3.1 简单的编译方法

## 命令行编译
- gcc/clang编译器使用
- 基本编译选项
- 链接框架
- 调试信息生成

## Xcode编译
- 项目设置
- 编译配置
- 构建阶段
- 编译错误处理
EOF

# 创建2.3.2文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.3-编译/2.3.2-多文件编译.md" << 'EOF'
---
title: 多文件编译
icon: files
order: 2
---

# 2.3.2 多文件编译

## 项目组织
- 文件依赖关系
- 头文件管理
- 预编译头文件
- 模块化编译

## 编译优化
- 增量编译
- 并行编译
- 链接优化
- 编译缓存
EOF

# 创建2.4目录
mkdir -p "$BASE_DIR/第2章-Objective-C程序设计/2.4-程序的书写风格"
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.4-程序的书写风格/README.md" << 'EOF'
---
title: 程序的书写风格
icon: style
order: 4
---

# 2.4 程序的书写风格

本节介绍Objective-C程序的编码规范和最佳实践，包括混合编程和C语言函数的使用方法。
EOF

# 创建2.4.1文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.4-程序的书写风格/2.4.1-混合编程.md" << 'EOF'
---
title: 混合编程
icon: mix
order: 1
---

# 2.4.1 混合编程

## Objective-C与C混编
- 桥接模式
- 数据类型转换
- 内存管理注意事项
- 性能优化考虑

## 最佳实践
- 接口设计原则
- 错误处理策略
- 代码组织方式
- 调试技巧
EOF

# 创建2.4.2文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.4-程序的书写风格/2.4.2-C语言函数的使用方法.md" << 'EOF'
---
title: C语言函数的使用方法
icon: c-function
order: 2
---

# 2.4.2 C语言函数的使用方法

## C函数集成
- 函数声明
- 参数传递
- 返回值处理
- 错误码管理

## 常用C函数
- 字符串处理函数
- 内存管理函数
- 文件操作函数
- 数学计算函数
EOF
BASE_DIR="c:\project\kphub\src\objective-c"

# 创建2.4.3文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.4-程序的书写风格/2.4.3-静态变量的定义.md" << 'EOF'
---
title: 静态变量的定义
icon: static
order: 3
---

# 2.4.3 静态变量的定义

## 静态变量特性
- 作用域和生命周期
- 内存分配方式
- 初始化时机
- 线程安全考虑

## 使用场景
- 单例模式实现
- 常量定义
- 缓存数据
- 计数器实现
EOF

# 创建2.4.4文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.4-程序的书写风格/2.4.4-头文件的引入.md" << 'EOF'
---
title: 头文件的引入
icon: header
order: 4
---

# 2.4.4 头文件的引入

## 引入方式
- #import指令
- @class前向声明
- 框架引入
- 模块导入

## 最佳实践
- 避免循环引用
- 最小化依赖
- 预编译头文件
- 头文件保护
EOF

# 创建专栏文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.4-程序的书写风格/专栏-参考文档和SDK.md" << 'EOF'
---
title: 专栏-参考文档和SDK
icon: document
order: 5
---

# 专栏：参考文档和SDK

## 官方文档
- Apple开发者文档
- Objective-C编程指南
- Foundation框架文档
- Cocoa编程指南

## SDK资源
- Xcode开发工具
- iOS SDK
- macOS SDK
- 示例代码
EOF

# 创建专栏文件
cat > "$BASE_DIR/第2章-Objective-C程序设计/2.4-程序的书写风格/专栏-Xcode的安装.md" << 'EOF'
---
title: 专栏-Xcode的安装
icon: xcode
order: 6
---

# 专栏：Xcode的安装

## 安装准备
- 系统要求
- 磁盘空间
- Apple ID准备
- 网络环境

## 安装步骤
- App Store下载
- 命令行工具安装
- 首次启动配置
- 开发者账号设置
EOF

# 创建第3章目录
mkdir -p "$BASE_DIR/第3章-类和继承"
cat > "$BASE_DIR/第3章-类和继承/README.md" << 'EOF'
---
title: 类和继承
icon: inheritance
order: 3
---

# 第3章 类和继承

本章深入探讨Objective-C中的类继承机制，包括继承的概念、实现方式以及在实际开发中的应用。
EOF

# 创建3.1目录
mkdir -p "$BASE_DIR/第3章-类和继承/3.1-继承的概念"
cat > "$BASE_DIR/第3章-类和继承/3.1-继承的概念/README.md" << 'EOF'
---
title: 继承的概念
icon: concept
order: 1
---

# 3.1 继承的概念

本节介绍面向对象编程中继承的基本概念，以及Objective-C中继承机制的特点。
EOF

# 创建3.1.1文件
cat > "$BASE_DIR/第3章-类和继承/3.1-继承的概念/3.1.1-父类和子类.md" << 'EOF'
---
title: 父类和子类
icon: class
order: 1
---

# 3.1.1 父类和子类

## 继承关系
- 父类定义
- 子类扩展
- 继承层次
- 方法覆写

## 继承特性
- 单继承机制
- 属性继承
- 方法继承
- 访问控制
EOF
BASE_DIR="c:\project\kphub\src\objective-c"

# 创建3.1.2文件
cat > "$BASE_DIR/第3章-类和继承/3.1-继承的概念/3.1.2-类的层次结构.md" << 'EOF'
---
title: 类的层次结构
icon: hierarchy
order: 2
---

# 3.1.2 类的层次结构

## 类继承体系
- NSObject根类
- 框架类层次
- 自定义类层次
- 继承深度控制

## 继承关系设计
- 抽象层次划分
- 接口继承
- 实现继承
- 组合vs继承
EOF

# 创建3.2目录
mkdir -p "$BASE_DIR/第3章-类和继承/3.2-利用继承定义新类"
cat > "$BASE_DIR/第3章-类和继承/3.2-利用继承定义新类/README.md" << 'EOF'
---
title: 利用继承定义新类
icon: extend
order: 2
---

# 3.2 利用继承定义新类

本节详细介绍如何通过继承机制创建新的类，包括继承的语法、方法重写等内容。
EOF

# 创建3.2.1文件
cat > "$BASE_DIR/第3章-类和继承/3.2-利用继承定义新类/3.2.1-继承的定义.md" << 'EOF'
---
title: 继承的定义
icon: definition
order: 1
---

# 3.2.1 继承的定义

## 语法规则
- 继承声明语法
- 访问控制
- 属性继承
- 方法继承

## 继承实现
- 子类扩展
- 方法重写
- 属性重写
- 初始化继承
EOF

# 创建3.2.2文件
cat > "$BASE_DIR/第3章-类和继承/3.2-利用继承定义新类/3.2.2-类定义和头文件.md" << 'EOF'
---
title: 类定义和头文件
icon: header
order: 2
---

# 3.2.2 类定义和头文件

## 头文件组织
- 类声明
- 属性定义
- 方法声明
- 协议遵守

## 实现文件
- 方法实现
- 私有方法
- 类扩展
- 分类定义
EOF

# 创建3.2.3文件
cat > "$BASE_DIR/第3章-类和继承/3.2-利用继承定义新类/3.2.3-继承和方法调用.md" << 'EOF'
---
title: 继承和方法调用
icon: method
order: 3
---

# 3.2.3 继承和方法调用

## 方法调用机制
- 消息传递
- 方法查找
- 动态绑定
- 方法缓存

## 多态实现
- 运行时类型
- 方法重写
- 动态分发
- 消息转发
EOF

# 创建3.2.4文件
cat > "$BASE_DIR/第3章-类和继承/3.2-利用继承定义新类/3.2.4-调用父类的方法.md" << 'EOF'
---
title: 调用父类的方法
icon: super
order: 4
---

# 3.2.4 调用父类的方法

## super关键字
- super用法
- 方法链
- 构造方法调用
- 属性访问

## 实现细节
- 消息发送机制
- 方法查找顺序
- 运行时处理
- 性能考虑
EOF

# 创建3.2.5文件
cat > "$BASE_DIR/第3章-类和继承/3.2-利用继承定义新类/3.2.5-初始化方法的定义.md" << 'EOF'
---
title: 初始化方法的定义
icon: init
order: 5
---

# 3.2.5 初始化方法的定义

## 初始化方法
- init方法规范
- 指定初始化方法
- 便利初始化方法
- 初始化链

## 实现要点
- 父类初始化
- 实例变量初始化
- 错误处理
- 内存管理
EOF
BASE_DIR="c:\project\kphub\src\objective-c"

# 创建3.3目录
mkdir -p "$BASE_DIR/第3章-类和继承/3.3-使用继承的程序示例"
cat > "$BASE_DIR/第3章-类和继承/3.3-使用继承的程序示例/README.md" << 'EOF'
---
title: 使用继承的程序示例
icon: example
order: 3
---

# 3.3 使用继承的程序示例

本节通过具体示例展示如何在实际编程中使用继承机制，包括方法追加和重写的实践案例。
EOF

# 创建3.3.1文件
cat > "$BASE_DIR/第3章-类和继承/3.3-使用继承的程序示例/3.3.1-追加新方法的例子.md" << 'EOF'
---
title: 追加新方法的例子
icon: add
order: 1
---

# 3.3.1 追加新方法的例子

## 示例说明
- 子类扩展场景
- 新方法设计
- 与父类方法协作
- 接口设计考虑

## 实现步骤
- 继承现有类
- 定义新方法
- 状态管理
- 错误处理
EOF

# 创建3.3.2文件
cat > "$BASE_DIR/第3章-类和继承/3.3-使用继承的程序示例/3.3.2-方法重写的例子.md" << 'EOF'
---
title: 方法重写的例子
icon: override
order: 2
---

# 3.3.2 方法重写的例子

## 重写场景
- 行为定制
- 功能增强
- 性能优化
- 特殊处理

## 实现技巧
- 方法签名匹配
- super调用时机
- 状态维护
- 异常处理
EOF

# 创建3.4目录
mkdir -p "$BASE_DIR/第3章-类和继承/3.4-继承和方法调用"
cat > "$BASE_DIR/第3章-类和继承/3.4-继承和方法调用/README.md" << 'EOF'
---
title: 继承和方法调用
icon: method
order: 4
---

# 3.4 继承和方法调用

本节详细介绍继承体系中的方法调用机制，包括self和super关键字的使用。
EOF

# 创建3.4.1文件
cat > "$BASE_DIR/第3章-类和继承/3.4-继承和方法调用/3.4.1-使用self调用方法.md" << 'EOF'
---
title: 使用self调用方法
icon: self
order: 1
---

# 3.4.1 使用self调用方法

## self关键字
- self的含义
- 动态绑定
- 方法查找
- 实例变量访问

## 使用场景
- 方法内部调用
- 链式调用
- 委托模式
- 回调实现
EOF

# 创建3.4.2文件
cat > "$BASE_DIR/第3章-类和继承/3.4-继承和方法调用/3.4.2-使用super调用方法.md" << 'EOF'
---
title: 使用super调用方法
icon: super
order: 2
---

# 3.4.2 使用super调用方法

## super机制
- 父类方法访问
- 方法链实现
- 构造方法调用
- 重写中的super

## 最佳实践
- 调用时机
- 参数传递
- 返回值处理
- 异常处理
EOF

# 创建3.4.3文件
cat > "$BASE_DIR/第3章-类和继承/3.4-继承和方法调用/3.4.3-测试程序.md" << 'EOF'
---
title: 测试程序
icon: test
order: 3
---

# 3.4.3 测试程序

## 测试设计
- 继承关系测试
- 方法调用测试
- 边界条件测试
- 异常情况测试

## 测试实现
- 测试类设计
- 测试用例编写
- 断言使用
- 测试覆盖率
EOF
BASE_DIR="c:\project\kphub\src\objective-c"

# 创建3.5目录
mkdir -p "$BASE_DIR/第3章-类和继承/3.5-方法定义时的注意事项"
cat > "$BASE_DIR/第3章-类和继承/3.5-方法定义时的注意事项/README.md" << 'EOF'
---
title: 方法定义时的注意事项
icon: method
order: 5
---

# 3.5 方法定义时的注意事项

本节介绍在Objective-C中定义方法时需要注意的关键点和最佳实践。
EOF

# 创建3.5.1文件
cat > "$BASE_DIR/第3章-类和继承/3.5-方法定义时的注意事项/3.5.1-局部方法.md" << 'EOF'
---
title: 局部方法
icon: local
order: 1
---

# 3.5.1 局部方法

## 局部方法特点
- 作用域限制
- 私有实现
- 内部调用
- 封装性保证

## 使用场景
- 辅助功能实现
- 代码复用
- 逻辑封装
- 实现细节隐藏
EOF

# 创建3.5.2文件
cat > "$BASE_DIR/第3章-类和继承/3.5-方法定义时的注意事项/3.5.2-指定初始化方法.md" << 'EOF'
---
title: 指定初始化方法
icon: init
order: 2
---

# 3.5.2 指定初始化方法

## 初始化方法规范
- 命名规则
- 参数设计
- 返回值处理
- 错误处理

## 实现要点
- 父类初始化
- 成员初始化
- 状态验证
- 内存管理
EOF

# 创建专栏文件
cat > "$BASE_DIR/第3章-类和继承/专栏-Objective-C与开源软件.md" << 'EOF'
---
title: 专栏-Objective-C与开源软件
icon: opensource
order: 6
---

# 专栏：Objective-C与开源软件

## 开源生态
- CocoaPods管理
- 常用开源框架
- 社区贡献
- 许可证选择

## 开源实践
- 代码复用
- 最佳实践
- 版本控制
- 文档维护
EOF

# 创建第4章目录
mkdir -p "$BASE_DIR/第4章-对象的类型和动态绑定"
cat > "$BASE_DIR/第4章-对象的类型和动态绑定/README.md" << 'EOF'
---
title: 对象的类型和动态绑定
icon: type
order: 4
---

# 第4章 对象的类型和动态绑定

本章深入探讨Objective-C的动态特性，包括对象类型系统和动态绑定机制。
EOF

# 创建4.1目录
mkdir -p "$BASE_DIR/第4章-对象的类型和动态绑定/4.1-动态绑定"
cat > "$BASE_DIR/第4章-对象的类型和动态绑定/4.1-动态绑定/README.md" << 'EOF'
---
title: 动态绑定
icon: binding
order: 1
---

# 4.1 动态绑定

本节介绍Objective-C的动态绑定机制，这是其区别于其他语言的重要特性。
EOF

# 创建4.1.1文件
cat > "$BASE_DIR/第4章-对象的类型和动态绑定/4.1-动态绑定/4.1.1-什么是动态绑定.md" << 'EOF'
---
title: 什么是动态绑定
icon: concept
order: 1
---

# 4.1.1 什么是动态绑定

## 概念解释
- 运行时绑定
- 消息传递机制
- 方法查找
- 动态分发

## 实现原理
- objc_msgSend
- 方法缓存
- 消息转发
- 性能考虑
EOF
