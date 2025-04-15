BASE_DIR="c:\project\kphub\src\kotlin"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin开发知识体系
icon: kotlin
order: 1
---

# Kotlin开发知识体系

本知识库系统地整理了Kotlin开发所需掌握的核心知识和技能，从基础语法到高级特性，帮助开发者快速掌握Kotlin编程。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Kotlin基础"

# 创建第1章README文件
cat > "$BASE_DIR/第1章-Kotlin基础/README.md" << 'EOF'
---
title: Kotlin基础
icon: kotlin-basic
order: 1
---

# Kotlin基础

本章介绍Kotlin的基础知识，包括基本语法、习惯用法等核心概念。
EOF

# 创建1.1入门基础目录
mkdir -p "$BASE_DIR/第1章-Kotlin基础/1.1-入门基础"

# 创建1.1入门基础README文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.1-入门基础/README.md" << 'EOF'
---
title: 入门基础
icon: kotlin-intro
order: 1
---

# 入门基础

本节介绍Kotlin的入门基础知识。
EOF

# 创建1.1.1基本语法文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.1-入门基础/1.1.1-基本语法.md" << 'EOF'
---
title: 基本语法
icon: kotlin-syntax
order: 1
---

# 基本语法

## 程序入口
- main函数
- 包声明
- 导入语句
- 注释规范

## 基本语法
- 变量声明
- 函数定义
- 控制流程
- 类与对象
- 空安全

## 语言特性
- 类型推断
- 智能转换
- 扩展函数
- 数据类
- 密封类

## 最佳实践
- 命名规范
- 代码组织
- 性能优化
- 调试技巧
- 常见问题
EOF

# 创建1.1.2习惯用法文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.1-入门基础/1.1.2-习惯用法.md" << 'EOF'
---
title: 习惯用法
icon: kotlin-idioms
order: 2
---

# 习惯用法

## 常见用法
- 数据类
- 单例模式
- 扩展函数
- 委托属性
- 高阶函数

## 函数用法
- lambda表达式
- 内联函数
- 操作符重载
- 尾递归优化
- 作用域函数

## 特殊语法
- 解构声明
- 类型别名
- 密封类
- 对象表达式
- 内联类

## 最佳实践
- 代码风格
- 性能考虑
- 安全处理
- 调试技巧
- 常见问题
EOF

# 创建1.1.3例学Kotlin文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.1-入门基础/1.1.3-例学Kotlin.md" << 'EOF'
---
title: 例学Kotlin
icon: kotlin-example
order: 3
---

# 例学Kotlin

## 基础示例
- Hello World
- 变量使用
- 函数定义
- 类的创建
- 接口实现

## 进阶示例
- 协程使用
- 集合操作
- 文件处理
- 网络请求
- 数据库访问

## 实战项目
- 项目结构
- 代码实现
- 测试方法
- 部署运行
- 性能优化

## 最佳实践
- 开发流程
- 调试技巧
- 性能优化
- 问题解决
- 项目管理
EOF

# 创建1.1.4编码规范文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.1-入门基础/1.1.4-编码规范.md" << 'EOF'
---
title: 编码规范
icon: kotlin-style
order: 4
---

# 编码规范

## 源文件规范
- 文件命名
- 源文件结构
- 包声明规则
- 导入语句规范
- 类布局规则

## 命名规范
- 包命名
- 类命名
- 函数命名
- 变量命名
- 常量命名

## 格式规范
- 缩进风格
- 空白规则
- 换行规则
- 注释规范
- 文档规范

## 最佳实践
- 代码审查
- 工具使用
- 团队协作
- 版本控制
- 持续集成
EOF

# 创建1.2类型系统目录
mkdir -p "$BASE_DIR/第1章-Kotlin基础/1.2-类型系统"

# 创建1.2类型系统README文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.2-类型系统/README.md" << 'EOF'
---
title: 类型系统
icon: kotlin-type
order: 2
---

# 类型系统

本节介绍Kotlin的类型系统相关知识。
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建1.2.1基本类型概述文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.2-类型系统/1.2.1-基本类型概述.md" << 'EOF'
---
title: 基本类型概述
icon: kotlin-types
order: 1
---

# 基本类型概述

## 类型体系
- 数字类型
- 字符类型
- 布尔类型
- 数组类型
- 字符串类型

## 类型特性
- 可空类型
- 类型推断
- 类型转换
- 类型检查
- 智能转换

## 类型安全
- 空安全
- 类型边界
- 类型约束
- 类型验证
- 异常处理

## 最佳实践
- 类型选择
- 性能考虑
- 安全处理
- 调试技巧
- 常见问题
EOF

# 创建1.2.2数字类型文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.2-类型系统/1.2.2-数字类型.md" << 'EOF'
---
title: 数字类型
icon: kotlin-numbers
order: 2
---

# 数字类型

## 整数类型
- Byte
- Short
- Int
- Long
- 进制表示

## 浮点类型
- Float
- Double
- 精度控制
- 舍入模式
- 特殊值

## 数字运算
- 基本运算
- 位运算
- 类型转换
- 运算符重载
- 数学函数

## 最佳实践
- 类型选择
- 性能优化
- 精度处理
- 边界处理
- 常见问题
EOF

# 创建1.2.3布尔类型文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.2-类型系统/1.2.3-布尔类型.md" << 'EOF'
---
title: 布尔类型
icon: kotlin-boolean
order: 3
---

# 布尔类型

## 基本概念
- 布尔值
- 真假判断
- 默认值
- 可空布尔
- 类型转换

## 逻辑运算
- 与运算
- 或运算
- 非运算
- 短路求值
- 运算优先级

## 应用场景
- 条件判断
- 循环控制
- 表达式求值
- 标志位使用
- 状态管理

## 最佳实践
- 使用建议
- 性能优化
- 安全处理
- 调试技巧
- 常见问题
EOF

# 创建1.2.4字符与字符串文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.2-类型系统/1.2.4-字符与字符串.md" << 'EOF'
---
title: 字符与字符串
icon: kotlin-string
order: 4
---

# 字符与字符串

## 字符类型
- Char定义
- Unicode支持
- 转义字符
- 字符操作
- 类型转换

## 字符串类型
- String定义
- 字符串模板
- 原始字符串
- 字符串操作
- 字符串池

## 常用操作
- 拼接操作
- 截取操作
- 查找替换
- 正则支持
- 格式化

## 最佳实践
- 性能优化
- 内存管理
- 编码处理
- 安全考虑
- 常见问题
EOF

# 创建1.2.5数组文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.2-类型系统/1.2.5-数组.md" << 'EOF'
---
title: 数组
icon: kotlin-array
order: 5
---

# 数组

## 数组基础
- 数组定义
- 数组创建
- 数组访问
- 数组遍历
- 数组操作

## 特殊数组
- 基本类型数组
- 对象数组
- 多维数组
- 可空数组
- 数组转换

## 数组操作
- 增删改查
- 排序操作
- 查找操作
- 转换操作
- 工具函数

## 最佳实践
- 性能优化
- 内存管理
- 边界检查
- 并发处理
- 常见问题
EOF

# 创建1.2.6无符号整型文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.2-类型系统/1.2.6-无符号整型.md" << 'EOF'
---
title: 无符号整型
icon: kotlin-unsigned
order: 6
---

# 无符号整型

## 基本概念
- UByte
- UShort
- UInt
- ULong
- 范围定义

## 运算操作
- 算术运算
- 位运算
- 比较操作
- 类型转换
- 溢出处理

## 应用场景
- 数据处理
- 位操作
- 网络编程
- 文件操作
- 性能优化

## 最佳实践
- 类型选择
- 性能考虑
- 安全处理
- 调试技巧
- 常见问题
EOF

# 创建1.2.7类型检测与类型转换文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.2-类型系统/1.2.7-类型检测与类型转换.md" << 'EOF'
---
title: 类型检测与类型转换
icon: kotlin-type-check
order: 7
---

# 类型检测与类型转换

## 类型检测
- is运算符
- !is运算符
- 智能转换
- 类型判断
- 泛型检测

## 类型转换
- as运算符
- 安全转换
- 显式转换
- 隐式转换
- 泛型转换

## 转换规则
- 数值转换
- 对象转换
- 空安全转换
- 集合转换
- 泛型转换

## 最佳实践
- 安全处理
- 性能优化
- 异常处理
- 调试技巧
- 常见问题
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建1.3控制流程目录
mkdir -p "$BASE_DIR/第1章-Kotlin基础/1.3-控制流程"

# 创建1.3控制流程README文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.3-控制流程/README.md" << 'EOF'
---
title: 控制流程
icon: kotlin-control
order: 3
---

# 控制流程

本节介绍Kotlin的控制流程相关知识。
EOF

# 创建1.3.1条件与循环文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.3-控制流程/1.3.1-条件与循环.md" << 'EOF'
---
title: 条件与循环
icon: kotlin-condition
order: 1
---

# 条件与循环

## 条件语句
- if表达式
- when表达式
- 条件分支
- 表达式结果
- 智能转换

## 循环语句
- for循环
- while循环
- do-while循环
- 区间迭代
- 集合迭代

## 控制结构
- 循环控制
- 条件嵌套
- 表达式使用
- 性能优化
- 代码简化

## 最佳实践
- 代码风格
- 性能考虑
- 可读性
- 调试技巧
- 常见问题
EOF

# 创建1.3.2返回与跳转文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.3-控制流程/1.3.2-返回与跳转.md" << 'EOF'
---
title: 返回与跳转
icon: kotlin-return
order: 2
---

# 返回与跳转

## 返回语句
- return表达式
- 标签返回
- 匿名函数
- lambda表达式
- 内联函数

## 跳转语句
- break语句
- continue语句
- 标签跳转
- 循环跳转
- 表达式跳转

## 使用场景
- 函数返回
- 循环控制
- 条件跳转
- 异常处理
- 流程控制

## 最佳实践
- 使用建议
- 性能优化
- 代码风格
- 调试技巧
- 常见问题
EOF

# 创建1.3.3异常处理文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.3-控制流程/1.3.3-异常处理.md" << 'EOF'
---
title: 异常处理
icon: kotlin-exception
order: 3
---

# 异常处理

## 异常基础
- 异常类型
- 异常抛出
- 异常捕获
- 异常传播
- 自定义异常

## 处理机制
- try-catch
- finally块
- 多重捕获
- 异常链
- 资源管理

## 最佳实践
- 异常设计
- 错误处理
- 性能考虑
- 调试技巧
- 日志记录

## 使用建议
- 异常粒度
- 异常封装
- 资源释放
- 性能优化
- 代码可读性
EOF

# 创建1.4包与导入目录
mkdir -p "$BASE_DIR/第1章-Kotlin基础/1.4-包与导入"

# 创建1.4包与导入README文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.4-包与导入/README.md" << 'EOF'
---
title: 包与导入
icon: kotlin-package
order: 4
---

# 包与导入

本节介绍Kotlin的包管理和导入机制。
EOF

# 创建1.4.1包的定义与使用文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.4-包与导入/1.4.1-包的定义与使用.md" << 'EOF'
---
title: 包的定义与使用
icon: kotlin-package-def
order: 1
---

# 包的定义与使用

## 包定义
- 包声明
- 包结构
- 命名规范
- 文件组织
- 可见性

## 包使用
- 包引用
- 包别名
- 包嵌套
- 包冲突
- 包管理

## 最佳实践
- 包设计
- 命名规范
- 组织结构
- 版本管理
- 依赖处理

## 使用建议
- 设计原则
- 性能优化
- 维护性
- 可读性
- 扩展性
EOF

# 创建1.4.2导入声明文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.4-包与导入/1.4.2-导入声明.md" << 'EOF'
---
title: 导入声明
icon: kotlin-import
order: 2
---

# 导入声明

## 导入语法
- 基本导入
- 选择性导入
- 全部导入
- 别名导入
- 嵌套导入

## 导入规则
- 导入顺序
- 导入冲突
- 可见性
- 作用域
- 性能影响

## 最佳实践
- 导入规范
- 冲突处理
- 性能优化
- 代码组织
- 维护建议

## 使用建议
- 导入策略
- 命名规范
- 性能考虑
- 可读性
- 维护性
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建1.4.3包的组织结构文件
cat > "$BASE_DIR/第1章-Kotlin基础/1.4-包与导入/1.4.3-包的组织结构.md" << 'EOF'
---
title: 包的组织结构
icon: kotlin-package-structure
order: 3
---

# 包的组织结构

## 目录结构
- 包层次
- 文件组织
- 命名规范
- 模块划分
- 资源管理

## 组织原则
- 职责划分
- 依赖管理
- 版本控制
- 访问控制
- 扩展性

## 最佳实践
- 结构设计
- 命名规范
- 依赖管理
- 版本控制
- 维护策略

## 使用建议
- 设计原则
- 重构技巧
- 性能优化
- 可维护性
- 团队协作
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-类与对象"

# 创建第2章README文件
cat > "$BASE_DIR/第2章-类与对象/README.md" << 'EOF'
---
title: 类与对象
icon: kotlin-class
order: 2
---

# 类与对象

本章介绍Kotlin的类与对象相关知识。
EOF

# 创建2.1类的基本概念目录
mkdir -p "$BASE_DIR/第2章-类与对象/2.1-类的基本概念"

# 创建2.1类的基本概念README文件
cat > "$BASE_DIR/第2章-类与对象/2.1-类的基本概念/README.md" << 'EOF'
---
title: 类的基本概念
icon: kotlin-class-basic
order: 1
---

# 类的基本概念

本节介绍Kotlin类的基本概念和使用方法。
EOF

# 创建2.1.1类的定义文件
cat > "$BASE_DIR/第2章-类与对象/2.1-类的基本概念/2.1.1-类的定义.md" << 'EOF'
---
title: 类的定义
icon: kotlin-class-def
order: 1
---

# 类的定义

## 基本语法
- 类声明
- 属性定义
- 方法定义
- 访问修饰符
- 嵌套类

## 特殊类型
- 数据类
- 密封类
- 枚举类
- 抽象类
- 内部类

## 类成员
- 属性
- 方法
- 构造器
- 初始化块
- 伴生对象

## 最佳实践
- 设计原则
- 命名规范
- 封装策略
- 继承设计
- 接口实现
EOF

# 创建2.1.2构造函数文件
cat > "$BASE_DIR/第2章-类与对象/2.1-类的基本概念/2.1.2-构造函数.md" << 'EOF'
---
title: 构造函数
icon: kotlin-constructor
order: 2
---

# 构造函数

## 基本概念
- 主构造函数
- 次构造函数
- 初始化块
- 构造参数
- 默认值

## 构造规则
- 委托调用
- 参数传递
- 初始化顺序
- 可见性
- 继承关系

## 使用场景
- 对象创建
- 参数初始化
- 继承实现
- 工厂模式
- 单例模式

## 最佳实践
- 设计原则
- 参数处理
- 初始化策略
- 性能优化
- 代码复用
EOF

# 创建2.1.3实例创建文件
cat > "$BASE_DIR/第2章-类与对象/2.1-类的基本概念/2.1.3-实例创建.md" << 'EOF'
---
title: 实例创建
icon: kotlin-instance
order: 3
---

# 实例创建

## 创建方式
- new关键字
- 工厂方法
- 伴生对象
- 扩展函数
- 委托创建

## 初始化
- 属性初始化
- 延迟初始化
- 默认值
- 初始化顺序
- 依赖注入

## 实例管理
- 生命周期
- 内存管理
- 对象池
- 缓存策略
- 资源释放

## 最佳实践
- 创建模式
- 性能优化
- 内存管理
- 线程安全
- 资源控制
EOF

# 创建2.1.4继承文件
cat > "$BASE_DIR/第2章-类与对象/2.1-类的基本概念/2.1.4-继承.md" << 'EOF'
---
title: 继承
icon: kotlin-inheritance
order: 4
---

# 继承

## 基本概念
- 继承语法
- 超类调用
- 方法重写
- 属性重写
- 抽象类

## 继承特性
- 单继承
- 接口实现
- 多态性
- 可见性
- 密封类

## 使用场景
- 代码复用
- 功能扩展
- 多态实现
- 框架设计
- 设计模式

## 最佳实践
- 继承设计
- 接口抽象
- 多态应用
- 性能优化
- 代码维护
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建2.2属性与接口目录
mkdir -p "$BASE_DIR/第2章-类与对象/2.2-属性与接口"

# 创建2.2属性与接口README文件
cat > "$BASE_DIR/第2章-类与对象/2.2-属性与接口/README.md" << 'EOF'
---
title: 属性与接口
icon: kotlin-property-interface
order: 2
---

# 属性与接口

本节介绍Kotlin的属性和接口相关知识。
EOF

# 创建2.2.1属性声明与使用文件
cat > "$BASE_DIR/第2章-类与对象/2.2-属性与接口/2.2.1-属性声明与使用.md" << 'EOF'
---
title: 属性声明与使用
icon: kotlin-property
order: 1
---

# 属性声明与使用

## 属性声明
- var/val声明
- 属性类型
- 初始化
- 延迟初始化
- 委托属性

## 访问器
- Getter方法
- Setter方法
- 可见性修饰
- 访问控制
- 属性引用

## 属性特性
- 幕后字段
- 编译期常量
- 延迟属性
- 可观察属性
- 映射属性

## 最佳实践
- 属性设计
- 封装原则
- 性能优化
- 线程安全
- 内存管理
EOF

# 创建2.2.2接口定义文件
cat > "$BASE_DIR/第2章-类与对象/2.2-属性与接口/2.2.2-接口定义.md" << 'EOF'
---
title: 接口定义
icon: kotlin-interface
order: 2
---

# 接口定义

## 基本概念
- 接口声明
- 方法定义
- 属性定义
- 默认实现
- 多接口继承

## 接口特性
- 抽象方法
- 默认方法
- 接口属性
- 接口继承
- 冲突解决

## 实现机制
- 接口实现
- 多接口实现
- 委托实现
- 接口组合
- 接口适配

## 最佳实践
- 接口设计
- 实现策略
- 扩展性
- 可维护性
- 代码复用
EOF

# 创建2.2.3函数式(SAM)接口文件
cat > "$BASE_DIR/第2章-类与对象/2.2-属性与接口/2.2.3-函数式(SAM)接口.md" << 'EOF'
---
title: 函数式(SAM)接口
icon: kotlin-sam
order: 3
---

# 函数式(SAM)接口

## 基本概念
- SAM定义
- 单一方法
- Lambda表达式
- 类型推断
- 接口转换

## 使用场景
- 事件处理
- 回调函数
- 策略模式
- 函数式编程
- 流式处理

## 实现细节
- 接口定义
- Lambda转换
- 类型适配
- 性能优化
- 内存管理

## 最佳实践
- 设计原则
- 使用策略
- 性能考虑
- 代码简化
- 调试技巧
EOF

# 创建2.2.4可见性修饰符文件
cat > "$BASE_DIR/第2章-类与对象/2.2-属性与接口/2.2.4-可见性修饰符.md" << 'EOF'
---
title: 可见性修饰符
icon: kotlin-visibility
order: 4
---

# 可见性修饰符

## 修饰符类型
- public
- private
- protected
- internal
- 默认可见性

## 使用场景
- 类可见性
- 属性可见性
- 方法可见性
- 构造器可见性
- 嵌套声明

## 访问控制
- 包级可见性
- 类级可见性
- 模块可见性
- 继承可见性
- 重写规则

## 最佳实践
- 封装原则
- 访问控制
- 继承设计
- 模块化
- 安全性
EOF

# 创建2.3扩展与数据类目录
mkdir -p "$BASE_DIR/第2章-类与对象/2.3-扩展与数据类"

# 创建2.3扩展与数据类README文件
cat > "$BASE_DIR/第2章-类与对象/2.3-扩展与数据类/README.md" << 'EOF'
---
title: 扩展与数据类
icon: kotlin-extension
order: 3
---

# 扩展与数据类

本节介绍Kotlin的扩展功能和数据类相关知识。
EOF

# 创建2.3.1扩展函数文件
cat > "$BASE_DIR/第2章-类与对象/2.3-扩展与数据类/2.3.1-扩展函数.md" << 'EOF'
---
title: 扩展函数
icon: kotlin-extension-function
order: 1
---

# 扩展函数

## 基本概念
- 扩展定义
- 接收者类型
- 扩展作用域
- 可空接收者
- 扩展属性

## 使用场景
- 功能扩展
- 工具函数
- 链式调用
- DSL构建
- 代码复用

## 实现细节
- 静态解析
- 成员优先
- 可见性规则
- 泛型支持
- 空安全处理

## 最佳实践
- 设计原则
- 命名规范
- 作用域控制
- 性能优化
- 代码组织
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建2.3.2扩展属性文件
cat > "$BASE_DIR/第2章-类与对象/2.3-扩展与数据类/2.3.2-扩展属性.md" << 'EOF'
---
title: 扩展属性
icon: kotlin-extension-property
order: 2
---

# 扩展属性

## 基本概念
- 属性定义
- 访问器
- 幕后字段
- 委托属性
- 可空扩展

## 使用场景
- 计算属性
- 缓存属性
- 状态扩展
- 工具属性
- 链式调用

## 实现细节
- 初始化
- 访问控制
- 作用域
- 可见性
- 线程安全

## 最佳实践
- 设计原则
- 性能优化
- 内存管理
- 线程安全
- 代码组织
EOF

# 创建2.3.3数据类文件
cat > "$BASE_DIR/第2章-类与对象/2.3-扩展与数据类/2.3.3-数据类.md" << 'EOF'
---
title: 数据类
icon: kotlin-data-class
order: 3
---

# 数据类

## 基本特性
- 数据类定义
- 属性声明
- 自动生成方法
- 解构声明
- 复制功能

## 使用场景
- 数据传输
- 值对象
- 不可变对象
- JSON序列化
- 数据封装

## 实现细节
- 构造函数
- 组件函数
- 继承限制
- 接口实现
- 序列化支持

## 最佳实践
- 设计原则
- 不可变性
- 性能优化
- 序列化
- 数据安全
EOF

# 创建2.3.4密封类与密封接口文件
cat > "$BASE_DIR/第2章-类与对象/2.3-扩展与数据类/2.3.4-密封类与密封接口.md" << 'EOF'
---
title: 密封类与密封接口
icon: kotlin-sealed
order: 4
---

# 密封类与密封接口

## 基本概念
- 密封类定义
- 密封接口
- 继承限制
- 类型层次
- 模式匹配

## 使用场景
- 状态管理
- 类型安全
- 枚举扩展
- 代数数据类型
- 领域建模

## 实现细节
- 构造限制
- 子类定义
- when表达式
- 编译优化
- 类型检查

## 最佳实践
- 设计模式
- 类型安全
- 代码组织
- 扩展性
- 维护性
EOF

# 创建2.4泛型与嵌套类目录
mkdir -p "$BASE_DIR/第2章-类与对象/2.4-泛型与嵌套类"

# 创建2.4泛型与嵌套类README文件
cat > "$BASE_DIR/第2章-类与对象/2.4-泛型与嵌套类/README.md" << 'EOF'
---
title: 泛型与嵌套类
icon: kotlin-generic
order: 4
---

# 泛型与嵌套类

本节介绍Kotlin的泛型和嵌套类相关知识。
EOF

# 创建2.4.1泛型：in、out、where文件
cat > "$BASE_DIR/第2章-类与对象/2.4-泛型与嵌套类/2.4.1-泛型：in、out、where.md" << 'EOF'
---
title: 泛型：in、out、where
icon: kotlin-generic-variance
order: 1
---

# 泛型：in、out、where

## 基本概念
- 类型参数
- 变型
- 型变注解
- 类型投影
- 类型约束

## 使用场景
- 集合操作
- 类型转换
- 协变
- 逆变
- 不变性

## 实现细节
- 泛型类
- 泛型函数
- 类型擦除
- 实化类型
- 星投影

## 最佳实践
- 设计原则
- 类型安全
- 性能优化
- 代码复用
- 错误处理
EOF

# 创建2.4.2嵌套类文件
cat > "$BASE_DIR/第2章-类与对象/2.4-泛型与嵌套类/2.4.2-嵌套类.md" << 'EOF'
---
title: 嵌套类
icon: kotlin-nested
order: 2
---

# 嵌套类

## 基本概念
- 嵌套类定义
- 内部类
- 匿名内部类
- 对象表达式
- 访问规则

## 使用场景
- 封装实现
- 状态管理
- 回调处理
- UI组件
- 设计模式

## 实现细节
- 类型关系
- 访问控制
- 实例创建
- 内存管理
- 线程安全

## 最佳实践
- 设计原则
- 封装策略
- 性能优化
- 内存管理
- 代码组织
EOF

# 创建2.4.3枚举类文件
cat > "$BASE_DIR/第2章-类与对象/2.4-泛型与嵌套类/2.4.3-枚举类.md" << 'EOF'
---
title: 枚举类
icon: kotlin-enum
order: 3
---

# 枚举类

## 基本概念
- 枚举定义
- 枚举常量
- 枚举属性
- 枚举方法
- 抽象方法

## 使用场景
- 状态管理
- 类型安全
- 常量定义
- 策略模式
- 单例实现

## 实现细节
- 构造函数
- 接口实现
- 方法重写
- 序列化
- 比较操作

## 最佳实践
- 设计原则
- 命名规范
- 性能优化
- 代码组织
- 类型安全
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建2.4.4内联类文件
cat > "$BASE_DIR/第2章-类与对象/2.4-泛型与嵌套类/2.4.4-内联类.md" << 'EOF'
---
title: 内联类
icon: kotlin-inline
order: 4
---

# 内联类

## 基本概念
- 内联类定义
- 包装类型
- 值语义
- 成员限制
- 类型别名

## 使用场景
- 性能优化
- 类型安全
- 值封装
- 度量单位
- 标识类型

## 实现细节
- 编译优化
- 装箱避免
- 方法调用
- 继承限制
- 接口实现

## 最佳实践
- 设计原则
- 性能优化
- 内存管理
- 类型安全
- 代码组织
EOF

# 创建2.5对象与委托目录
mkdir -p "$BASE_DIR/第2章-类与对象/2.5-对象与委托"

# 创建2.5对象与委托README文件
cat > "$BASE_DIR/第2章-类与对象/2.5-对象与委托/README.md" << 'EOF'
---
title: 对象与委托
icon: kotlin-object
order: 5
---

# 对象与委托

本节介绍Kotlin的对象表达式、对象声明和委托相关知识。
EOF

# 创建2.5.1对象表达式文件
cat > "$BASE_DIR/第2章-类与对象/2.5-对象与委托/2.5.1-对象表达式.md" << 'EOF'
---
title: 对象表达式
icon: kotlin-object-expression
order: 1
---

# 对象表达式

## 基本概念
- 匿名对象
- 对象字面量
- 继承实现
- 作用域
- 访问规则

## 使用场景
- 临时对象
- 接口实现
- 事件处理
- 回调函数
- 状态封装

## 实现细节
- 类型推断
- 变量捕获
- 生命周期
- 内存管理
- 线程安全

## 最佳实践
- 设计原则
- 性能优化
- 内存管理
- 代码组织
- 线程安全
EOF

# 创建2.5.2对象声明文件
cat > "$BASE_DIR/第2章-类与对象/2.5-对象与委托/2.5.2-对象声明.md" << 'EOF'
---
title: 对象声明
icon: kotlin-object-declaration
order: 2
---

# 对象声明

## 基本概念
- 单例模式
- 伴生对象
- 初始化
- 继承实现
- 接口实现

## 使用场景
- 全局状态
- 工具类
- 工厂方法
- 配置管理
- 资源共享

## 实现细节
- 线程安全
- 延迟初始化
- 序列化
- 反射支持
- 内存管理

## 最佳实践
- 设计模式
- 性能优化
- 线程安全
- 资源管理
- 代码组织
EOF

# 创建2.5.3委托模式文件
cat > "$BASE_DIR/第2章-类与对象/2.5-对象与委托/2.5.3-委托模式.md" << 'EOF'
---
title: 委托模式
icon: kotlin-delegation
order: 3
---

# 委托模式

## 基本概念
- 类委托
- 接口委托
- 委托属性
- 委托方法
- 委托规则

## 使用场景
- 装饰模式
- 代理模式
- 观察者模式
- 策略模式
- 适配器模式

## 实现细节
- 委托声明
- 方法转发
- 接口实现
- 生命周期
- 性能优化

## 最佳实践
- 设计模式
- 代码复用
- 性能优化
- 可维护性
- 扩展性
EOF

# 创建2.5.4属性委托文件
cat > "$BASE_DIR/第2章-类与对象/2.5-对象与委托/2.5.4-属性委托.md" << 'EOF'
---
title: 属性委托
icon: kotlin-property-delegation
order: 4
---

# 属性委托

## 基本概念
- 委托属性
- 标准委托
- 自定义委托
- 局部委托
- 提供者接口

## 使用场景
- 延迟加载
- 观察属性
- 映射属性
- 验证属性
- 缓存属性

## 实现细节
- 委托约定
- 操作符重载
- 属性访问
- 线程安全
- 性能优化

## 最佳实践
- 设计模式
- 性能优化
- 线程安全
- 内存管理
- 代码组织
EOF

# 创建2.5.5类型别名文件
cat > "$BASE_DIR/第2章-类与对象/2.5-对象与委托/2.5.5-类型别名.md" << 'EOF'
---
title: 类型别名
icon: kotlin-typealias
order: 5
---

# 类型别名

## 基本概念
- 类型别名定义
- 函数类型
- 泛型类型
- 嵌套类型
- 可见性规则

## 使用场景
- 简化类型
- 函数类型
- 泛型别名
- 代码重构
- 可读性提升

## 实现细节
- 类型推断
- 作用域
- 可见性
- 编译优化
- 类型安全

## 最佳实践
- 命名规范
- 类型安全
- 代码组织
- 可读性
- 维护性
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建第3章目录
mkdir -p "$BASE_DIR/第3章-函数与表达式"

# 创建第3章README文件
cat > "$BASE_DIR/第3章-函数与表达式/README.md" << 'EOF'
---
title: 函数与表达式
icon: kotlin-function
order: 3
---

# 函数与表达式

本章介绍Kotlin的函数和表达式相关知识。
EOF

# 创建3.1函数基础目录
mkdir -p "$BASE_DIR/第3章-函数与表达式/3.1-函数基础"

# 创建3.1函数基础README文件
cat > "$BASE_DIR/第3章-函数与表达式/3.1-函数基础/README.md" << 'EOF'
---
title: 函数基础
icon: kotlin-function-basic
order: 1
---

# 函数基础

本节介绍Kotlin函数的基础知识。
EOF

# 创建3.1.1函数声明文件
cat > "$BASE_DIR/第3章-函数与表达式/3.1-函数基础/3.1.1-函数声明.md" << 'EOF'
---
title: 函数声明
icon: kotlin-function-declaration
order: 1
---

# 函数声明

## 基本语法
- 函数定义
- 函数名称
- 参数列表
- 返回类型
- 函数体

## 函数类型
- 顶层函数
- 成员函数
- 局部函数
- 扩展函数
- 运算符函数

## 可见性修饰
- public
- private
- protected
- internal
- 默认可见性

## 最佳实践
- 命名规范
- 参数设计
- 返回值设计
- 可见性控制
- 代码组织
EOF

# 创建3.1.2函数参数文件
cat > "$BASE_DIR/第3章-函数与表达式/3.1-函数基础/3.1.2-函数参数.md" << 'EOF'
---
title: 函数参数
icon: kotlin-function-parameter
order: 2
---

# 函数参数

## 参数类型
- 必需参数
- 可选参数
- 命名参数
- 可变参数
- 默认参数

## 参数传递
- 值传递
- 引用传递
- 命名传递
- 混合传递
- 参数校验

## 特殊参数
- 函数参数
- 泛型参数
- 扩展参数
- 接收者参数
- 上下文参数

## 最佳实践
- 参数设计
- 默认值设计
- 参数验证
- 性能优化
- 代码可读性
EOF

# 创建3.1.3返回值与Unit类型文件
cat > "$BASE_DIR/第3章-函数与表达式/3.1-函数基础/3.1.3-返回值与Unit类型.md" << 'EOF'
---
title: 返回值与Unit类型
icon: kotlin-return-unit
order: 3
---

# 返回值与Unit类型

## 返回值类型
- 基本类型
- 对象类型
- Unit类型
- Nothing类型
- 可空类型

## Unit类型
- Unit定义
- 使用场景
- 隐式返回
- Java对应
- 类型推断

## 返回值处理
- 返回语句
- 表达式返回
- 隐式返回
- 多返回值
- 异常处理

## 最佳实践
- 返回值设计
- 类型选择
- 异常处理
- 性能优化
- 代码可读性
EOF

# 创建3.1.4单表达式函数文件
cat > "$BASE_DIR/第3章-函数与表达式/3.1-函数基础/3.1.4-单表达式函数.md" << 'EOF'
---
title: 单表达式函数
icon: kotlin-single-expression
order: 4
---

# 单表达式函数

## 基本概念
- 定义方式
- 类型推断
- 返回值
- 使用限制
- 简化语法

## 使用场景
- 简单计算
- 属性访问
- 条件判断
- 转换函数
- 工具函数

## 实现细节
- 语法糖
- 编译优化
- 类型推断
- 性能影响
- 代码生成

## 最佳实践
- 使用时机
- 代码简化
- 可读性
- 维护性
- 性能考虑
EOF

# 创建3.2高级函数特性目录
mkdir -p "$BASE_DIR/第3章-函数与表达式/3.2-高级函数特性"

# 创建3.2高级函数特性README文件
cat > "$BASE_DIR/第3章-函数与表达式/3.2-高级函数特性/README.md" << 'EOF'
---
title: 高级函数特性
icon: kotlin-function-advanced
order: 2
---

# 高级函数特性

本节介绍Kotlin函数的高级特性。
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建3.2.1lambda表达式文件
cat > "$BASE_DIR/第3章-函数与表达式/3.2-高级函数特性/3.2.1-lambda表达式.md" << 'EOF'
---
title: lambda表达式
icon: kotlin-lambda
order: 1
---

# lambda表达式

## 基本语法
- 表达式结构
- 参数声明
- 返回值
- 类型推断
- 隐式参数

## 使用场景
- 集合操作
- 事件处理
- 线程创建
- 回调函数
- 函数式编程

## 特殊特性
- 闭包
- 变量捕获
- 接收者
- 内联优化
- 类型推断

## 最佳实践
- 代码简化
- 性能优化
- 可读性
- 错误处理
- 调试技巧
EOF

# 创建3.2.2内联函数文件
cat > "$BASE_DIR/第3章-函数与表达式/3.2-高级函数特性/3.2.2-内联函数.md" << 'EOF'
---
title: 内联函数
icon: kotlin-inline-function
order: 2
---

# 内联函数

## 基本概念
- 内联定义
- 函数体复制
- 性能优化
- 限制条件
- 非局部返回

## 使用场景
- 高阶函数
- 资源管理
- 性能优化
- 控制流程
- 异常处理

## 实现细节
- 编译优化
- 代码生成
- 类型擦除
- 非局部返回
- 内联规则

## 最佳实践
- 使用时机
- 性能优化
- 代码组织
- 调试技巧
- 维护建议
EOF

# 创建3.2.3操作符重载文件
cat > "$BASE_DIR/第3章-函数与表达式/3.2-高级函数特性/3.2.3-操作符重载.md" << 'EOF'
---
title: 操作符重载
icon: kotlin-operator
order: 3
---

# 操作符重载

## 基本概念
- 操作符函数
- 重载规则
- 优先级
- 结合性
- 命名约定

## 常用操作符
- 算术运算符
- 比较运算符
- 赋值运算符
- 索引操作符
- 调用操作符

## 实现细节
- 函数声明
- 参数要求
- 返回类型
- 操作符映射
- 扩展函数

## 最佳实践
- 设计原则
- 使用场景
- 可读性
- 性能考虑
- 维护性
EOF

# 创建3.2.4类型安全的构建器文件
cat > "$BASE_DIR/第3章-函数与表达式/3.2-高级函数特性/3.2.4-类型安全的构建器.md" << 'EOF'
---
title: 类型安全的构建器
icon: kotlin-builder
order: 4
---

# 类型安全的构建器

## 基本概念
- DSL构建器
- 接收者类型
- 作用域控制
- 类型检查
- 扩展函数

## 使用场景
- HTML构建
- XML生成
- UI布局
- 配置文件
- 测试用例

## 实现细节
- 构建器设计
- 作用域函数
- 扩展函数
- 类型推断
- 错误处理

## 最佳实践
- DSL设计
- 类型安全
- 代码组织
- 可读性
- 维护性
EOF

# 创建3.3特殊语言特性目录
mkdir -p "$BASE_DIR/第3章-函数与表达式/3.3-特殊语言特性"

# 创建3.3特殊语言特性README文件
cat > "$BASE_DIR/第3章-函数与表达式/3.3-特殊语言特性/README.md" << 'EOF'
---
title: 特殊语言特性
icon: kotlin-special
order: 3
---

# 特殊语言特性

本节介绍Kotlin的特殊语言特性。
EOF

# 创建3.3.1空安全文件
cat > "$BASE_DIR/第3章-函数与表达式/3.3-特殊语言特性/3.3.1-空安全.md" << 'EOF'
---
title: 空安全
icon: kotlin-null-safety
order: 1
---

# 空安全

## 基本概念
- 可空类型
- 非空类型
- 空检查
- 安全调用
- Elvis运算符

## 使用场景
- 空值处理
- 默认值
- 链式调用
- 类型转换
- 集合操作

## 实现细节
- 类型系统
- 编译检查
- 运行时检查
- 性能优化
- 互操作性

## 最佳实践
- 类型设计
- 空值处理
- 异常处理
- 代码简化
- 安全性
EOF

# 创建3.3.2相等性文件
cat > "$BASE_DIR/第3章-函数与表达式/3.3-特殊语言特性/3.3.2-相等性.md" << 'EOF'
---
title: 相等性
icon: kotlin-equality
order: 2
---

# 相等性

## 基本概念
- 结构相等
- 引用相等
- 相等操作符
- 比较操作符
- 自定义相等

## 实现机制
- equals方法
- hashCode方法
- 操作符重载
- 数据类实现
- 类型比较

## 使用场景
- 对象比较
- 集合操作
- 哈希计算
- 排序比较
- 测试断言

## 最佳实践
- 实现规范
- 性能优化
- 一致性
- 可测试性
- 维护性
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建3.3.3this表达式文件
cat > "$BASE_DIR/第3章-函数与表达式/3.3-特殊语言特性/3.3.3-this表达式.md" << 'EOF'
---
title: this表达式
icon: kotlin-this
order: 3
---

# this表达式

## 基本概念
- this关键字
- 限定this
- 隐式this
- 作用域
- 接收者类型

## 使用场景
- 类成员访问
- 扩展函数
- 嵌套类
- DSL构建
- 作用域函数

## 实现细节
- 引用解析
- 作用域限定
- 类型推断
- 访问控制
- 编译优化

## 最佳实践
- 使用规范
- 代码清晰
- 作用域控制
- 可读性
- 维护性
EOF

# 创建3.3.4解构声明文件
cat > "$BASE_DIR/第3章-函数与表达式/3.3-特殊语言特性/3.3.4-解构声明.md" << 'EOF'
---
title: 解构声明
icon: kotlin-destructuring
order: 4
---

# 解构声明

## 基本概念
- 解构语法
- 组件函数
- 变量声明
- 返回值解构
- 循环解构

## 使用场景
- 多返回值
- 数据类解构
- Map遍历
- 参数解构
- 集合操作

## 实现细节
- 组件函数
- 命名规则
- 类型推断
- 可空类型
- 性能优化

## 最佳实践
- 使用时机
- 代码简化
- 可读性
- 性能考虑
- 维护性
EOF

# 创建第4章目录
mkdir -p "$BASE_DIR/第4章-异步编程"

# 创建第4章README文件
cat > "$BASE_DIR/第4章-异步编程/README.md" << 'EOF'
---
title: 异步编程
icon: kotlin-async
order: 4
---

# 异步编程

本章介绍Kotlin的异步编程相关知识。
EOF

# 创建4.1协程基础目录
mkdir -p "$BASE_DIR/第4章-异步编程/4.1-协程基础"

# 创建4.1协程基础README文件
cat > "$BASE_DIR/第4章-异步编程/4.1-协程基础/README.md" << 'EOF'
---
title: 协程基础
icon: kotlin-coroutine-basic
order: 1
---

# 协程基础

本节介绍Kotlin协程的基础知识。
EOF

# 创建4.1.1异步程序设计技术文件
cat > "$BASE_DIR/第4章-异步编程/4.1-协程基础/4.1.1-异步程序设计技术.md" << 'EOF'
---
title: 异步程序设计技术
icon: kotlin-async-design
order: 1
---

# 异步程序设计技术

## 基本概念
- 同步与异步
- 阻塞与非阻塞
- 并发与并行
- 事件驱动
- 回调机制

## 常见模式
- 回调模式
- Promise模式
- 响应式编程
- 协程模式
- Actor模型

## 实现技术
- 线程池
- 事件循环
- 异步IO
- 消息队列
- 调度器

## 最佳实践
- 架构设计
- 性能优化
- 错误处理
- 资源管理
- 调试技巧
EOF

# 创建4.1.2协程概念文件
cat > "$BASE_DIR/第4章-异步编程/4.1-协程基础/4.1.2-协程概念.md" << 'EOF'
---
title: 协程概念
icon: kotlin-coroutine-concept
order: 2
---

# 协程概念

## 基本概念
- 协程定义
- 挂起函数
- 作用域
- 上下文
- 调度器

## 核心特性
- 轻量级
- 可组合性
- 结构化并发
- 异常处理
- 取消机制

## 工作原理
- 状态机
- 挂起点
- 恢复机制
- 调度原理
- 内存模型

## 最佳实践
- 使用场景
- 性能优化
- 错误处理
- 资源管理
- 调试技巧
EOF

# 创建4.1.3协程基础文件
cat > "$BASE_DIR/第4章-异步编程/4.1-协程基础/4.1.3-协程基础.md" << 'EOF'
---
title: 协程基础
icon: kotlin-coroutine-basic
order: 3
---

# 协程基础

## 基本用法
- 协程构建器
- 作用域构建器
- 挂起函数
- 协程上下文
- 异常处理

## 核心组件
- Job
- Deferred
- Channel
- Flow
- 调度器

## 操作控制
- 启动模式
- 取消操作
- 超时处理
- 异常处理
- 作用域管理

## 最佳实践
- 结构化并发
- 异常处理
- 性能优化
- 资源管理
- 调试技巧
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建4.1.4协程与通道介绍文件
cat > "$BASE_DIR/第4章-异步编程/4.1-协程基础/4.1.4-协程与通道介绍.md" << 'EOF'
---
title: 协程与通道介绍
icon: kotlin-coroutine-channel
order: 4
---

# 协程与通道介绍

## 通道基础
- Channel概念
- 通道类型
- 缓冲区
- 生产者消费者
- 公平性

## 通道操作
- 发送数据
- 接收数据
- 关闭通道
- 迭代通道
- 选择表达式

## 应用场景
- 数据流处理
- 并发通信
- 事件处理
- 管道构建
- 资源共享

## 最佳实践
- 通道设计
- 并发控制
- 资源管理
- 错误处理
- 性能优化
EOF

# 创建4.2协程控制目录
mkdir -p "$BASE_DIR/第4章-异步编程/4.2-协程控制"

# 创建4.2协程控制README文件
cat > "$BASE_DIR/第4章-异步编程/4.2-协程控制/README.md" << 'EOF'
---
title: 协程控制
icon: kotlin-coroutine-control
order: 2
---

# 协程控制

本节介绍Kotlin协程的控制机制。
EOF

# 创建4.2.1取消与超时文件
cat > "$BASE_DIR/第4章-异步编程/4.2-协程控制/4.2.1-取消与超时.md" << 'EOF'
---
title: 取消与超时
icon: kotlin-coroutine-cancel
order: 1
---

# 取消与超时

## 取消机制
- 取消原理
- 取消点
- 取消状态
- 清理操作
- 不可取消

## 超时控制
- 超时设置
- 超时处理
- 超时恢复
- 超时异常
- 超时策略

## 实现细节
- 协作取消
- 资源释放
- 状态检查
- 异常处理
- 性能影响

## 最佳实践
- 取消设计
- 超时控制
- 资源管理
- 异常处理
- 性能优化
EOF

# 创建4.2.2组合挂起函数文件
cat > "$BASE_DIR/第4章-异步编程/4.2-协程控制/4.2.2-组合挂起函数.md" << 'EOF'
---
title: 组合挂起函数
icon: kotlin-suspend-compose
order: 2
---

# 组合挂起函数

## 基本概念
- 顺序执行
- 并行执行
- 延迟执行
- 异步操作
- 组合策略

## 组合方式
- async/await
- launch
- withContext
- supervisorScope
- coroutineScope

## 实现细节
- 异常传播
- 作用域管理
- 上下文继承
- 取消传播
- 资源管理

## 最佳实践
- 组合设计
- 错误处理
- 性能优化
- 资源管理
- 调试技巧
EOF

# 创建4.2.3协程上下文与调度器文件
cat > "$BASE_DIR/第4章-异步编程/4.2-协程控制/4.2.3-协程上下文与调度器.md" << 'EOF'
---
title: 协程上下文与调度器
icon: kotlin-coroutine-context
order: 3
---

# 协程上下文与调度器

## 上下文元素
- Job
- CoroutineName
- CoroutineDispatcher
- CoroutineExceptionHandler
- 自定义元素

## 调度器类型
- Dispatchers.Default
- Dispatchers.IO
- Dispatchers.Main
- Dispatchers.Unconfined
- 自定义调度器

## 上下文操作
- 合并上下文
- 继承关系
- 元素访问
- 上下文传播
- 作用域管理

## 最佳实践
- 调度策略
- 上下文设计
- 性能优化
- 资源管理
- 调试技巧
EOF

# 创建4.2.4协程异常处理文件
cat > "$BASE_DIR/第4章-异步编程/4.2-协程控制/4.2.4-协程异常处理.md" << 'EOF'
---
title: 协程异常处理
icon: kotlin-coroutine-exception
order: 4
---

# 协程异常处理

## 异常机制
- 异常传播
- 异常处理器
- 作用域异常
- 监督作用域
- 异常恢复

## 处理方式
- try-catch
- CoroutineExceptionHandler
- SupervisorJob
- supervisorScope
- 异常聚合

## 实现细节
- 异常层级
- 取消传播
- 作用域关系
- 异常恢复
- 资源清理

## 最佳实践
- 异常设计
- 错误恢复
- 资源管理
- 调试技巧
- 监控策略
EOF

# 创建4.3高级协程特性目录
mkdir -p "$BASE_DIR/第4章-异步编程/4.3-高级协程特性"

# 创建4.3高级协程特性README文件
cat > "$BASE_DIR/第4章-异步编程/4.3-高级协程特性/README.md" << 'EOF'
---
title: 高级协程特性
icon: kotlin-coroutine-advanced
order: 3
---

# 高级协程特性

本节介绍Kotlin协程的高级特性。
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建4.3.1异步流文件
cat > "$BASE_DIR/第4章-异步编程/4.3-高级协程特性/4.3.1-异步流.md" << 'EOF'
---
title: 异步流
icon: kotlin-flow
order: 1
---

# 异步流

## 基本概念
- Flow定义
- 冷流与热流
- 流操作符
- 背压处理
- 生命周期

## 流操作
- 流构建
- 中间操作
- 终端操作
- 流收集
- 异常处理

## 上下文管理
- 流上下文
- 调度器切换
- 作用域关联
- 取消传播
- 异常处理

## 最佳实践
- 流设计
- 性能优化
- 资源管理
- 错误处理
- 测试策略
EOF

# 创建4.3.2通道文件
cat > "$BASE_DIR/第4章-异步编程/4.3-高级协程特性/4.3.2-通道.md" << 'EOF'
---
title: 通道
icon: kotlin-channel
order: 2
---

# 通道

## 通道类型
- 无缓冲通道
- 缓冲通道
- 会合通道
- 冲突通道
- 广播通道

## 通道操作
- 发送操作
- 接收操作
- 关闭操作
- 遍历操作
- 缓冲管理

## 应用场景
- 数据传输
- 事件处理
- 资源共享
- 流量控制
- 并发协调

## 最佳实践
- 通道选择
- 资源管理
- 错误处理
- 性能优化
- 测试策略
EOF

# 创建4.3.3共享的可变状态与并发文件
cat > "$BASE_DIR/第4章-异步编程/4.3-高级协程特性/4.3.3-共享的可变状态与并发.md" << 'EOF'
---
title: 共享的可变状态与并发
icon: kotlin-concurrent
order: 3
---

# 共享的可变状态与并发

## 并发问题
- 竞态条件
- 原子性
- 可见性
- 内存一致性
- 死锁问题

## 同步机制
- 互斥锁
- 原子操作
- 线程安全集合
- 协程同步
- 状态隔离

## 状态管理
- 状态封装
- 状态共享
- 状态更新
- 状态监控
- 状态恢复

## 最佳实践
- 并发设计
- 同步策略
- 性能优化
- 资源管理
- 调试技巧
EOF

# 创建4.3.4select表达式(实验性)文件
cat > "$BASE_DIR/第4章-异步编程/4.3-高级协程特性/4.3.4-select表达式(实验性).md" << 'EOF'
---
title: select表达式(实验性)
icon: kotlin-select
order: 4
---

# select表达式(实验性)

## 基本概念
- select语法
- 选择条件
- 通道选择
- 超时处理
- 取消操作

## 使用场景
- 多通道处理
- 超时控制
- 条件选择
- 并发协调
- 资源竞争

## 实现细节
- 选择机制
- 公平性
- 性能影响
- 内存管理
- 异常处理

## 最佳实践
- 设计模式
- 性能优化
- 资源管理
- 错误处理
- 调试技巧
EOF

# 创建4.4协程调试目录
mkdir -p "$BASE_DIR/第4章-异步编程/4.4-协程调试"

# 创建4.4协程调试README文件
cat > "$BASE_DIR/第4章-异步编程/4.4-协程调试/README.md" << 'EOF'
---
title: 协程调试
icon: kotlin-debug
order: 4
---

# 协程调试

本节介绍Kotlin协程的调试技术。
EOF

# 创建4.4.1使用IntelliJIDEA调试协程文件
cat > "$BASE_DIR/第4章-异步编程/4.4-协程调试/4.4.1-使用IntelliJIDEA调试协程.md" << 'EOF'
---
title: 使用IntelliJIDEA调试协程
icon: kotlin-debug-idea
order: 1
---

# 使用IntelliJIDEA调试协程

## 调试工具
- 协程视图
- 调试器功能
- 断点设置
- 堆栈跟踪
- 变量监视

## 调试技巧
- 协程跟踪
- 状态检查
- 异常定位
- 性能分析
- 内存检测

## 常见问题
- 死锁检测
- 内存泄漏
- 性能瓶颈
- 异常处理
- 资源管理

## 最佳实践
- 调试策略
- 问题定位
- 性能优化
- 代码质量
- 测试覆盖
EOF

# 创建4.4.2使用IntelliJIDEA调试KotlinFlow文件
cat > "$BASE_DIR/第4章-异步编程/4.4-协程调试/4.4.2-使用IntelliJIDEA调试KotlinFlow.md" << 'EOF'
---
title: 使用IntelliJIDEA调试KotlinFlow
icon: kotlin-debug-flow
order: 2
---

# 使用IntelliJIDEA调试KotlinFlow

## 调试工具
- Flow调试器
- 流程图视图
- 操作符跟踪
- 数据监视
- 性能分析

## 调试技巧
- 流程跟踪
- 数据检查
- 异常定位
- 性能分析
- 内存监控

## 常见问题
- 背压处理
- 取消传播
- 异常处理
- 上下文切换
- 资源泄漏

## 最佳实践
- 调试方法
- 问题诊断
- 性能优化
- 代码质量
- 测试策略
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建第5章目录
mkdir -p "$BASE_DIR/第5章-标准库"

# 创建第5章README文件
cat > "$BASE_DIR/第5章-标准库/README.md" << 'EOF'
---
title: 标准库
icon: kotlin-stdlib
order: 5
---

# 标准库

本章介绍Kotlin标准库的核心组件和功能。
EOF

# 创建5.1集合框架目录
mkdir -p "$BASE_DIR/第5章-标准库/5.1-集合框架"

# 创建5.1集合框架README文件
cat > "$BASE_DIR/第5章-标准库/5.1-集合框架/README.md" << 'EOF'
---
title: 集合框架
icon: kotlin-collections
order: 1
---

# 集合框架

本节介绍Kotlin的集合框架及其使用。
EOF

# 创建5.1.1集合概述文件
cat > "$BASE_DIR/第5章-标准库/5.1-集合框架/5.1.1-集合概述.md" << 'EOF'
---
title: 集合概述
icon: kotlin-collection-overview
order: 1
---

# 集合概述

## 集合类型
- List
- Set
- Map
- 可变集合
- 不可变集合

## 集合特性
- 可空性
- 协变性
- 只读性
- 线程安全
- 性能特征

## 集合操作
- 基本操作
- 转换操作
- 过滤操作
- 分组操作
- 聚合操作

## 最佳实践
- 类型选择
- 性能优化
- 内存管理
- 线程安全
- 代码可读性
EOF

# 创建5.1.2构造集合文件
cat > "$BASE_DIR/第5章-标准库/5.1-集合框架/5.1.2-构造集合.md" << 'EOF'
---
title: 构造集合
icon: kotlin-collection-construction
order: 2
---

# 构造集合

## 构造方法
- 工厂函数
- 构建器
- 转换构造
- 复制构造
- 空集合

## 集合初始化
- 元素添加
- 批量添加
- 懒加载
- 预分配
- 自定义初始化

## 特殊构造
- 序列构造
- 区间构造
- 映射构造
- 视图构造
- 包装构造

## 最佳实践
- 构造选择
- 性能优化
- 内存管理
- 代码简化
- 类型安全
EOF

# 创建5.1.3迭代器文件
cat > "$BASE_DIR/第5章-标准库/5.1-集合框架/5.1.3-迭代器.md" << 'EOF'
---
title: 迭代器
icon: kotlin-iterator
order: 3
---

# 迭代器

## 基本概念
- Iterator接口
- MutableIterator
- ListIterator
- 迭代状态
- 迭代异常

## 迭代操作
- 遍历元素
- 修改元素
- 删除元素
- 插入元素
- 并发修改

## 特殊迭代器
- 序列迭代器
- 双向迭代器
- 过滤迭代器
- 转换迭代器
- 组合迭代器

## 最佳实践
- 迭代选择
- 性能优化
- 安全迭代
- 并发处理
- 资源管理
EOF

# 创建5.1.4区间与数列文件
cat > "$BASE_DIR/第5章-标准库/5.1-集合框架/5.1.4-区间与数列.md" << 'EOF'
---
title: 区间与数列
icon: kotlin-range
order: 4
---

# 区间与数列

## 区间概念
- 区间定义
- 区间类型
- 区间操作
- 区间迭代
- 区间比较

## 数列特性
- 等差数列
- 等比数列
- 自定义数列
- 数列操作
- 数列转换

## 应用场景
- 循环控制
- 范围检查
- 数据生成
- 序列处理
- 区间计算

## 最佳实践
- 使用场景
- 性能优化
- 代码简化
- 类型安全
- 可读性
EOF

# 创建5.1.5序列文件
cat > "$BASE_DIR/第5章-标准库/5.1-集合框架/5.1.5-序列.md" << 'EOF'
---
title: 序列
icon: kotlin-sequence
order: 5
---

# 序列

## 基本概念
- 序列定义
- 序列类型
- 惰性求值
- 终端操作
- 中间操作

## 序列操作
- 构建序列
- 转换操作
- 过滤操作
- 映射操作
- 聚合操作

## 使用场景
- 大数据处理
- 性能优化
- 内存管理
- 链式操作
- 数据转换

## 最佳实践
- 序列设计
- 性能考虑
- 内存优化
- 操作链优化
- 调试技巧
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建5.2集合操作目录
mkdir -p "$BASE_DIR/第5章-标准库/5.2-集合操作"

# 创建5.2集合操作README文件
cat > "$BASE_DIR/第5章-标准库/5.2-集合操作/README.md" << 'EOF'
---
title: 集合操作
icon: kotlin-collection-ops
order: 2
---

# 集合操作

本节介绍Kotlin集合的各种操作方法。
EOF

# 创建5.2.1集合操作概述文件
cat > "$BASE_DIR/第5章-标准库/5.2-集合操作/5.2.1-集合操作概述.md" << 'EOF'
---
title: 集合操作概述
icon: kotlin-collection-ops-overview
order: 1
---

# 集合操作概述

## 基本操作
- 添加元素
- 删除元素
- 查找元素
- 遍历集合
- 集合判空

## 常用函数
- 转换函数
- 过滤函数
- 排序函数
- 聚合函数
- 分组函数

## 操作特性
- 链式调用
- 惰性求值
- 并发安全
- 性能特征
- 内存消耗

## 最佳实践
- 操作选择
- 性能优化
- 代码简化
- 类型安全
- 调试技巧
EOF

# 创建5.2.2集合转换操作文件
cat > "$BASE_DIR/第5章-标准库/5.2-集合操作/5.2.2-集合转换操作.md" << 'EOF'
---
title: 集合转换操作
icon: kotlin-collection-transform
order: 2
---

# 集合转换操作

## 映射操作
- map函数
- mapIndexed
- mapNotNull
- flatMap
- flatten

## 转换类型
- 类型转换
- 集合转换
- 序列转换
- 数组转换
- 字符串转换

## 转换规则
- 元素转换
- 类型推断
- 空值处理
- 异常处理
- 性能考虑

## 最佳实践
- 转换选择
- 性能优化
- 内存管理
- 类型安全
- 代码可读性
EOF

# 创建5.2.3过滤集合文件
cat > "$BASE_DIR/第5章-标准库/5.2-集合操作/5.2.3-过滤集合.md" << 'EOF'
---
title: 过滤集合
icon: kotlin-collection-filter
order: 3
---

# 过滤集合

## 过滤函数
- filter
- filterNot
- filterIsInstance
- filterNotNull
- take/drop

## 过滤条件
- 谓词函数
- 类型过滤
- 索引过滤
- 范围过滤
- 复合条件

## 应用场景
- 数据筛选
- 类型过滤
- 条件匹配
- 分页处理
- 数据清洗

## 最佳实践
- 过滤策略
- 性能优化
- 链式调用
- 代码简化
- 可读性
EOF

# 创建5.2.4加减操作符文件
cat > "$BASE_DIR/第5章-标准库/5.2-集合操作/5.2.4-加减操作符.md" << 'EOF'
---
title: 加减操作符
icon: kotlin-collection-plus-minus
order: 4
---

# 加减操作符

## 基本操作符
- plus操作符
- minus操作符
- plusAssign
- minusAssign
- 运算符重载

## 操作规则
- 元素添加
- 元素移除
- 集合合并
- 集合差集
- 操作顺序

## 使用场景
- 集合合并
- 元素操作
- 集合运算
- 数据更新
- 批量处理

## 最佳实践
- 操作选择
- 性能优化
- 内存管理
- 线程安全
- 代码可读性
EOF

# 创建5.2.5分组操作文件
cat > "$BASE_DIR/第5章-标准库/5.2-集合操作/5.2.5-分组操作.md" << 'EOF'
---
title: 分组操作
icon: kotlin-collection-grouping
order: 5
---

# 分组操作

## 分组函数
- groupBy
- groupingBy
- partition
- chunked
- windowed

## 分组规则
- 键选择
- 值转换
- 分组策略
- 结果处理
- 性能考虑

## 应用场景
- 数据分类
- 统计分析
- 批量处理
- 数据聚合
- 窗口操作

## 最佳实践
- 分组策略
- 性能优化
- 内存管理
- 代码组织
- 可读性
EOF

# 创建5.3集合访问与修改目录
mkdir -p "$BASE_DIR/第5章-标准库/5.3-集合访问与修改"

# 创建5.3集合访问与修改README文件
cat > "$BASE_DIR/第5章-标准库/5.3-集合访问与修改/README.md" << 'EOF'
---
title: 集合访问与修改
icon: kotlin-collection-access
order: 3
---

# 集合访问与修改

本节介绍Kotlin集合的访问和修改方法。
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建5.3.1取集合的一部分文件
cat > "$BASE_DIR/第5章-标准库/5.3-集合访问与修改/5.3.1-取集合的一部分.md" << 'EOF'
---
title: 取集合的一部分
icon: kotlin-collection-slice
order: 1
---

# 取集合的一部分

## 切片操作
- slice函数
- subList
- take/drop
- chunked
- windowed

## 范围选择
- 索引范围
- 条件范围
- 数量范围
- 步长选择
- 窗口大小

## 使用场景
- 分页处理
- 数据采样
- 批量处理
- 窗口分析
- 数据截取

## 最佳实践
- 选择策略
- 性能优化
- 内存管理
- 边界处理
- 异常处理
EOF

# 创建5.3.2取单个元素文件
cat > "$BASE_DIR/第5章-标准库/5.3-集合访问与修改/5.3.2-取单个元素.md" << 'EOF'
---
title: 取单个元素
icon: kotlin-collection-element
order: 2
---

# 取单个元素

## 访问方式
- 索引访问
- 条件访问
- 随机访问
- 安全访问
- 默认值

## 常用函数
- elementAt
- first/last
- find/findLast
- single
- random

## 异常处理
- 越界检查
- 空值处理
- 类型检查
- 默认值
- 异常恢复

## 最佳实践
- 访问策略
- 安全处理
- 性能优化
- 代码简化
- 可读性
EOF

# 创建5.3.3排序文件
cat > "$BASE_DIR/第5章-标准库/5.3-集合访问与修改/5.3.3-排序.md" << 'EOF'
---
title: 排序
icon: kotlin-collection-sort
order: 3
---

# 排序

## 排序函数
- sorted
- sortedBy
- sortedDescending
- sortedByDescending
- reversed

## 排序规则
- 自然顺序
- 自定义比较器
- 多重排序
- 稳定排序
- 就地排序

## 应用场景
- 数据排序
- 优先级排序
- 自定义排序
- 复合排序
- 部分排序

## 最佳实践
- 排序选择
- 性能优化
- 内存管理
- 稳定性
- 可读性
EOF

# 创建5.3.4聚合操作文件
cat > "$BASE_DIR/第5章-标准库/5.3-集合访问与修改/5.3.4-聚合操作.md" << 'EOF'
---
title: 聚合操作
icon: kotlin-collection-aggregate
order: 4
---

# 聚合操作

## 基本聚合
- count
- sum
- average
- max/min
- reduce/fold

## 高级聚合
- groupBy
- partition
- aggregate
- accumulate
- scan

## 应用场景
- 数据统计
- 数值计算
- 结果合并
- 数据分析
- 累积计算

## 最佳实践
- 聚合选择
- 性能优化
- 内存管理
- 并发处理
- 精度控制
EOF

# 创建5.3.5集合写操作文件
cat > "$BASE_DIR/第5章-标准库/5.3-集合访问与修改/5.3.5-集合写操作.md" << 'EOF'
---
title: 集合写操作
icon: kotlin-collection-write
order: 5
---

# 集合写操作

## 基本操作
- 添加元素
- 删除元素
- 更新元素
- 清空集合
- 批量操作

## 修改方式
- 直接修改
- 原子操作
- 批量修改
- 条件修改
- 事务操作

## 并发控制
- 线程安全
- 锁机制
- 原子性
- 可见性
- 一致性

## 最佳实践
- 操作选择
- 并发处理
- 性能优化
- 异常处理
- 事务管理
EOF

# 创建5.4特定集合操作目录
mkdir -p "$BASE_DIR/第5章-标准库/5.4-特定集合操作"

# 创建5.4特定集合操作README文件
cat > "$BASE_DIR/第5章-标准库/5.4-特定集合操作/README.md" << 'EOF'
---
title: 特定集合操作
icon: kotlin-collection-specific
order: 4
---

# 特定集合操作

本节介绍Kotlin特定集合类型的专用操作。
EOF

# 创建5.4.1List相关操作文件
cat > "$BASE_DIR/第5章-标准库/5.4-特定集合操作/5.4.1-List相关操作.md" << 'EOF'
---
title: List相关操作
icon: kotlin-list-ops
order: 1
---

# List相关操作

## 基本操作
- 索引访问
- 列表修改
- 列表搜索
- 列表排序
- 列表分割

## 特殊操作
- 二分查找
- 列表反转
- 列表旋转
- 列表填充
- 列表复制

## 应用场景
- 顺序存储
- 随机访问
- 插入删除
- 排序搜索
- 数据处理

## 最佳实践
- 操作选择
- 性能优化
- 内存管理
- 并发处理
- 代码组织
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建5.4.2Set相关操作文件
cat > "$BASE_DIR/第5章-标准库/5.4-特定集合操作/5.4.2-Set相关操作.md" << 'EOF'
---
title: Set相关操作
icon: kotlin-set-ops
order: 2
---

# Set相关操作

## 基本操作
- 元素添加
- 元素删除
- 元素查找
- 集合判断
- 集合遍历

## 集合运算
- 并集操作
- 交集操作
- 差集操作
- 补集操作
- 对称差集

## 应用场景
- 去重处理
- 集合运算
- 成员判断
- 数据过滤
- 唯一性检查

## 最佳实践
- 操作选择
- 性能优化
- 内存管理
- 并发处理
- 代码组织
EOF

# 创建5.4.3Map相关操作文件
cat > "$BASE_DIR/第5章-标准库/5.4-特定集合操作/5.4.3-Map相关操作.md" << 'EOF'
---
title: Map相关操作
icon: kotlin-map-ops
order: 3
---

# Map相关操作

## 基本操作
- 键值访问
- 键值修改
- 键值删除
- Map遍历
- Map合并

## 特殊操作
- 默认值处理
- 键值转换
- Map过滤
- Map分组
- Map排序

## 应用场景
- 键值存储
- 缓存实现
- 数据映射
- 配置管理
- 状态管理

## 最佳实践
- 操作选择
- 性能优化
- 内存管理
- 并发处理
- 代码组织
EOF

# 创建5.4.4选择加入要求文件
cat > "$BASE_DIR/第5章-标准库/5.4-特定集合操作/5.4.4-选择加入要求.md" << 'EOF'
---
title: 选择加入要求
icon: kotlin-opt-in
order: 4
---

# 选择加入要求

## 基本概念
- 选择加入注解
- 实验性API
- 稳定性级别
- 兼容性保证
- 版本管理

## 使用场景
- API标记
- 版本控制
- 特性开关
- 兼容性管理
- 实验性功能

## 实现细节
- 注解处理
- 编译检查
- 运行时检查
- 版本迁移
- 兼容性维护

## 最佳实践
- 使用策略
- 版本管理
- 迁移计划
- 代码维护
- 文档管理
EOF

# 创建5.5其他标准库功能目录
mkdir -p "$BASE_DIR/第5章-标准库/5.5-其他标准库功能"

# 创建5.5其他标准库功能README文件
cat > "$BASE_DIR/第5章-标准库/5.5-其他标准库功能/README.md" << 'EOF'
---
title: 其他标准库功能
icon: kotlin-stdlib-other
order: 5
---

# 其他标准库功能

本节介绍Kotlin标准库的其他重要功能。
EOF

# 创建5.5.1作用域函数文件
cat > "$BASE_DIR/第5章-标准库/5.5-其他标准库功能/5.5.1-作用域函数.md" << 'EOF'
---
title: 作用域函数
icon: kotlin-scope-functions
order: 1
---

# 作用域函数

## 基本函数
- let
- run
- with
- apply
- also

## 使用场景
- 对象配置
- 空值处理
- 链式调用
- 临时作用域
- 上下文操作

## 选择标准
- 返回值
- 接收者
- 上下文对象
- 可读性
- 用途区分

## 最佳实践
- 函数选择
- 代码组织
- 可读性
- 性能考虑
- 错误处理
EOF

# 创建5.5.2时间度量文件
cat > "$BASE_DIR/第5章-标准库/5.5-其他标准库功能/5.5.2-时间度量.md" << 'EOF'
---
title: 时间度量
icon: kotlin-time
order: 2
---

# 时间度量

## 基本概念
- 时间单位
- 时间间隔
- 时间点
- 时区处理
- 格式化

## 操作函数
- 时间计算
- 时间比较
- 时间转换
- 时间解析
- 时间格式化

## 应用场景
- 性能测量
- 定时任务
- 超时控制
- 时间统计
- 日期处理

## 最佳实践
- 单位选择
- 精度控制
- 时区处理
- 格式规范
- 性能优化
EOF

# 创建5.5.3序列化(kotlinx.serialization)文件
cat > "$BASE_DIR/第5章-标准库/5.5-其他标准库功能/5.5.3-序列化(kotlinx.serialization).md" << 'EOF'
---
title: 序列化(kotlinx.serialization)
icon: kotlin-serialization
order: 3
---

# 序列化(kotlinx.serialization)

## 基本概念
- 序列化注解
- 序列化格式
- 自定义序列化
- 多态序列化
- 版本控制

## 支持格式
- JSON序列化
- CBOR序列化
- Protobuf序列化
- 自定义格式
- 格式转换

## 应用场景
- 数据存储
- 网络传输
- 配置管理
- 缓存实现
- 跨平台通信

## 最佳实践
- 格式选择
- 性能优化
- 安全处理
- 版本兼容
- 错误处理
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建第6章目录
mkdir -p "$BASE_DIR/第6章-多平台开发"

# 创建第6章README文件
cat > "$BASE_DIR/第6章-多平台开发/README.md" << 'EOF'
---
title: 多平台开发
icon: kotlin-multiplatform
order: 6
---

# 多平台开发

本章介绍Kotlin在不同平台上的开发应用。
EOF

# 创建6.1Kotlin/JVM开发目录
mkdir -p "$BASE_DIR/第6章-多平台开发/6.1-KotlinJVM开发"

# 创建6.1Kotlin/JVM开发README文件
cat > "$BASE_DIR/第6章-多平台开发/6.1-KotlinJVM开发/README.md" << 'EOF'
---
title: Kotlin/JVM开发
icon: kotlin-jvm
order: 1
---

# Kotlin/JVM开发

本节介绍Kotlin在JVM平台上的开发特性。
EOF

# 创建6.1.1SpringBoot集成文件
cat > "$BASE_DIR/第6章-多平台开发/6.1-KotlinJVM开发/6.1.1-SpringBoot集成.md" << 'EOF'
---
title: SpringBoot集成
icon: kotlin-spring
order: 1
---

# SpringBoot集成

## 基础配置
- 项目设置
- 依赖管理
- 配置文件
- 启动类
- 构建配置

## 核心功能
- 控制器开发
- 服务层实现
- 数据访问
- 安全配置
- 异常处理

## 高级特性
- 协程支持
- 函数式编程
- 反应式编程
- 缓存集成
- 消息队列

## 最佳实践
- 架构设计
- 性能优化
- 测试策略
- 部署管理
- 监控运维
EOF

# 创建6.1.2Android开发基础文件
cat > "$BASE_DIR/第6章-多平台开发/6.1-KotlinJVM开发/6.1.2-Android开发基础.md" << 'EOF'
---
title: Android开发基础
icon: kotlin-android
order: 2
---

# Android开发基础

## 开发环境
- Android Studio
- Gradle配置
- SDK设置
- 模拟器配置
- 调试工具

## 基础组件
- Activity
- Fragment
- Service
- BroadcastReceiver
- ContentProvider

## UI开发
- 布局设计
- 视图绑定
- 生命周期
- 事件处理
- 动画效果

## 最佳实践
- 架构模式
- 性能优化
- 内存管理
- 测试方法
- 发布部署
EOF

# 创建6.1.3与Java互操作文件
cat > "$BASE_DIR/第6章-多平台开发/6.1-KotlinJVM开发/6.1.3-与Java互操作.md" << 'EOF'
---
title: 与Java互操作
icon: kotlin-java
order: 3
---

# 与Java互操作

## 基本互操作
- 类型映射
- 空安全处理
- 属性访问
- 方法调用
- 异常处理

## 注解支持
- Java注解
- Kotlin注解
- 注解处理器
- 元数据
- 代码生成

## 特殊处理
- SAM转换
- 静态成员
- 泛型擦除
- 检查异常
- 默认参数

## 最佳实践
- 互操作设计
- 性能优化
- 代码组织
- 测试策略
- 维护管理
EOF

# 创建6.1.4JVM平台特定优化文件
cat > "$BASE_DIR/第6章-多平台开发/6.1-KotlinJVM开发/6.1.4-JVM平台特定优化.md" << 'EOF'
---
title: JVM平台特定优化
icon: kotlin-jvm-opt
order: 4
---

# JVM平台特定优化

## 性能优化
- JIT编译
- 内联优化
- 内存管理
- GC优化
- 线程优化

## 特性支持
- 字节码操作
- 反射优化
- 序列化
- 动态代理
- 本地方法

## 工具支持
- 性能分析
- 内存分析
- 线程分析
- 代码检查
- 调试工具

## 最佳实践
- 优化策略
- 性能监控
- 资源管理
- 调试技巧
- 部署优化
EOF

# 创建6.2Kotlin/JS开发目录
mkdir -p "$BASE_DIR/第6章-多平台开发/6.2-KotlinJS开发"

# 创建6.2Kotlin/JS开发README文件
cat > "$BASE_DIR/第6章-多平台开发/6.2-KotlinJS开发/README.md" << 'EOF'
---
title: Kotlin/JS开发
icon: kotlin-js
order: 2
---

# Kotlin/JS开发

本节介绍Kotlin在JavaScript平台上的开发特性。
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建6.2.1前端开发基础文件
cat > "$BASE_DIR/第6章-多平台开发/6.2-KotlinJS开发/6.2.1-前端开发基础.md" << 'EOF'
---
title: 前端开发基础
icon: kotlin-frontend
order: 1
---

# 前端开发基础

## 开发环境
- 构建工具
- 开发工具
- 调试工具
- 打包工具
- 测试框架

## 基础概念
- DOM操作
- 事件处理
- 状态管理
- 路由控制
- 组件开发

## 工具链
- Webpack集成
- NPM管理
- 热重载
- 代码分割
- 资源管理

## 最佳实践
- 架构设计
- 性能优化
- 调试技巧
- 测试策略
- 部署流程
EOF

# 创建6.2.2React集成文件
cat > "$BASE_DIR/第6章-多平台开发/6.2-KotlinJS开发/6.2.2-React集成.md" << 'EOF'
---
title: React集成
icon: kotlin-react
order: 2
---

# React集成

## 基础设置
- 项目配置
- 依赖管理
- 组件创建
- 状态管理
- 路由设置

## 核心概念
- 函数组件
- Hook使用
- 生命周期
- 属性传递
- 上下文管理

## 高级特性
- 性能优化
- 代码分割
- 服务端渲染
- 状态管理
- 测试策略

## 最佳实践
- 组件设计
- 状态管理
- 性能优化
- 测试方法
- 部署策略
EOF

# 创建6.2.3与JavaScript互操作文件
cat > "$BASE_DIR/第6章-多平台开发/6.2-KotlinJS开发/6.2.3-与JavaScript互操作.md" << 'EOF'
---
title: 与JavaScript互操作
icon: kotlin-js-interop
order: 3
---

# 与JavaScript互操作

## 基本互操作
- 类型映射
- 函数调用
- 对象操作
- 模块导入
- 异常处理

## 动态特性
- 动态类型
- 动态调用
- 属性访问
- 原型操作
- JSON处理

## 特殊处理
- Promise处理
- 异步操作
- DOM操作
- 事件处理
- 类型转换

## 最佳实践
- 互操作设计
- 类型安全
- 性能优化
- 调试技巧
- 代码组织
EOF

# 创建6.2.4浏览器与Node.js环境文件
cat > "$BASE_DIR/第6章-多平台开发/6.2-KotlinJS开发/6.2.4-浏览器与Node.js环境.md" << 'EOF'
---
title: 浏览器与Node.js环境
icon: kotlin-browser-node
order: 4
---

# 浏览器与Node.js环境

## 浏览器环境
- DOM API
- BOM API
- Web API
- 存储机制
- 网络请求

## Node.js环境
- 模块系统
- 文件系统
- 网络功能
- 进程管理
- 包管理

## 运行时特性
- 事件循环
- 异步编程
- 内存管理
- 性能优化
- 调试工具

## 最佳实践
- 环境适配
- 性能优化
- 调试技巧
- 部署策略
- 监控管理
EOF

# 创建6.3Kotlin/Native开发目录
mkdir -p "$BASE_DIR/第6章-多平台开发/6.3-KotlinNative开发"

# 创建6.3Kotlin/Native开发README文件
cat > "$BASE_DIR/第6章-多平台开发/6.3-KotlinNative开发/README.md" << 'EOF'
---
title: Kotlin/Native开发
icon: kotlin-native
order: 3
---

# Kotlin/Native开发

本节介绍Kotlin在原生平台上的开发特性。
EOF

# 创建6.3.1iOS开发文件
cat > "$BASE_DIR/第6章-多平台开发/6.3-KotlinNative开发/6.3.1-iOS开发.md" << 'EOF'
---
title: iOS开发
icon: kotlin-ios
order: 1
---

# iOS开发

## 开发环境
- Xcode集成
- 构建配置
- 调试工具
- 模拟器
- 部署工具

## 基础组件
- UIKit集成
- 视图控制器
- 界面布局
- 生命周期
- 数据存储

## 原生特性
- 内存管理
- 线程处理
- 网络请求
- 本地存储
- 设备功能

## 最佳实践
- 架构设计
- 性能优化
- 内存管理
- 测试策略
- 发布流程
EOF

# 创建6.3.2跨平台共享代码文件
cat > "$BASE_DIR/第6章-多平台开发/6.3-KotlinNative开发/6.3.2-跨平台共享代码.md" << 'EOF'
---
title: 跨平台共享代码
icon: kotlin-multiplatform-share
order: 2
---

# 跨平台共享代码

## 代码共享
- 业务逻辑
- 数据模型
- 网络层
- 存储层
- 工具类

## 平台特性
- 平台适配
- 依赖管理
- 接口设计
- 异常处理
- 资源管理

## 架构设计
- 分层架构
- 模块化
- 依赖注入
- 状态管理
- 测试策略

## 最佳实践
- 代码组织
- 接口设计
- 性能优化
- 测试方法
- 维护策略
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建6.3.3性能优化文件
cat > "$BASE_DIR/第6章-多平台开发/6.3-KotlinNative开发/6.3.3-性能优化.md" << 'EOF'
---
title: 性能优化
icon: kotlin-performance
order: 3
---

# 性能优化

## 编译优化
- 静态编译
- 链接优化
- 代码裁剪
- 内联优化
- 二进制大小

## 运行时优化
- 内存分配
- 垃圾回收
- 线程管理
- 缓存优化
- 资源管理

## 性能分析
- 性能监控
- 内存分析
- CPU分析
- 线程分析
- 瓶颈定位

## 最佳实践
- 优化策略
- 代码优化
- 资源优化
- 测试方法
- 监控方案
EOF

# 创建6.3.4内存管理文件
cat > "$BASE_DIR/第6章-多平台开发/6.3-KotlinNative开发/6.3.4-内存管理.md" << 'EOF'
---
title: 内存管理
icon: kotlin-memory
order: 4
---

# 内存管理

## 内存模型
- 对象生命周期
- 内存分配
- 引用计数
- 循环引用
- 内存泄漏

## 垃圾回收
- GC策略
- GC触发
- GC优化
- 内存压缩
- 性能影响

## 内存优化
- 对象池
- 内存复用
- 弱引用
- 缓存策略
- 资源释放

## 最佳实践
- 内存监控
- 泄漏检测
- 性能优化
- 调试技巧
- 测试方法
EOF

# 创建6.4Kotlin多平台项目(KMP)目录
mkdir -p "$BASE_DIR/第6章-多平台开发/6.4-Kotlin多平台项目(KMP)"

# 创建6.4Kotlin多平台项目(KMP)README文件
cat > "$BASE_DIR/第6章-多平台开发/6.4-Kotlin多平台项目(KMP)/README.md" << 'EOF'
---
title: Kotlin多平台项目(KMP)
icon: kotlin-multiplatform
order: 4
---

# Kotlin多平台项目(KMP)

本节介绍Kotlin多平台项目的开发特性。
EOF

# 创建6.4.1项目结构文件
cat > "$BASE_DIR/第6章-多平台开发/6.4-Kotlin多平台项目(KMP)/6.4.1-项目结构.md" << 'EOF'
---
title: 项目结构
icon: kotlin-project
order: 1
---

# 项目结构

## 基础结构
- 源码组织
- 资源管理
- 配置文件
- 构建脚本
- 测试结构

## 模块划分
- 公共模块
- 平台模块
- 测试模块
- 资源模块
- 工具模块

## 构建配置
- Gradle配置
- 依赖管理
- 任务配置
- 插件管理
- 发布配置

## 最佳实践
- 结构设计
- 模块划分
- 依赖管理
- 构建优化
- 测试策略
EOF

# 创建6.4.2共享代码策略文件
cat > "$BASE_DIR/第6章-多平台开发/6.4-Kotlin多平台项目(KMP)/6.4.2-共享代码策略.md" << 'EOF'
---
title: 共享代码策略
icon: kotlin-share
order: 2
---

# 共享代码策略

## 代码共享
- 业务逻辑
- 数据模型
- 工具类
- 接口定义
- 常量定义

## 共享方式
- 源码共享
- 接口抽象
- 依赖注入
- 平台适配
- 条件编译

## 设计模式
- 分层架构
- 依赖倒置
- 策略模式
- 工厂模式
- 适配器模式

## 最佳实践
- 代码组织
- 接口设计
- 复用策略
- 测试方法
- 维护策略
EOF

# 创建6.4.3平台特定代码文件
cat > "$BASE_DIR/第6章-多平台开发/6.4-Kotlin多平台项目(KMP)/6.4.3-平台特定代码.md" << 'EOF'
---
title: 平台特定代码
icon: kotlin-platform
order: 3
---

# 平台特定代码

## 平台实现
- 平台API
- 原生功能
- UI实现
- 存储实现
- 网络实现

## 适配策略
- 接口适配
- 平台分离
- 条件编译
- 依赖注入
- 桥接模式

## 特性支持
- 平台功能
- 设备特性
- 系统API
- 硬件访问
- 权限管理

## 最佳实践
- 代码隔离
- 接口设计
- 性能优化
- 测试策略
- 维护方案
EOF

# 创建6.4.4依赖管理文件
cat > "$BASE_DIR/第6章-多平台开发/6.4-Kotlin多平台项目(KMP)/6.4.4-依赖管理.md" << 'EOF'
---
title: 依赖管理
icon: kotlin-dependency
order: 4
---

# 依赖管理

## 依赖类型
- 公共依赖
- 平台依赖
- 测试依赖
- 开发依赖
- 传递依赖

## 版本控制
- 版本声明
- 版本冲突
- 版本更新
- 版本约束
- 版本锁定

## 依赖配置
- 依赖声明
- 依赖范围
- 依赖排除
- 依赖替换
- 依赖分析

## 最佳实践
- 依赖策略
- 版本管理
- 冲突解决
- 安全审计
- 性能优化
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建第7章目录
mkdir -p "$BASE_DIR/第7章-实战与最佳实践"

# 创建第7章README文件
cat > "$BASE_DIR/第7章-实战与最佳实践/README.md" << 'EOF'
---
title: 实战与最佳实践
icon: kotlin-practice
order: 7
---

# 实战与最佳实践

本章介绍Kotlin的实战应用和最佳实践。
EOF

# 创建7.1设计模式目录
mkdir -p "$BASE_DIR/第7章-实战与最佳实践/7.1-设计模式"

# 创建7.1设计模式README文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.1-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: kotlin-design-pattern
order: 1
---

# 设计模式

本节介绍Kotlin中的各种设计模式实现。
EOF

# 创建7.1.1函数式设计模式文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.1-设计模式/7.1.1-函数式设计模式.md" << 'EOF'
---
title: 函数式设计模式
icon: kotlin-functional-pattern
order: 1
---

# 函数式设计模式

## 基本模式
- 单子模式
- 函子模式
- 应用函子
- 箭头函数
- 类型类

## 组合模式
- 函数组合
- 管道模式
- 装饰器模式
- 链式调用
- 柯里化

## 实现技巧
- 高阶函数
- 闭包使用
- 递归优化
- 惰性求值
- 不变性

## 最佳实践
- 模式选择
- 代码组织
- 性能优化
- 测试策略
- 维护性
EOF

# 创建7.1.2传统设计模式的Kotlin实现文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.1-设计模式/7.1.2-传统设计模式的Kotlin实现.md" << 'EOF'
---
title: 传统设计模式的Kotlin实现
icon: kotlin-traditional-pattern
order: 2
---

# 传统设计模式的Kotlin实现

## 创建型模式
- 单例模式
- 工厂模式
- 建造者模式
- 原型模式
- 抽象工厂

## 结构型模式
- 适配器模式
- 桥接模式
- 装饰器模式
- 外观模式
- 代理模式

## 行为型模式
- 观察者模式
- 策略模式
- 命令模式
- 状态模式
- 模板方法

## 最佳实践
- 模式选择
- 实现优化
- 代码简化
- 测试方法
- 维护策略
EOF

# 创建7.1.3协程设计模式文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.1-设计模式/7.1.3-协程设计模式.md" << 'EOF'
---
title: 协程设计模式
icon: kotlin-coroutine-pattern
order: 3
---

# 协程设计模式

## 基本模式
- 生产者消费者
- 管道模式
- 扇入扇出
- 协程池
- 监督模式

## 并发模式
- 互斥模式
- 信号量模式
- 屏障模式
- 选择器模式
- 异步队列

## 错误处理
- 监督作用域
- 异常传播
- 错误恢复
- 取消传播
- 超时处理

## 最佳实践
- 模式选择
- 并发控制
- 错误处理
- 性能优化
- 测试策略
EOF

# 创建7.1.4响应式编程模式文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.1-设计模式/7.1.4-响应式编程模式.md" << 'EOF'
---
title: 响应式编程模式
icon: kotlin-reactive-pattern
order: 4
---

# 响应式编程模式

## 基本概念
- 响应式流
- 背压处理
- 操作符链
- 调度器
- 生命周期

## 设计模式
- 观察者模式
- 发布订阅
- 响应式状态
- 数据流转换
- 错误处理

## 实现技术
- Flow API
- 协程集成
- 并发控制
- 资源管理
- 测试方法

## 最佳实践
- 模式选择
- 性能优化
- 内存管理
- 错误处理
- 测试策略
EOF

# 创建7.2测试与质量保证目录
mkdir -p "$BASE_DIR/第7章-实战与最佳实践/7.2-测试与质量保证"

# 创建7.2测试与质量保证README文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.2-测试与质量保证/README.md" << 'EOF'
---
title: 测试与质量保证
icon: kotlin-testing
order: 2
---

# 测试与质量保证

本节介绍Kotlin项目的测试和质量保证方法。
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建7.2.1单元测试文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.2-测试与质量保证/7.2.1-单元测试.md" << 'EOF'
---
title: 单元测试
icon: kotlin-unit-test
order: 1
---

# 单元测试

## 测试框架
- JUnit
- TestNG
- Kotest
- Spek
- MockK

## 测试类型
- 函数测试
- 类测试
- 协程测试
- 集成测试
- 参数化测试

## 测试技巧
- 测试夹具
- 模拟对象
- 断言方法
- 测试生命周期
- 测试隔离

## 最佳实践
- 测试设计
- 测试组织
- 测试覆盖
- 性能考虑
- 维护策略
EOF

# 创建7.2.2UI测试文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.2-测试与质量保证/7.2.2-UI测试.md" << 'EOF'
---
title: UI测试
icon: kotlin-ui-test
order: 2
---

# UI测试

## 测试框架
- Espresso
- UI Automator
- Compose测试
- Robolectric
- Appium

## 测试类型
- 组件测试
- 交互测试
- 布局测试
- 导航测试
- 性能测试

## 测试方法
- 录制回放
- 脚本编写
- 截图对比
- 行为验证
- 异常处理

## 最佳实践
- 测试策略
- 测试覆盖
- 性能优化
- 维护方法
- 自动化流程
EOF

# 创建7.2.3性能测试文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.2-测试与质量保证/7.2.3-性能测试.md" << 'EOF'
---
title: 性能测试
icon: kotlin-performance-test
order: 3
---

# 性能测试

## 测试指标
- 响应时间
- 吞吐量
- 资源使用
- 内存占用
- CPU使用率

## 测试工具
- JMH
- Android Profiler
- 内存分析器
- CPU分析器
- 网络监控

## 测试场景
- 基准测试
- 负载测试
- 压力测试
- 稳定性测试
- 并发测试

## 最佳实践
- 测试设计
- 数据收集
- 结果分析
- 优化建议
- 持续监控
EOF

# 创建7.2.4代码覆盖率文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.2-测试与质量保证/7.2.4-代码覆盖率.md" << 'EOF'
---
title: 代码覆盖率
icon: kotlin-coverage
order: 4
---

# 代码覆盖率

## 覆盖类型
- 语句覆盖
- 分支覆盖
- 路径覆盖
- 函数覆盖
- 条件覆盖

## 工具支持
- JaCoCo
- Kover
- Codecov
- SonarQube
- 自定义工具

## 报告分析
- 覆盖率统计
- 趋势分析
- 热点分析
- 风险评估
- 改进建议

## 最佳实践
- 目标设定
- 测试策略
- 持续集成
- 质量把控
- 改进方法
EOF

# 创建7.3代码规范与风格目录
mkdir -p "$BASE_DIR/第7章-实战与最佳实践/7.3-代码规范与风格"

# 创建7.3代码规范与风格README文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.3-代码规范与风格/README.md" << 'EOF'
---
title: 代码规范与风格
icon: kotlin-style
order: 3
---

# 代码规范与风格

本节介绍Kotlin的代码规范和编程风格。
EOF

# 创建7.3.1项目结构组织文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.3-代码规范与风格/7.3.1-项目结构组织.md" << 'EOF'
---
title: 项目结构组织
icon: kotlin-project-structure
order: 1
---

# 项目结构组织

## 目录结构
- 源码组织
- 资源管理
- 测试结构
- 配置文件
- 文档组织

## 模块划分
- 功能模块
- 业务模块
- 工具模块
- 测试模块
- 公共模块

## 依赖管理
- 依赖组织
- 版本控制
- 冲突解决
- 传递依赖
- 动态依赖

## 最佳实践
- 结构设计
- 模块划分
- 依赖管理
- 版本控制
- 维护策略
EOF

# 创建7.3.2命名约定文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.3-代码规范与风格/7.3.2-命名约定.md" << 'EOF'
---
title: 命名约定
icon: kotlin-naming
order: 2
---

# 命名约定

## 基本规则
- 包命名
- 类命名
- 函数命名
- 变量命名
- 常量命名

## 特殊规则
- 接口命名
- 枚举命名
- 注解命名
- 测试命名
- 文件命名

## 风格指南
- 命名风格
- 缩写规则
- 前缀后缀
- 特殊字符
- 语言特性

## 最佳实践
- 规范遵守
- 一致性
- 可读性
- 维护性
- 团队协作
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建7.3.3函数设计文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.3-代码规范与风格/7.3.3-函数设计.md" << 'EOF'
---
title: 函数设计
icon: kotlin-function-design
order: 3
---

# 函数设计

## 基本原则
- 单一职责
- 参数设计
- 返回值设计
- 异常处理
- 扩展性

## 设计技巧
- 默认参数
- 命名参数
- 扩展函数
- 内联函数
- 高阶函数

## 函数组织
- 作用域
- 可见性
- 嵌套函数
- 局部函数
- 函数引用

## 最佳实践
- 函数长度
- 参数数量
- 复杂度控制
- 代码复用
- 测试友好
EOF

# 创建7.3.4代码审查指南文件
cat > "$BASE_DIR/第7章-实战与最佳实践/7.3-代码规范与风格/7.3.4-代码审查指南.md" << 'EOF'
---
title: 代码审查指南
icon: kotlin-code-review
order: 4
---

# 代码审查指南

## 审查重点
- 代码规范
- 设计原则
- 性能考虑
- 安全性
- 可维护性

## 审查流程
- 提交准备
- 审查步骤
- 反馈处理
- 修改确认
- 最终审核

## 审查工具
- 代码分析
- 静态检查
- 风格检查
- 性能分析
- 安全扫描

## 最佳实践
- 审查标准
- 时间控制
- 沟通技巧
- 文档记录
- 持续改进
EOF

# 创建第8章目录
mkdir -p "$BASE_DIR/第8章-生态系统与工具"

# 创建第8章README文件
cat > "$BASE_DIR/第8章-生态系统与工具/README.md" << 'EOF'
---
title: 生态系统与工具
icon: kotlin-ecosystem
order: 8
---

# 生态系统与工具

本章介绍Kotlin的生态系统和开发工具。
EOF

# 创建8.1构建工具目录
mkdir -p "$BASE_DIR/第8章-生态系统与工具/8.1-构建工具"

# 创建8.1构建工具README文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.1-构建工具/README.md" << 'EOF'
---
title: 构建工具
icon: kotlin-build
order: 1
---

# 构建工具

本节介绍Kotlin项目的构建工具使用。
EOF

# 创建8.1.1GradleKotlinDSL文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.1-构建工具/8.1.1-GradleKotlinDSL.md" << 'EOF'
---
title: Gradle Kotlin DSL
icon: kotlin-gradle
order: 1
---

# Gradle Kotlin DSL

## 基础配置
- 项目配置
- 依赖管理
- 插件配置
- 任务定义
- 构建生命周期

## 高级特性
- 自定义任务
- 依赖处理
- 多项目构建
- 构建缓存
- 增量编译

## 性能优化
- 构建加速
- 并行执行
- 缓存优化
- 内存管理
- 配置优化

## 最佳实践
- 配置组织
- 依赖管理
- 任务设计
- 性能调优
- 维护策略
EOF

# 创建8.1.2Maven配置文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.1-构建工具/8.1.2-Maven配置.md" << 'EOF'
---
title: Maven配置
icon: kotlin-maven
order: 2
---

# Maven配置

## 基础配置
- POM文件
- 依赖管理
- 插件配置
- 构建周期
- 资源管理

## 构建设置
- 编译配置
- 测试配置
- 打包配置
- 部署配置
- 发布配置

## 插件使用
- Kotlin插件
- 测试插件
- 文档插件
- 打包插件
- 质量检查

## 最佳实践
- 配置管理
- 依赖处理
- 构建优化
- 版本控制
- 团队协作
EOF

# 创建8.1.3构建优化文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.1-构建工具/8.1.3-构建优化.md" << 'EOF'
---
title: 构建优化
icon: kotlin-build-optimize
order: 3
---

# 构建优化

## 性能优化
- 构建速度
- 内存使用
- 并行构建
- 增量编译
- 缓存策略

## 配置优化
- 依赖管理
- 插件配置
- 任务组织
- 资源处理
- 构建脚本

## 工具支持
- 构建分析
- 性能监控
- 问题诊断
- 优化建议
- 报告生成

## 最佳实践
- 优化策略
- 监控方案
- 问题排查
- 持续改进
- 团队协作
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建8.1.4多模块项目文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.1-构建工具/8.1.4-多模块项目.md" << 'EOF'
---
title: 多模块项目
icon: kotlin-multimodule
order: 4
---

# 多模块项目

## 项目结构
- 模块划分
- 依赖关系
- 构建配置
- 资源管理
- 版本控制

## 模块设计
- 接口定义
- 实现分离
- 公共模块
- 业务模块
- 测试模块

## 构建管理
- 依赖配置
- 构建顺序
- 并行构建
- 增量编译
- 发布管理

## 最佳实践
- 模块划分
- 依赖管理
- 版本控制
- 构建优化
- 团队协作
EOF

# 创建8.2IDE支持目录
mkdir -p "$BASE_DIR/第8章-生态系统与工具/8.2-IDE支持"

# 创建8.2IDE支持README文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.2-IDE支持/README.md" << 'EOF'
---
title: IDE支持
icon: kotlin-ide
order: 2
---

# IDE支持

本节介绍Kotlin的IDE开发工具支持。
EOF

# 创建8.2.1IntelliJIDEA技巧文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.2-IDE支持/8.2.1-IntelliJIDEA技巧.md" << 'EOF'
---
title: IntelliJ IDEA技巧
icon: kotlin-idea
order: 1
---

# IntelliJ IDEA技巧

## 编码辅助
- 代码补全
- 快速修复
- 代码模板
- 实时检查
- 智能提示

## 重构功能
- 重命名
- 提取方法
- 移动代码
- 内联优化
- 层次结构

## 调试功能
- 断点管理
- 变量监视
- 表达式求值
- 堆栈跟踪
- 条件断点

## 最佳实践
- 快捷键
- 插件使用
- 配置优化
- 工作流程
- 效率提升
EOF

# 创建8.2.2AndroidStudio集成文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.2-IDE支持/8.2.2-AndroidStudio集成.md" << 'EOF'
---
title: Android Studio集成
icon: kotlin-android-studio
order: 2
---

# Android Studio集成

## 基础配置
- 项目设置
- Gradle配置
- SDK管理
- 模拟器配置
- 调试设置

## 开发工具
- 布局编辑器
- 资源管理
- 性能工具
- 测试工具
- 发布工具

## 特殊功能
- 视图绑定
- 导航编辑
- 依赖注入
- 数据绑定
- 协程支持

## 最佳实践
- 工具使用
- 性能优化
- 调试技巧
- 发布流程
- 团队协作
EOF

# 创建8.2.3代码生成与重构文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.2-IDE支持/8.2.3-代码生成与重构.md" << 'EOF'
---
title: 代码生成与重构
icon: kotlin-refactor
order: 3
---

# 代码生成与重构

## 代码生成
- 类生成
- 方法生成
- 接口实现
- 测试生成
- 构造函数

## 重构操作
- 提取方法
- 提取变量
- 移动代码
- 重命名
- 内联优化

## 代码优化
- 代码清理
- 代码格式化
- 导入优化
- 死代码删除
- 性能优化

## 最佳实践
- 重构策略
- 代码质量
- 测试保护
- 团队协作
- 版本控制
EOF

# 创建8.2.4调试技巧文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.2-IDE支持/8.2.4-调试技巧.md" << 'EOF'
---
title: 调试技巧
icon: kotlin-debug
order: 4
---

# 调试技巧

## 基本技巧
- 断点设置
- 单步执行
- 变量查看
- 调用栈
- 条件断点

## 高级功能
- 远程调试
- 内存查看
- 线程分析
- 性能分析
- 异常处理

## 特殊调试
- 协程调试
- 多线程调试
- UI调试
- 网络调试
- 数据库调试

## 最佳实践
- 调试策略
- 问题定位
- 性能优化
- 内存管理
- 调试工具
EOF

# 创建8.3常用库与框架目录
mkdir -p "$BASE_DIR/第8章-生态系统与工具/8.3-常用库与框架"

# 创建8.3常用库与框架README文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.3-常用库与框架/README.md" << 'EOF'
---
title: 常用库与框架
icon: kotlin-libraries
order: 3
---

# 常用库与框架

本节介绍Kotlin生态系统中的常用库和框架。
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建8.3.1Ktor(网络框架)文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.3-常用库与框架/8.3.1-Ktor(网络框架).md" << 'EOF'
---
title: Ktor(网络框架)
icon: kotlin-ktor
order: 1
---

# Ktor(网络框架)

## 基础功能
- 路由配置
- 请求处理
- 响应处理
- 中间件
- 静态资源

## 高级特性
- WebSocket
- 协程支持
- 认证授权
- 序列化
- 客户端API

## 插件系统
- 压缩
- 会话管理
- CORS
- 监控
- 缓存

## 最佳实践
- 架构设计
- 性能优化
- 安全配置
- 测试策略
- 部署方案
EOF

# 创建8.3.2Exposed(SQL框架)文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.3-常用库与框架/8.3.2-Exposed(SQL框架).md" << 'EOF'
---
title: Exposed(SQL框架)
icon: kotlin-exposed
order: 2
---

# Exposed(SQL框架)

## 基础用法
- 表定义
- 查询操作
- 更新操作
- 事务管理
- 连接池

## DSL特性
- 表达式
- 条件构建
- 关联查询
- 聚合函数
- 子查询

## DAO支持
- 实体映射
- CRUD操作
- 关系映射
- 懒加载
- 缓存管理

## 最佳实践
- 模型设计
- 性能优化
- 事务处理
- 测试策略
- 迁移管理
EOF

# 创建8.3.3Arrow(函数式编程)文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.3-常用库与框架/8.3.3-Arrow(函数式编程).md" << 'EOF'
---
title: Arrow(函数式编程)
icon: kotlin-arrow
order: 3
---

# Arrow(函数式编程)

## 核心概念
- 函子
- 单子
- 箭头
- 类型类
- 效果系统

## 数据类型
- Option
- Either
- Try
- Validated
- IO

## 工具函数
- 函数组合
- 错误处理
- 并发控制
- 状态管理
- 效果处理

## 最佳实践
- 类型设计
- 错误处理
- 并发处理
- 测试策略
- 性能优化
EOF

# 创建8.3.4Koin/Kodein(依赖注入)文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.3-常用库与框架/8.3.4-Koin_Kodein(依赖注入).md" << 'EOF'
---
title: Koin/Kodein(依赖注入)
icon: kotlin-di
order: 4
---

# Koin/Kodein(依赖注入)

## 基础概念
- 模块定义
- 依赖声明
- 作用域
- 生命周期
- 懒加载

## 高级特性
- 限定符
- 工厂方法
- 单例管理
- 参数注入
- 循环依赖

## 框架集成
- Android集成
- Ktor集成
- Spring集成
- 测试支持
- 多平台支持

## 最佳实践
- 模块设计
- 依赖管理
- 性能优化
- 测试策略
- 维护方案
EOF

# 创建8.4调试与监控目录
mkdir -p "$BASE_DIR/第8章-生态系统与工具/8.4-调试与监控"

# 创建8.4调试与监控README文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.4-调试与监控/README.md" << 'EOF'
---
title: 调试与监控
icon: kotlin-debug-monitor
order: 4
---

# 调试与监控

本节介绍Kotlin项目的调试和监控技术。
EOF

# 创建8.4.1日志处理文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.4-调试与监控/8.4.1-日志处理.md" << 'EOF'
---
title: 日志处理
icon: kotlin-logging
order: 1
---

# 日志处理

## 日志框架
- SLF4J
- Logback
- Log4j
- 自定义日志
- 多平台日志

## 日志配置
- 日志级别
- 输出格式
- 文件轮转
- 异步处理
- 过滤规则

## 最佳实践
- 日志策略
- 性能优化
- 安全考虑
- 监控集成
- 问题诊断

## 工具支持
- 日志分析
- 日志聚合
- 日志搜索
- 告警配置
- 可视化
EOF

# 创建8.4.2性能分析文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.4-调试与监控/8.4.2-性能分析.md" << 'EOF'
---
title: 性能分析
icon: kotlin-performance
order: 2
---

# 性能分析

## 分析工具
- CPU分析
- 内存分析
- 线程分析
- IO分析
- 网络分析

## 性能指标
- 响应时间
- 吞吐量
- 资源使用
- 并发能力
- 延迟分布

## 优化方法
- 代码优化
- 算法优化
- 缓存优化
- 并发优化
- 资源优化

## 最佳实践
- 性能基准
- 监控策略
- 问题定位
- 优化方案
- 持续改进
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建8.4.3内存泄漏检测文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.4-调试与监控/8.4.3-内存泄漏检测.md" << 'EOF'
---
title: 内存泄漏检测
icon: kotlin-memory-leak
order: 3
---

# 内存泄漏检测

## 检测工具
- LeakCanary
- MAT分析
- HPROF文件
- 堆转储
- GC日志

## 常见问题
- 静态引用
- 内部类泄漏
- 线程泄漏
- 缓存泄漏
- 资源未释放

## 分析方法
- 堆分析
- 对象跟踪
- 引用链分析
- 内存快照
- 泄漏模式

## 最佳实践
- 预防措施
- 检测策略
- 修复方法
- 验证手段
- 持续监控
EOF

# 创建8.4.4应用监控文件
cat > "$BASE_DIR/第8章-生态系统与工具/8.4-调试与监控/8.4.4-应用监控.md" << 'EOF'
---
title: 应用监控
icon: kotlin-monitoring
order: 4
---

# 应用监控

## 监控指标
- 系统性能
- 业务指标
- 错误统计
- 资源使用
- 用户体验

## 监控工具
- APM工具
- 日志系统
- 指标采集
- 告警系统
- 可视化

## 监控策略
- 实时监控
- 趋势分析
- 异常检测
- 容量规划
- 性能优化

## 最佳实践
- 监控范围
- 告警阈值
- 响应策略
- 数据分析
- 持续改进
EOF

# 创建第9章目录
mkdir -p "$BASE_DIR/第9章-高级主题"

# 创建第9章README文件
cat > "$BASE_DIR/第9章-高级主题/README.md" << 'EOF'
---
title: 高级主题
icon: kotlin-advanced
order: 9
---

# 高级主题

本章介绍Kotlin的高级编程主题。
EOF

# 创建9.1函数式编程进阶目录
mkdir -p "$BASE_DIR/第9章-高级主题/9.1-函数式编程进阶"

# 创建9.1函数式编程进阶README文件
cat > "$BASE_DIR/第9章-高级主题/9.1-函数式编程进阶/README.md" << 'EOF'
---
title: 函数式编程进阶
icon: kotlin-functional
order: 1
---

# 函数式编程进阶

本节介绍Kotlin的高级函数式编程概念。
EOF

# 创建9.1.1高阶函数模式文件
cat > "$BASE_DIR/第9章-高级主题/9.1-函数式编程进阶/9.1.1-高阶函数模式.md" << 'EOF'
---
title: 高阶函数模式
icon: kotlin-hof
order: 1
---

# 高阶函数模式

## 基本概念
- 函数类型
- 函数引用
- 闭包
- 柯里化
- 部分应用

## 设计模式
- 装饰器模式
- 策略模式
- 观察者模式
- 命令模式
- 责任链模式

## 实现技巧
- 函数组合
- 错误处理
- 状态管理
- 副作用控制
- 并发处理

## 最佳实践
- 模式选择
- 代码组织
- 性能优化
- 测试策略
- 维护性
EOF

# 创建9.1.2函数组合文件
cat > "$BASE_DIR/第9章-高级主题/9.1-函数式编程进阶/9.1.2-函数组合.md" << 'EOF'
---
title: 函数组合
icon: kotlin-composition
order: 2
---

# 函数组合

## 基础概念
- 函数管道
- 组合子
- 单子
- 函子
- 箭头

## 组合方式
- 顺序组合
- 并行组合
- 条件组合
- 错误处理
- 状态传递

## 应用场景
- 数据转换
- 验证链
- 中间件
- 工作流
- 事件处理

## 最佳实践
- 组合策略
- 错误处理
- 性能优化
- 测试方法
- 代码组织
EOF

# 创建9.1.3不可变数据结构文件
cat > "$BASE_DIR/第9章-高级主题/9.1-函数式编程进阶/9.1.3-不可变数据结构.md" << 'EOF'
---
title: 不可变数据结构
icon: kotlin-immutable
order: 3
---

# 不可变数据结构

## 基础类型
- 不可变列表
- 不可变集合
- 不可变映射
- 持久化数据
- 共享结构

## 实现原理
- 结构共享
- 写时复制
- 树形结构
- 版本控制
- 内存优化

## 使用场景
- 并发编程
- 函数式编程
- 状态管理
- 缓存优化
- 版本控制

## 最佳实践
- 性能考虑
- 内存管理
- 并发处理
- 测试策略
- 设计模式
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建9.1.4函数式错误处理文件
cat > "$BASE_DIR/第9章-高级主题/9.1-函数式编程进阶/9.1.4-函数式错误处理.md" << 'EOF'
---
title: 函数式错误处理
icon: kotlin-error
order: 4
---

# 函数式错误处理

## 基本概念
- Either类型
- Result类型
- Option类型
- Try类型
- Validated类型

## 处理模式
- 错误传播
- 错误恢复
- 错误转换
- 错误组合
- 错误累积

## 实现技巧
- 类型安全
- 副作用控制
- 错误链式
- 并发处理
- 资源管理

## 最佳实践
- 错误设计
- 类型选择
- 代码组织
- 测试策略
- 性能考虑
EOF

# 创建9.2元编程目录
mkdir -p "$BASE_DIR/第9章-高级主题/9.2-元编程"

# 创建9.2元编程README文件
cat > "$BASE_DIR/第9章-高级主题/9.2-元编程/README.md" << 'EOF'
---
title: 元编程
icon: kotlin-meta
order: 2
---

# 元编程

本节介绍Kotlin的元编程技术。
EOF

# 创建9.2.1注解处理文件
cat > "$BASE_DIR/第9章-高级主题/9.2-元编程/9.2.1-注解处理.md" << 'EOF'
---
title: 注解处理
icon: kotlin-annotation
order: 1
---

# 注解处理

## 基础概念
- 注解定义
- 注解目标
- 注解参数
- 注解保留
- 注解处理器

## 处理流程
- 编译时处理
- 运行时处理
- 代码生成
- 验证检查
- 元数据处理

## 应用场景
- 依赖注入
- ORM映射
- API文档
- 代码检查
- 性能优化

## 最佳实践
- 注解设计
- 处理策略
- 性能考虑
- 测试方法
- 维护性
EOF

# 创建9.2.2反射文件
cat > "$BASE_DIR/第9章-高级主题/9.2-元编程/9.2.2-反射.md" << 'EOF'
---
title: 反射
icon: kotlin-reflection
order: 2
---

# 反射

## 基本概念
- 类反射
- 属性反射
- 函数反射
- 泛型反射
- 注解反射

## 操作技术
- 类型检查
- 成员访问
- 动态调用
- 属性委托
- 对象创建

## 应用场景
- 依赖注入
- 序列化
- 测试框架
- 插件系统
- 动态代理

## 最佳实践
- 性能优化
- 安全处理
- 错误处理
- 测试策略
- 维护性
EOF

# 创建9.2.3代码生成文件
cat > "$BASE_DIR/第9章-高级主题/9.2-元编程/9.2.3-代码生成.md" << 'EOF'
---
title: 代码生成
icon: kotlin-codegen
order: 3
---

# 代码生成

## 生成技术
- AST操作
- 字节码生成
- 模板引擎
- 源码生成
- 注解处理

## 应用场景
- DTO生成
- 代理类
- 序列化
- 构建工具
- API文档

## 工具支持
- KSP
- KAPT
- ByteBuddy
- ASM
- JavaPoet

## 最佳实践
- 生成策略
- 性能优化
- 调试技巧
- 测试方法
- 维护性
EOF

# 创建9.2.4编译器插件开发文件
cat > "$BASE_DIR/第9章-高级主题/9.2-元编程/9.2.4-编译器插件开发.md" << 'EOF'
---
title: 编译器插件开发
icon: kotlin-compiler
order: 4
---

# 编译器插件开发

## 基础知识
- 编译过程
- IR树
- 插件API
- 转换阶段
- 代码分析

## 开发技术
- 语法树操作
- 类型检查
- 代码转换
- 错误报告
- 优化处理

## 应用场景
- 代码检查
- 性能优化
- 特性增强
- 兼容性
- 调试支持

## 最佳实践
- 插件设计
- 性能考虑
- 测试策略
- 发布部署
- 维护更新
EOF

# 创建9.3DSL构建目录
mkdir -p "$BASE_DIR/第9章-高级主题/9.3-DSL构建"

# 创建9.3DSL构建README文件
cat > "$BASE_DIR/第9章-高级主题/9.3-DSL构建/README.md" << 'EOF'
---
title: DSL构建
icon: kotlin-dsl
order: 3
---

# DSL构建

本节介绍Kotlin的领域特定语言(DSL)构建技术。
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建9.3.1DSL设计原则文件
cat > "$BASE_DIR/第9章-高级主题/9.3-DSL构建/9.3.1-DSL设计原则.md" << 'EOF'
---
title: DSL设计原则
icon: kotlin-dsl-principles
order: 1
---

# DSL设计原则

## 基本原则
- 可读性优先
- 类型安全
- 扩展性
- 一致性
- 简洁性

## 设计要素
- 领域模型
- 语法结构
- 作用域控制
- 错误处理
- 类型系统

## 实现技术
- 扩展函数
- 中缀表达式
- 操作符重载
- 高阶函数
- Lambda表达式

## 最佳实践
- API设计
- 使用场景
- 性能考虑
- 测试策略
- 文档规范
EOF

# 创建9.3.2接收者作用域文件
cat > "$BASE_DIR/第9章-高级主题/9.3-DSL构建/9.3.2-接收者作用域.md" << 'EOF'
---
title: 接收者作用域
icon: kotlin-receiver
order: 2
---

# 接收者作用域

## 基础概念
- 接收者类型
- 作用域函数
- 扩展函数
- 隐式接收者
- 显式接收者

## 作用域控制
- 变量访问
- 函数调用
- 属性委托
- 嵌套作用域
- 上下文切换

## 实现技巧
- 作用域限定
- 上下文传递
- 链式调用
- 类型推断
- 错误处理

## 最佳实践
- 作用域设计
- 命名规范
- 性能优化
- 测试方法
- 代码组织
EOF

# 创建9.3.3实用DSL案例文件
cat > "$BASE_DIR/第9章-高级主题/9.3-DSL构建/9.3.3-实用DSL案例.md" << 'EOF'
---
title: 实用DSL案例
icon: kotlin-dsl-examples
order: 3
---

# 实用DSL案例

## 配置DSL
- Gradle配置
- 路由定义
- 数据库映射
- UI构建
- 测试用例

## HTML构建
- 标签嵌套
- 属性设置
- 事件处理
- 样式定义
- 组件复用

## 测试DSL
- 测试场景
- 断言语法
- 数据构建
- 行为验证
- 报告生成

## 最佳实践
- 场景选择
- 实现策略
- 性能优化
- 测试方法
- 维护性
EOF

# 创建9.3.4DSL性能考量文件
cat > "$BASE_DIR/第9章-高级主题/9.3-DSL构建/9.3.4-DSL性能考量.md" << 'EOF'
---
title: DSL性能考量
icon: kotlin-dsl-performance
order: 4
---

# DSL性能考量

## 性能因素
- 对象创建
- 内存使用
- 编译优化
- 运行时开销
- 垃圾回收

## 优化技术
- 内联函数
- 对象复用
- 懒加载
- 缓存策略
- 内存管理

## 性能分析
- 基准测试
- 内存分析
- CPU分析
- 调用链分析
- 瓶颈识别

## 最佳实践
- 设计权衡
- 优化策略
- 监控方案
- 测试验证
- 持续改进
EOF

# 创建9.4并发编程模型目录
mkdir -p "$BASE_DIR/第9章-高级主题/9.4-并发编程模型"

# 创建9.4并发编程模型README文件
cat > "$BASE_DIR/第9章-高级主题/9.4-并发编程模型/README.md" << 'EOF'
---
title: 并发编程模型
icon: kotlin-concurrency
order: 4
---

# 并发编程模型

本节介绍Kotlin的并发编程模型。
EOF

# 创建9.4.1协程vs线程文件
cat > "$BASE_DIR/第9章-高级主题/9.4-并发编程模型/9.4.1-协程vs线程.md" << 'EOF'
---
title: 协程vs线程
icon: kotlin-coroutine-thread
order: 1
---

# 协程vs线程

## 基本概念
- 协程原理
- 线程模型
- 调度机制
- 内存模型
- 性能特性

## 比较分析
- 资源消耗
- 并发能力
- 编程模型
- 调试难度
- 适用场景

## 选择标准
- 性能要求
- 资源限制
- 开发效率
- 维护成本
- 团队经验

## 最佳实践
- 场景选择
- 性能优化
- 错误处理
- 测试策略
- 监控方案
EOF

# 创建9.4.2响应式编程文件
cat > "$BASE_DIR/第9章-高级主题/9.4-并发编程模型/9.4.2-响应式编程.md" << 'EOF'
---
title: 响应式编程
icon: kotlin-reactive
order: 2
---

# 响应式编程

## 基础概念
- 响应式流
- 背压处理
- 操作符
- 调度器
- 错误处理

## 核心特性
- 异步非阻塞
- 函数式风格
- 数据流处理
- 资源管理
- 并发控制

## 应用场景
- 流处理
- 事件处理
- 并发控制
- 资源管理
- 实时系统

## 最佳实践
- 设计模式
- 性能优化
- 错误处理
- 测试策略
- 监控方案
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建9.4.3Flow高级用法文件
cat > "$BASE_DIR/第9章-高级主题/9.4-并发编程模型/9.4.3-Flow高级用法.md" << 'EOF'
---
title: Flow高级用法
icon: kotlin-flow
order: 3
---

# Flow高级用法

## 基础操作
- 流创建
- 流转换
- 流收集
- 流合并
- 流分流

## 高级特性
- 背压处理
- 异常处理
- 生命周期
- 状态管理
- 取消操作

## 并发控制
- 调度器
- 缓冲区
- 并发限制
- 错误恢复
- 超时处理

## 最佳实践
- 性能优化
- 内存管理
- 错误处理
- 测试策略
- 监控方案
EOF

# 创建9.4.4并发数据结构文件
cat > "$BASE_DIR/第9章-高级主题/9.4-并发编程模型/9.4.4-并发数据结构.md" << 'EOF'
---
title: 并发数据结构
icon: kotlin-concurrent
order: 4
---

# 并发数据结构

## 基本类型
- 原子类型
- 并发集合
- 线程安全队列
- 同步Map
- 阻塞队列

## 实现原理
- 内存屏障
- CAS操作
- 锁机制
- 无锁算法
- 内存模型

## 使用场景
- 数据共享
- 消息传递
- 任务调度
- 资源池
- 缓存系统

## 最佳实践
- 选型策略
- 性能优化
- 内存管理
- 测试方法
- 监控方案
EOF

# 创建第10章目录
mkdir -p "$BASE_DIR/第10章-案例研究"

# 创建第10章README文件
cat > "$BASE_DIR/第10章-案例研究/README.md" << 'EOF'
---
title: 案例研究
icon: kotlin-case-study
order: 10
---

# 案例研究

本章通过实际案例研究Kotlin的应用实践。
EOF

# 创建10.1从Java迁移到Kotlin目录
mkdir -p "$BASE_DIR/第10章-案例研究/10.1-从Java迁移到Kotlin"

# 创建10.1从Java迁移到Kotlin README文件
cat > "$BASE_DIR/第10章-案例研究/10.1-从Java迁移到Kotlin/README.md" << 'EOF'
---
title: 从Java迁移到Kotlin
icon: kotlin-migration
order: 1
---

# 从Java迁移到Kotlin

本节介绍Java项目迁移到Kotlin的实践经验。
EOF

# 创建10.1.1渐进式迁移策略文件
cat > "$BASE_DIR/第10章-案例研究/10.1-从Java迁移到Kotlin/10.1.1-渐进式迁移策略.md" << 'EOF'
---
title: 渐进式迁移策略
icon: kotlin-migration-strategy
order: 1
---

# 渐进式迁移策略

## 迁移准备
- 项目评估
- 团队培训
- 工具准备
- 风险评估
- 计划制定

## 迁移步骤
- 模块划分
- 代码转换
- 测试验证
- 性能优化
- 文档更新

## 质量保证
- 代码审查
- 自动化测试
- 性能监控
- 兼容性测试
- 回归测试

## 最佳实践
- 优先级确定
- 风险控制
- 进度管理
- 团队协作
- 持续改进
EOF

# 创建10.1.2常见问题与解决方案文件
cat > "$BASE_DIR/第10章-案例研究/10.1-从Java迁移到Kotlin/10.1.2-常见问题与解决方案.md" << 'EOF'
---
title: 常见问题与解决方案
icon: kotlin-problems
order: 2
---

# 常见问题与解决方案

## 语法差异
- 空安全处理
- 类型系统
- 属性访问
- 扩展函数
- 协程使用

## 工具链问题
- 构建配置
- IDE支持
- 插件兼容
- 调试工具
- 性能分析

## 运行时问题
- 性能开销
- 内存使用
- 异常处理
- 线程管理
- 资源释放

## 最佳实践
- 问题预防
- 快速定位
- 解决方案
- 经验总结
- 知识共享
EOF

# 创建10.1.3性能对比文件
cat > "$BASE_DIR/第10章-案例研究/10.1-从Java迁移到Kotlin/10.1.3-性能对比.md" << 'EOF'
---
title: 性能对比
icon: kotlin-performance
order: 3
---

# 性能对比

## 基准测试
- 启动时间
- 运行性能
- 内存占用
- GC影响
- 线程开销

## 场景分析
- CPU密集型
- IO密集型
- 内存密集型
- 并发处理
- 网络操作

## 优化建议
- 代码优化
- 内存优化
- 并发优化
- 工具选择
- 配置调优

## 最佳实践
- 性能监控
- 问题定位
- 优化方案
- 效果验证
- 持续改进
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建10.1.4迁移后的维护文件
cat > "$BASE_DIR/第10章-案例研究/10.1-从Java迁移到Kotlin/10.1.4-迁移后的维护.md" << 'EOF'
---
title: 迁移后的维护
icon: kotlin-maintenance
order: 4
---

# 迁移后的维护

## 代码维护
- 代码规范
- 重构优化
- 文档更新
- 版本控制
- 技术债务

## 团队管理
- 知识传递
- 培训体系
- 代码审查
- 最佳实践
- 技术分享

## 质量保证
- 自动化测试
- 性能监控
- 代码质量
- 安全审计
- 持续集成

## 最佳实践
- 维护策略
- 问题追踪
- 版本管理
- 发布流程
- 监控预警
EOF

# 创建10.2全栈Kotlin应用开发目录
mkdir -p "$BASE_DIR/第10章-案例研究/10.2-全栈Kotlin应用开发"

# 创建10.2全栈Kotlin应用开发README文件
cat > "$BASE_DIR/第10章-案例研究/10.2-全栈Kotlin应用开发/README.md" << 'EOF'
---
title: 全栈Kotlin应用开发
icon: kotlin-fullstack
order: 2
---

# 全栈Kotlin应用开发

本节介绍使用Kotlin进行全栈应用开发的实践。
EOF

# 创建10.2.1后端(Ktor)文件
cat > "$BASE_DIR/第10章-案例研究/10.2-全栈Kotlin应用开发/10.2.1-后端(Ktor).md" << 'EOF'
---
title: 后端(Ktor)
icon: kotlin-ktor
order: 1
---

# 后端(Ktor)

## 架构设计
- 分层架构
- 依赖注入
- 路由设计
- 数据访问
- 安全认证

## 功能实现
- RESTful API
- WebSocket
- 数据序列化
- 文件处理
- 缓存管理

## 性能优化
- 协程应用
- 连接池
- 缓存策略
- 并发控制
- 资源管理

## 最佳实践
- 项目结构
- 错误处理
- 日志管理
- 测试策略
- 部署方案
EOF

# 创建10.2.2前端(Kotlin/JS)文件
cat > "$BASE_DIR/第10章-案例研究/10.2-全栈Kotlin应用开发/10.2.2-前端(Kotlin_JS).md" << 'EOF'
---
title: 前端(Kotlin/JS)
icon: kotlin-js
order: 2
---

# 前端(Kotlin/JS)

## 基础架构
- 项目配置
- 路由系统
- 状态管理
- 组件设计
- 构建工具

## UI开发
- 组件库
- 样式管理
- 响应式设计
- 动画效果
- 主题定制

## 数据处理
- API调用
- 数据绑定
- 状态同步
- 缓存策略
- 错误处理

## 最佳实践
- 性能优化
- 代码组织
- 测试方法
- 构建部署
- 维护策略
EOF

# 创建10.2.3移动端(Android/iOS)文件
cat > "$BASE_DIR/第10章-案例研究/10.2-全栈Kotlin应用开发/10.2.3-移动端(Android_iOS).md" << 'EOF'
---
title: 移动端(Android/iOS)
icon: kotlin-mobile
order: 3
---

# 移动端(Android/iOS)

## 架构设计
- MVVM模式
- 依赖注入
- 导航系统
- 数据存储
- 网络层

## 界面开发
- Compose UI
- 自定义视图
- 动画效果
- 主题适配
- 多屏适配

## 功能实现
- 网络请求
- 本地存储
- 后台任务
- 推送通知
- 权限管理

## 最佳实践
- 性能优化
- 代码复用
- 测试策略
- 发布流程
- 版本管理
EOF

# 创建10.2.4共享业务逻辑文件
cat > "$BASE_DIR/第10章-案例研究/10.2-全栈Kotlin应用开发/10.2.4-共享业务逻辑.md" << 'EOF'
---
title: 共享业务逻辑
icon: kotlin-shared
order: 4
---

# 共享业务逻辑

## 代码共享
- 业务模型
- 验证逻辑
- 工具类
- 常量定义
- 接口规范

## 实现策略
- 模块划分
- 依赖管理
- 平台适配
- 版本控制
- 构建配置

## 测试方案
- 单元测试
- 集成测试
- 平台测试
- 自动化测试
- 性能测试

## 最佳实践
- 架构设计
- 代码组织
- 版本管理
- 团队协作
- 维护策略
EOF

# 创建10.3微服务架构实现目录
mkdir -p "$BASE_DIR/第10章-案例研究/10.3-微服务架构实现"

# 创建10.3微服务架构实现README文件
cat > "$BASE_DIR/第10章-案例研究/10.3-微服务架构实现/README.md" << 'EOF'
---
title: 微服务架构实现
icon: kotlin-microservice
order: 3
---

# 微服务架构实现

本节介绍使用Kotlin实现微服务架构的实践经验。
EOF
BASE_DIR="c:\project\kphub\src\kotlin"

# 创建10.3.1服务设计文件
cat > "$BASE_DIR/第10章-案例研究/10.3-微服务架构实现/10.3.1-服务设计.md" << 'EOF'
---
title: 服务设计
icon: kotlin-service
order: 1
---

# 服务设计

## 架构设计
- 领域驱动
- 服务边界
- 数据模型
- 接口设计
- 安全策略

## 技术选型
- 框架选择
- 数据存储
- 消息队列
- 缓存系统
- 服务发现

## 代码组织
- 项目结构
- 模块划分
- 依赖管理
- 公共组件
- 配置管理

## 最佳实践
- 设计原则
- 开发规范
- 测试策略
- 部署方案
- 维护计划
EOF

# 创建10.3.2通信模式文件
cat > "$BASE_DIR/第10章-案例研究/10.3-微服务架构实现/10.3.2-通信模式.md" << 'EOF'
---
title: 通信模式
icon: kotlin-communication
order: 2
---

# 通信模式

## 同步通信
- REST API
- gRPC
- GraphQL
- WebSocket
- 服务代理

## 异步通信
- 消息队列
- 事件驱动
- 发布订阅
- 流处理
- 批处理

## 协议设计
- 接口定义
- 序列化
- 版本控制
- 错误处理
- 安全认证

## 最佳实践
- 模式选择
- 性能优化
- 可靠性
- 监控追踪
- 故障处理
EOF

# 创建10.3.3部署策略文件
cat > "$BASE_DIR/第10章-案例研究/10.3-微服务架构实现/10.3.3-部署策略.md" << 'EOF'
---
title: 部署策略
icon: kotlin-deployment
order: 3
---

# 部署策略

## 容器化部署
- Docker构建
- 镜像管理
- 资源配置
- 网络设置
- 存储管理

## 编排管理
- Kubernetes
- 服务编排
- 负载均衡
- 自动扩缩
- 故障转移

## 发布策略
- 蓝绿部署
- 金丝雀发布
- 滚动更新
- 版本控制
- 回滚机制

## 最佳实践
- 环境管理
- 配置中心
- 监控告警
- 日志收集
- 安全策略
EOF

# 创建10.3.4监控与可观测性文件
cat > "$BASE_DIR/第10章-案例研究/10.3-微服务架构实现/10.3.4-监控与可观测性.md" << 'EOF'
---
title: 监控与可观测性
icon: kotlin-monitoring
order: 4
---

# 监控与可观测性

## 监控指标
- 系统指标
- 业务指标
- 性能指标
- 资源使用
- 健康状态

## 日志管理
- 日志收集
- 日志分析
- 日志存储
- 日志查询
- 告警设置

## 链路追踪
- 分布式追踪
- 性能分析
- 错误定位
- 依赖分析
- 瓶颈识别

## 最佳实践
- 监控策略
- 告警阈值
- 问题诊断
- 性能优化
- 持续改进
EOF

# 创建Node.js目录
BASE_DIR="c:\project\kphub\src\nodejs"
mkdir -p "$BASE_DIR"

# 创建主README文件
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Node.js开发知识体系
icon: nodejs
order: 1
---

# Node.js开发知识体系

本知识库系统地整理了Node.js开发工程师所需掌握的核心知识和技能，从基础概念到高级应用，从开发框架到性能优化，全面覆盖Node.js开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Node.js基础"

# 创建第1章README文件
cat > "$BASE_DIR/第1章-Node.js基础/README.md" << 'EOF'
---
title: Node.js基础
icon: nodejs-basic
order: 1
---

# Node.js基础

本章介绍Node.js的基础知识和核心概念。
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建1.1Node.js简介文件
cat > "$BASE_DIR/第1章-Node.js基础/1.1-Node.js简介.md" << 'EOF'
---
title: Node.js简介
icon: nodejs-intro
order: 1
---

# Node.js简介

## 基本概念
- 运行时环境
- 事件驱动
- 非阻塞I/O
- 单线程模型
- V8引擎

## 主要特点
- 异步编程
- 模块化系统
- 跨平台
- 高性能
- 生态系统

## 应用场景
- Web服务器
- API开发
- 实时应用
- 工具开发
- 前端工程化

## 技术优势
- 开发效率
- 性能表现
- 社区支持
- 扩展性
- 学习曲线
EOF

# 创建1.2Node.js历史与发展文件
cat > "$BASE_DIR/第1章-Node.js基础/1.2-Node.js历史与发展.md" << 'EOF'
---
title: Node.js历史与发展
icon: nodejs-history
order: 2
---

# Node.js历史与发展

## 发展历程
- 诞生背景
- 重要里程碑
- 版本演进
- 技术革新
- 未来展望

## 重要版本
- 早期版本
- LTS版本
- 现代特性
- 性能优化
- 工具链

## 社区生态
- npm生态
- 框架发展
- 工具演进
- 最佳实践
- 标准规范

## 技术趋势
- 性能提升
- 新特性
- 工具链
- 应用领域
- 发展方向
EOF

# 创建1.3Node.js架构文件
cat > "$BASE_DIR/第1章-Node.js基础/1.3-Node.js架构.md" << 'EOF'
---
title: Node.js架构
icon: nodejs-architecture
order: 3
---

# Node.js架构

## 核心组件
- V8引擎
- libuv
- 事件循环
- 线程池
- 模块系统

## 运行机制
- 事件驱动
- 非阻塞I/O
- 单线程模型
- 异步处理
- 回调机制

## 内存管理
- 垃圾回收
- 内存分配
- 内存泄漏
- 性能优化
- 监控分析

## 系统集成
- 网络模块
- 文件系统
- 加密模块
- 流处理
- 进程管理
EOF

# 创建1.4Node.js安装配置目录
mkdir -p "$BASE_DIR/第1章-Node.js基础/1.4-Node.js安装配置"

# 创建1.4Node.js安装配置README文件
cat > "$BASE_DIR/第1章-Node.js基础/1.4-Node.js安装配置/README.md" << 'EOF'
---
title: Node.js安装配置
icon: nodejs-install
order: 4
---

# Node.js安装配置

本节介绍Node.js在各个操作系统上的安装和配置方法。
EOF

# 创建1.4.1Windows安装文件
cat > "$BASE_DIR/第1章-Node.js基础/1.4-Node.js安装配置/1.4.1-Windows安装.md" << 'EOF'
---
title: Windows安装
icon: windows
order: 1
---

# Windows安装

## 安装方法
- 官网下载
- 安装包
- MSI安装
- 环境变量
- 版本选择

## 配置设置
- npm配置
- 镜像源
- 全局模块
- 权限设置
- 代理设置

## 开发工具
- 编辑器
- 调试工具
- 版本管理
- 包管理
- 构建工具

## 最佳实践
- 版本管理
- 环境隔离
- 性能优化
- 问题排查
- 升级维护
EOF

# 创建1.4.2MacOS安装文件
cat > "$BASE_DIR/第1章-Node.js基础/1.4-Node.js安装配置/1.4.2-MacOS安装.md" << 'EOF'
---
title: MacOS安装
icon: macos
order: 2
---

# MacOS安装

## 安装方法
- Homebrew
- 官网安装包
- nvm安装
- 源码编译
- 二进制包

## 环境配置
- 路径配置
- Shell配置
- 权限设置
- 版本管理
- 包管理器

## 开发环境
- 终端工具
- 编辑器
- 调试工具
- 构建工具
- 版本控制

## 最佳实践
- 环境隔离
- 性能优化
- 问题诊断
- 版本管理
- 升级维护
EOF

# 创建1.4.3Linux安装文件
cat > "$BASE_DIR/第1章-Node.js基础/1.4-Node.js安装配置/1.4.3-Linux安装.md" << 'EOF'
---
title: Linux安装
icon: linux
order: 3
---

# Linux安装

## 安装方法
- 包管理器
- 源码编译
- nvm安装
- 二进制包
- Docker安装

## 系统配置
- 环境变量
- 用户权限
- 依赖管理
- 系统优化
- 服务配置

## 开发环境
- 命令行工具
- 远程开发
- 调试工具
- 性能分析
- 监控工具

## 最佳实践
- 部署策略
- 性能优化
- 安全配置
- 监控方案
- 维护更新
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建1.4.4使用NVM管理版本文件
cat > "$BASE_DIR/第1章-Node.js基础/1.4-Node.js安装配置/1.4.4-使用NVM管理版本.md" << 'EOF'
---
title: 使用NVM管理版本
icon: nodejs-nvm
order: 4
---

# 使用NVM管理版本

## 基础使用
- 安装NVM
- 版本管理
- 切换版本
- 别名设置
- 默认版本

## 高级功能
- 远程源配置
- 版本迁移
- 项目配置
- 脚本集成
- 环境隔离

## 常见问题
- 权限问题
- 路径配置
- 版本冲突
- 性能优化
- 故障排除

## 最佳实践
- 版本策略
- 团队协作
- 自动化配置
- 性能优化
- 维护更新
EOF

# 创建1.5Node.js创建第一个应用文件
cat > "$BASE_DIR/第1章-Node.js基础/1.5-Node.js创建第一个应用.md" << 'EOF'
---
title: Node.js创建第一个应用
icon: nodejs-first-app
order: 5
---

# Node.js创建第一个应用

## 项目初始化
- 目录结构
- package.json
- 依赖管理
- 脚本配置
- 开发环境

## 基础功能
- HTTP服务器
- 路由处理
- 静态文件
- 错误处理
- 日志记录

## 开发调试
- 代码编写
- 调试工具
- 热重载
- 测试运行
- 性能优化

## 最佳实践
- 代码组织
- 错误处理
- 安全考虑
- 部署方案
- 维护策略
EOF

# 创建1.6Node.jsREPL环境文件
cat > "$BASE_DIR/第1章-Node.js基础/1.6-Node.jsREPL环境.md" << 'EOF'
---
title: Node.js REPL环境
icon: nodejs-repl
order: 6
---

# Node.js REPL环境

## 基本操作
- 命令行交互
- 代码执行
- 变量管理
- 历史记录
- 自动完成

## 高级功能
- 多行输入
- 上下文管理
- 模块加载
- 命令定制
- 环境配置

## 调试功能
- 代码评估
- 变量检查
- 对象查看
- 函数测试
- 性能分析

## 最佳实践
- 使用技巧
- 效率提升
- 调试方法
- 学习辅助
- 开发工具
EOF

# 创建1.7Node.js全局对象目录
mkdir -p "$BASE_DIR/第1章-Node.js基础/1.7-Node.js全局对象"

# 创建1.7Node.js全局对象README文件
cat > "$BASE_DIR/第1章-Node.js基础/1.7-Node.js全局对象/README.md" << 'EOF'
---
title: Node.js全局对象
icon: nodejs-global
order: 7
---

# Node.js全局对象

本节介绍Node.js中的全局对象及其用法。
EOF

# 创建1.7.1global对象文件
cat > "$BASE_DIR/第1章-Node.js基础/1.7-Node.js全局对象/1.7.1-global对象.md" << 'EOF'
---
title: global对象
icon: nodejs-global-obj
order: 1
---

# global对象

## 基本属性
- 全局变量
- 全局函数
- 模块系统
- 定时器
- Buffer

## 作用域
- 模块作用域
- 全局作用域
- 变量提升
- 闭包
- 上下文

## 使用场景
- 全局状态
- 共享数据
- 工具函数
- 性能监控
- 调试工具

## 最佳实践
- 作用域管理
- 内存优化
- 安全考虑
- 性能影响
- 代码组织
EOF

# 创建1.7.2process对象文件
cat > "$BASE_DIR/第1章-Node.js基础/1.7-Node.js全局对象/1.7.2-process对象.md" << 'EOF'
---
title: process对象
icon: nodejs-process
order: 2
---

# process对象

## 基本属性
- 环境变量
- 命令行参数
- 进程信息
- 系统信息
- 运行状态

## 事件处理
- 退出事件
- 错误事件
- 信号处理
- 未捕获异常
- Promise拒绝

## 进程控制
- 退出控制
- 内存使用
- CPU使用
- 工作目录
- 用户信息

## 最佳实践
- 错误处理
- 性能监控
- 资源管理
- 安全考虑
- 调试技巧
EOF

# 创建1.7.3console对象文件
cat > "$BASE_DIR/第1章-Node.js基础/1.7-Node.js全局对象/1.7.3-console对象.md" << 'EOF'
---
title: console对象
icon: nodejs-console
order: 3
---

# console对象

## 基本方法
- 日志输出
- 错误输出
- 警告信息
- 调试信息
- 性能计时

## 格式化输出
- 字符串格式化
- 表格输出
- 对象展示
- 堆栈跟踪
- 分组显示

## 调试功能
- 断言测试
- 计数器
- 性能分析
- 内存使用
- 调用跟踪

## 最佳实践
- 日志管理
- 调试技巧
- 性能优化
- 开发效率
- 问题诊断
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建1.7.4Buffer类文件
cat > "$BASE_DIR/第1章-Node.js基础/1.7-Node.js全局对象/1.7.4-Buffer类.md" << 'EOF'
---
title: Buffer类
icon: nodejs-buffer
order: 4
---

# Buffer类

## 基本概念
- 二进制数据
- 内存分配
- 字符编码
- 数据转换
- 缓冲区操作

## 常用操作
- 创建Buffer
- 写入数据
- 读取数据
- 编码转换
- 数据截取

## 高级特性
- 内存管理
- 性能优化
- 数据流
- 字符集处理
- 类型转换

## 最佳实践
- 内存控制
- 性能优化
- 安全考虑
- 错误处理
- 资源管理
EOF

# 创建1.7.5__dirname和__filename文件
cat > "$BASE_DIR/第1章-Node.js基础/1.7-Node.js全局对象/1.7.5-__dirname和__filename.md" << 'EOF'
---
title: __dirname和__filename
icon: nodejs-path
order: 5
---

# __dirname和__filename

## 基本用法
- 路径获取
- 相对路径
- 绝对路径
- 路径拼接
- 模块定位

## 应用场景
- 文件操作
- 模块加载
- 资源定位
- 配置管理
- 路径解析

## 注意事项
- 跨平台
- 路径分隔符
- 编码问题
- 安全考虑
- 性能影响

## 最佳实践
- 路径处理
- 跨平台兼容
- 安全防护
- 代码组织
- 错误处理
EOF

# 创建1.7.6定时器函数文件
cat > "$BASE_DIR/第1章-Node.js基础/1.7-Node.js全局对象/1.7.6-定时器函数.md" << 'EOF'
---
title: 定时器函数
icon: nodejs-timer
order: 6
---

# 定时器函数

## 基本函数
- setTimeout
- setInterval
- setImmediate
- clearTimeout
- clearInterval

## 使用场景
- 延时执行
- 周期任务
- 异步控制
- 性能优化
- 任务调度

## 高级特性
- 事件循环
- 微任务
- 宏任务
- 优先级
- 性能影响

## 最佳实践
- 内存管理
- 性能优化
- 错误处理
- 任务管理
- 资源控制
EOF

# 创建1.8Node.js常用工具目录
mkdir -p "$BASE_DIR/第1章-Node.js基础/1.8-Node.js常用工具"

# 创建1.8Node.js常用工具README文件
cat > "$BASE_DIR/第1章-Node.js基础/1.8-Node.js常用工具/README.md" << 'EOF'
---
title: Node.js常用工具
icon: nodejs-utils
order: 8
---

# Node.js常用工具

本节介绍Node.js中常用的工具模块及其应用。
EOF

# 创建1.8.1util模块文件
cat > "$BASE_DIR/第1章-Node.js基础/1.8-Node.js常用工具/1.8.1-util模块.md" << 'EOF'
---
title: util模块
icon: nodejs-util
order: 1
---

# util模块

## 基本工具
- 类型检查
- 格式化
- 继承
- 调试
- 错误处理

## 常用函数
- promisify
- inspect
- format
- inherits
- deprecate

## 应用场景
- 异步处理
- 对象操作
- 调试工具
- 类型转换
- 废弃提示

## 最佳实践
- 代码复用
- 性能优化
- 错误处理
- 调试技巧
- 维护策略
EOF

# 创建1.8.2path模块文件
cat > "$BASE_DIR/第1章-Node.js基础/1.8-Node.js常用工具/1.8.2-path模块.md" << 'EOF'
---
title: path模块
icon: nodejs-path
order: 2
---

# path模块

## 基本操作
- 路径解析
- 路径拼接
- 路径格式化
- 路径分割
- 路径规范化

## 常用方法
- join
- resolve
- normalize
- parse
- format

## 跨平台
- 分隔符
- 绝对路径
- 相对路径
- 特殊字符
- 环境变量

## 最佳实践
- 路径处理
- 安全考虑
- 跨平台兼容
- 性能优化
- 错误处理
EOF

# 创建1.8.3os模块文件
cat > "$BASE_DIR/第1章-Node.js基础/1.8-Node.js常用工具/1.8.3-os模块.md" << 'EOF'
---
title: os模块
icon: nodejs-os
order: 3
---

# os模块

## 系统信息
- CPU信息
- 内存信息
- 网络接口
- 操作系统
- 用户信息

## 常用方法
- 系统常量
- 系统路径
- 系统限制
- 系统信号
- 系统统计

## 应用场景
- 系统监控
- 资源管理
- 性能优化
- 跨平台
- 系统配置

## 最佳实践
- 资源管理
- 性能监控
- 错误处理
- 跨平台兼容
- 安全考虑
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建1.8.4url模块文件
cat > "$BASE_DIR/第1章-Node.js基础/1.8-Node.js常用工具/1.8.4-url模块.md" << 'EOF'
---
title: url模块
icon: nodejs-url
order: 4
---

# url模块

## URL解析
- URL对象
- 参数解析
- 路径解析
- 协议解析
- 格式化

## 常用方法
- parse
- format
- resolve
- URLSearchParams
- domainToASCII

## 应用场景
- 网络请求
- 路由处理
- API设计
- 参数处理
- 链接处理

## 最佳实践
- 安全处理
- 性能优化
- 错误处理
- 编码处理
- 参数验证
EOF

# 创建1.8.5querystring模块文件
cat > "$BASE_DIR/第1章-Node.js基础/1.8-Node.js常用工具/1.8.5-querystring模块.md" << 'EOF'
---
title: querystring模块
icon: nodejs-querystring
order: 5
---

# querystring模块

## 基本操作
- 字符串解析
- 参数序列化
- 编码解码
- 嵌套对象
- 数组处理

## 常用方法
- parse
- stringify
- escape
- unescape
- encode/decode

## 应用场景
- URL参数
- 表单处理
- API请求
- 数据传输
- 参数构建

## 最佳实践
- 参数处理
- 安全考虑
- 性能优化
- 编码规范
- 错误处理
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-Node.js核心概念"

# 创建第2章README文件
cat > "$BASE_DIR/第2章-Node.js核心概念/README.md" << 'EOF'
---
title: Node.js核心概念
icon: nodejs-core
order: 2
---

# Node.js核心概念

本章介绍Node.js的核心概念和重要特性。
EOF

# 创建2.1Node.js回调函数目录
mkdir -p "$BASE_DIR/第2章-Node.js核心概念/2.1-Node.js回调函数"

# 创建2.1Node.js回调函数README文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.1-Node.js回调函数/README.md" << 'EOF'
---
title: Node.js回调函数
icon: nodejs-callback
order: 1
---

# Node.js回调函数

本节介绍Node.js中回调函数的使用和最佳实践。
EOF

# 创建2.1.1回调函数模式文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.1-Node.js回调函数/2.1.1-回调函数模式.md" << 'EOF'
---
title: 回调函数模式
icon: nodejs-callback-pattern
order: 1
---

# 回调函数模式

## 基本概念
- 同步回调
- 异步回调
- 错误优先
- 闭包
- 上下文

## 使用模式
- 事件处理
- 异步操作
- 流程控制
- 错误处理
- 资源释放

## 设计原则
- 单一职责
- 错误处理
- 参数传递
- 异步控制
- 性能考虑

## 最佳实践
- 代码组织
- 错误处理
- 性能优化
- 调试技巧
- 测试策略
EOF

# 创建2.1.2回调地狱及解决方案文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.1-Node.js回调函数/2.1.2-回调地狱及解决方案.md" << 'EOF'
---
title: 回调地狱及解决方案
icon: nodejs-callback-hell
order: 2
---

# 回调地狱及解决方案

## 问题分析
- 代码嵌套
- 错误处理
- 并发控制
- 代码维护
- 调试困难

## 解决方案
- Promise
- async/await
- 模块化
- 流程控制
- 函数组合

## 工具支持
- 异步库
- Promise库
- 工具函数
- 调试工具
- 测试框架

## 最佳实践
- 代码组织
- 错误处理
- 性能优化
- 可维护性
- 测试策略
EOF

# 创建2.2Node.js事件循环文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.2-Node.js事件循环.md" << 'EOF'
---
title: Node.js事件循环
icon: nodejs-event-loop
order: 2
---

# Node.js事件循环

## 基本概念
- 事件驱动
- 单线程模型
- 非阻塞I/O
- 任务队列
- 执行阶段

## 运行机制
- 定时器阶段
- I/O回调
- idle/prepare
- poll阶段
- check阶段
- close回调

## 性能优化
- CPU密集型
- I/O密集型
- 内存管理
- 任务调度
- 并发控制

## 最佳实践
- 任务分配
- 错误处理
- 性能监控
- 调试技巧
- 优化策略
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建2.2.1事件循环机制详解文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.2-Node.js事件循环/2.2.1-事件循环机制详解.md" << 'EOF'
---
title: 事件循环机制详解
icon: nodejs-event-loop-detail
order: 1
---

# 事件循环机制详解

## 基本原理
- 事件驱动模型
- 单线程架构
- 异步I/O
- 任务调度
- 执行顺序

## 执行阶段
- 定时器检查
- pending回调
- idle/prepare
- poll轮询
- check检查
- close事件

## 性能优化
- 任务分配
- 阻塞处理
- 内存管理
- 并发控制
- 资源利用

## 最佳实践
- 代码组织
- 错误处理
- 性能监控
- 调试技巧
- 优化策略
EOF

# 创建2.2.2微任务与宏任务文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.2-Node.js事件循环/2.2.2-微任务与宏任务.md" << 'EOF'
---
title: 微任务与宏任务
icon: nodejs-tasks
order: 2
---

# 微任务与宏任务

## 任务类型
- Promise
- process.nextTick
- setTimeout
- setImmediate
- I/O操作

## 执行顺序
- 优先级
- 队列管理
- 任务切换
- 时序控制
- 异常处理

## 应用场景
- 异步操作
- 并发控制
- 性能优化
- 资源管理
- 错误处理

## 最佳实践
- 任务规划
- 性能优化
- 内存管理
- 调试技巧
- 测试策略
EOF

# 创建2.2.3定时器与事件循环文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.2-Node.js事件循环/2.2.3-定时器与事件循环.md" << 'EOF'
---
title: 定时器与事件循环
icon: nodejs-timer-loop
order: 3
---

# 定时器与事件循环

## 定时器类型
- setTimeout
- setInterval
- setImmediate
- requestAnimationFrame
- process.nextTick

## 执行机制
- 触发时机
- 延迟精度
- 嵌套调用
- 取消操作
- 性能影响

## 使用场景
- 延时执行
- 周期任务
- 动画控制
- 异步操作
- 性能优化

## 最佳实践
- 时间控制
- 内存管理
- 性能优化
- 错误处理
- 调试技巧
EOF

# 创建2.2.4process.nextTick()文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.2-Node.js事件循环/2.2.4-process.nextTick().md" << 'EOF'
---
title: process.nextTick()
icon: nodejs-nexttick
order: 4
---

# process.nextTick()

## 基本概念
- 执行时机
- 优先级
- 使用限制
- 性能影响
- 内存管理

## 应用场景
- 异步操作
- 错误处理
- 事件触发
- 状态同步
- 性能优化

## 注意事项
- 递归调用
- 阻塞风险
- 内存泄漏
- 执行顺序
- 调试难点

## 最佳实践
- 使用策略
- 错误处理
- 性能优化
- 调试技巧
- 测试方法
EOF

# 创建2.3Node.jsEventEmitter目录
mkdir -p "$BASE_DIR/第2章-Node.js核心概念/2.3-Node.jsEventEmitter"

# 创建2.3Node.jsEventEmitter README文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.3-Node.jsEventEmitter/README.md" << 'EOF'
---
title: Node.js EventEmitter
icon: nodejs-eventemitter
order: 3
---

# Node.js EventEmitter

本节介绍Node.js的事件发射器机制。
EOF

# 创建2.3.1事件驱动编程文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.3-Node.jsEventEmitter/2.3.1-事件驱动编程.md" << 'EOF'
---
title: 事件驱动编程
icon: nodejs-event-driven
order: 1
---

# 事件驱动编程

## 基本概念
- 事件模型
- 观察者模式
- 异步处理
- 事件流
- 回调机制

## 设计模式
- 发布订阅
- 事件委托
- 事件代理
- 事件队列
- 事件循环

## 应用场景
- 用户交互
- 数据流处理
- 异步操作
- 状态管理
- 消息通信

## 最佳实践
- 事件设计
- 错误处理
- 性能优化
- 内存管理
- 测试策略
EOF

# 创建2.3.2EventEmitter类文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.3-Node.jsEventEmitter/2.3.2-EventEmitter类.md" << 'EOF'
---
title: EventEmitter类
icon: nodejs-emitter-class
order: 2
---

# EventEmitter类

## 核心方法
- on/addListener
- emit
- once
- removeListener
- removeAllListeners

## 事件管理
- 事件注册
- 事件触发
- 事件移除
- 错误处理
- 内存管理

## 高级特性
- 异步事件
- 事件继承
- 事件命名
- 最大监听器
- 事件域

## 最佳实践
- 性能优化
- 内存管理
- 错误处理
- 调试技巧
- 测试方法
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建2.3.3事件监听与触发文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.3-Node.jsEventEmitter/2.3.3-事件监听与触发.md" << 'EOF'
---
title: 事件监听与触发
icon: nodejs-event-listen
order: 3
---

# 事件监听与触发

## 监听机制
- 事件绑定
- 监听器管理
- 事件队列
- 优先级控制
- 生命周期

## 触发流程
- 同步触发
- 异步触发
- 参数传递
- 返回值处理
- 错误传播

## 性能优化
- 监听器数量
- 内存管理
- 事件频率
- 触发时机
- 资源释放

## 最佳实践
- 事件设计
- 错误处理
- 性能监控
- 调试方法
- 测试策略
EOF

# 创建2.3.4自定义事件文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.3-Node.jsEventEmitter/2.3.4-自定义事件.md" << 'EOF'
---
title: 自定义事件
icon: nodejs-custom-event
order: 4
---

# 自定义事件

## 事件定义
- 事件命名
- 参数设计
- 类型定义
- 事件继承
- 事件域

## 实现方法
- 类继承
- 接口实现
- 混入模式
- 装饰器
- 代理模式

## 应用场景
- 业务逻辑
- 状态管理
- 消息通信
- 插件系统
- 扩展机制

## 最佳实践
- 设计模式
- 错误处理
- 性能优化
- 测试方法
- 文档规范
EOF

# 创建2.3.5错误事件处理文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.3-Node.jsEventEmitter/2.3.5-错误事件处理.md" << 'EOF'
---
title: 错误事件处理
icon: nodejs-error-event
order: 5
---

# 错误事件处理

## 错误类型
- 系统错误
- 运行时错误
- 业务错误
- 网络错误
- 资源错误

## 处理策略
- 错误捕获
- 错误传播
- 错误恢复
- 错误日志
- 错误通知

## 最佳实践
- 错误设计
- 异常处理
- 日志记录
- 监控告警
- 故障恢复

## 调试技巧
- 错误定位
- 堆栈分析
- 日志分析
- 性能分析
- 内存泄漏
EOF

# 创建2.4Node.jsBuffer目录
mkdir -p "$BASE_DIR/第2章-Node.js核心概念/2.4-Node.jsBuffer"

# 创建2.4Node.jsBuffer README文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.4-Node.jsBuffer/README.md" << 'EOF'
---
title: Node.js Buffer
icon: nodejs-buffer
order: 4
---

# Node.js Buffer

本节介绍Node.js中Buffer的使用和最佳实践。
EOF

# 创建2.4.1Buffer创建与操作文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.4-Node.jsBuffer/2.4.1-Buffer创建与操作.md" << 'EOF'
---
title: Buffer创建与操作
icon: nodejs-buffer-create
order: 1
---

# Buffer创建与操作

## 创建方法
- alloc
- allocUnsafe
- from
- concat
- slice

## 基本操作
- 写入数据
- 读取数据
- 复制数据
- 裁剪数据
- 查找数据

## 内存管理
- 内存分配
- 内存回收
- 内存池
- 安全考虑
- 性能优化

## 最佳实践
- 创建策略
- 操作方法
- 内存控制
- 性能优化
- 安全处理
EOF

# 创建2.4.2Buffer与字符编码文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.4-Node.jsBuffer/2.4.2-Buffer与字符编码.md" << 'EOF'
---
title: Buffer与字符编码
icon: nodejs-buffer-encoding
order: 2
---

# Buffer与字符编码

## 编码类型
- UTF-8
- ASCII
- Base64
- HEX
- Unicode

## 编码转换
- 编码检测
- 编码转换
- 解码处理
- 错误处理
- 性能优化

## 应用场景
- 文本处理
- 网络传输
- 文件操作
- 加密解密
- 数据压缩

## 最佳实践
- 编码选择
- 转换策略
- 错误处理
- 性能优化
- 安全考虑
EOF

# 创建2.4.3Buffer与二进制数据文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.4-Node.jsBuffer/2.4.3-Buffer与二进制数据.md" << 'EOF'
---
title: Buffer与二进制数据
icon: nodejs-buffer-binary
order: 3
---

# Buffer与二进制数据

## 数据类型
- 整型数据
- 浮点数据
- 字节序
- 位操作
- 类型转换

## 操作方法
- 读写方法
- 转换方法
- 比较方法
- 查找方法
- 合并方法

## 应用场景
- 文件处理
- 网络协议
- 图像处理
- 音视频
- 加密算法

## 最佳实践
- 性能优化
- 内存管理
- 错误处理
- 安全考虑
- 调试技巧
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建2.4.4Buffer与性能文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.4-Node.jsBuffer/2.4.4-Buffer与性能.md" << 'EOF'
---
title: Buffer与性能
icon: nodejs-buffer-performance
order: 4
---

# Buffer与性能

## 性能优化
- 内存分配
- 数据复制
- 缓冲池
- GC影响
- 内存泄漏

## 优化策略
- 预分配
- 池化管理
- 零拷贝
- 内存复用
- 资源释放

## 性能监控
- 内存使用
- CPU占用
- GC频率
- 响应时间
- 吞吐量

## 最佳实践
- 分配策略
- 复用机制
- 监控方案
- 调优方法
- 故障处理
EOF

# 创建2.5Node.jsStream目录
mkdir -p "$BASE_DIR/第2章-Node.js核心概念/2.5-Node.jsStream"

# 创建2.5Node.jsStream README文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.5-Node.jsStream/README.md" << 'EOF'
---
title: Node.js Stream
icon: nodejs-stream
order: 5
---

# Node.js Stream

本节介绍Node.js中流的概念和应用。
EOF

# 创建2.5.1流的概念与类型文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.5-Node.jsStream/2.5.1-流的概念与类型.md" << 'EOF'
---
title: 流的概念与类型
icon: nodejs-stream-concept
order: 1
---

# 流的概念与类型

## 基本概念
- 数据流动
- 事件驱动
- 背压机制
- 缓冲区
- 管道处理

## 流的类型
- 可读流
- 可写流
- 双工流
- 转换流
- 对象流

## 应用场景
- 文件处理
- 网络通信
- 数据转换
- 音视频
- 压缩解压

## 最佳实践
- 流设计
- 错误处理
- 性能优化
- 内存管理
- 调试技巧
EOF

# 创建2.5.2可读流文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.5-Node.jsStream/2.5.2-可读流.md" << 'EOF'
---
title: 可读流
icon: nodejs-readable
order: 2
---

# 可读流

## 基本特性
- 数据读取
- 流动模式
- 暂停模式
- 事件处理
- 错误处理

## 操作方法
- read()
- pause()
- resume()
- pipe()
- unpipe()

## 事件类型
- data事件
- end事件
- error事件
- close事件
- readable事件

## 最佳实践
- 模式选择
- 错误处理
- 性能优化
- 内存控制
- 资源管理
EOF

# 创建2.5.3可写流文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.5-Node.jsStream/2.5.3-可写流.md" << 'EOF'
---
title: 可写流
icon: nodejs-writable
order: 3
---

# 可写流

## 基本特性
- 数据写入
- 缓冲控制
- 背压处理
- 错误处理
- 完成处理

## 操作方法
- write()
- end()
- cork()
- uncork()
- destroy()

## 事件类型
- drain事件
- finish事件
- error事件
- pipe事件
- unpipe事件

## 最佳实践
- 写入策略
- 错误处理
- 性能优化
- 内存控制
- 资源释放
EOF

# 创建2.5.4双工流文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.5-Node.jsStream/2.5.4-双工流.md" << 'EOF'
---
title: 双工流
icon: nodejs-duplex
order: 4
---

# 双工流

## 基本特性
- 读写能力
- 独立缓冲
- 流控制
- 事件处理
- 错误处理

## 实现方法
- 继承实现
- 组合模式
- 状态管理
- 数据流向
- 资源控制

## 应用场景
- 网络通信
- 数据传输
- 协议实现
- 代理服务
- 中间件

## 最佳实践
- 设计模式
- 错误处理
- 性能优化
- 资源管理
- 测试策略
EOF

# 创建2.5.5转换流文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.5-Node.jsStream/2.5.5-转换流.md" << 'EOF'
---
title: 转换流
icon: nodejs-transform
order: 5
---

# 转换流

## 基本特性
- 数据转换
- 流程控制
- 缓冲管理
- 错误处理
- 状态维护

## 实现方法
- transform()
- flush()
- 数据处理
- 错误传播
- 状态控制

## 应用场景
- 数据格式转换
- 加密解密
- 压缩解压
- 编码转换
- 数据过滤

## 最佳实践
- 转换策略
- 错误处理
- 性能优化
- 内存管理
- 测试方法
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建2.5.6管道与链式操作文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.5-Node.jsStream/2.5.6-管道与链式操作.md" << 'EOF'
---
title: 管道与链式操作
icon: nodejs-pipe
order: 6
---

# 管道与链式操作

## 管道基础
- pipe()方法
- 数据流向
- 错误处理
- 背压控制
- 资源管理

## 链式操作
- 流的组合
- 数据转换
- 错误传播
- 状态管理
- 性能优化

## 应用场景
- 文件处理
- 数据压缩
- 加密解密
- 数据过滤
- 格式转换

## 最佳实践
- 链式设计
- 错误处理
- 内存控制
- 性能优化
- 资源释放
EOF

# 创建2.5.7流事件处理文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.5-Node.jsStream/2.5.7-流事件处理.md" << 'EOF'
---
title: 流事件处理
icon: nodejs-stream-events
order: 7
---

# 流事件处理

## 事件类型
- data事件
- end事件
- error事件
- finish事件
- close事件

## 事件处理
- 事件监听
- 错误处理
- 资源清理
- 状态管理
- 异常恢复

## 高级特性
- 事件顺序
- 事件触发
- 事件传播
- 异步处理
- 并发控制

## 最佳实践
- 事件设计
- 错误处理
- 资源管理
- 性能优化
- 调试技巧
EOF

# 创建2.5.8自定义流文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.5-Node.jsStream/2.5.8-自定义流.md" << 'EOF'
---
title: 自定义流
icon: nodejs-custom-stream
order: 8
---

# 自定义流

## 实现方法
- 继承Stream
- 实现接口
- 状态管理
- 错误处理
- 资源控制

## 核心功能
- 数据处理
- 流控制
- 事件管理
- 错误处理
- 资源管理

## 应用场景
- 数据转换
- 协议实现
- 中间件
- 过滤器
- 代理服务

## 最佳实践
- 设计模式
- 错误处理
- 性能优化
- 测试方法
- 文档规范
EOF

# 创建2.6Node.js模块系统目录
mkdir -p "$BASE_DIR/第2章-Node.js核心概念/2.6-Node.js模块系统"

# 创建2.6Node.js模块系统README文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.6-Node.js模块系统/README.md" << 'EOF'
---
title: Node.js模块系统
icon: nodejs-module
order: 6
---

# Node.js模块系统

本节介绍Node.js的模块系统及其工作机制。
EOF

# 创建2.6.1CommonJS规范文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.6-Node.js模块系统/2.6.1-CommonJS规范.md" << 'EOF'
---
title: CommonJS规范
icon: nodejs-commonjs
order: 1
---

# CommonJS规范

## 基本概念
- 模块定义
- 模块导出
- 模块导入
- 模块作用域
- 模块标识

## 核心特性
- 同步加载
- 单例模式
- 值拷贝
- 缓存机制
- 循环依赖

## 使用场景
- 代码组织
- 依赖管理
- 版本控制
- 包管理
- 项目构建

## 最佳实践
- 模块设计
- 依赖管理
- 性能优化
- 调试技巧
- 测试策略
EOF

# 创建2.6.2模块加载机制文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.6-Node.js模块系统/2.6.2-模块加载机制.md" << 'EOF'
---
title: 模块加载机制
icon: nodejs-module-loading
order: 2
---

# 模块加载机制

## 加载过程
- 路径解析
- 文件定位
- 编译执行
- 缓存处理
- 错误处理

## 查找规则
- 核心模块
- 文件模块
- 目录模块
- node_modules
- 全局模块

## 性能优化
- 缓存利用
- 路径优化
- 懒加载
- 预加载
- 并行加载

## 最佳实践
- 加载策略
- 错误处理
- 性能优化
- 调试方法
- 测试验证
EOF

# 创建2.6.3模块缓存文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.6-Node.js模块系统/2.6.3-模块缓存.md" << 'EOF'
---
title: 模块缓存
icon: nodejs-module-cache
order: 3
---

# 模块缓存

## 缓存机制
- 缓存策略
- 缓存管理
- 缓存清理
- 缓存更新
- 缓存优化

## 实现原理
- require.cache
- 模块标识
- 缓存键值
- 生命周期
- 内存管理

## 应用场景
- 性能优化
- 热重载
- 开发调试
- 资源管理
- 内存控制

## 最佳实践
- 缓存策略
- 内存管理
- 性能优化
- 调试技巧
- 测试方法
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建2.6.4循环依赖文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.6-Node.js模块系统/2.6.4-循环依赖.md" << 'EOF'
---
title: 循环依赖
icon: nodejs-circular
order: 4
---

# 循环依赖

## 基本概念
- 依赖关系
- 循环引用
- 模块状态
- 执行顺序
- 解决方案

## 处理机制
- 依赖检测
- 部分导出
- 状态管理
- 错误处理
- 性能影响

## 常见问题
- 死循环
- 未定义值
- 状态不一致
- 内存泄漏
- 性能下降

## 最佳实践
- 依赖设计
- 模块解耦
- 状态管理
- 测试验证
- 重构优化
EOF

# 创建2.6.5ES模块支持文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.6-Node.js模块系统/2.6.5-ES模块支持.md" << 'EOF'
---
title: ES模块支持
icon: nodejs-esm
order: 5
---

# ES模块支持

## 基本特性
- import/export
- 静态分析
- 异步加载
- 严格模式
- 作用域隔离

## 使用方式
- 文件扩展名
- package.json配置
- 模块标识符
- 导入导出
- 动态导入

## 兼容性
- CommonJS互操作
- 双模块系统
- 版本支持
- 性能影响
- 调试支持

## 最佳实践
- 模块设计
- 性能优化
- 调试技巧
- 测试策略
- 部署配置
EOF

# 创建2.7Node.js函数目录
mkdir -p "$BASE_DIR/第2章-Node.js核心概念/2.7-Node.js函数"

# 创建2.7Node.js函数README文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.7-Node.js函数/README.md" << 'EOF'
---
title: Node.js函数
icon: nodejs-function
order: 7
---

# Node.js函数

本节介绍Node.js中函数的使用和特性。
EOF

# 创建2.7.1函数声明与表达式文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.7-Node.js函数/2.7.1-函数声明与表达式.md" << 'EOF'
---
title: 函数声明与表达式
icon: nodejs-function-declaration
order: 1
---

# 函数声明与表达式

## 函数声明
- 声明方式
- 提升机制
- 作用域
- 命名规则
- 参数处理

## 函数表达式
- 匿名函数
- 命名函数
- 立即执行
- 回调函数
- 高阶函数

## 使用场景
- 事件处理
- 异步操作
- 模块封装
- 回调处理
- 函数式编程

## 最佳实践
- 命名规范
- 参数设计
- 错误处理
- 性能优化
- 测试策略
EOF

# 创建2.7.2箭头函数文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.7-Node.js函数/2.7.2-箭头函数.md" << 'EOF'
---
title: 箭头函数
icon: nodejs-arrow-function
order: 2
---

# 箭头函数

## 基本语法
- 简写形式
- 参数处理
- 返回值
- this绑定
- 作用域

## 特性差异
- this指向
- arguments
- new操作
- 原型链
- 构造函数

## 使用场景
- 回调函数
- 方法定义
- 事件处理
- 函数式编程
- 链式调用

## 最佳实践
- 使用场景
- 性能考虑
- 代码风格
- 调试技巧
- 测试方法
EOF

# 创建2.7.3异步函数文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.7-Node.js函数/2.7.3-异步函数.md" << 'EOF'
---
title: 异步函数
icon: nodejs-async-function
order: 3
---

# 异步函数

## 基本概念
- async/await
- Promise
- 错误处理
- 并发控制
- 执行顺序

## 使用方式
- 异步声明
- 错误捕获
- 链式调用
- 并行执行
- 顺序执行

## 应用场景
- IO操作
- 网络请求
- 数据库操作
- 文件处理
- 定时任务

## 最佳实践
- 错误处理
- 性能优化
- 内存管理
- 调试技巧
- 测试策略
EOF

# 创建2.7.4函数作用域与闭包文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.7-Node.js函数/2.7.4-函数作用域与闭包.md" << 'EOF'
---
title: 函数作用域与闭包
icon: nodejs-scope-closure
order: 4
---

# 函数作用域与闭包

## 作用域
- 全局作用域
- 函数作用域
- 块级作用域
- 变量提升
- 作用域链

## 闭包特性
- 数据封装
- 状态保持
- 私有变量
- 内存管理
- 模块化

## 应用场景
- 模块设计
- 数据隐藏
- 回调函数
- 事件处理
- 函数工厂

## 最佳实践
- 内存管理
- 性能优化
- 代码组织
- 调试方法
- 测试策略
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建2.7.5函数柯里化文件
cat > "$BASE_DIR/第2章-Node.js核心概念/2.7-Node.js函数/2.7.5-函数柯里化.md" << 'EOF'
---
title: 函数柯里化
icon: nodejs-curry
order: 5
---

# 函数柯里化

## 基本概念
- 参数分离
- 函数转换
- 部分应用
- 延迟执行
- 参数复用

## 实现方式
- 手动柯里化
- 自动柯里化
- 参数绑定
- 闭包应用
- 函数组合

## 应用场景
- 函数式编程
- 参数预设
- 延迟计算
- 代码复用
- 性能优化

## 最佳实践
- 设计模式
- 性能考虑
- 代码组织
- 测试策略
- 调试方法
EOF

# 创建第3章目录
mkdir -p "$BASE_DIR/第3章-Node.js文件系统"

# 创建第3章README文件
cat > "$BASE_DIR/第3章-Node.js文件系统/README.md" << 'EOF'
---
title: Node.js文件系统
icon: nodejs-fs
order: 3
---

# Node.js文件系统

本章介绍Node.js的文件系统操作和相关API。
EOF

# 创建3.1fs模块概述文件
cat > "$BASE_DIR/第3章-Node.js文件系统/3.1-fs模块概述.md" << 'EOF'
---
title: fs模块概述
icon: nodejs-fs-intro
order: 1
---

# fs模块概述

## 基本功能
- 文件操作
- 目录操作
- 权限管理
- 流式操作
- 监视文件

## 模块特性
- 同步API
- 异步API
- Promise API
- 回调风格
- 错误处理

## 使用场景
- 文件读写
- 目录管理
- 数据存储
- 日志记录
- 配置管理

## 最佳实践
- API选择
- 错误处理
- 性能优化
- 安全考虑
- 资源管理
EOF

# 创建3.2同步与异步API文件
cat > "$BASE_DIR/第3章-Node.js文件系统/3.2-同步与异步API.md" << 'EOF'
---
title: 同步与异步API
icon: nodejs-fs-api
order: 2
---

# 同步与异步API

## API对比
- 同步方法
- 异步方法
- Promise方法
- 性能差异
- 使用场景

## 选择策略
- 场景适用
- 性能要求
- 代码风格
- 错误处理
- 资源控制

## 最佳实践
- 异常处理
- 性能优化
- 代码组织
- 调试技巧
- 测试方法

## 注意事项
- 阻塞影响
- 内存使用
- 错误传播
- 并发控制
- 超时处理
EOF

# 创建3.3文件读写操作文件
cat > "$BASE_DIR/第3章-Node.js文件系统/3.3-文件读写操作.md" << 'EOF'
---
title: 文件读写操作
icon: nodejs-fs-rw
order: 3
---

# 文件读写操作

## 读取操作
- 完整读取
- 部分读取
- 流式读取
- 异步读取
- 同步读取

## 写入操作
- 覆盖写入
- 追加写入
- 流式写入
- 同步写入
- 异步写入

## 高级特性
- 文件锁定
- 原子操作
- 缓冲区
- 编码处理
- 权限控制

## 最佳实践
- 性能优化
- 错误处理
- 资源管理
- 安全考虑
- 测试策略
EOF

# 创建3.4目录操作文件
cat > "$BASE_DIR/第3章-Node.js文件系统/3.4-目录操作.md" << 'EOF'
---
title: 目录操作
icon: nodejs-fs-dir
order: 4
---

# 目录操作

## 基本操作
- 创建目录
- 删除目录
- 读取目录
- 重命名
- 移动目录

## 高级功能
- 递归操作
- 权限设置
- 符号链接
- 监视变化
- 过滤筛选

## 使用场景
- 文件管理
- 资源组织
- 临时目录
- 日志管理
- 缓存控制

## 最佳实践
- 错误处理
- 权限管理
- 性能优化
- 安全考虑
- 资源清理
EOF

# 创建3.5文件信息获取文件
cat > "$BASE_DIR/第3章-Node.js文件系统/3.5-文件信息获取.md" << 'EOF'
---
title: 文件信息获取
icon: nodejs-fs-stat
order: 5
---

# 文件信息获取

## 基本信息
- 文件大小
- 创建时间
- 修改时间
- 访问时间
- 文件类型

## 权限信息
- 所有者
- 访问权限
- 组权限
- 其他权限
- 特殊权限

## 状态检查
- 存在性
- 可读性
- 可写性
- 可执行性
- 文件类型

## 最佳实践
- 信息缓存
- 错误处理
- 权限验证
- 性能优化
- 安全考虑
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建3.6文件监控文件
cat > "$BASE_DIR/第3章-Node.js文件系统/3.6-文件监控.md" << 'EOF'
---
title: 文件监控
icon: nodejs-fs-watch
order: 6
---

# 文件监控

## 监控方式
- watch方法
- watchFile方法
- FSWatcher类
- 事件类型
- 监控选项

## 事件处理
- 文件变化
- 目录变化
- 错误处理
- 资源释放
- 性能控制

## 应用场景
- 热重载
- 配置更新
- 日志监控
- 资源同步
- 自动构建

## 最佳实践
- 资源管理
- 性能优化
- 错误处理
- 内存控制
- 安全考虑
EOF

# 创建3.7流式文件操作文件
cat > "$BASE_DIR/第3章-Node.js文件系统/3.7-流式文件操作.md" << 'EOF'
---
title: 流式文件操作
icon: nodejs-fs-stream
order: 7
---

# 流式文件操作

## 读取流
- 创建流
- 数据读取
- 事件处理
- 流控制
- 错误处理

## 写入流
- 创建流
- 数据写入
- 缓冲控制
- 完成处理
- 错误处理

## 管道操作
- 流连接
- 数据转换
- 错误传播
- 背压处理
- 资源管理

## 最佳实践
- 内存控制
- 性能优化
- 错误处理
- 资源释放
- 安全考虑
EOF

# 创建3.8文件系统权限文件
cat > "$BASE_DIR/第3章-Node.js文件系统/3.8-文件系统权限.md" << 'EOF'
---
title: 文件系统权限
icon: nodejs-fs-permission
order: 8
---

# 文件系统权限

## 权限类型
- 读权限
- 写权限
- 执行权限
- 所有者权限
- 组权限

## 权限管理
- 权限设置
- 权限检查
- 权限修改
- 权限继承
- 特殊权限

## 安全考虑
- 访问控制
- 权限验证
- 安全策略
- 漏洞防护
- 审计日志

## 最佳实践
- 权限设计
- 安全加固
- 错误处理
- 日志记录
- 监控告警
EOF

# 创建3.9临时文件与目录文件
cat > "$BASE_DIR/第3章-Node.js文件系统/3.9-临时文件与目录.md" << 'EOF'
---
title: 临时文件与目录
icon: nodejs-fs-temp
order: 9
---

# 临时文件与目录

## 创建管理
- 临时文件
- 临时目录
- 命名规则
- 清理策略
- 权限控制

## 使用场景
- 数据缓存
- 文件上传
- 数据处理
- 日志记录
- 临时存储

## 安全考虑
- 权限设置
- 路径隔离
- 数据清理
- 访问控制
- 漏洞防护

## 最佳实践
- 资源管理
- 清理策略
- 错误处理
- 安全加固
- 监控告警
EOF

# 创建3.10文件路径处理文件
cat > "$BASE_DIR/第3章-Node.js文件系统/3.10-文件路径处理.md" << 'EOF'
---
title: 文件路径处理
icon: nodejs-fs-path
order: 10
---

# 文件路径处理

## 路径操作
- 路径解析
- 路径拼接
- 路径规范化
- 相对路径
- 绝对路径

## 特殊路径
- 当前目录
- 上级目录
- 根目录
- 用户目录
- 临时目录

## 跨平台
- 路径分隔符
- 驱动器号
- UNC路径
- URL路径
- 网络路径

## 最佳实践
- 路径处理
- 安全检查
- 错误处理
- 跨平台兼容
- 性能优化
EOF

# 创建第4章目录
mkdir -p "$BASE_DIR/第4章-NPM包管理"

# 创建第4章README文件
cat > "$BASE_DIR/第4章-NPM包管理/README.md" << 'EOF'
---
title: NPM包管理
icon: nodejs-npm
order: 4
---

# NPM包管理

本章介绍Node.js的包管理工具NPM及其使用方法。
EOF

# 创建4.1NPM简介文件
cat > "$BASE_DIR/第4章-NPM包管理/4.1-NPM简介.md" << 'EOF'
---
title: NPM简介
icon: nodejs-npm-intro
order: 1
---

# NPM简介

## 基本概念
- 包管理器
- 版本控制
- 依赖管理
- 脚本运行
- 发布部署

## 主要功能
- 包安装
- 依赖解析
- 版本管理
- 脚本执行
- 配置管理

## 使用场景
- 项目初始化
- 依赖管理
- 开发构建
- 测试运行
- 发布部署

## 最佳实践
- 版本控制
- 依赖管理
- 安全考虑
- 性能优化
- 团队协作
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建4.2NPM使用介绍文件
cat > "$BASE_DIR/第4章-NPM包管理/4.2-NPM使用介绍.md" << 'EOF'
---
title: NPM使用介绍
icon: nodejs-npm-usage
order: 2
---

# NPM使用介绍

## 基本命令
- npm init
- npm install
- npm update
- npm uninstall
- npm run

## 常用选项
- 全局安装
- 开发依赖
- 版本指定
- 缓存管理
- 代理设置

## 配置管理
- 配置文件
- 环境变量
- 用户配置
- 项目配置
- 镜像源

## 最佳实践
- 命令使用
- 版本管理
- 依赖控制
- 安全考虑
- 性能优化
EOF

# 创建4.3package.json详解文件
cat > "$BASE_DIR/第4章-NPM包管理/4.3-package.json详解.md" << 'EOF'
---
title: package.json详解
icon: nodejs-package-json
order: 3
---

# package.json详解

## 基本字段
- name
- version
- description
- main
- scripts

## 依赖字段
- dependencies
- devDependencies
- peerDependencies
- optionalDependencies
- bundledDependencies

## 配置字段
- config
- engines
- private
- license
- author

## 最佳实践
- 字段规范
- 版本管理
- 依赖控制
- 脚本设计
- 安全考虑
EOF

# 创建4.4依赖管理文件
cat > "$BASE_DIR/第4章-NPM包管理/4.4-依赖管理.md" << 'EOF'
---
title: 依赖管理
icon: nodejs-npm-deps
order: 4
---

# 依赖管理

## 依赖类型
- 生产依赖
- 开发依赖
- 同级依赖
- 可选依赖
- 打包依赖

## 版本控制
- 版本号
- 版本范围
- 版本锁定
- 版本更新
- 版本冲突

## 依赖优化
- 依赖分析
- 依赖清理
- 依赖更新
- 依赖审计
- 漏洞修复

## 最佳实践
- 依赖选择
- 版本策略
- 安全检查
- 性能优化
- 维护更新
EOF

# 创建4.5脚本与钩子文件
cat > "$BASE_DIR/第4章-NPM包管理/4.5-脚本与钩子.md" << 'EOF'
---
title: 脚本与钩子
icon: nodejs-npm-scripts
order: 5
---

# 脚本与钩子

## 脚本类型
- 生命周期
- 自定义脚本
- 并行脚本
- 串行脚本
- 复合脚本

## 钩子机制
- pre钩子
- post钩子
- 自定义钩子
- 执行顺序
- 错误处理

## 使用场景
- 构建过程
- 测试运行
- 部署发布
- 环境准备
- 清理工作

## 最佳实践
- 脚本设计
- 错误处理
- 性能优化
- 安全考虑
- 维护更新
EOF

# 创建4.6发布自己的包文件
cat > "$BASE_DIR/第4章-NPM包管理/4.6-发布自己的包.md" << 'EOF'
---
title: 发布自己的包
icon: nodejs-npm-publish
order: 6
---

# 发布自己的包

## 准备工作
- 账号注册
- 包命名
- 版本规划
- 文档编写
- 测试验证

## 发布流程
- 打包构建
- 版本更新
- 发布命令
- 标签管理
- 文档更新

## 维护管理
- 版本更新
- Bug修复
- 安全更新
- 文档维护
- 用户支持

## 最佳实践
- 发布策略
- 质量控制
- 安全考虑
- 文档规范
- 社区维护
EOF

# 创建4.7语义化版本控制文件
cat > "$BASE_DIR/第4章-NPM包管理/4.7-语义化版本控制.md" << 'EOF'
---
title: 语义化版本控制
icon: nodejs-npm-semver
order: 7
---

# 语义化版本控制

## 版本规则
- 主版本号
- 次版本号
- 修订号
- 预发布版本
- 构建元数据

## 版本管理
- 版本升级
- 版本回退
- 版本标签
- 版本范围
- 版本锁定

## 最佳实践
- 版本策略
- 发布流程
- 依赖管理
- 兼容性
- 文档更新

## 工具支持
- npm version
- semver工具
- 版本检查
- 自动化工具
- CI/CD集成
EOF

# 创建4.8私有仓库文件
cat > "$BASE_DIR/第4章-NPM包管理/4.8-私有仓库.md" << 'EOF'
---
title: 私有仓库
icon: nodejs-npm-private
order: 8
---

# 私有仓库

## 搭建方式
- verdaccio
- cnpm
- nexus
- 自建服务
- 云服务

## 配置管理
- 仓库地址
- 访问权限
- 发布权限
- 缓存策略
- 镜像配置

## 使用场景
- 企业内部
- 私有包
- 安全控制
- 离线使用
- 性能优化

## 最佳实践
- 部署策略
- 权限管理
- 安全加固
- 性能优化
- 运维监控
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建4.9NPM替代品文件
cat > "$BASE_DIR/第4章-NPM包管理/4.9-NPM替代品：Yarn和pnpm.md" << 'EOF'
---
title: NPM替代品：Yarn和pnpm
icon: nodejs-package-manager
order: 9
---

# NPM替代品：Yarn和pnpm

## Yarn特性
- 并行安装
- 离线模式
- 版本锁定
- 工作空间
- 插件系统

## pnpm特性
- 硬链接
- 存储优化
- 依赖隔离
- 单一存储
- 快速安装

## 性能对比
- 安装速度
- 磁盘空间
- 依赖解析
- 缓存效率
- 内存占用

## 最佳实践
- 工具选择
- 迁移策略
- 团队协作
- 性能优化
- 维护管理
EOF

# 创建第5章目录
mkdir -p "$BASE_DIR/第5章-Node.js网络编程"

# 创建第5章README文件
cat > "$BASE_DIR/第5章-Node.js网络编程/README.md" << 'EOF'
---
title: Node.js网络编程
icon: nodejs-network
order: 5
---

# Node.js网络编程

本章介绍Node.js的网络编程相关知识和实践。
EOF

# 创建5.1HTTP模块目录
mkdir -p "$BASE_DIR/第5章-Node.js网络编程/5.1-HTTP模块"

# 创建5.1HTTP模块README文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.1-HTTP模块/README.md" << 'EOF'
---
title: HTTP模块
icon: nodejs-http
order: 1
---

# HTTP模块

本节介绍Node.js的HTTP模块及其应用。
EOF

# 创建5.1.1创建HTTP服务器文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.1-HTTP模块/5.1.1-创建HTTP服务器.md" << 'EOF'
---
title: 创建HTTP服务器
icon: nodejs-http-server
order: 1
---

# 创建HTTP服务器

## 基本概念
- 服务器创建
- 请求监听
- 端口绑定
- 错误处理
- 服务器配置

## 核心功能
- 路由处理
- 中间件
- 静态文件
- 会话管理
- 安全控制

## 性能优化
- 并发处理
- 负载均衡
- 缓存策略
- 压缩传输
- 连接池

## 最佳实践
- 错误处理
- 安全加固
- 性能优化
- 日志记录
- 监控告警
EOF

# 创建5.1.2处理HTTP请求文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.1-HTTP模块/5.1.2-处理HTTP请求.md" << 'EOF'
---
title: 处理HTTP请求
icon: nodejs-http-request
order: 2
---

# 处理HTTP请求

## 请求处理
- 请求方法
- 请求头部
- 请求参数
- 请求体
- Cookie处理

## 响应处理
- 状态码
- 响应头
- 响应体
- 编码处理
- 压缩传输

## 高级特性
- 文件上传
- 流式处理
- 跨域处理
- 缓存控制
- 安全验证

## 最佳实践
- 参数验证
- 错误处理
- 性能优化
- 安全控制
- 日志记录
EOF

# 创建5.1.3HTTP客户端文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.1-HTTP模块/5.1.3-HTTP客户端.md" << 'EOF'
---
title: HTTP客户端
icon: nodejs-http-client
order: 3
---

# HTTP客户端

## 基本用法
- 请求发送
- 响应处理
- 错误处理
- 超时控制
- 重试机制

## 高级特性
- 请求配置
- 拦截器
- 并发请求
- 请求取消
- 进度监控

## 性能优化
- 连接池
- 压缩传输
- 缓存策略
- 并发控制
- 资源释放

## 最佳实践
- 错误处理
- 超时设置
- 重试策略
- 安全考虑
- 资源管理
EOF

# 创建5.1.4HTTP头部与状态码文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.1-HTTP模块/5.1.4-HTTP头部与状态码.md" << 'EOF'
---
title: HTTP头部与状态码
icon: nodejs-http-headers
order: 4
---

# HTTP头部与状态码

## 请求头部
- 常用头部
- 自定义头部
- 头部处理
- 安全头部
- 缓存控制

## 响应头部
- 状态码
- 内容类型
- 字符编码
- 缓存控制
- 安全策略

## 状态码分类
- 1xx信息
- 2xx成功
- 3xx重定向
- 4xx客户端错误
- 5xx服务器错误

## 最佳实践
- 头部设计
- 状态码使用
- 安全控制
- 缓存策略
- 错误处理
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建5.2HTTPS模块目录
mkdir -p "$BASE_DIR/第5章-Node.js网络编程/5.2-HTTPS模块"

# 创建5.2HTTPS模块README文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.2-HTTPS模块/README.md" << 'EOF'
---
title: HTTPS模块
icon: nodejs-https
order: 2
---

# HTTPS模块

本节介绍Node.js的HTTPS模块及其安全通信实现。
EOF

# 创建5.2.1SSL/TLS基础文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.2-HTTPS模块/5.2.1-SSL_TLS基础.md" << 'EOF'
---
title: SSL/TLS基础
icon: nodejs-ssl
order: 1
---

# SSL/TLS基础

## 基本概念
- 加密算法
- 密钥交换
- 数字证书
- 握手过程
- 会话管理

## 安全机制
- 身份认证
- 数据加密
- 完整性校验
- 前向安全
- 会话恢复

## 协议版本
- SSLv3
- TLS 1.0
- TLS 1.1
- TLS 1.2
- TLS 1.3

## 最佳实践
- 版本选择
- 加密套件
- 证书管理
- 性能优化
- 安全加固
EOF

# 创建5.2.2创建HTTPS服务器文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.2-HTTPS模块/5.2.2-创建HTTPS服务器.md" << 'EOF'
---
title: 创建HTTPS服务器
icon: nodejs-https-server
order: 2
---

# 创建HTTPS服务器

## 服务器配置
- 证书设置
- 密钥配置
- 端口监听
- 安全选项
- 性能优化

## 请求处理
- 加密通信
- 会话管理
- 错误处理
- 安全验证
- 性能监控

## 高级特性
- 双向认证
- 证书链
- 会话复用
- 密码套件
- SNI支持

## 最佳实践
- 安全配置
- 性能优化
- 错误处理
- 监控告警
- 维护更新
EOF

# 创建5.2.3证书配置文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.2-HTTPS模块/5.2.3-证书配置.md" << 'EOF'
---
title: 证书配置
icon: nodejs-cert
order: 3
---

# 证书配置

## 证书类型
- 自签名证书
- CA证书
- 通配符证书
- EV证书
- 多域名证书

## 证书管理
- 生成证书
- 安装配置
- 更新续期
- 吊销处理
- 链式验证

## 安全考虑
- 密钥保护
- 证书验证
- 中间人攻击
- 证书透明度
- 漏洞防护

## 最佳实践
- 证书选择
- 配置优化
- 更新策略
- 监控告警
- 应急响应
EOF

# 创建5.3网络套接字目录
mkdir -p "$BASE_DIR/第5章-Node.js网络编程/5.3-网络套接字"

# 创建5.3网络套接字README文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.3-网络套接字/README.md" << 'EOF'
---
title: 网络套接字
icon: nodejs-socket
order: 3
---

# 网络套接字

本节介绍Node.js的网络套接字编程。
EOF

# 创建5.3.1TCP服务器与客户端文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.3-网络套接字/5.3.1-TCP服务器与客户端.md" << 'EOF'
---
title: TCP服务器与客户端
icon: nodejs-tcp
order: 1
---

# TCP服务器与客户端

## 服务器实现
- 创建服务器
- 连接管理
- 数据传输
- 错误处理
- 资源释放

## 客户端实现
- 连接建立
- 数据发送
- 数据接收
- 断开处理
- 重连机制

## 高级特性
- 流量控制
- 心跳检测
- 并发处理
- 超时控制
- 缓冲管理

## 最佳实践
- 错误处理
- 性能优化
- 资源管理
- 安全考虑
- 监控告警
EOF

# 创建5.3.2UDP通信文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.3-网络套接字/5.3.2-UDP通信.md" << 'EOF'
---
title: UDP通信
icon: nodejs-udp
order: 2
---

# UDP通信

## 基本概念
- 无连接通信
- 数据报文
- 广播多播
- 端口绑定
- 地址解析

## 实现方式
- 套接字创建
- 数据发送
- 数据接收
- 错误处理
- 资源管理

## 应用场景
- 实时通信
- 流媒体
- 日志收集
- 监控系统
- 游戏服务

## 最佳实践
- 可靠性设计
- 性能优化
- 资源管理
- 安全考虑
- 监控告警
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建5.4WebSocket目录
mkdir -p "$BASE_DIR/第5章-Node.js网络编程/5.4-WebSocket"

# 创建5.4WebSocket README文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.4-WebSocket/README.md" << 'EOF'
---
title: WebSocket
icon: nodejs-websocket
order: 4
---

# WebSocket

本节介绍WebSocket协议及其在Node.js中的实现。
EOF

# 创建5.4.1WebSocket协议文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.4-WebSocket/5.4.1-WebSocket协议.md" << 'EOF'
---
title: WebSocket协议
icon: nodejs-ws-protocol
order: 1
---

# WebSocket协议

## 基本概念
- 协议特性
- 握手过程
- 数据帧
- 心跳机制
- 关闭连接

## 协议细节
- 帧格式
- 掩码处理
- 分片传输
- 扩展协议
- 子协议

## 安全考虑
- 握手验证
- 数据加密
- 访问控制
- 跨域处理
- 攻击防护

## 最佳实践
- 协议选择
- 性能优化
- 安全加固
- 错误处理
- 监控管理
EOF

# 创建5.4.2WebSocket服务器实现文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.4-WebSocket/5.4.2-WebSocket服务器实现.md" << 'EOF'
---
title: WebSocket服务器实现
icon: nodejs-ws-server
order: 2
---

# WebSocket服务器实现

## 服务器设置
- 服务器创建
- 连接处理
- 消息处理
- 错误处理
- 资源管理

## 功能实现
- 消息发送
- 广播功能
- 心跳检测
- 重连机制
- 会话管理

## 性能优化
- 并发处理
- 内存管理
- 连接池
- 负载均衡
- 监控统计

## 最佳实践
- 架构设计
- 错误处理
- 安全控制
- 性能优化
- 运维监控
EOF

# 创建5.4.3实时通信应用文件
cat > "$BASE_DIR/第5章-Node.js网络编程/5.4-WebSocket/5.4.3-实时通信应用.md" << 'EOF'
---
title: 实时通信应用
icon: nodejs-ws-realtime
order: 3
---

# 实时通信应用

## 应用场景
- 即时消息
- 实时数据
- 在线游戏
- 协同编辑
- 直播系统

## 架构设计
- 分布式架构
- 消息队列
- 状态同步
- 负载均衡
- 容错机制

## 功能实现
- 消息推送
- 状态管理
- 离线处理
- 消息持久化
- 实时统计

## 最佳实践
- 架构选择
- 性能优化
- 安全控制
- 监控告警
- 运维管理
EOF

# 创建第6章目录
mkdir -p "$BASE_DIR/第6章-Web开发基础"

# 创建第6章README文件
cat > "$BASE_DIR/第6章-Web开发基础/README.md" << 'EOF'
---
title: Web开发基础
icon: nodejs-web
order: 6
---

# Web开发基础

本章介绍Node.js Web开发的基础知识和实践。
EOF

# 创建6.1HTTP模块深入目录
mkdir -p "$BASE_DIR/第6章-Web开发基础/6.1-HTTP模块深入"

# 创建6.1HTTP模块深入README文件
cat > "$BASE_DIR/第6章-Web开发基础/6.1-HTTP模块深入/README.md" << 'EOF'
---
title: HTTP模块深入
icon: nodejs-http-advanced
order: 1
---

# HTTP模块深入

本节深入介绍Node.js HTTP模块的高级特性和应用。
EOF

# 创建6.1.1创建HTTP服务器文件
cat > "$BASE_DIR/第6章-Web开发基础/6.1-HTTP模块深入/6.1.1-创建HTTP服务器.md" << 'EOF'
---
title: 创建HTTP服务器
icon: nodejs-http-server-advanced
order: 1
---

# 创建HTTP服务器

## 高级配置
- 服务器选项
- 性能调优
- 安全设置
- 日志配置
- 监控设置

## 请求处理
- 路由系统
- 中间件
- 参数解析
- 会话管理
- 错误处理

## 响应优化
- 响应压缩
- 缓存控制
- 静态文件
- 流式响应
- 跨域处理

## 最佳实践
- 架构设计
- 性能优化
- 安全加固
- 监控告警
- 运维管理
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建6.1.2处理请求与响应文件
cat > "$BASE_DIR/第6章-Web开发基础/6.1-HTTP模块深入/6.1.2-处理请求与响应.md" << 'EOF'
---
title: 处理请求与响应
icon: nodejs-http-handling
order: 2
---

# 处理请求与响应

## 请求处理
- 请求解析
- 参数提取
- 请求验证
- 身份认证
- 权限控制

## 响应处理
- 响应格式
- 状态码
- 头部设置
- 数据序列化
- 错误处理

## 高级特性
- 文件上传
- 流式处理
- 压缩传输
- 缓存控制
- 跨域支持

## 最佳实践
- 参数验证
- 错误处理
- 性能优化
- 安全控制
- 日志记录
EOF

# 创建6.1.3HTTP客户端应用文件
cat > "$BASE_DIR/第6章-Web开发基础/6.1-HTTP模块深入/6.1.3-HTTP客户端应用.md" << 'EOF'
---
title: HTTP客户端应用
icon: nodejs-http-client-app
order: 3
---

# HTTP客户端应用

## 基础应用
- 请求发送
- 响应处理
- 错误处理
- 超时控制
- 重试机制

## 高级功能
- 请求配置
- 拦截器
- 并发请求
- 请求取消
- 进度监控

## 实践应用
- API调用
- 数据抓取
- 代理请求
- 负载均衡
- 服务发现

## 最佳实践
- 错误处理
- 性能优化
- 资源管理
- 安全控制
- 监控告警
EOF

# 创建6.2HTTPS与安全目录
mkdir -p "$BASE_DIR/第6章-Web开发基础/6.2-HTTPS与安全"

# 创建6.2HTTPS与安全README文件
cat > "$BASE_DIR/第6章-Web开发基础/6.2-HTTPS与安全/README.md" << 'EOF'
---
title: HTTPS与安全
icon: nodejs-https-security
order: 2
---

# HTTPS与安全

本节介绍Node.js中HTTPS的配置和Web安全实践。
EOF

# 创建6.2.1HTTPS服务器配置文件
cat > "$BASE_DIR/第6章-Web开发基础/6.2-HTTPS与安全/6.2.1-HTTPS服务器配置.md" << 'EOF'
---
title: HTTPS服务器配置
icon: nodejs-https-config
order: 1
---

# HTTPS服务器配置

## 基础配置
- 证书设置
- 密钥配置
- 协议版本
- 加密套件
- 性能优化

## 高级特性
- 双向认证
- 会话复用
- SNI支持
- OCSP装订
- 前向安全

## 性能优化
- 会话缓存
- 硬件加速
- 负载均衡
- 连接复用
- 证书链优化

## 最佳实践
- 安全配置
- 性能调优
- 监控告警
- 维护更新
- 应急响应
EOF

# 创建6.2.2证书管理文件
cat > "$BASE_DIR/第6章-Web开发基础/6.2-HTTPS与安全/6.2.2-证书管理.md" << 'EOF'
---
title: 证书管理
icon: nodejs-cert-management
order: 2
---

# 证书管理

## 证书类型
- SSL证书
- 根证书
- 中间证书
- 客户端证书
- 自签名证书

## 证书操作
- 申请证书
- 安装配置
- 更新续期
- 吊销处理
- 备份恢复

## 证书验证
- 链式验证
- 有效期检查
- 吊销检查
- CRL验证
- OCSP验证

## 最佳实践
- 证书规划
- 更新策略
- 安全存储
- 监控告警
- 应急处理
EOF

# 创建6.2.3安全最佳实践文件
cat > "$BASE_DIR/第6章-Web开发基础/6.2-HTTPS与安全/6.2.3-安全最佳实践.md" << 'EOF'
---
title: 安全最佳实践
icon: nodejs-security-best
order: 3
---

# 安全最佳实践

## 通信安全
- HTTPS配置
- 证书管理
- 加密算法
- 密钥管理
- 传输安全

## 应用安全
- 输入验证
- XSS防护
- CSRF防护
- SQL注入
- 文件上传

## 系统安全
- 权限控制
- 日志审计
- 漏洞扫描
- 入侵检测
- 应急响应

## 运维安全
- 配置管理
- 更新维护
- 监控告警
- 备份恢复
- 应急预案
EOF

# 创建6.3URL路由文件
cat > "$BASE_DIR/第6章-Web开发基础/6.3-URL路由.md" << 'EOF'
---
title: URL路由
icon: nodejs-routing
order: 3
---

# URL路由

## 基础路由
- 路由定义
- 参数提取
- 路由匹配
- 路由分组
- 中间件

## 高级特性
- 动态路由
- 正则匹配
- 路由嵌套
- 路由守卫
- 错误处理

## 路由优化
- 路由缓存
- 性能优化
- 负载均衡
- 路由监控
- 错误处理

## 最佳实践
- 路由设计
- 参数验证
- 安全控制
- 性能优化
- 维护管理
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建6.3.1基础路由实现文件
cat > "$BASE_DIR/第6章-Web开发基础/6.3-URL路由/6.3.1-基础路由实现.md" << 'EOF'
---
title: 基础路由实现
icon: nodejs-route-basic
order: 1
---

# 基础路由实现

## 路由定义
- 路由方法
- 路径匹配
- 处理函数
- 路由顺序
- 错误处理

## 路由组织
- 路由分组
- 路由嵌套
- 路由模块化
- 路由命名
- 路由版本

## 路由功能
- 请求方法
- 路径参数
- 查询参数
- 请求头
- 响应处理

## 最佳实践
- 路由设计
- 代码组织
- 错误处理
- 性能优化
- 安全控制
EOF

# 创建6.3.2路由参数处理文件
cat > "$BASE_DIR/第6章-Web开发基础/6.3-URL路由/6.3.2-路由参数处理.md" << 'EOF'
---
title: 路由参数处理
icon: nodejs-route-params
order: 2
---

# 路由参数处理

## 参数类型
- 路径参数
- 查询参数
- 矩阵参数
- 通配符
- 正则匹配

## 参数提取
- 参数解析
- 类型转换
- 默认值
- 可选参数
- 参数验证

## 参数处理
- 参数校验
- 参数转换
- 参数过滤
- 错误处理
- 安全检查

## 最佳实践
- 参数设计
- 验证策略
- 错误处理
- 安全控制
- 性能优化
EOF

# 创建6.3.3路由中间件文件
cat > "$BASE_DIR/第6章-Web开发基础/6.3-URL路由/6.3.3-路由中间件.md" << 'EOF'
---
title: 路由中间件
icon: nodejs-route-middleware
order: 3
---

# 路由中间件

## 中间件类型
- 应用级中间件
- 路由级中间件
- 错误处理中间件
- 内置中间件
- 第三方中间件

## 中间件功能
- 请求处理
- 响应处理
- 错误处理
- 权限验证
- 日志记录

## 中间件链
- 执行顺序
- 数据传递
- 异步处理
- 错误传播
- 链式调用

## 最佳实践
- 中间件设计
- 执行顺序
- 错误处理
- 性能优化
- 安全控制
EOF

# 创建6.4请求参数处理目录
mkdir -p "$BASE_DIR/第6章-Web开发基础/6.4-请求参数处理"

# 创建6.4请求参数处理README文件
cat > "$BASE_DIR/第6章-Web开发基础/6.4-请求参数处理/README.md" << 'EOF'
---
title: 请求参数处理
icon: nodejs-params
order: 4
---

# 请求参数处理

本节介绍Node.js中请求参数的处理方法。
EOF

# 创建6.4.1查询字符串文件
cat > "$BASE_DIR/第6章-Web开发基础/6.4-请求参数处理/6.4.1-查询字符串.md" << 'EOF'
---
title: 查询字符串
icon: nodejs-query-string
order: 1
---

# 查询字符串

## 基本处理
- 参数解析
- 类型转换
- 默认值
- 参数验证
- 错误处理

## 高级特性
- 数组参数
- 嵌套参数
- 编码解码
- 参数过滤
- 参数转换

## 安全考虑
- 参数验证
- 长度限制
- 类型检查
- 注入防护
- 编码处理

## 最佳实践
- 参数设计
- 验证策略
- 错误处理
- 安全控制
- 性能优化
EOF

# 创建6.4.2请求体解析文件
cat > "$BASE_DIR/第6章-Web开发基础/6.4-请求参数处理/6.4.2-请求体解析.md" << 'EOF'
---
title: 请求体解析
icon: nodejs-body-parser
order: 2
---

# 请求体解析

## 数据类型
- JSON数据
- 表单数据
- 原始数据
- 二进制数据
- 文本数据

## 解析方法
- 内容类型
- 数据解析
- 编码处理
- 大小限制
- 错误处理

## 高级特性
- 流式解析
- 压缩处理
- 类型验证
- 数据转换
- 安全检查

## 最佳实践
- 解析策略
- 错误处理
- 安全控制
- 性能优化
- 资源管理
EOF

# 创建6.4.3文件上传处理文件
cat > "$BASE_DIR/第6章-Web开发基础/6.4-请求参数处理/6.4.3-文件上传处理.md" << 'EOF'
---
title: 文件上传处理
icon: nodejs-file-upload
order: 3
---

# 文件上传处理

## 基本功能
- 文件接收
- 文件存储
- 文件验证
- 进度监控
- 错误处理

## 高级特性
- 多文件上传
- 大文件处理
- 断点续传
- 文件限制
- 文件过滤

## 安全考虑
- 文件类型
- 文件大小
- 存储位置
- 访问控制
- 病毒扫描

## 最佳实践
- 上传策略
- 存储管理
- 错误处理
- 安全控制
- 性能优化
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建6.5静态文件服务目录
mkdir -p "$BASE_DIR/第6章-Web开发基础/6.5-静态文件服务"

# 创建6.5静态文件服务README文件
cat > "$BASE_DIR/第6章-Web开发基础/6.5-静态文件服务/README.md" << 'EOF'
---
title: 静态文件服务
icon: nodejs-static
order: 5
---

# 静态文件服务

本节介绍Node.js中静态文件服务的实现和优化。
EOF

# 创建6.5.1静态资源服务器实现文件
cat > "$BASE_DIR/第6章-Web开发基础/6.5-静态文件服务/6.5.1-静态资源服务器实现.md" << 'EOF'
---
title: 静态资源服务器实现
icon: nodejs-static-server
order: 1
---

# 静态资源服务器实现

## 基本功能
- 文件读取
- 目录浏览
- 路径解析
- 错误处理
- 安全控制

## 高级特性
- 流式传输
- 范围请求
- 压缩传输
- 缓存控制
- 跨域支持

## 性能优化
- 文件缓存
- 并发控制
- 内存管理
- 磁盘IO
- 负载均衡

## 最佳实践
- 安全配置
- 性能优化
- 错误处理
- 监控告警
- 资源管理
EOF

# 创建6.5.2缓存控制文件
cat > "$BASE_DIR/第6章-Web开发基础/6.5-静态文件服务/6.5.2-缓存控制.md" << 'EOF'
---
title: 缓存控制
icon: nodejs-cache
order: 2
---

# 缓存控制

## 缓存策略
- 强制缓存
- 协商缓存
- 缓存验证
- 缓存更新
- 缓存清理

## 缓存头部
- Cache-Control
- ETag
- Last-Modified
- Expires
- Vary

## 缓存实现
- 内存缓存
- 文件缓存
- 分布式缓存
- 缓存预热
- 缓存穿透

## 最佳实践
- 策略选择
- 性能优化
- 资源管理
- 监控统计
- 故障处理
EOF

# 创建6.5.3MIME类型处理文件
cat > "$BASE_DIR/第6章-Web开发基础/6.5-静态文件服务/6.5.3-MIME类型处理.md" << 'EOF'
---
title: MIME类型处理
icon: nodejs-mime
order: 3
---

# MIME类型处理

## 基本概念
- MIME定义
- 类型分类
- 编码规则
- 类型检测
- 默认类型

## 处理方法
- 类型映射
- 类型检测
- 类型转换
- 编码处理
- 错误处理

## 应用场景
- 文件下载
- 图片处理
- 音视频
- 文档处理
- 压缩文件

## 最佳实践
- 类型配置
- 安全检查
- 错误处理
- 性能优化
- 监控统计
EOF

# 创建6.6模板引擎目录
mkdir -p "$BASE_DIR/第6章-Web开发基础/6.6-模板引擎"

# 创建6.6模板引擎README文件
cat > "$BASE_DIR/第6章-Web开发基础/6.6-模板引擎/README.md" << 'EOF'
---
title: 模板引擎
icon: nodejs-template
order: 6
---

# 模板引擎

本节介绍Node.js中常用的模板引擎及其应用。
EOF

# 创建6.6.1常用模板引擎对比文件
cat > "$BASE_DIR/第6章-Web开发基础/6.6-模板引擎/6.6.1-常用模板引擎对比.md" << 'EOF'
---
title: 常用模板引擎对比
icon: nodejs-template-compare
order: 1
---

# 常用模板引擎对比

## 主流引擎
- EJS
- Pug
- Handlebars
- Nunjucks
- Art-template

## 性能对比
- 渲染速度
- 内存占用
- 编译时间
- 缓存机制
- 扩展性能

## 功能特性
- 语法特点
- 扩展能力
- 调试支持
- 安全特性
- 生态系统

## 选型建议
- 场景适用
- 学习成本
- 维护难度
- 社区支持
- 性能要求
EOF

# 创建6.6.2EJS模板文件
cat > "$BASE_DIR/第6章-Web开发基础/6.6-模板引擎/6.6.2-EJS模板.md" << 'EOF'
---
title: EJS模板
icon: nodejs-ejs
order: 2
---

# EJS模板

## 基础语法
- 标签语法
- 变量输出
- 条件语句
- 循环语句
- 包含文件

## 高级特性
- 自定义标签
- 过滤器
- 布局模板
- 片段复用
- 异步渲染

## 最佳实践
- 模板组织
- 缓存策略
- 错误处理
- 安全考虑
- 性能优化

## 应用场景
- 页面渲染
- 邮件模板
- 代码生成
- 文档生成
- 报表输出
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建6.6.3Pug模板文件
cat > "$BASE_DIR/第6章-Web开发基础/6.6-模板引擎/6.6.3-Pug模板.md" << 'EOF'
---
title: Pug模板
icon: nodejs-pug
order: 3
---

# Pug模板

## 基础语法
- 标签语法
- 属性定义
- 文本内容
- 注释语法
- 代码块

## 高级特性
- 混入(Mixins)
- 继承布局
- 包含文件
- 过滤器
- 条件循环

## 模板组织
- 文件结构
- 模块化
- 复用机制
- 命名规范
- 版本控制

## 最佳实践
- 性能优化
- 代码组织
- 错误处理
- 安全考虑
- 调试技巧
EOF

# 创建6.6.4Handlebars模板文件
cat > "$BASE_DIR/第6章-Web开发基础/6.6-模板引擎/6.6.4-Handlebars模板.md" << 'EOF'
---
title: Handlebars模板
icon: nodejs-handlebars
order: 4
---

# Handlebars模板

## 基础语法
- 变量表达式
- 条件语句
- 循环语句
- 注释语法
- 块级表达式

## 高级特性
- 自定义助手
- 局部模板
- 内置助手
- 上下文处理
- 安全转义

## 扩展功能
- 预编译
- 运行时
- 自定义块
- 异步助手
- 国际化

## 最佳实践
- 模板设计
- 性能优化
- 安全处理
- 调试方法
- 维护更新
EOF

# 创建6.7Cookie与Session目录
mkdir -p "$BASE_DIR/第6章-Web开发基础/6.7-Cookie与Session"

# 创建6.7Cookie与Session README文件
cat > "$BASE_DIR/第6章-Web开发基础/6.7-Cookie与Session/README.md" << 'EOF'
---
title: Cookie与Session
icon: nodejs-session
order: 7
---

# Cookie与Session

本节介绍Node.js中Cookie和Session的实现与应用。
EOF

# 创建6.7.1Cookie管理文件
cat > "$BASE_DIR/第6章-Web开发基础/6.7-Cookie与Session/6.7.1-Cookie管理.md" << 'EOF'
---
title: Cookie管理
icon: nodejs-cookie
order: 1
---

# Cookie管理

## 基本操作
- 设置Cookie
- 读取Cookie
- 修改Cookie
- 删除Cookie
- 清理Cookie

## 属性设置
- 过期时间
- 域名范围
- 路径限制
- 安全标志
- HttpOnly

## 安全考虑
- 加密存储
- 签名验证
- 跨站防护
- 注入防护
- 过期处理

## 最佳实践
- 设计规范
- 安全加固
- 性能优化
- 调试方法
- 监控管理
EOF

# 创建6.7.2Session实现文件
cat > "$BASE_DIR/第6章-Web开发基础/6.7-Cookie与Session/6.7.2-Session实现.md" << 'EOF'
---
title: Session实现
icon: nodejs-session-impl
order: 2
---

# Session实现

## 基本功能
- 会话创建
- 会话存储
- 会话验证
- 会话销毁
- 会话更新

## 核心特性
- 唯一标识
- 数据存储
- 超时处理
- 并发控制
- 安全验证

## 高级功能
- 分布式会话
- 会话复制
- 会话同步
- 负载均衡
- 容错处理

## 最佳实践
- 设计模式
- 安全控制
- 性能优化
- 监控告警
- 维护管理
EOF

# 创建6.7.3会话存储文件
cat > "$BASE_DIR/第6章-Web开发基础/6.7-Cookie与Session/6.7.3-会话存储.md" << 'EOF'
---
title: 会话存储
icon: nodejs-session-store
order: 3
---

# 会话存储

## 存储方式
- 内存存储
- 文件存储
- Redis存储
- 数据库存储
- 分布式存储

## 存储特性
- 持久化
- 序列化
- 过期清理
- 容量控制
- 备份恢复

## 性能优化
- 缓存策略
- 存储选择
- 并发控制
- 负载均衡
- 故障转移

## 最佳实践
- 存储选型
- 安全加固
- 性能优化
- 监控告警
- 维护管理
EOF

# 创建6.8身份验证文件
cat > "$BASE_DIR/第6章-Web开发基础/6.8-身份验证.md" << 'EOF'
---
title: 身份验证
icon: nodejs-auth
order: 8
---

# 身份验证

## 验证方式
- 基本认证
- Session认证
- Token认证
- OAuth认证
- JWT认证

## 实现机制
- 用户认证
- 权限控制
- 角色管理
- 会话管理
- 安全策略

## 安全考虑
- 密码加密
- 令牌管理
- 会话保护
- 攻击防护
- 审计日志

## 最佳实践
- 认证策略
- 安全加固
- 性能优化
- 监控告警
- 应急响应
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建6.8.1基本认证文件
cat > "$BASE_DIR/第6章-Web开发基础/6.8-身份验证/6.8.1-基本认证.md" << 'EOF'
---
title: 基本认证
icon: nodejs-basic-auth
order: 1
---

# 基本认证

## 认证机制
- HTTP认证
- Base64编码
- 认证头部
- 认证流程
- 错误处理

## 实现方式
- 用户验证
- 密码加密
- 会话管理
- 权限控制
- 安全策略

## 安全考虑
- 传输加密
- 密码存储
- 暴力防护
- 会话保护
- 日志审计

## 最佳实践
- 认证设计
- 安全加固
- 性能优化
- 监控告警
- 应急响应
EOF

# 创建6.8.2Session认证文件
cat > "$BASE_DIR/第6章-Web开发基础/6.8-身份验证/6.8.2-Session认证.md" << 'EOF'
---
title: Session认证
icon: nodejs-session-auth
order: 2
---

# Session认证

## 认证流程
- 会话创建
- 用户验证
- 会话维护
- 会话销毁
- 状态管理

## 实现机制
- 存储选择
- 会话标识
- 数据结构
- 超时处理
- 并发控制

## 安全特性
- 会话劫持
- CSRF防护
- XSS防护
- 会话固定
- 超时控制

## 最佳实践
- 存储选择
- 安全加固
- 性能优化
- 监控告警
- 维护管理
EOF

# 创建6.8.3JWT认证文件
cat > "$BASE_DIR/第6章-Web开发基础/6.8-身份验证/6.8.3-JWT认证.md" << 'EOF'
---
title: JWT认证
icon: nodejs-jwt
order: 3
---

# JWT认证

## 基本概念
- Token结构
- 签名算法
- 载荷设计
- 过期机制
- 刷新机制

## 实现方式
- Token生成
- Token验证
- Token刷新
- 黑名单
- 状态管理

## 安全考虑
- 密钥保护
- 算法选择
- 载荷加密
- 令牌泄露
- 注销处理

## 最佳实践
- 设计规范
- 安全加固
- 性能优化
- 监控告警
- 维护管理
EOF

# 创建6.8.4OAuth集成文件
cat > "$BASE_DIR/第6章-Web开发基础/6.8-身份验证/6.8.4-OAuth集成.md" << 'EOF'
---
title: OAuth集成
icon: nodejs-oauth
order: 4
---

# OAuth集成

## 认证流程
- 授权码模式
- 隐式授权
- 密码模式
- 客户端模式
- 混合模式

## 实现机制
- 客户端注册
- 授权请求
- 令牌管理
- 回调处理
- 状态管理

## 集成方案
- 社交登录
- 第三方API
- 单点登录
- 权限控制
- 用户管理

## 最佳实践
- 方案选择
- 安全加固
- 性能优化
- 监控告警
- 维护管理
EOF

# 创建6.9中间件模式目录
mkdir -p "$BASE_DIR/第6章-Web开发基础/6.9-中间件模式"

# 创建6.9中间件模式README文件
cat > "$BASE_DIR/第6章-Web开发基础/6.9-中间件模式/README.md" << 'EOF'
---
title: 中间件模式
icon: nodejs-middleware
order: 9
---

# 中间件模式

本节介绍Node.js中中间件模式的概念和应用。
EOF

# 创建6.9.1中间件概念文件
cat > "$BASE_DIR/第6章-Web开发基础/6.9-中间件模式/6.9.1-中间件概念.md" << 'EOF'
---
title: 中间件概念
icon: nodejs-middleware-concept
order: 1
---

# 中间件概念

## 基本概念
- 中间件定义
- 执行流程
- 中间件类型
- 作用范围
- 执行顺序

## 核心特性
- 请求处理
- 响应处理
- 错误处理
- 异步处理
- 链式调用

## 应用场景
- 日志记录
- 身份验证
- 数据解析
- 错误处理
- 性能监控

## 最佳实践
- 设计模式
- 错误处理
- 性能优化
- 代码组织
- 测试策略
EOF

# 创建6.9.2中间件链文件
cat > "$BASE_DIR/第6章-Web开发基础/6.9-中间件模式/6.9.2-中间件链.md" << 'EOF'
---
title: 中间件链
icon: nodejs-middleware-chain
order: 2
---

# 中间件链

## 链式结构
- 顺序执行
- 异步处理
- 错误传播
- 数据传递
- 流程控制

## 实现机制
- 注册机制
- 执行机制
- 错误处理
- 异步控制
- 状态管理

## 高级特性
- 条件执行
- 并行处理
- 动态加载
- 中间件组合
- 错误恢复

## 最佳实践
- 链式设计
- 错误处理
- 性能优化
- 代码组织
- 测试验证
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建6.9.3常用中间件实现文件
cat > "$BASE_DIR/第6章-Web开发基础/6.9-中间件模式/6.9.3-常用中间件实现.md" << 'EOF'
---
title: 常用中间件实现
icon: nodejs-middleware-impl
order: 3
---

# 常用中间件实现

## 基础中间件
- 日志中间件
- 静态文件
- 请求解析
- 跨域处理
- 安全头部

## 认证中间件
- 会话验证
- Token验证
- 权限控制
- 角色管理
- 访问控制

## 功能中间件
- 压缩处理
- 缓存控制
- 限流控制
- 错误处理
- 性能监控

## 最佳实践
- 实现模式
- 错误处理
- 性能优化
- 安全加固
- 测试验证
EOF

# 创建6.10RESTfulAPI设计目录
mkdir -p "$BASE_DIR/第6章-Web开发基础/6.10-RESTfulAPI设计"

# 创建6.10RESTfulAPI设计README文件
cat > "$BASE_DIR/第6章-Web开发基础/6.10-RESTfulAPI设计/README.md" << 'EOF'
---
title: RESTfulAPI设计
icon: nodejs-rest
order: 10
---

# RESTfulAPI设计

本节介绍RESTful API的设计原则和最佳实践。
EOF

# 创建6.10.1REST原则文件
cat > "$BASE_DIR/第6章-Web开发基础/6.10-RESTfulAPI设计/6.10.1-REST原则.md" << 'EOF'
---
title: REST原则
icon: nodejs-rest-principles
order: 1
---

# REST原则

## 基本原则
- 资源标识
- 统一接口
- 无状态性
- 可缓存性
- 分层系统

## 设计规范
- URL设计
- 请求方法
- 状态表示
- 资源关系
- 幂等性

## 实现要点
- 资源命名
- 版本控制
- 认证授权
- 错误处理
- 响应格式

## 最佳实践
- 接口设计
- 安全控制
- 性能优化
- 文档管理
- 测试策略
EOF

# 创建6.10.2API版本控制文件
cat > "$BASE_DIR/第6章-Web开发基础/6.10-RESTfulAPI设计/6.10.2-API版本控制.md" << 'EOF'
---
title: API版本控制
icon: nodejs-api-version
order: 2
---

# API版本控制

## 版本策略
- URL版本
- 请求头版本
- 参数版本
- 媒体类型版本
- 自定义头部

## 实现方式
- 路由控制
- 中间件处理
- 版本映射
- 兼容处理
- 废弃管理

## 版本管理
- 版本规划
- 向后兼容
- 版本迁移
- 文档更新
- 测试验证

## 最佳实践
- 策略选择
- 兼容设计
- 文档维护
- 测试覆盖
- 监控告警
EOF

# 创建6.10.3状态码与错误处理文件
cat > "$BASE_DIR/第6章-Web开发基础/6.10-RESTfulAPI设计/6.10.3-状态码与错误处理.md" << 'EOF'
---
title: 状态码与错误处理
icon: nodejs-http-status
order: 3
---

# 状态码与错误处理

## 状态码使用
- 2xx成功
- 3xx重定向
- 4xx客户端错误
- 5xx服务器错误
- 自定义状态码

## 错误处理
- 错误格式
- 错误类型
- 错误描述
- 错误代码
- 错误详情

## 异常处理
- 全局处理
- 类型处理
- 日志记录
- 错误通知
- 故障恢复

## 最佳实践
- 状态码规范
- 错误设计
- 异常处理
- 监控告警
- 文档维护
EOF

# 创建6.10.4API文档生成文件
cat > "$BASE_DIR/第6章-Web开发基础/6.10-RESTfulAPI设计/6.10.4-API文档生成.md" << 'EOF'
---
title: API文档生成
icon: nodejs-api-docs
order: 4
---

# API文档生成

## 文档工具
- Swagger
- OpenAPI
- JSDoc
- API Blueprint
- Postman

## 文档内容
- 接口描述
- 参数说明
- 响应格式
- 错误码
- 示例代码

## 自动化生成
- 代码注释
- 文档模板
- 版本控制
- 实时更新
- 导出格式

## 最佳实践
- 工具选择
- 文档规范
- 维护更新
- 版本管理
- 访问控制
EOF

# 创建第7章目录
mkdir -p "$BASE_DIR/第7章-Express框架"

# 创建第7章README文件
cat > "$BASE_DIR/第7章-Express框架/README.md" << 'EOF'
---
title: Express框架
icon: nodejs-express
order: 7
---

# Express框架

本章介绍Node.js最流行的Web应用框架Express的使用和开发。
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建7.1Express简介目录
mkdir -p "$BASE_DIR/第7章-Express框架/7.1-Express简介"

# 创建7.1Express简介README文件
cat > "$BASE_DIR/第7章-Express框架/7.1-Express简介/README.md" << 'EOF'
---
title: Express简介
icon: nodejs-express-intro
order: 1
---

# Express简介

本节介绍Express框架的基本概念和使用方法。
EOF

# 创建7.1.1Express历史与理念文件
cat > "$BASE_DIR/第7章-Express框架/7.1-Express简介/7.1.1-Express历史与理念.md" << 'EOF'
---
title: Express历史与理念
icon: nodejs-express-history
order: 1
---

# Express历史与理念

## 发展历程
- 诞生背景
- 版本演进
- 重要里程碑
- 社区发展
- 未来展望

## 核心理念
- 简洁至上
- 灵活可扩展
- 中间件模式
- 路由系统
- 模板引擎

## 框架特点
- 轻量级
- 高性能
- 易扩展
- 生态丰富
- 学习曲线

## 应用场景
- Web应用
- RESTful API
- 静态服务
- 代理服务
- 实时应用
EOF

# 创建7.1.2安装与基本使用文件
cat > "$BASE_DIR/第7章-Express框架/7.1-Express简介/7.1.2-安装与基本使用.md" << 'EOF'
---
title: 安装与基本使用
icon: nodejs-express-install
order: 2
---

# 安装与基本使用

## 环境准备
- Node.js安装
- NPM配置
- 项目初始化
- 依赖安装
- 开发工具

## 基本使用
- 创建应用
- 配置服务器
- 路由定义
- 中间件使用
- 错误处理

## 开发调试
- 调试工具
- 热重载
- 错误追踪
- 性能分析
- 日志记录

## 最佳实践
- 项目结构
- 代码组织
- 错误处理
- 安全配置
- 部署策略
EOF

# 创建7.1.3应用程序生成器文件
cat > "$BASE_DIR/第7章-Express框架/7.1-Express简介/7.1.3-应用程序生成器.md" << 'EOF'
---
title: 应用程序生成器
icon: nodejs-express-generator
order: 3
---

# 应用程序生成器

## 基本功能
- 项目脚手架
- 目录结构
- 配置文件
- 依赖管理
- 启动脚本

## 使用方法
- 安装配置
- 创建项目
- 选项设置
- 模板选择
- 自定义配置

## 项目结构
- 目录组织
- 文件说明
- 配置管理
- 路由设计
- 中间件配置

## 最佳实践
- 结构优化
- 开发流程
- 测试策略
- 部署方案
- 维护更新
EOF

# 创建7.2路由系统目录
mkdir -p "$BASE_DIR/第7章-Express框架/7.2-路由系统"

# 创建7.2路由系统README文件
cat > "$BASE_DIR/第7章-Express框架/7.2-路由系统/README.md" << 'EOF'
---
title: 路由系统
icon: nodejs-express-routing
order: 2
---

# 路由系统

本节介绍Express框架的路由系统设计和使用。
EOF

# 创建7.2.1基本路由文件
cat > "$BASE_DIR/第7章-Express框架/7.2-路由系统/7.2.1-基本路由.md" << 'EOF'
---
title: 基本路由
icon: nodejs-express-basic-route
order: 1
---

# 基本路由

## 路由定义
- 路由方法
- 路径匹配
- 处理函数
- 响应方法
- 链式路由

## 路由处理
- 请求对象
- 响应对象
- 中间件
- 错误处理
- 异步处理

## 路由组织
- 路由模块化
- 路由分组
- 路由命名
- 路由版本
- 路由文档

## 最佳实践
- 路由设计
- 错误处理
- 性能优化
- 安全控制
- 测试策略
EOF

# 创建7.2.2路由参数文件
cat > "$BASE_DIR/第7章-Express框架/7.2-路由系统/7.2.2-路由参数.md" << 'EOF'
---
title: 路由参数
icon: nodejs-express-route-params
order: 2
---

# 路由参数

## 参数类型
- 路径参数
- 查询参数
- 请求体参数
- 自定义参数
- 正则匹配

## 参数处理
- 参数获取
- 参数验证
- 参数转换
- 默认值
- 错误处理

## 高级特性
- 参数中间件
- 参数验证器
- 类型转换
- 自定义处理
- 错误处理

## 最佳实践
- 参数设计
- 验证策略
- 错误处理
- 安全控制
- 性能优化
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建7.2.3路由处理器文件
cat > "$BASE_DIR/第7章-Express框架/7.2-路由系统/7.2.3-路由处理器.md" << 'EOF'
---
title: 路由处理器
icon: nodejs-express-handler
order: 3
---

# 路由处理器

## 基本概念
- 处理器定义
- 请求对象
- 响应对象
- 中间件链
- 异步处理

## 处理方法
- 数据获取
- 参数验证
- 业务处理
- 响应生成
- 错误处理

## 高级特性
- 控制器模式
- 依赖注入
- 服务层
- 异常处理
- 日志记录

## 最佳实践
- 代码组织
- 错误处理
- 性能优化
- 安全控制
- 测试策略
EOF

# 创建7.2.4路由模块化文件
cat > "$BASE_DIR/第7章-Express框架/7.2-路由系统/7.2.4-路由模块化.md" << 'EOF'
---
title: 路由模块化
icon: nodejs-express-route-module
order: 4
---

# 路由模块化

## 模块化设计
- 路由分组
- 模块划分
- 命名规范
- 版本控制
- 文档管理

## 实现方式
- Router对象
- 路由挂载
- 中间件集成
- 错误处理
- 参数传递

## 高级特性
- 动态路由
- 路由前缀
- 路由嵌套
- 路由守卫
- 路由缓存

## 最佳实践
- 目录结构
- 代码组织
- 命名规范
- 版本管理
- 文档维护
EOF

# 创建7.3中间件目录
mkdir -p "$BASE_DIR/第7章-Express框架/7.3-中间件"

# 创建7.3中间件README文件
cat > "$BASE_DIR/第7章-Express框架/7.3-中间件/README.md" << 'EOF'
---
title: 中间件
icon: nodejs-express-middleware
order: 3
---

# 中间件

本节介绍Express框架中间件的使用和开发。
EOF

# 创建7.3.1内置中间件文件
cat > "$BASE_DIR/第7章-Express框架/7.3-中间件/7.3.1-内置中间件.md" << 'EOF'
---
title: 内置中间件
icon: nodejs-express-built-in
order: 1
---

# 内置中间件

## express.static
- 静态文件服务
- 缓存控制
- MIME类型
- 安全配置
- 性能优化

## express.json
- JSON解析
- 大小限制
- 类型验证
- 错误处理
- 安全控制

## express.urlencoded
- 表单解析
- 编码处理
- 参数限制
- 安全验证
- 错误处理

## 最佳实践
- 配置优化
- 安全加固
- 性能调优
- 错误处理
- 监控管理
EOF

# 创建7.3.2第三方中间件文件
cat > "$BASE_DIR/第7章-Express框架/7.3-中间件/7.3.2-第三方中间件.md" << 'EOF'
---
title: 第三方中间件
icon: nodejs-express-third-party
order: 2
---

# 第三方中间件

## 常用中间件
- body-parser
- cookie-parser
- compression
- cors
- helmet

## 功能中间件
- 会话管理
- 文件上传
- 日志记录
- 安全防护
- 性能优化

## 选择标准
- 功能完整性
- 维护活跃度
- 社区支持
- 性能表现
- 安全性能

## 最佳实践
- 中间件选择
- 配置优化
- 安全加固
- 性能调优
- 监控管理
EOF

# 创建7.3.3自定义中间件文件
cat > "$BASE_DIR/第7章-Express框架/7.3-中间件/7.3.3-自定义中间件.md" << 'EOF'
---
title: 自定义中间件
icon: nodejs-express-custom
order: 3
---

# 自定义中间件

## 基本结构
- 中间件函数
- 参数处理
- 异步处理
- 错误处理
- 链式调用

## 开发要点
- 功能设计
- 参数验证
- 错误处理
- 性能优化
- 安全控制

## 使用场景
- 请求处理
- 响应处理
- 权限验证
- 日志记录
- 性能监控

## 最佳实践
- 代码组织
- 错误处理
- 性能优化
- 安全控制
- 测试验证
EOF

# 创建7.3.4错误处理中间件文件
cat > "$BASE_DIR/第7章-Express框架/7.3-中间件/7.3.4-错误处理中间件.md" << 'EOF'
---
title: 错误处理中间件
icon: nodejs-express-error
order: 4
---

# 错误处理中间件

## 基本概念
- 错误捕获
- 错误传递
- 错误格式化
- 错误响应
- 错误日志

## 实现方式
- 全局处理
- 路由处理
- 异步处理
- 类型处理
- 自定义处理

## 高级特性
- 错误分类
- 错误堆栈
- 错误通知
- 错误恢复
- 错误监控

## 最佳实践
- 错误设计
- 日志记录
- 安全控制
- 性能优化
- 监控告警
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建7.4请求与响应对象目录
mkdir -p "$BASE_DIR/第7章-Express框架/7.4-请求与响应对象"

# 创建7.4请求与响应对象README文件
cat > "$BASE_DIR/第7章-Express框架/7.4-请求与响应对象/README.md" << 'EOF'
---
title: 请求与响应对象
icon: nodejs-express-req-res
order: 4
---

# 请求与响应对象

本节介绍Express框架中请求和响应对象的属性和方法。
EOF

# 创建7.4.1请求对象属性与方法文件
cat > "$BASE_DIR/第7章-Express框架/7.4-请求与响应对象/7.4.1-请求对象属性与方法.md" << 'EOF'
---
title: 请求对象属性与方法
icon: nodejs-express-request
order: 1
---

# 请求对象属性与方法

## 基本属性
- 请求路径
- 请求方法
- 请求头部
- 查询参数
- 请求体

## 常用方法
- 参数获取
- Cookie操作
- 会话管理
- 文件上传
- 请求验证

## 扩展功能
- 自定义属性
- 请求解析
- 数据验证
- 安全检查
- 性能监控

## 最佳实践
- 参数处理
- 安全控制
- 性能优化
- 错误处理
- 日志记录
EOF

# 创建7.4.2响应对象属性与方法文件
cat > "$BASE_DIR/第7章-Express框架/7.4-请求与响应对象/7.4.2-响应对象属性与方法.md" << 'EOF'
---
title: 响应对象属性与方法
icon: nodejs-express-response
order: 2
---

# 响应对象属性与方法

## 基本属性
- 状态码
- 响应头
- 响应体
- 字符集
- 内容类型

## 常用方法
- 发送数据
- 重定向
- 设置头部
- 设置状态
- 结束响应

## 扩展功能
- JSON响应
- 文件下载
- 流式响应
- 模板渲染
- 压缩传输

## 最佳实践
- 响应格式
- 错误处理
- 性能优化
- 安全控制
- 缓存策略
EOF

# 创建7.4.3请求-响应周期文件
cat > "$BASE_DIR/第7章-Express框架/7.4-请求与响应对象/7.4.3-请求-响应周期.md" << 'EOF'
---
title: 请求-响应周期
icon: nodejs-express-lifecycle
order: 3
---

# 请求-响应周期

## 生命周期
- 请求接收
- 中间件处理
- 路由匹配
- 业务处理
- 响应发送

## 处理流程
- 请求解析
- 参数验证
- 权限检查
- 业务逻辑
- 响应生成

## 异步处理
- 异步操作
- 并发控制
- 超时处理
- 错误处理
- 资源释放

## 最佳实践
- 流程优化
- 错误处理
- 性能监控
- 资源管理
- 日志记录
EOF

# 创建7.5错误处理目录
mkdir -p "$BASE_DIR/第7章-Express框架/7.5-错误处理"

# 创建7.5错误处理README文件
cat > "$BASE_DIR/第7章-Express框架/7.5-错误处理/README.md" << 'EOF'
---
title: 错误处理
icon: nodejs-express-error
order: 5
---

# 错误处理

本节介绍Express框架中的错误处理机制。
EOF

# 创建7.5.1同步错误处理文件
cat > "$BASE_DIR/第7章-Express框架/7.5-错误处理/7.5.1-同步错误处理.md" << 'EOF'
---
title: 同步错误处理
icon: nodejs-express-sync-error
order: 1
---

# 同步错误处理

## 错误类型
- 系统错误
- 业务错误
- 验证错误
- 权限错误
- 资源错误

## 处理方式
- try-catch
- 错误中间件
- 错误传递
- 错误格式化
- 错误响应

## 错误处理
- 错误捕获
- 错误日志
- 错误通知
- 错误恢复
- 错误监控

## 最佳实践
- 错误设计
- 日志记录
- 监控告警
- 性能优化
- 安全控制
EOF

# 创建7.5.2异步错误处理文件
cat > "$BASE_DIR/第7章-Express框架/7.5-错误处理/7.5.2-异步错误处理.md" << 'EOF'
---
title: 异步错误处理
icon: nodejs-express-async-error
order: 2
---

# 异步错误处理

## 异步错误
- Promise错误
- async/await
- 回调错误
- 事件错误
- 流错误

## 处理方式
- catch方法
- try-catch
- 错误事件
- 错误中间件
- 全局处理

## 错误管理
- 错误收集
- 错误分类
- 错误追踪
- 错误恢复
- 错误监控

## 最佳实践
- 异步设计
- 错误处理
- 性能优化
- 监控告警
- 资源管理
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建7.5.3集中式错误处理文件
cat > "$BASE_DIR/第7章-Express框架/7.5-错误处理/7.5.3-集中式错误处理.md" << 'EOF'
---
title: 集中式错误处理
icon: nodejs-express-central-error
order: 3
---

# 集中式错误处理

## 错误中心
- 错误收集
- 错误分类
- 错误处理
- 错误响应
- 错误统计

## 实现机制
- 全局处理器
- 错误过滤
- 错误转换
- 错误通知
- 错误恢复

## 高级特性
- 错误聚合
- 错误分析
- 错误报警
- 错误追踪
- 错误诊断

## 最佳实践
- 架构设计
- 错误处理
- 监控告警
- 性能优化
- 运维管理
EOF

# 创建7.6视图与模板目录
mkdir -p "$BASE_DIR/第7章-Express框架/7.6-视图与模板"

# 创建7.6视图与模板README文件
cat > "$BASE_DIR/第7章-Express框架/7.6-视图与模板/README.md" << 'EOF'
---
title: 视图与模板
icon: nodejs-express-view
order: 6
---

# 视图与模板

本节介绍Express框架中视图和模板的使用方法。
EOF

# 创建7.6.1模板引擎配置文件
cat > "$BASE_DIR/第7章-Express框架/7.6-视图与模板/7.6.1-模板引擎配置.md" << 'EOF'
---
title: 模板引擎配置
icon: nodejs-express-template-config
order: 1
---

# 模板引擎配置

## 基本配置
- 引擎选择
- 视图目录
- 文件扩展名
- 缓存设置
- 选项配置

## 引擎特性
- 语法支持
- 变量传递
- 过滤器
- 助手函数
- 扩展功能

## 高级配置
- 多引擎支持
- 自定义标签
- 国际化
- 缓存策略
- 错误处理

## 最佳实践
- 引擎选择
- 性能优化
- 安全配置
- 维护管理
- 监控统计
EOF

# 创建7.6.2视图渲染文件
cat > "$BASE_DIR/第7章-Express框架/7.6-视图与模板/7.6.2-视图渲染.md" << 'EOF'
---
title: 视图渲染
icon: nodejs-express-view-render
order: 2
---

# 视图渲染

## 渲染方法
- 同步渲染
- 异步渲染
- 局部渲染
- 条件渲染
- 循环渲染

## 数据传递
- 局部变量
- 全局变量
- 助手函数
- 过滤器
- 中间件

## 渲染优化
- 缓存策略
- 异步处理
- 压缩输出
- 错误处理
- 性能监控

## 最佳实践
- 渲染设计
- 缓存优化
- 错误处理
- 性能调优
- 监控管理
EOF

# 创建7.6.3布局与片段文件
cat > "$BASE_DIR/第7章-Express框架/7.6-视图与模板/7.6.3-布局与片段.md" << 'EOF'
---
title: 布局与片段
icon: nodejs-express-layout
order: 3
---

# 布局与片段

## 布局设计
- 主布局
- 子布局
- 嵌套布局
- 动态布局
- 响应式布局

## 片段管理
- 片段定义
- 片段引用
- 片段缓存
- 片段更新
- 片段组合

## 高级特性
- 动态加载
- 条件包含
- 缓存控制
- 错误处理
- 性能优化

## 最佳实践
- 结构设计
- 代码复用
- 性能优化
- 维护管理
- 测试策略
EOF

# 创建7.7静态资源目录
mkdir -p "$BASE_DIR/第7章-Express框架/7.7-静态资源"

# 创建7.7静态资源README文件
cat > "$BASE_DIR/第7章-Express框架/7.7-静态资源/README.md" << 'EOF'
---
title: 静态资源
icon: nodejs-express-static
order: 7
---

# 静态资源

本节介绍Express框架中静态资源的处理方法。
EOF

# 创建7.7.1静态文件中间件文件
cat > "$BASE_DIR/第7章-Express框架/7.7-静态资源/7.7.1-静态文件中间件.md" << 'EOF'
---
title: 静态文件中间件
icon: nodejs-express-static-middleware
order: 1
---

# 静态文件中间件

## 基本配置
- 目录设置
- 路由映射
- 访问控制
- 缓存策略
- 安全设置

## 高级特性
- 虚拟路径
- 多目录支持
- 文件过滤
- 压缩传输
- 断点续传

## 性能优化
- 缓存控制
- 压缩策略
- 并发处理
- 资源合并
- CDN配置

## 最佳实践
- 目录结构
- 安全控制
- 性能优化
- 监控统计
- 维护管理
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建7.7.2多目录静态文件文件
cat > "$BASE_DIR/第7章-Express框架/7.7-静态资源/7.7.2-多目录静态文件.md" << 'EOF'
---
title: 多目录静态文件
icon: nodejs-express-multi-static
order: 2
---

# 多目录静态文件

## 目录配置
- 多目录设置
- 优先级控制
- 访问权限
- 路径映射
- 目录监控

## 实现方式
- 中间件链
- 路由映射
- 虚拟目录
- 文件过滤
- 错误处理

## 高级特性
- 负载均衡
- 缓存策略
- 压缩传输
- 安全控制
- 资源合并

## 最佳实践
- 目录规划
- 权限控制
- 性能优化
- 监控管理
- 维护更新
EOF

# 创建7.7.3虚拟路径前缀文件
cat > "$BASE_DIR/第7章-Express框架/7.7-静态资源/7.7.3-虚拟路径前缀.md" << 'EOF'
---
title: 虚拟路径前缀
icon: nodejs-express-virtual-path
order: 3
---

# 虚拟路径前缀

## 基本概念
- 路径映射
- 前缀设置
- 访问规则
- 安全控制
- 错误处理

## 实现方式
- 中间件配置
- 路由处理
- 权限验证
- 资源定位
- 错误响应

## 高级特性
- 动态前缀
- 条件映射
- 安全过滤
- 缓存控制
- 监控统计

## 最佳实践
- 路径设计
- 安全加固
- 性能优化
- 监控告警
- 维护管理
EOF

# 创建7.8文件上传目录
mkdir -p "$BASE_DIR/第7章-Express框架/7.8-文件上传"

# 创建7.8文件上传README文件
cat > "$BASE_DIR/第7章-Express框架/7.8-文件上传/README.md" << 'EOF'
---
title: 文件上传
icon: nodejs-express-upload
order: 8
---

# 文件上传

本节介绍Express框架中文件上传的实现方法。
EOF

# 创建7.8.1multer中间件文件
cat > "$BASE_DIR/第7章-Express框架/7.8-文件上传/7.8.1-multer中间件.md" << 'EOF'
---
title: multer中间件
icon: nodejs-express-multer
order: 1
---

# multer中间件

## 基本配置
- 安装配置
- 存储设置
- 文件过滤
- 限制控制
- 错误处理

## 上传功能
- 单文件上传
- 多文件上传
- 字段处理
- 文件信息
- 进度监控

## 高级特性
- 文件过滤
- 文件重命名
- 文件验证
- 错误处理
- 安全控制

## 最佳实践
- 配置优化
- 安全加固
- 性能调优
- 错误处理
- 监控管理
EOF

# 创建7.8.2文件存储策略文件
cat > "$BASE_DIR/第7章-Express框架/7.8-文件上传/7.8.2-文件存储策略.md" << 'EOF'
---
title: 文件存储策略
icon: nodejs-express-storage
order: 2
---

# 文件存储策略

## 存储方式
- 本地存储
- 云存储
- 数据库存储
- 分布式存储
- 混合存储

## 存储管理
- 目录结构
- 命名规则
- 权限控制
- 容量管理
- 备份策略

## 高级特性
- 存储集群
- 负载均衡
- 容灾备份
- 安全加密
- 访问控制

## 最佳实践
- 策略选择
- 安全控制
- 性能优化
- 监控管理
- 维护更新
EOF

# 创建7.8.3文件验证与限制文件
cat > "$BASE_DIR/第7章-Express框架/7.8-文件上传/7.8.3-文件验证与限制.md" << 'EOF'
---
title: 文件验证与限制
icon: nodejs-express-file-validation
order: 3
---

# 文件验证与限制

## 验证规则
- 类型验证
- 大小限制
- 格式检查
- 内容验证
- 安全扫描

## 限制控制
- 上传速率
- 并发数量
- 总量控制
- 用户配额
- 时间限制

## 安全措施
- 病毒检测
- 内容过滤
- 权限验证
- 访问控制
- 审计日志

## 最佳实践
- 验证策略
- 限制配置
- 安全加固
- 性能优化
- 监控告警
EOF

# 创建7.9会话管理文件
cat > "$BASE_DIR/第7章-Express框架/7.9-会话管理.md" << 'EOF'
---
title: 会话管理
icon: nodejs-express-session
order: 9
---

# 会话管理

## 基本概念
- 会话创建
- 会话存储
- 会话验证
- 会话销毁
- 会话更新

## 存储方式
- 内存存储
- Redis存储
- 数据库存储
- 文件存储
- 分布式存储

## 安全特性
- 会话加密
- 会话验证
- 会话劫持
- 会话过期
- 会话清理

## 最佳实践
- 存储选择
- 安全加固
- 性能优化
- 监控告警
- 维护管理
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建7.9.1express-session文件
cat > "$BASE_DIR/第7章-Express框架/7.9-会话管理/7.9.1-express-session.md" << 'EOF'
---
title: express-session
icon: nodejs-express-session-lib
order: 1
---

# express-session

## 基本配置
- 安装设置
- 会话选项
- 存储配置
- 过期设置
- 安全选项

## 核心功能
- 会话创建
- 会话读写
- 会话验证
- 会话销毁
- 会话更新

## 高级特性
- 会话持久化
- 会话同步
- 会话共享
- 会话监控
- 会话恢复

## 最佳实践
- 配置优化
- 安全加固
- 性能调优
- 监控管理
- 维护更新
EOF

# 创建7.9.2会话存储选项文件
cat > "$BASE_DIR/第7章-Express框架/7.9-会话管理/7.9.2-会话存储选项.md" << 'EOF'
---
title: 会话存储选项
icon: nodejs-express-session-store
order: 2
---

# 会话存储选项

## 存储类型
- 内存存储
- Redis存储
- MongoDB存储
- MySQL存储
- 文件存储

## 存储特性
- 持久化
- 分布式
- 高可用
- 性能优化
- 数据备份

## 选型考虑
- 性能需求
- 可靠性
- 可扩展性
- 维护成本
- 安全性能

## 最佳实践
- 存储选择
- 配置优化
- 性能调优
- 监控管理
- 灾备方案
EOF

# 创建7.9.3会话安全文件
cat > "$BASE_DIR/第7章-Express框架/7.9-会话管理/7.9.3-会话安全.md" << 'EOF'
---
title: 会话安全
icon: nodejs-express-session-security
order: 3
---

# 会话安全

## 安全威胁
- 会话劫持
- 会话固定
- 跨站攻击
- 重放攻击
- 信息泄露

## 防护措施
- 加密传输
- 会话验证
- 超时控制
- 并发限制
- 安全头部

## 安全配置
- Cookie设置
- 密钥管理
- 域名限制
- 路径控制
- 安全标志

## 最佳实践
- 安全策略
- 监控告警
- 审计日志
- 应急响应
- 定期评估
EOF

# 创建7.10安全最佳实践目录
mkdir -p "$BASE_DIR/第7章-Express框架/7.10-安全最佳实践"

# 创建7.10安全最佳实践README文件
cat > "$BASE_DIR/第7章-Express框架/7.10-安全最佳实践/README.md" << 'EOF'
---
title: 安全最佳实践
icon: nodejs-express-security
order: 10
---

# 安全最佳实践

本节介绍Express框架的安全最佳实践。
EOF

# 创建7.10.1Helmet中间件文件
cat > "$BASE_DIR/第7章-Express框架/7.10-安全最佳实践/7.10.1-Helmet中间件.md" << 'EOF'
---
title: Helmet中间件
icon: nodejs-express-helmet
order: 1
---

# Helmet中间件

## 基本功能
- 安全头部
- XSS防护
- 点击劫持
- MIME嗅探
- DNS预取

## 配置选项
- CSP策略
- HSTS设置
- 框架选项
- 缓存控制
- 引用策略

## 高级特性
- 自定义规则
- 动态配置
- 错误处理
- 性能优化
- 兼容性

## 最佳实践
- 配置优化
- 安全加固
- 性能调优
- 监控管理
- 维护更新
EOF

# 创建7.10.2CSRF防护文件
cat > "$BASE_DIR/第7章-Express框架/7.10-安全最佳实践/7.10.2-CSRF防护.md" << 'EOF'
---
title: CSRF防护
icon: nodejs-express-csrf
order: 2
---

# CSRF防护

## 防护机制
- Token验证
- 双重Cookie
- SameSite
- 请求验证
- 来源检查

## 实现方式
- 中间件配置
- Token生成
- Token验证
- 错误处理
- 异常恢复

## 高级特性
- 动态Token
- 多重验证
- 自定义规则
- 性能优化
- 监控告警

## 最佳实践
- 策略选择
- 配置优化
- 安全加固
- 性能调优
- 监控管理
EOF

# 创建7.10.3速率限制文件
cat > "$BASE_DIR/第7章-Express框架/7.10-安全最佳实践/7.10.3-速率限制.md" << 'EOF'
---
title: 速率限制
icon: nodejs-express-rate-limit
order: 3
---

# 速率限制

## 限制策略
- 请求频率
- 时间窗口
- IP限制
- 用户限制
- 接口限制

## 实现方式
- 中间件配置
- 存储选择
- 限制规则
- 错误处理
- 白名单

## 高级特性
- 动态限制
- 分布式限制
- 自定义规则
- 监控统计
- 告警通知

## 最佳实践
- 策略设计
- 配置优化
- 性能调优
- 监控管理
- 维护更新
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建7.10.4安全HTTP头文件
cat > "$BASE_DIR/第7章-Express框架/7.10-安全最佳实践/7.10.4-安全HTTP头.md" << 'EOF'
---
title: 安全HTTP头
icon: nodejs-express-security-headers
order: 4
---

# 安全HTTP头

## 基本头部
- Content-Security-Policy
- X-Frame-Options
- X-XSS-Protection
- X-Content-Type-Options
- Referrer-Policy

## 高级配置
- HSTS设置
- 特性策略
- 缓存控制
- CORS设置
- 证书透明度

## 实现方式
- 中间件配置
- 自定义头部
- 动态设置
- 错误处理
- 监控统计

## 最佳实践
- 策略设计
- 配置优化
- 安全加固
- 性能调优
- 维护管理
EOF

# 创建第8章数据库集成目录
mkdir -p "$BASE_DIR/第8章-数据库集成"

# 创建第8章数据库集成README文件
cat > "$BASE_DIR/第8章-数据库集成/README.md" << 'EOF'
---
title: 数据库集成
icon: nodejs-database
order: 8
---

# 数据库集成

本章介绍Node.js与各种数据库的集成方案和最佳实践。
EOF

# 创建8.1关系型数据库目录
mkdir -p "$BASE_DIR/第8章-数据库集成/8.1-关系型数据库"

# 创建8.1关系型数据库README文件
cat > "$BASE_DIR/第8章-数据库集成/8.1-关系型数据库/README.md" << 'EOF'
---
title: 关系型数据库
icon: nodejs-rdb
order: 1
---

# 关系型数据库

本节介绍Node.js与关系型数据库的集成方案。
EOF

# 创建8.1.1MySQL集成文件
cat > "$BASE_DIR/第8章-数据库集成/8.1-关系型数据库/8.1.1-MySQL集成.md" << 'EOF'
---
title: MySQL集成
icon: nodejs-mysql
order: 1
---

# MySQL集成

## 基础配置
- 驱动安装
- 连接配置
- 连接池
- 错误处理
- 日志设置

## 核心操作
- CRUD操作
- 事务处理
- 查询优化
- 批量操作
- 存储过程

## 高级特性
- 连接池管理
- 读写分离
- 分库分表
- 故障转移
- 监控统计

## 最佳实践
- 配置优化
- 性能调优
- 安全加固
- 监控告警
- 维护管理
EOF

# 创建8.1.2PostgreSQL集成文件
cat > "$BASE_DIR/第8章-数据库集成/8.1-关系型数据库/8.1.2-PostgreSQL集成.md" << 'EOF'
---
title: PostgreSQL集成
icon: nodejs-postgresql
order: 2
---

# PostgreSQL集成

## 基础配置
- 驱动安装
- 连接设置
- 连接池
- 错误处理
- 日志管理

## 核心操作
- CRUD操作
- 事务管理
- 查询优化
- 批量处理
- JSON操作

## 高级特性
- 连接池管理
- 主从复制
- 分区表
- 全文搜索
- 监控统计

## 最佳实践
- 配置优化
- 性能调优
- 安全加固
- 监控告警
- 维护管理
EOF

# 创建8.1.3SQLite集成文件
cat > "$BASE_DIR/第8章-数据库集成/8.1-关系型数据库/8.1.3-SQLite集成.md" << 'EOF'
---
title: SQLite集成
icon: nodejs-sqlite
order: 3
---

# SQLite集成

## 基础配置
- 驱动安装
- 数据库创建
- 连接配置
- 错误处理
- 日志记录

## 核心操作
- CRUD操作
- 事务处理
- 查询优化
- 批量操作
- 备份恢复

## 高级特性
- 内存数据库
- WAL模式
- 加密支持
- 并发控制
- 性能优化

## 最佳实践
- 配置优化
- 性能调优
- 安全加固
- 监控管理
- 维护更新
EOF

# 创建8.2NoSQL数据库目录
mkdir -p "$BASE_DIR/第8章-数据库集成/8.2-NoSQL数据库"

# 创建8.2NoSQL数据库README文件
cat > "$BASE_DIR/第8章-数据库集成/8.2-NoSQL数据库/README.md" << 'EOF'
---
title: NoSQL数据库
icon: nodejs-nosql
order: 2
---

# NoSQL数据库

本节介绍Node.js与NoSQL数据库的集成方案。
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建8.2.1MongoDB集成文件
cat > "$BASE_DIR/第8章-数据库集成/8.2-NoSQL数据库/8.2.1-MongoDB集成.md" << 'EOF'
---
title: MongoDB集成
icon: nodejs-mongodb
order: 1
---

# MongoDB集成

## 基础配置
- 驱动安装
- 连接设置
- 连接池
- 错误处理
- 日志管理

## 核心操作
- CRUD操作
- 聚合查询
- 索引管理
- 批量操作
- 事务处理

## 高级特性
- 复制集
- 分片集群
- 读写分离
- 数据备份
- 监控统计

## 最佳实践
- 配置优化
- 性能调优
- 安全加固
- 监控告警
- 维护管理
EOF

# 创建8.2.2Redis集成文件
cat > "$BASE_DIR/第8章-数据库集成/8.2-NoSQL数据库/8.2.2-Redis集成.md" << 'EOF'
---
title: Redis集成
icon: nodejs-redis
order: 2
---

# Redis集成

## 基础配置
- 客户端安装
- 连接配置
- 连接池
- 错误处理
- 日志管理

## 核心操作
- 数据类型
- 事务处理
- 发布订阅
- 缓存策略
- 过期管理

## 高级特性
- 集群部署
- 哨兵模式
- 持久化
- 主从复制
- 性能优化

## 最佳实践
- 配置优化
- 性能调优
- 安全加固
- 监控告警
- 维护管理
EOF

# 创建8.3ORM与ODM目录
mkdir -p "$BASE_DIR/第8章-数据库集成/8.3-ORM与ODM"

# 创建8.3ORM与ODM README文件
cat > "$BASE_DIR/第8章-数据库集成/8.3-ORM与ODM/README.md" << 'EOF'
---
title: ORM与ODM
icon: nodejs-orm
order: 3
---

# ORM与ODM

本节介绍Node.js中常用的ORM和ODM框架。
EOF

# 创建8.3.1Sequelize文件
cat > "$BASE_DIR/第8章-数据库集成/8.3-ORM与ODM/8.3.1-Sequelize.md" << 'EOF'
---
title: Sequelize
icon: nodejs-sequelize
order: 1
---

# Sequelize

## 基础配置
- 安装设置
- 数据库连接
- 模型定义
- 关联关系
- 迁移配置

## 核心功能
- CRUD操作
- 查询构建
- 事务处理
- 关联查询
- 钩子方法

## 高级特性
- 模型验证
- 作用域
- 多态关联
- 并发控制
- 性能优化

## 最佳实践
- 模型设计
- 查询优化
- 关联处理
- 事务管理
- 性能调优
EOF

# 创建8.3.2Mongoose文件
cat > "$BASE_DIR/第8章-数据库集成/8.3-ORM与ODM/8.3.2-Mongoose.md" << 'EOF'
---
title: Mongoose
icon: nodejs-mongoose
order: 2
---

# Mongoose

## 基础配置
- 安装设置
- 连接配置
- Schema定义
- 模型创建
- 中间件配置

## 核心功能
- CRUD操作
- 查询构建
- 数据验证
- 中间件
- 插件系统

## 高级特性
- 虚拟属性
- 填充查询
- 聚合管道
- 事务支持
- 索引优化

## 最佳实践
- Schema设计
- 查询优化
- 关联处理
- 性能调优
- 维护管理
EOF

# 创建8.3.3TypeORM文件
cat > "$BASE_DIR/第8章-数据库集成/8.3-ORM与ODM/8.3.3-TypeORM.md" << 'EOF'
---
title: TypeORM
icon: nodejs-typeorm
order: 3
---

# TypeORM

## 基础配置
- 安装设置
- 连接配置
- 实体定义
- 关系映射
- 迁移配置

## 核心功能
- CRUD操作
- 查询构建
- 关系处理
- 事务管理
- 缓存系统

## 高级特性
- 装饰器
- 监听器
- 订阅者
- 自定义仓库
- 多数据库支持

## 最佳实践
- 实体设计
- 查询优化
- 关系处理
- 性能调优
- 维护管理
EOF

# 创建8.3.4Prisma文件
cat > "$BASE_DIR/第8章-数据库集成/8.3-ORM与ODM/8.3.4-Prisma.md" << 'EOF'
---
title: Prisma
icon: nodejs-prisma
order: 4
---

# Prisma

## 基础配置
- 安装设置
- Schema定义
- 客户端生成
- 迁移管理
- 数据建模

## 核心功能
- CRUD操作
- 查询API
- 关系处理
- 事务支持
- 类型安全

## 高级特性
- 中间件
- 扩展API
- 原生查询
- 多数据库
- 性能监控

## 最佳实践
- Schema设计
- 查询优化
- 关系处理
- 性能调优
- 维护管理
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建8.4数据库连接池目录
mkdir -p "$BASE_DIR/第8章-数据库集成/8.4-数据库连接池"

# 创建8.4数据库连接池README文件
cat > "$BASE_DIR/第8章-数据库集成/8.4-数据库连接池/README.md" << 'EOF'
---
title: 数据库连接池
icon: nodejs-connection-pool
order: 4
---

# 数据库连接池

本节介绍数据库连接池的配置和管理。
EOF

# 创建8.4.1连接池配置文件
cat > "$BASE_DIR/第8章-数据库集成/8.4-数据库连接池/8.4.1-连接池配置.md" << 'EOF'
---
title: 连接池配置
icon: nodejs-pool-config
order: 1
---

# 连接池配置

## 基本配置
- 池大小设置
- 超时设置
- 重试策略
- 心跳检测
- 日志配置

## 性能参数
- 最小连接数
- 最大连接数
- 空闲超时
- 连接生命周期
- 获取超时

## 高级特性
- 连接验证
- 自动重连
- 负载均衡
- 故障转移
- 监控统计

## 最佳实践
- 参数优化
- 性能调优
- 监控告警
- 故障处理
- 维护管理
EOF

# 创建8.4.2连接管理文件
cat > "$BASE_DIR/第8章-数据库集成/8.4-数据库连接池/8.4.2-连接管理.md" << 'EOF'
---
title: 连接管理
icon: nodejs-connection-management
order: 2
---

# 连接管理

## 基本操作
- 连接获取
- 连接释放
- 连接复用
- 连接验证
- 连接监控

## 管理策略
- 动态扩缩
- 负载均衡
- 故障检测
- 自动恢复
- 资源回收

## 高级特性
- 连接代理
- 连接拦截
- 连接包装
- 连接追踪
- 性能统计

## 最佳实践
- 管理策略
- 监控告警
- 性能优化
- 故障处理
- 维护更新
EOF

# 创建8.5事务处理目录
mkdir -p "$BASE_DIR/第8章-数据库集成/8.5-事务处理"

# 创建8.5事务处理README文件
cat > "$BASE_DIR/第8章-数据库集成/8.5-事务处理/README.md" << 'EOF'
---
title: 事务处理
icon: nodejs-transaction
order: 5
---

# 事务处理

本节介绍数据库事务处理的原理和实现。
EOF

# 创建8.5.1ACID原则文件
cat > "$BASE_DIR/第8章-数据库集成/8.5-事务处理/8.5.1-ACID原则.md" << 'EOF'
---
title: ACID原则
icon: nodejs-acid
order: 1
---

# ACID原则

## 原子性
- 事务定义
- 原子操作
- 回滚机制
- 恢复策略
- 日志记录

## 一致性
- 数据完整性
- 约束检查
- 状态转换
- 验证规则
- 错误处理

## 隔离性
- 隔离级别
- 并发控制
- 锁机制
- 死锁处理
- 性能影响

## 持久性
- 持久化策略
- 日志机制
- 备份恢复
- 故障处理
- 数据安全
EOF

# 创建8.5.2事务实现文件
cat > "$BASE_DIR/第8章-数据库集成/8.5-事务处理/8.5.2-事务实现.md" << 'EOF'
---
title: 事务实现
icon: nodejs-transaction-impl
order: 2
---

# 事务实现

## 基本实现
- 事务开始
- 提交回滚
- 保存点
- 错误处理
- 日志记录

## 事务管理
- 事务边界
- 事务传播
- 事务嵌套
- 事务超时
- 事务隔离

## 高级特性
- 分布式事务
- 补偿事务
- 长事务处理
- 事务监控
- 性能优化

## 最佳实践
- 设计模式
- 错误处理
- 性能调优
- 监控告警
- 维护管理
EOF

# 创建8.5.3分布式事务文件
cat > "$BASE_DIR/第8章-数据库集成/8.5-事务处理/8.5.3-分布式事务.md" << 'EOF'
---
title: 分布式事务
icon: nodejs-distributed-transaction
order: 3
---

# 分布式事务

## 基本概念
- CAP理论
- BASE理论
- 一致性模型
- 分布式协议
- 事务模型

## 实现方式
- 两阶段提交
- 三阶段提交
- TCC模式
- SAGA模式
- 最终一致性

## 高级特性
- 事务协调
- 故障恢复
- 并发控制
- 性能优化
- 监控管理

## 最佳实践
- 方案选择
- 错误处理
- 性能调优
- 监控告警
- 维护管理
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建8.6数据库迁移目录
mkdir -p "$BASE_DIR/第8章-数据库集成/8.6-数据库迁移"

# 创建8.6数据库迁移README文件
cat > "$BASE_DIR/第8章-数据库集成/8.6-数据库迁移/README.md" << 'EOF'
---
title: 数据库迁移
icon: nodejs-migration
order: 6
---

# 数据库迁移

本节介绍数据库迁移的工具和最佳实践。
EOF

# 创建8.6.1迁移工具文件
cat > "$BASE_DIR/第8章-数据库集成/8.6-数据库迁移/8.6.1-迁移工具.md" << 'EOF'
---
title: 迁移工具
icon: nodejs-migration-tools
order: 1
---

# 迁移工具

## 工具选择
- Sequelize CLI
- TypeORM CLI
- Prisma Migrate
- Knex Migrations
- Flyway集成

## 基本功能
- 迁移创建
- 迁移执行
- 迁移回滚
- 状态检查
- 历史记录

## 高级特性
- 自动生成
- 依赖管理
- 并行执行
- 错误处理
- 性能优化

## 最佳实践
- 工具选择
- 迁移策略
- 版本控制
- 测试验证
- 维护管理
EOF

# 创建8.6.2版本控制文件
cat > "$BASE_DIR/第8章-数据库集成/8.6-数据库迁移/8.6.2-版本控制.md" << 'EOF'
---
title: 版本控制
icon: nodejs-version-control
order: 2
---

# 版本控制

## 版本管理
- 版本号规范
- 版本记录
- 版本依赖
- 版本冲突
- 版本回滚

## 控制策略
- 增量更新
- 完整替换
- 分支管理
- 合并策略
- 冲突解决

## 高级特性
- 自动化控制
- 依赖检查
- 版本锁定
- 并发处理
- 监控告警

## 最佳实践
- 版本规划
- 冲突处理
- 测试验证
- 监控管理
- 维护更新
EOF

# 创建8.6.3种子数据文件
cat > "$BASE_DIR/第8章-数据库集成/8.6-数据库迁移/8.6.3-种子数据.md" << 'EOF'
---
title: 种子数据
icon: nodejs-seed-data
order: 3
---

# 种子数据

## 基本概念
- 数据定义
- 数据格式
- 数据依赖
- 数据验证
- 数据清理

## 实现方式
- 脚本导入
- API导入
- 文件导入
- 实时生成
- 批量处理

## 高级特性
- 数据关联
- 数据验证
- 错误处理
- 并发控制
- 性能优化

## 最佳实践
- 数据设计
- 导入策略
- 验证机制
- 性能调优
- 维护管理
EOF

# 创建8.7查询优化目录
mkdir -p "$BASE_DIR/第8章-数据库集成/8.7-查询优化"

# 创建8.7查询优化README文件
cat > "$BASE_DIR/第8章-数据库集成/8.7-查询优化/README.md" << 'EOF'
---
title: 查询优化
icon: nodejs-query-optimization
order: 7
---

# 查询优化

本节介绍数据库查询优化的方法和技巧。
EOF

# 创建8.7.1索引优化文件
cat > "$BASE_DIR/第8章-数据库集成/8.7-查询优化/8.7.1-索引优化.md" << 'EOF'
---
title: 索引优化
icon: nodejs-index-optimization
order: 1
---

# 索引优化

## 索引类型
- 主键索引
- 唯一索引
- 复合索引
- 全文索引
- 部分索引

## 优化策略
- 索引选择
- 索引顺序
- 索引覆盖
- 索引维护
- 索引监控

## 性能分析
- 执行计划
- 索引使用
- 查询成本
- 性能瓶颈
- 优化建议

## 最佳实践
- 索引设计
- 维护策略
- 性能监控
- 优化方案
- 定期评估
EOF

# 创建8.7.2查询分析文件
cat > "$BASE_DIR/第8章-数据库集成/8.7-查询优化/8.7.2-查询分析.md" << 'EOF'
---
title: 查询分析
icon: nodejs-query-analysis
order: 2
---

# 查询分析

## 分析工具
- 执行计划
- 性能分析器
- 查询日志
- 监控工具
- 诊断工具

## 分析方法
- SQL分析
- 性能评估
- 瓶颈识别
- 优化建议
- 效果验证

## 优化技术
- 查询重写
- 参数优化
- 缓存策略
- 并发控制
- 资源管理

## 最佳实践
- 分析流程
- 优化策略
- 监控告警
- 性能基准
- 持续优化
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建8.7.3N+1问题解决文件
cat > "$BASE_DIR/第8章-数据库集成/8.7-查询优化/8.7.3-N+1问题解决.md" << 'EOF'
---
title: N+1问题解决
icon: nodejs-n-plus-one
order: 3
---

# N+1问题解决

## 问题分析
- 问题定义
- 性能影响
- 场景识别
- 检测方法
- 评估标准

## 解决方案
- 预加载
- 批量查询
- 延迟加载
- 缓存策略
- 查询优化

## 实现技术
- JOIN查询
- 子查询优化
- 数据合并
- 关联缓存
- 查询重构

## 最佳实践
- 方案选择
- 性能评估
- 监控告警
- 持续优化
- 维护管理
EOF

# 创建第9章测试与调试目录
mkdir -p "$BASE_DIR/第9章-测试与调试"

# 创建第9章测试与调试README文件
cat > "$BASE_DIR/第9章-测试与调试/README.md" << 'EOF'
---
title: 测试与调试
icon: nodejs-testing
order: 9
---

# 测试与调试

本章介绍Node.js应用的测试和调试方法。
EOF

# 创建9.1单元测试目录
mkdir -p "$BASE_DIR/第9章-测试与调试/9.1-单元测试"

# 创建9.1单元测试README文件
cat > "$BASE_DIR/第9章-测试与调试/9.1-单元测试/README.md" << 'EOF'
---
title: 单元测试
icon: nodejs-unit-test
order: 1
---

# 单元测试

本节介绍Node.js单元测试的框架和方法。
EOF

# 创建9.1.1Jest框架文件
cat > "$BASE_DIR/第9章-测试与调试/9.1-单元测试/9.1.1-Jest框架.md" << 'EOF'
---
title: Jest框架
icon: nodejs-jest
order: 1
---

# Jest框架

## 基础配置
- 安装设置
- 配置文件
- 测试环境
- 测试命令
- 报告生成

## 测试方法
- 测试用例
- 断言方法
- 匹配器
- 钩子函数
- 异步测试

## 高级特性
- 快照测试
- 模拟功能
- 覆盖率统计
- 并行执行
- 性能优化

## 最佳实践
- 测试策略
- 代码组织
- 性能优化
- 持续集成
- 维护管理
EOF

# 创建9.1.2Mocha与Chai文件
cat > "$BASE_DIR/第9章-测试与调试/9.1-单元测试/9.1.2-Mocha与Chai.md" << 'EOF'
---
title: Mocha与Chai
icon: nodejs-mocha-chai
order: 2
---

# Mocha与Chai

## 基础配置
- 环境搭建
- 框架集成
- 测试配置
- 运行设置
- 报告生成

## 测试方法
- BDD风格
- TDD风格
- 断言库
- 测试套件
- 异步测试

## 高级特性
- 钩子函数
- 测试超时
- 测试过滤
- 并行执行
- 插件扩展

## 最佳实践
- 测试组织
- 断言选择
- 性能优化
- 持续集成
- 维护管理
EOF

# 创建9.1.3测试驱动开发文件
cat > "$BASE_DIR/第9章-测试与调试/9.1-单元测试/9.1.3-测试驱动开发.md" << 'EOF'
---
title: 测试驱动开发
icon: nodejs-tdd
order: 3
---

# 测试驱动开发

## 基本原则
- 红绿重构
- 测试先行
- 小步迭代
- 持续重构
- 代码质量

## 实践方法
- 需求分析
- 测试编写
- 代码实现
- 重构优化
- 持续集成

## 开发流程
- 编写测试
- 运行测试
- 编写代码
- 重构代码
- 验证测试

## 最佳实践
- 测试策略
- 代码设计
- 重构技巧
- 团队协作
- 持续改进
EOF

# 创建9.2集成测试目录
mkdir -p "$BASE_DIR/第9章-测试与调试/9.2-集成测试"

# 创建9.2集成测试README文件
cat > "$BASE_DIR/第9章-测试与调试/9.2-集成测试/README.md" << 'EOF'
---
title: 集成测试
icon: nodejs-integration-test
order: 2
---

# 集成测试

本节介绍Node.js应用的集成测试方法和实践。
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建9.2.1API测试文件
cat > "$BASE_DIR/第9章-测试与调试/9.2-集成测试/9.2.1-API测试.md" << 'EOF'
---
title: API测试
icon: nodejs-api-test
order: 1
---

# API测试

## 测试工具
- Supertest
- Postman
- Jest HTTP
- Axios测试
- Newman

## 测试方法
- 请求测试
- 响应验证
- 参数测试
- 错误处理
- 性能测试

## 高级特性
- 认证测试
- 并发测试
- 负载测试
- 安全测试
- 自动化测试

## 最佳实践
- 测试策略
- 用例设计
- 环境管理
- 持续集成
- 报告生成
EOF

# 创建9.2.2数据库测试文件
cat > "$BASE_DIR/第9章-测试与调试/9.2-集成测试/9.2.2-数据库测试.md" << 'EOF'
---
title: 数据库测试
icon: nodejs-db-test
order: 2
---

# 数据库测试

## 测试准备
- 测试数据库
- 数据初始化
- 环境隔离
- 事务管理
- 清理策略

## 测试方法
- CRUD测试
- 事务测试
- 并发测试
- 性能测试
- 迁移测试

## 高级特性
- 数据工厂
- 模拟数据
- 快照测试
- 并行测试
- 性能分析

## 最佳实践
- 数据管理
- 环境控制
- 性能优化
- 持续集成
- 维护更新
EOF

# 创建9.2.3测试环境配置文件
cat > "$BASE_DIR/第9章-测试与调试/9.2-集成测试/9.2.3-测试环境配置.md" << 'EOF'
---
title: 测试环境配置
icon: nodejs-test-env
order: 3
---

# 测试环境配置

## 环境设置
- 开发环境
- 测试环境
- 预生产环境
- 生产环境
- 隔离策略

## 配置管理
- 环境变量
- 配置文件
- 密钥管理
- 依赖控制
- 版本管理

## 工具集成
- CI/CD工具
- 监控工具
- 日志工具
- 分析工具
- 报告工具

## 最佳实践
- 环境隔离
- 配置管理
- 安全控制
- 自动化部署
- 监控告警
EOF

# 创建9.3端到端测试目录
mkdir -p "$BASE_DIR/第9章-测试与调试/9.3-端到端测试"

# 创建9.3端到端测试README文件
cat > "$BASE_DIR/第9章-测试与调试/9.3-端到端测试/README.md" << 'EOF'
---
title: 端到端测试
icon: nodejs-e2e-test
order: 3
---

# 端到端测试

本节介绍Node.js应用的端到端测试方法和工具。
EOF

# 创建9.3.1Cypress文件
cat > "$BASE_DIR/第9章-测试与调试/9.3-端到端测试/9.3.1-Cypress.md" << 'EOF'
---
title: Cypress
icon: nodejs-cypress
order: 1
---

# Cypress

## 基础配置
- 安装设置
- 项目结构
- 配置文件
- 命令行工具
- 插件系统

## 测试方法
- 元素选择
- 操作模拟
- 断言验证
- 等待策略
- 调试工具

## 高级特性
- 自定义命令
- 网络请求
- 视觉测试
- 并行执行
- 报告生成

## 最佳实践
- 测试组织
- 页面对象
- 数据管理
- 持续集成
- 维护更新
EOF

# 创建9.3.2Puppeteer文件
cat > "$BASE_DIR/第9章-测试与调试/9.3-端到端测试/9.3.2-Puppeteer.md" << 'EOF'
---
title: Puppeteer
icon: nodejs-puppeteer
order: 2
---

# Puppeteer

## 基础配置
- 安装设置
- 浏览器控制
- 页面操作
- 事件处理
- 性能优化

## 测试方法
- 页面导航
- 元素操作
- 截图功能
- PDF生成
- 网络监控

## 高级特性
- 自动化操作
- 性能分析
- 并发控制
- 资源管理
- 错误处理

## 最佳实践
- 测试设计
- 资源管理
- 性能优化
- 错误处理
- 维护更新
EOF

# 创建9.3.3测试场景设计文件
cat > "$BASE_DIR/第9章-测试与调试/9.3-端到端测试/9.3.3-测试场景设计.md" << 'EOF'
---
title: 测试场景设计
icon: nodejs-test-scenario
order: 3
---

# 测试场景设计

## 场景分析
- 用户流程
- 业务场景
- 异常场景
- 边界条件
- 性能要求

## 设计方法
- 场景分解
- 测试用例
- 数据准备
- 验证策略
- 覆盖分析

## 执行策略
- 优先级排序
- 依赖管理
- 并行执行
- 失败处理
- 报告生成

## 最佳实践
- 场景规划
- 用例管理
- 数据控制
- 持续优化
- 维护更新
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建9.4测试覆盖率目录
mkdir -p "$BASE_DIR/第9章-测试与调试/9.4-测试覆盖率"

# 创建9.4测试覆盖率README文件
cat > "$BASE_DIR/第9章-测试与调试/9.4-测试覆盖率/README.md" << 'EOF'
---
title: 测试覆盖率
icon: nodejs-coverage
order: 4
---

# 测试覆盖率

本节介绍测试覆盖率的工具和管理方法。
EOF

# 创建9.4.1覆盖率工具文件
cat > "$BASE_DIR/第9章-测试与调试/9.4-测试覆盖率/9.4.1-覆盖率工具.md" << 'EOF'
---
title: 覆盖率工具
icon: nodejs-coverage-tools
order: 1
---

# 覆盖率工具

## 工具选择
- Istanbul
- Jest Coverage
- NYC
- V8 Coverage
- SonarQube

## 基本功能
- 代码检测
- 数据收集
- 报告生成
- 结果分析
- 趋势跟踪

## 高级特性
- 增量覆盖
- 分支覆盖
- 函数覆盖
- 语句覆盖
- 路径覆盖

## 最佳实践
- 工具配置
- 阈值设置
- 报告管理
- 持续集成
- 质量控制
EOF

# 创建9.4.2覆盖率报告文件
cat > "$BASE_DIR/第9章-测试与调试/9.4-测试覆盖率/9.4.2-覆盖率报告.md" << 'EOF'
---
title: 覆盖率报告
icon: nodejs-coverage-report
order: 2
---

# 覆盖率报告

## 报告类型
- HTML报告
- XML报告
- JSON报告
- 控制台报告
- 自定义报告

## 报告内容
- 总体覆盖
- 文件覆盖
- 函数覆盖
- 分支覆盖
- 行覆盖

## 分析方法
- 数据可视化
- 趋势分析
- 对比分析
- 问题定位
- 改进建议

## 最佳实践
- 报告生成
- 数据分析
- 结果展示
- 持续改进
- 团队共享
EOF

# 创建9.4.3覆盖率目标文件
cat > "$BASE_DIR/第9章-测试与调试/9.4-测试覆盖率/9.4.3-覆盖率目标.md" << 'EOF'
---
title: 覆盖率目标
icon: nodejs-coverage-goals
order: 3
---

# 覆盖率目标

## 目标设定
- 整体目标
- 模块目标
- 函数目标
- 分支目标
- 时间规划

## 达成策略
- 增量提升
- 重点突破
- 持续改进
- 团队协作
- 质量保证

## 监控管理
- 进度跟踪
- 偏差分析
- 风险控制
- 调整优化
- 结果评估

## 最佳实践
- 目标制定
- 执行监控
- 结果评估
- 持续改进
- 团队激励
EOF

# 创建9.5模拟与存根目录
mkdir -p "$BASE_DIR/第9章-测试与调试/9.5-模拟与存根"

# 创建9.5模拟与存根README文件
cat > "$BASE_DIR/第9章-测试与调试/9.5-模拟与存根/README.md" << 'EOF'
---
title: 模拟与存根
icon: nodejs-mock-stub
order: 5
---

# 模拟与存根

本节介绍测试中的模拟和存根技术。
EOF

# 创建9.5.1Sinon.js文件
cat > "$BASE_DIR/第9章-测试与调试/9.5-模拟与存根/9.5.1-Sinon.js.md" << 'EOF'
---
title: Sinon.js
icon: nodejs-sinon
order: 1
---

# Sinon.js

## 基础功能
- Spy功能
- Stub功能
- Mock对象
- 时间控制
- 断言支持

## 使用方法
- 函数监视
- 行为替换
- 状态验证
- 交互验证
- 时间模拟

## 高级特性
- 回调控制
- 异步测试
- 事件模拟
- 网络请求
- 定时器

## 最佳实践
- 场景选择
- 代码组织
- 测试隔离
- 性能优化
- 维护管理
EOF

# 创建9.5.2模拟外部依赖文件
cat > "$BASE_DIR/第9章-测试与调试/9.5-模拟与存根/9.5.2-模拟外部依赖.md" << 'EOF'
---
title: 模拟外部依赖
icon: nodejs-mock-dependencies
order: 2
---

# 模拟外部依赖

## 依赖类型
- 数据库
- 外部API
- 文件系统
- 网络服务
- 第三方模块

## 模拟方法
- 接口模拟
- 数据模拟
- 行为模拟
- 错误模拟
- 性能模拟

## 实现技术
- 依赖注入
- 模块替换
- 代理模式
- 适配器模式
- 工厂模式

## 最佳实践
- 依赖管理
- 测试隔离
- 性能优化
- 维护更新
- 文档管理
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建9.5.3时间与定时器模拟文件
cat > "$BASE_DIR/第9章-测试与调试/9.5-模拟与存根/9.5.3-时间与定时器模拟.md" << 'EOF'
---
title: 时间与定时器模拟
icon: nodejs-time-mock
order: 3
---

# 时间与定时器模拟

## 时间模拟
- 系统时间
- 时区处理
- 日期操作
- 时间戳
- 计时器

## 定时器模拟
- setTimeout
- setInterval
- setImmediate
- process.nextTick
- 定时器管理

## 高级特性
- 时间旅行
- 时间加速
- 时间暂停
- 时间重置
- 时间同步

## 最佳实践
- 场景设计
- 时间控制
- 测试隔离
- 性能优化
- 维护管理
EOF

# 创建9.6调试技术目录
mkdir -p "$BASE_DIR/第9章-测试与调试/9.6-调试技术"

# 创建9.6调试技术README文件
cat > "$BASE_DIR/第9章-测试与调试/9.6-调试技术/README.md" << 'EOF'
---
title: 调试技术
icon: nodejs-debug
order: 6
---

# 调试技术

本节介绍Node.js应用的调试技术和工具。
EOF

# 创建9.6.1控制台调试文件
cat > "$BASE_DIR/第9章-测试与调试/9.6-调试技术/9.6.1-控制台调试.md" << 'EOF'
---
title: 控制台调试
icon: nodejs-console-debug
order: 1
---

# 控制台调试

## 基本方法
- console.log
- console.error
- console.warn
- console.info
- console.debug

## 高级功能
- 格式化输出
- 分组显示
- 表格显示
- 性能计时
- 堆栈跟踪

## 调试工具
- 断点设置
- 变量监视
- 调用栈
- 条件断点
- 日志过滤

## 最佳实践
- 日志级别
- 格式规范
- 性能考虑
- 安全处理
- 环境配置
EOF

# 创建9.6.2调试器使用文件
cat > "$BASE_DIR/第9章-测试与调试/9.6-调试技术/9.6.2-调试器使用.md" << 'EOF'
---
title: 调试器使用
icon: nodejs-debugger
order: 2
---

# 调试器使用

## 调试工具
- Node调试器
- VSCode调试
- Chrome DevTools
- WebStorm调试
- 命令行调试

## 基本功能
- 断点管理
- 单步执行
- 变量查看
- 调用栈
- 表达式求值

## 高级特性
- 条件断点
- 日志断点
- 远程调试
- 性能分析
- 内存分析

## 最佳实践
- 工具选择
- 调试策略
- 效率提升
- 问题定位
- 团队协作
EOF

# 创建9.6.3性能分析文件
cat > "$BASE_DIR/第9章-测试与调试/9.6-调试技术/9.6.3-性能分析.md" << 'EOF'
---
title: 性能分析
icon: nodejs-performance
order: 3
---

# 性能分析

## 分析工具
- Node.js Profiler
- Chrome DevTools
- Clinic.js
- Flame Graphs
- 自定义工具

## 分析方法
- CPU分析
- 内存分析
- I/O分析
- 网络分析
- 负载测试

## 优化技术
- 代码优化
- 内存管理
- 并发控制
- 缓存策略
- 资源管理

## 最佳实践
- 性能基准
- 监控指标
- 优化策略
- 持续改进
- 文档记录
EOF

# 创建9.6.4内存泄漏检测文件
cat > "$BASE_DIR/第9章-测试与调试/9.6-调试技术/9.6.4-内存泄漏检测.md" << 'EOF'
---
title: 内存泄漏检测
icon: nodejs-memory-leak
order: 4
---

# 内存泄漏检测

## 检测工具
- Heap Snapshot
- Memory Timeline
- Node Inspector
- Chrome DevTools
- 自定义工具

## 检测方法
- 堆分析
- 对象跟踪
- 引用检测
- 内存快照
- 差异比较

## 解决方案
- 内存回收
- 引用释放
- 缓存优化
- 资源管理
- 代码重构

## 最佳实践
- 预防措施
- 监控告警
- 定期检查
- 问题修复
- 文档记录
EOF

# 创建9.7日志管理目录
mkdir -p "$BASE_DIR/第9章-测试与调试/9.7-日志管理"

# 创建9.7日志管理README文件
cat > "$BASE_DIR/第9章-测试与调试/9.7-日志管理/README.md" << 'EOF'
---
title: 日志管理
icon: nodejs-logging
order: 7
---

# 日志管理

本节介绍Node.js应用的日志管理方法和最佳实践。
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建9.7.1日志级别文件
cat > "$BASE_DIR/第9章-测试与调试/9.7-日志管理/9.7.1-日志级别.md" << 'EOF'
---
title: 日志级别
icon: nodejs-log-level
order: 1
---

# 日志级别

## 级别定义
- ERROR级别
- WARN级别
- INFO级别
- DEBUG级别
- TRACE级别

## 使用场景
- 错误记录
- 警告信息
- 业务日志
- 调试信息
- 跟踪详情

## 配置管理
- 环境配置
- 动态调整
- 过滤规则
- 输出格式
- 存储策略

## 最佳实践
- 级别选择
- 信息完整性
- 性能影响
- 安全考虑
- 维护管理
EOF

# 创建9.7.2日志框架文件
cat > "$BASE_DIR/第9章-测试与调试/9.7-日志管理/9.7.2-日志框架.md" << 'EOF'
---
title: 日志框架
icon: nodejs-log-framework
order: 2
---

# 日志框架

## 框架选择
- Winston
- Bunyan
- Pino
- Morgan
- Log4js

## 基本功能
- 日志记录
- 级别控制
- 格式化
- 传输配置
- 错误处理

## 高级特性
- 自定义格式
- 多目标输出
- 异步处理
- 性能优化
- 扩展插件

## 最佳实践
- 框架选择
- 配置优化
- 性能调优
- 维护管理
- 监控告警
EOF

# 创建9.7.3日志轮转文件
cat > "$BASE_DIR/第9章-测试与调试/9.7-日志管理/9.7.3-日志轮转.md" << 'EOF'
---
title: 日志轮转
icon: nodejs-log-rotation
order: 3
---

# 日志轮转

## 轮转策略
- 时间轮转
- 大小轮转
- 数量轮转
- 混合策略
- 自定义规则

## 配置选项
- 文件大小
- 保留时间
- 压缩选项
- 命名规则
- 存储路径

## 实现方式
- 自动轮转
- 手动触发
- 定时任务
- 监控触发
- 错误处理

## 最佳实践
- 策略选择
- 空间管理
- 性能优化
- 备份策略
- 清理机制
EOF

# 创建9.7.4集中式日志文件
cat > "$BASE_DIR/第9章-测试与调试/9.7-日志管理/9.7.4-集中式日志.md" << 'EOF'
---
title: 集中式日志
icon: nodejs-centralized-logging
order: 4
---

# 集中式日志

## 系统架构
- 收集器
- 处理器
- 存储系统
- 查询接口
- 可视化

## 实现方案
- ELK Stack
- Graylog
- Splunk
- Fluentd
- 自建系统

## 功能特性
- 实时收集
- 过滤分析
- 检索查询
- 告警通知
- 报表统计

## 最佳实践
- 架构设计
- 性能优化
- 安全控制
- 成本控制
- 运维管理
EOF

# 创建9.8错误监控目录
mkdir -p "$BASE_DIR/第9章-测试与调试/9.8-错误监控"

# 创建9.8错误监控README文件
cat > "$BASE_DIR/第9章-测试与调试/9.8-错误监控/README.md" << 'EOF'
---
title: 错误监控
icon: nodejs-error-monitoring
order: 8
---

# 错误监控

本节介绍Node.js应用的错误监控方法和工具。
EOF

# 创建9.8.1错误捕获文件
cat > "$BASE_DIR/第9章-测试与调试/9.8-错误监控/9.8.1-错误捕获.md" << 'EOF'
---
title: 错误捕获
icon: nodejs-error-catching
order: 1
---

# 错误捕获

## 捕获方式
- try/catch
- Promise错误
- 事件错误
- 未捕获异常
- 系统错误

## 处理策略
- 错误分类
- 错误转换
- 错误恢复
- 错误报告
- 错误通知

## 高级特性
- 错误堆栈
- 错误上下文
- 错误聚合
- 错误过滤
- 错误分析

## 最佳实践
- 捕获策略
- 处理流程
- 监控告警
- 分析改进
- 文档记录
EOF

# 创建9.8.2监控工具文件
cat > "$BASE_DIR/第9章-测试与调试/9.8-错误监控/9.8.2-监控工具.md" << 'EOF'
---
title: 监控工具
icon: nodejs-monitoring-tools
order: 2
---

# 监控工具

## 工具选择
- Sentry
- New Relic
- PM2
- Datadog
- Prometheus

## 监控指标
- 错误率
- 响应时间
- 资源使用
- 业务指标
- 系统状态

## 告警机制
- 阈值设置
- 告警级别
- 通知方式
- 升级策略
- 处理流程

## 最佳实践
- 工具选择
- 指标定义
- 告警配置
- 响应流程
- 持续优化
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建9.8.3告警系统文件
cat > "$BASE_DIR/第9章-测试与调试/9.8-错误监控/9.8.3-告警系统.md" << 'EOF'
---
title: 告警系统
icon: nodejs-alert-system
order: 3
---

# 告警系统

## 告警类型
- 错误告警
- 性能告警
- 业务告警
- 安全告警
- 系统告警

## 告警配置
- 阈值设置
- 触发条件
- 告警级别
- 通知方式
- 升级策略

## 处理流程
- 告警触发
- 信息收集
- 问题分析
- 处理响应
- 结果反馈

## 最佳实践
- 告警策略
- 响应机制
- 持续优化
- 团队协作
- 文档管理
EOF

# 创建第10章Node.js性能优化目录
mkdir -p "$BASE_DIR/第10章-Node.js性能优化"

# 创建第10章Node.js性能优化README文件
cat > "$BASE_DIR/第10章-Node.js性能优化/README.md" << 'EOF'
---
title: Node.js性能优化
icon: nodejs-performance
order: 10
---

# Node.js性能优化

本章介绍Node.js应用的性能优化方法和最佳实践。
EOF

# 创建10.1性能指标文件
cat > "$BASE_DIR/第10章-Node.js性能优化/10.1-性能指标.md" << 'EOF'
---
title: 性能指标
icon: nodejs-metrics
order: 1
---

# 性能指标

## 关键指标
- 响应时间
- 吞吐量
- 并发数
- 资源利用
- 错误率

## 监控方法
- 实时监控
- 性能分析
- 负载测试
- 压力测试
- 基准测试

## 数据分析
- 趋势分析
- 瓶颈识别
- 性能评估
- 优化建议
- 报告生成

## 最佳实践
- 指标选择
- 监控策略
- 分析方法
- 持续改进
- 文档记录
EOF

# 创建10.2代码优化文件
cat > "$BASE_DIR/第10章-Node.js性能优化/10.2-代码优化.md" << 'EOF'
---
title: 代码优化
icon: nodejs-code-optimization
order: 2
---

# 代码优化

## 优化方向
- 算法优化
- 数据结构
- 异步处理
- 缓存策略
- 代码重构

## 实现技术
- 异步并发
- 事件循环
- 内存管理
- 垃圾回收
- 模块加载

## 工具支持
- 性能分析
- 代码检查
- 测试工具
- 监控工具
- 调试工具

## 最佳实践
- 编码规范
- 性能测试
- 持续优化
- 文档管理
- 团队协作
EOF

# 创建10.3内存管理文件
cat > "$BASE_DIR/第10章-Node.js性能优化/10.3-内存管理.md" << 'EOF'
---
title: 内存管理
icon: nodejs-memory
order: 3
---

# 内存管理

## 内存模型
- 堆内存
- 栈内存
- 垃圾回收
- 内存限制
- 内存泄漏

## 优化策略
- 内存分配
- 对象池
- 缓存控制
- 流处理
- 内存监控

## 问题处理
- 泄漏检测
- 内存分析
- 性能优化
- 故障排除
- 预防措施

## 最佳实践
- 资源管理
- 监控告警
- 优化方案
- 持续改进
- 文档记录
EOF

# 创建10.4CPU密集型任务优化文件
cat > "$BASE_DIR/第10章-Node.js性能优化/10.4-CPU密集型任务优化.md" << 'EOF'
---
title: CPU密集型任务优化
icon: nodejs-cpu-optimization
order: 4
---

# CPU密集型任务优化

## 优化策略
- 多进程
- 工作线程
- 任务分解
- 算法优化
- 缓存利用

## 实现方法
- Worker Threads
- Child Process
- Cluster
- 任务队列
- 负载均衡

## 性能监控
- CPU使用率
- 进程状态
- 响应时间
- 吞吐量
- 资源消耗

## 最佳实践
- 架构设计
- 任务调度
- 资源控制
- 监控告警
- 维护管理
EOF

# 创建10.5I/O密集型任务优化文件
cat > "$BASE_DIR/第10章-Node.js性能优化/10.5-IO密集型任务优化.md" << 'EOF'
---
title: I/O密集型任务优化
icon: nodejs-io-optimization
order: 5
---

# I/O密集型任务优化

## 优化策略
- 异步I/O
- 并发控制
- 缓存策略
- 批量处理
- 流式处理

## 实现方法
- Promise
- async/await
- Stream
- Buffer
- 连接池

## 性能监控
- I/O延迟
- 并发数
- 响应时间
- 吞吐量
- 资源使用

## 最佳实践
- 架构设计
- 并发控制
- 资源管理
- 监控告警
- 维护优化
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建10.6缓存策略文件
cat > "$BASE_DIR/第10章-Node.js性能优化/10.6-缓存策略.md" << 'EOF'
---
title: 缓存策略
icon: nodejs-cache
order: 6
---

# 缓存策略

## 缓存类型
- 内存缓存
- Redis缓存
- 文件缓存
- CDN缓存
- 浏览器缓存

## 缓存策略
- LRU策略
- TTL机制
- 预加载
- 失效更新
- 分布式缓存

## 实现方法
- 数据结构
- 存储机制
- 更新策略
- 一致性控制
- 并发处理

## 最佳实践
- 策略选择
- 性能优化
- 监控管理
- 故障处理
- 维护更新
EOF

# 创建10.7负载均衡文件
cat > "$BASE_DIR/第10章-Node.js性能优化/10.7-负载均衡.md" << 'EOF'
---
title: 负载均衡
icon: nodejs-load-balancing
order: 7
---

# 负载均衡

## 均衡策略
- 轮询算法
- 权重轮询
- 最小连接
- IP哈希
- 响应时间

## 实现方式
- Nginx配置
- Node.js集群
- 云服务
- 硬件负载
- 软件负载

## 高级特性
- 会话保持
- 健康检查
- 故障转移
- 动态配置
- 监控告警

## 最佳实践
- 策略选择
- 配置优化
- 监控管理
- 故障处理
- 维护更新
EOF

# 创建10.8集群与扩展文件
cat > "$BASE_DIR/第10章-Node.js性能优化/10.8-集群与扩展.md" << 'EOF'
---
title: 集群与扩展
icon: nodejs-cluster
order: 8
---

# 集群与扩展

## 集群架构
- 主从模式
- 对等模式
- 分片模式
- 微服务
- 容器化

## 扩展方式
- 垂直扩展
- 水平扩展
- 功能扩展
- 数据扩展
- 服务扩展

## 实现技术
- Cluster模块
- PM2集群
- Docker容器
- Kubernetes
- 云平台

## 最佳实践
- 架构设计
- 部署策略
- 监控管理
- 故障处理
- 维护更新
EOF

# 创建10.9性能测试与基准测试文件
cat > "$BASE_DIR/第10章-Node.js性能优化/10.9-性能测试与基准测试.md" << 'EOF'
---
title: 性能测试与基准测试
icon: nodejs-performance-test
order: 9
---

# 性能测试与基准测试

## 测试类型
- 负载测试
- 压力测试
- 并发测试
- 持久测试
- 基准测试

## 测试工具
- Apache Bench
- Artillery
- Autocannon
- JMeter
- Wrk

## 测试指标
- 响应时间
- 吞吐量
- 并发数
- 错误率
- 资源使用

## 最佳实践
- 测试规划
- 环境准备
- 数据分析
- 报告生成
- 持续优化
EOF

# 创建第11章Node.js部署目录
mkdir -p "$BASE_DIR/第11章-Node.js部署"

# 创建第11章Node.js部署README文件
cat > "$BASE_DIR/第11章-Node.js部署/README.md" << 'EOF'
---
title: Node.js部署
icon: nodejs-deployment
order: 11
---

# Node.js部署

本章介绍Node.js应用的部署方法和最佳实践。
EOF

# 创建11.1环境配置文件
cat > "$BASE_DIR/第11章-Node.js部署/11.1-环境配置.md" << 'EOF'
---
title: 环境配置
icon: nodejs-environment
order: 1
---

# 环境配置

## 环境准备
- 系统要求
- Node.js安装
- 依赖管理
- 环境变量
- 配置文件

## 配置管理
- 开发环境
- 测试环境
- 生产环境
- 配置分离
- 安全控制

## 工具支持
- 配置工具
- 部署工具
- 监控工具
- 日志工具
- 安全工具

## 最佳实践
- 环境隔离
- 配置管理
- 安全加固
- 监控告警
- 维护更新
EOF

# 创建11.2进程管理文件
cat > "$BASE_DIR/第11章-Node.js部署/11.2-进程管理.md" << 'EOF'
---
title: 进程管理
icon: nodejs-process
order: 2
---

# 进程管理

## 管理工具
- PM2
- Forever
- Nodemon
- Supervisor
- SystemD

## 基本功能
- 进程启动
- 进程监控
- 自动重启
- 负载均衡
- 日志管理

## 高级特性
- 集群管理
- 性能监控
- 远程部署
- 版本控制
- 环境管理

## 最佳实践
- 工具选择
- 配置优化
- 监控告警
- 故障处理
- 维护更新
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建11.3容器化部署文件
cat > "$BASE_DIR/第11章-Node.js部署/11.3-容器化部署.md" << 'EOF'
---
title: 容器化部署
icon: nodejs-docker
order: 3
---

# 容器化部署

## Docker基础
- Dockerfile编写
- 镜像构建
- 容器运行
- 网络配置
- 数据卷管理

## 容器编排
- Docker Compose
- Kubernetes
- Swarm
- 服务发现
- 负载均衡

## 最佳实践
- 镜像优化
- 安全加固
- 监控管理
- 日志收集
- 性能调优

## 运维管理
- 部署策略
- 扩缩容
- 故障处理
- 版本控制
- 资源管理
EOF

# 创建11.4CI/CD流程文件
cat > "$BASE_DIR/第11章-Node.js部署/11.4-CI_CD流程.md" << 'EOF'
---
title: CI/CD流程
icon: nodejs-cicd
order: 4
---

# CI/CD流程

## 持续集成
- 代码管理
- 自动构建
- 单元测试
- 代码分析
- 质量控制

## 持续部署
- 环境管理
- 自动部署
- 版本控制
- 回滚机制
- 监控告警

## 工具链
- Jenkins
- GitLab CI
- GitHub Actions
- Travis CI
- Circle CI

## 最佳实践
- 流程设计
- 自动化测试
- 环境管理
- 监控反馈
- 持续优化
EOF

# 创建11.5云平台部署文件
cat > "$BASE_DIR/第11章-Node.js部署/11.5-云平台部署.md" << 'EOF'
---
title: 云平台部署
icon: nodejs-cloud
order: 5
---

# 云平台部署

## 云服务选择
- AWS
- Azure
- Google Cloud
- 阿里云
- 腾讯云

## 部署方案
- Serverless
- 容器服务
- 虚拟机
- PaaS平台
- 混合云

## 服务集成
- 数据库服务
- 缓存服务
- 消息队列
- 对象存储
- CDN服务

## 最佳实践
- 架构设计
- 成本控制
- 安全管理
- 监控运维
- 灾备方案
EOF

# 创建11.6监控与日志文件
cat > "$BASE_DIR/第11章-Node.js部署/11.6-监控与日志.md" << 'EOF'
---
title: 监控与日志
icon: nodejs-monitoring
order: 6
---

# 监控与日志

## 监控系统
- 性能监控
- 错误监控
- 业务监控
- 资源监控
- 安全监控

## 日志管理
- 日志收集
- 日志分析
- 日志存储
- 日志查询
- 告警设置

## 工具选择
- ELK Stack
- Prometheus
- Grafana
- New Relic
- Datadog

## 最佳实践
- 监控策略
- 日志规范
- 告警机制
- 分析方法
- 持续优化
EOF

# 创建11.7灾备与恢复文件
cat > "$BASE_DIR/第11章-Node.js部署/11.7-灾备与恢复.md" << 'EOF'
---
title: 灾备与恢复
icon: nodejs-disaster-recovery
order: 7
---

# 灾备与恢复

## 灾备策略
- 数据备份
- 系统备份
- 异地容灾
- 故障转移
- 恢复演练

## 恢复方案
- 快速恢复
- 数据恢复
- 系统恢复
- 服务恢复
- 业务连续性

## 实施管理
- 预案制定
- 定期演练
- 应急响应
- 评估改进
- 文档管理

## 最佳实践
- 方案设计
- 技术选型
- 流程优化
- 团队协作
- 持续改进
EOF

# 创建第12章Node.js高级主题目录
mkdir -p "$BASE_DIR/第12章-Node.js高级主题"

# 创建第12章Node.js高级主题README文件
cat > "$BASE_DIR/第12章-Node.js高级主题/README.md" << 'EOF'
---
title: Node.js高级主题
icon: nodejs-advanced
order: 12
---

# Node.js高级主题

本章介绍Node.js的高级开发主题和技术。
EOF

# 创建12.1C++插件开发文件
cat > "$BASE_DIR/第12章-Node.js高级主题/12.1-C++插件开发.md" << 'EOF'
---
title: C++插件开发
icon: nodejs-cpp
order: 1
---

# C++插件开发

## 基础知识
- V8引擎
- Node API
- C++基础
- 编译原理
- 内存管理

## 开发流程
- 环境搭建
- 接口设计
- 代码实现
- 编译构建
- 测试验证

## 性能优化
- 代码优化
- 内存优化
- 并发处理
- 异步调用
- 资源管理

## 最佳实践
- 架构设计
- 接口规范
- 错误处理
- 性能调优
- 文档管理
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建12.2Worker线程文件
cat > "$BASE_DIR/第12章-Node.js高级主题/12.2-Worker线程.md" << 'EOF'
---
title: Worker线程
icon: nodejs-worker
order: 2
---

# Worker线程

## 基础概念
- 线程模型
- 线程通信
- 线程池
- 共享内存
- 线程安全

## 实现方法
- 创建线程
- 消息传递
- 数据共享
- 错误处理
- 线程管理

## 应用场景
- CPU密集
- 并行计算
- 任务分发
- 性能优化
- 资源隔离

## 最佳实践
- 架构设计
- 线程控制
- 性能优化
- 错误处理
- 监控管理
EOF

# 创建12.3集群模式文件
cat > "$BASE_DIR/第12章-Node.js高级主题/12.3-集群模式.md" << 'EOF'
---
title: 集群模式
icon: nodejs-cluster
order: 3
---

# 集群模式

## 基础架构
- 主从模式
- 负载均衡
- 进程通信
- 状态共享
- 错误处理

## 实现方法
- Cluster模块
- PM2集群
- 自定义实现
- 进程管理
- 监控告警

## 高级特性
- 零停机重启
- 负载均衡
- 故障转移
- 状态同步
- 性能优化

## 最佳实践
- 架构设计
- 配置优化
- 监控管理
- 故障处理
- 维护更新
EOF

# 创建12.4微服务架构文件
cat > "$BASE_DIR/第12章-Node.js高级主题/12.4-微服务架构.md" << 'EOF'
---
title: 微服务架构
icon: nodejs-microservices
order: 4
---

# 微服务架构

## 架构设计
- 服务拆分
- 服务治理
- 服务发现
- 负载均衡
- 容错处理

## 实现技术
- REST API
- gRPC
- 消息队列
- 服务网关
- 配置中心

## 高级特性
- 服务监控
- 链路追踪
- 熔断降级
- 限流控制
- 安全认证

## 最佳实践
- 架构规范
- 开发流程
- 部署策略
- 监控运维
- 持续优化
EOF

# 创建12.5GraphQL实现文件
cat > "$BASE_DIR/第12章-Node.js高级主题/12.5-GraphQL实现.md" << 'EOF'
---
title: GraphQL实现
icon: nodejs-graphql
order: 5
---

# GraphQL实现

## 基础概念
- Schema定义
- 类型系统
- 查询语言
- 解析器
- 订阅机制

## 实现方法
- Apollo Server
- Express集成
- 数据源
- 中间件
- 缓存策略

## 高级特性
- 数据关联
- 批量查询
- 实时订阅
- 错误处理
- 性能优化

## 最佳实践
- 架构设计
- 接口规范
- 安全控制
- 性能调优
- 维护管理
EOF

# 创建12.6WebAssembly集成文件
cat > "$BASE_DIR/第12章-Node.js高级主题/12.6-WebAssembly集成.md" << 'EOF'
---
title: WebAssembly集成
icon: nodejs-wasm
order: 6
---

# WebAssembly集成

## 基础知识
- Wasm概念
- 内存模型
- 类型系统
- 调用约定
- 性能特性

## 实现方法
- 模块加载
- 函数调用
- 内存管理
- 错误处理
- 性能优化

## 应用场景
- 计算密集
- 图形处理
- 音视频
- 游戏引擎
- 加密算法

## 最佳实践
- 架构设计
- 接口规范
- 性能优化
- 安全控制
- 维护管理
EOF

# 创建第13章Node.jsAI编程目录
mkdir -p "$BASE_DIR/第13章-Node.jsAI编程"

# 创建第13章Node.jsAI编程README文件
cat > "$BASE_DIR/第13章-Node.jsAI编程/README.md" << 'EOF'
---
title: Node.jsAI编程
icon: nodejs-ai
order: 13
---

# Node.jsAI编程

本章介绍Node.js在人工智能领域的应用和实践。
EOF

# 创建13.1AI与Node.js概述文件
cat > "$BASE_DIR/第13章-Node.jsAI编程/13.1-AI与Node.js概述.md" << 'EOF'
---
title: AI与Node.js概述
icon: nodejs-ai-overview
order: 1
---

# AI与Node.js概述

## 基础概念
- AI基础
- 机器学习
- 深度学习
- 神经网络
- 自然语言处理

## 技术栈
- TensorFlow.js
- Brain.js
- Natural
- OpenAI API
- Hugging Face

## 应用场景
- 图像识别
- 语音处理
- 文本分析
- 推荐系统
- 智能对话

## 最佳实践
- 架构设计
- 模型选择
- 性能优化
- 资源管理
- 维护更新
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建13.2机器学习库集成文件
cat > "$BASE_DIR/第13章-Node.jsAI编程/13.2-机器学习库集成.md" << 'EOF'
---
title: 机器学习库集成
icon: nodejs-ml
order: 2
---

# 机器学习库集成

## 常用库
- Brain.js
- ML.js
- Synaptic
- ConvNetJS
- Keras.js

## 基本功能
- 数据预处理
- 模型训练
- 模型评估
- 预测分析
- 模型部署

## 应用场景
- 分类预测
- 回归分析
- 聚类分析
- 异常检测
- 推荐系统

## 最佳实践
- 库选择
- 数据处理
- 模型优化
- 性能调优
- 部署维护
EOF

# 创建13.3自然语言处理文件
cat > "$BASE_DIR/第13章-Node.jsAI编程/13.3-自然语言处理.md" << 'EOF'
---
title: 自然语言处理
icon: nodejs-nlp
order: 3
---

# 自然语言处理

## 基础功能
- 分词处理
- 词性标注
- 实体识别
- 情感分析
- 文本分类

## 工具库
- Natural
- Compromise
- NLP.js
- Stanford NLP
- SpaCy

## 应用场景
- 文本分析
- 机器翻译
- 智能问答
- 文本摘要
- 关键词提取

## 最佳实践
- 模型选择
- 数据处理
- 性能优化
- 准确度提升
- 维护更新
EOF

# 创建13.4图像识别应用文件
cat > "$BASE_DIR/第13章-Node.jsAI编程/13.4-图像识别应用.md" << 'EOF'
---
title: 图像识别应用
icon: nodejs-image-recognition
order: 4
---

# 图像识别应用

## 基础技术
- 图像处理
- 特征提取
- 模式识别
- 深度学习
- 目标检测

## 工具库
- TensorFlow.js
- OpenCV.js
- Sharp
- Jimp
- Canvas

## 应用场景
- 人脸识别
- 物体检测
- 场景分类
- OCR识别
- 图像分割

## 最佳实践
- 模型选择
- 性能优化
- 准确度提升
- 资源管理
- 部署维护
EOF

# 创建13.5AIAPI调用文件
cat > "$BASE_DIR/第13章-Node.jsAI编程/13.5-AIAPI调用.md" << 'EOF'
---
title: AIAPI调用
icon: nodejs-ai-api
order: 5
---

# AIAPI调用

## API服务
- OpenAI API
- Google Cloud AI
- Azure AI
- AWS AI Services
- 百度AI开放平台

## 集成方法
- REST API
- SDK集成
- WebSocket
- 批量处理
- 流式处理

## 应用场景
- 智能对话
- 图像处理
- 语音识别
- 文本分析
- 机器翻译

## 最佳实践
- 接口设计
- 错误处理
- 性能优化
- 成本控制
- 安全管理
EOF

# 创建13.6TensorFlow.js与Node.js文件
cat > "$BASE_DIR/第13章-Node.jsAI编程/13.6-TensorFlow.js与Node.js.md" << 'EOF'
---
title: TensorFlow.js与Node.js
icon: nodejs-tensorflow
order: 6
---

# TensorFlow.js与Node.js

## 基础概念
- 张量运算
- 模型构建
- 模型训练
- 模型部署
- 性能优化

## 实现方法
- 模型定义
- 数据处理
- 训练过程
- 预测应用
- 模型保存

## 应用场景
- 图像识别
- 自然语言处理
- 时序预测
- 推荐系统
- 异常检测

## 最佳实践
- 架构设计
- 性能优化
- 资源管理
- 部署策略
- 维护更新
EOF

# 创建13.7构建智能聊天机器人文件
cat > "$BASE_DIR/第13章-Node.jsAI编程/13.7-构建智能聊天机器人.md" << 'EOF'
---
title: 构建智能聊天机器人
icon: nodejs-chatbot
order: 7
---

# 构建智能聊天机器人

## 基础架构
- 对话管理
- 意图识别
- 实体提取
- 上下文管理
- 响应生成

## 技术实现
- NLP处理
- 对话流程
- 知识库
- 学习能力
- 情感分析

## 集成方案
- 即时通讯
- Web接口
- API服务
- 多平台
- 多语言

## 最佳实践
- 架构设计
- 对话优化
- 性能调优
- 监控管理
- 持续改进
EOF

# 创建13.8AI辅助开发工具文件
cat > "$BASE_DIR/第13章-Node.jsAI编程/13.8-AI辅助开发工具.md" << 'EOF'
---
title: AI辅助开发工具
icon: nodejs-ai-tools
order: 8
---

# AI辅助开发工具

## 工具类型
- 代码生成
- 代码分析
- 测试生成
- 文档生成
- 性能优化

## 实现方法
- API集成
- 模型训练
- 规则引擎
- 智能推荐
- 自动化工具

## 应用场景
- 代码补全
- 错误检测
- 重构建议
- 性能分析
- 安全检查

## 最佳实践
- 工具选择
- 集成策略
- 效果评估
- 持续优化
- 团队协作
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建第14章Node.js最佳实践目录
mkdir -p "$BASE_DIR/第14章-Node.js最佳实践"

# 创建第14章Node.js最佳实践README文件
cat > "$BASE_DIR/第14章-Node.js最佳实践/README.md" << 'EOF'
---
title: Node.js最佳实践
icon: nodejs-best-practices
order: 14
---

# Node.js最佳实践

本章介绍Node.js开发中的最佳实践和规范。
EOF

# 创建14.1项目结构组织文件
cat > "$BASE_DIR/第14章-Node.js最佳实践/14.1-项目结构组织.md" << 'EOF'
---
title: 项目结构组织
icon: nodejs-project-structure
order: 1
---

# 项目结构组织

## 目录结构
- src目录
- test目录
- config目录
- docs目录
- scripts目录

## 模块划分
- 核心模块
- 业务模块
- 工具模块
- 中间件
- 接口层

## 代码组织
- 分层架构
- 模块依赖
- 接口设计
- 数据流向
- 错误处理

## 最佳实践
- 结构规范
- 命名规范
- 依赖管理
- 版本控制
- 文档维护
EOF

# 创建14.2错误处理策略文件
cat > "$BASE_DIR/第14章-Node.js最佳实践/14.2-错误处理策略.md" << 'EOF'
---
title: 错误处理策略
icon: nodejs-error-handling
order: 2
---

# 错误处理策略

## 错误类型
- 运行时错误
- 业务错误
- 网络错误
- 数据库错误
- 第三方错误

## 处理方法
- 同步处理
- 异步处理
- Promise处理
- 全局处理
- 中间件处理

## 错误恢复
- 重试机制
- 降级策略
- 熔断机制
- 日志记录
- 告警通知

## 最佳实践
- 错误分类
- 处理流程
- 监控告警
- 文档记录
- 持续改进
EOF

# 创建14.3日志管理文件
cat > "$BASE_DIR/第14章-Node.js最佳实践/14.3-日志管理.md" << 'EOF'
---
title: 日志管理
icon: nodejs-logging
order: 3
---

# 日志管理

## 日志分类
- 访问日志
- 错误日志
- 业务日志
- 性能日志
- 安全日志

## 日志规范
- 格式规范
- 级别定义
- 存储策略
- 轮转策略
- 清理策略

## 日志工具
- Winston
- Bunyan
- Pino
- Morgan
- Log4js

## 最佳实践
- 工具选择
- 配置管理
- 性能优化
- 安全控制
- 维护更新
EOF

# 创建14.4配置管理文件
cat > "$BASE_DIR/第14章-Node.js最佳实践/14.4-配置管理.md" << 'EOF'
---
title: 配置管理
icon: nodejs-configuration
order: 4
---

# 配置管理

## 配置类型
- 环境配置
- 应用配置
- 数据库配置
- 服务配置
- 安全配置

## 管理方法
- 配置文件
- 环境变量
- 配置中心
- 动态配置
- 加密配置

## 最佳实践
- 分环境配置
- 敏感信息
- 版本控制
- 配置校验
- 更新机制

## 工具支持
- dotenv
- config
- convict
- nconf
- vault
EOF

# 创建14.5代码风格与质量文件
cat > "$BASE_DIR/第14章-Node.js最佳实践/14.5-代码风格与质量.md" << 'EOF'
---
title: 代码风格与质量
icon: nodejs-code-quality
order: 5
---

# 代码风格与质量

## 代码规范
- 命名规范
- 格式规范
- 注释规范
- 文档规范
- 提交规范

## 质量控制
- 代码审查
- 单元测试
- 集成测试
- 性能测试
- 安全测试

## 工具支持
- ESLint
- Prettier
- Jest
- SonarQube
- Husky

## 最佳实践
- 规范执行
- 自动化工具
- 持续集成
- 质量监控
- 团队协作
EOF

# 创建14.6文档生成文件
cat > "$BASE_DIR/第14章-Node.js最佳实践/14.6-文档生成.md" << 'EOF'
---
title: 文档生成
icon: nodejs-documentation
order: 6
---

# 文档生成

## 文档类型
- API文档
- 代码文档
- 使用文档
- 部署文档
- 维护文档

## 生成工具
- JSDoc
- Swagger
- VuePress
- Docusaurus
- GitBook

## 文档规范
- 格式规范
- 内容规范
- 版本管理
- 访问控制
- 更新维护

## 最佳实践
- 工具选择
- 自动生成
- 持续更新
- 团队协作
- 文档管理
EOF
BASE_DIR="c:\project\kphub\src\nodejs"

# 创建14.7版本控制工作流文件
cat > "$BASE_DIR/第14章-Node.js最佳实践/14.7-版本控制工作流.md" << 'EOF'
---
title: 版本控制工作流
icon: nodejs-git-workflow
order: 7
---

# 版本控制工作流

## 分支策略
- 主分支管理
- 开发分支
- 特性分支
- 发布分支
- 修复分支

## 提交规范
- 提交信息
- 代码审查
- 合并策略
- 版本标签
- 变更记录

## 工作流程
- Git Flow
- GitHub Flow
- GitLab Flow
- Trunk Based
- 自定义流程

## 最佳实践
- 分支管理
- 代码审查
- 冲突处理
- 版本发布
- 团队协作
EOF

# 创建14.8持续学习资源文件
cat > "$BASE_DIR/第14章-Node.js最佳实践/14.8-持续学习资源.md" << 'EOF'
---
title: 持续学习资源
icon: nodejs-learning
order: 8
---

# 持续学习资源

## 官方资源
- 官方文档
- API参考
- 示例代码
- 博客文章
- 视频教程

## 社区资源
- 技术论坛
- 开源项目
- 技术博客
- 在线课程
- 技术会议

## 学习路径
- 基础知识
- 进阶技能
- 专业领域
- 最佳实践
- 前沿技术

## 实践建议
- 项目实践
- 源码阅读
- 技术分享
- 问题解决
- 知识总结
EOF

BASE_DIR="c:\project\kphub\src\uni-app"

# 创建第1章基础入门目录
mkdir -p "$BASE_DIR/第1章-基础入门"

# 创建第1章基础入门README文件
cat > "$BASE_DIR/第1章-基础入门/README.md" << 'EOF'
---
title: 基础入门
icon: uni-app-basic
order: 1
---

# 基础入门

本章介绍uni-app的基础知识和入门指南。
EOF

# 创建1.1uni-app简介目录
mkdir -p "$BASE_DIR/第1章-基础入门/1.1-uni-app简介"

# 创建1.1uni-app简介README文件
cat > "$BASE_DIR/第1章-基础入门/1.1-uni-app简介/README.md" << 'EOF'
---
title: uni-app简介
icon: uni-app-intro
order: 1
---

# uni-app简介

本节介绍uni-app的基本概念和发展历程。
EOF

# 创建1.1.1什么是uni-app文件
cat > "$BASE_DIR/第1章-基础入门/1.1-uni-app简介/1.1.1-什么是uni-app.md" << 'EOF'
---
title: 什么是uni-app
icon: uni-app-what
order: 1
---

# 什么是uni-app

## 基本概念
- 跨平台框架
- Vue语法
- 统一API
- 性能优化
- 生态系统

## 技术特点
- 开发效率
- 跨端兼容
- 性能体验
- 组件化
- 工程化

## 应用场景
- 移动应用
- 小程序
- H5应用
- 快应用
- 桌面应用

## 框架优势
- 开发效率
- 维护成本
- 技术生态
- 社区支持
- 企业背书
EOF

# 创建1.1.2uni-app的由来文件
cat > "$BASE_DIR/第1章-基础入门/1.1-uni-app简介/1.1.2-uni-app的由来.md" << 'EOF'
---
title: uni-app的由来
icon: uni-app-history
order: 2
---

# uni-app的由来

## 发展历程
- 背景需求
- 技术演进
- 版本更新
- 生态发展
- 未来规划

## 技术选型
- Vue框架
- 跨端方案
- 编译器
- 运行时
- 工具链

## 解决问题
- 开发效率
- 跨端适配
- 性能优化
- 维护成本
- 技术统一

## 发展方向
- 技术创新
- 生态建设
- 工具完善
- 性能提升
- 场景扩展
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建1.1.3技术架构文件
cat > "$BASE_DIR/第1章-基础入门/1.1-uni-app简介/1.1.3-技术架构.md" << 'EOF'
---
title: 技术架构
icon: uni-app-architecture
order: 3
---

# 技术架构

## 核心架构
- 编译器
- 运行时
- 渲染引擎
- 组件系统
- 跨端能力

## 技术栈
- Vue.js框架
- 条件编译
- 原生能力
- 组件库
- 工具链

## 运行机制
- 编译原理
- 运行时机制
- 渲染流程
- 生命周期
- 通信机制

## 性能优化
- 首屏加载
- 运行性能
- 内存管理
- 渲染优化
- 包体积优化
EOF

# 创建1.1.4优势特点文件
cat > "$BASE_DIR/第1章-基础入门/1.1-uni-app简介/1.1.4-优势特点.md" << 'EOF'
---
title: 优势特点
icon: uni-app-features
order: 4
---

# 优势特点

## 开发效率
- 一套代码
- 多端运行
- 热重载
- 组件化
- 工程化

## 跨端能力
- 移动应用
- 小程序
- H5应用
- 快应用
- 桌面应用

## 生态系统
- 组件市场
- 插件系统
- 模板市场
- 案例分享
- 社区支持

## 技术优势
- 性能体验
- 维护成本
- 学习曲线
- 技术支持
- 更新迭代
EOF

# 创建1.1.5应用场景文件
cat > "$BASE_DIR/第1章-基础入门/1.1-uni-app简介/1.1.5-应用场景.md" << 'EOF'
---
title: 应用场景
icon: uni-app-scenarios
order: 5
---

# 应用场景

## 商业应用
- 电商平台
- 社交应用
- 企业应用
- 工具软件
- 管理系统

## 行业解决方案
- 零售行业
- 教育行业
- 医疗行业
- 金融行业
- 政务服务

## 开发场景
- 快速原型
- 产品迭代
- 跨端开发
- 性能优化
- 团队协作

## 技术集成
- 第三方服务
- 原生能力
- 云服务
- AI能力
- IoT设备
EOF

# 创建1.1.6选型指南文件
cat > "$BASE_DIR/第1章-基础入门/1.1-uni-app简介/1.1.6-选型指南.md" << 'EOF'
---
title: 选型指南
icon: uni-app-selection
order: 6
---

# 选型指南

## 技术评估
- 框架对比
- 性能分析
- 生态评估
- 成本分析
- 风险评估

## 业务考量
- 业务需求
- 用户群体
- 市场定位
- 发展规划
- 投资回报

## 团队因素
- 技术储备
- 学习成本
- 开发效率
- 维护成本
- 人力资源

## 决策建议
- 场景匹配
- 技术路线
- 资源投入
- 风险控制
- 长期规划
EOF

# 创建1.1.7更新日志文件
cat > "$BASE_DIR/第1章-基础入门/1.1-uni-app简介/1.1.7-更新日志.md" << 'EOF'
---
title: 更新日志
icon: uni-app-changelog
order: 7
---

# 更新日志

## 版本历程
- 主要版本
- 特性更新
- 问题修复
- 性能优化
- 安全更新

## 更新内容
- 新增功能
- 改进优化
- 问题修复
- 废弃特性
- 重大变更

## 升级指南
- 版本迁移
- 兼容处理
- 注意事项
- 最佳实践
- 常见问题

## 未来规划
- 路线图
- 特性预览
- 技术演进
- 生态建设
- 发展方向
EOF

# 创建1.2环境搭建目录
mkdir -p "$BASE_DIR/第1章-基础入门/1.2-环境搭建"

# 创建1.2环境搭建README文件
cat > "$BASE_DIR/第1章-基础入门/1.2-环境搭建/README.md" << 'EOF'
---
title: 环境搭建
icon: uni-app-setup
order: 2
---

# 环境搭建

本节介绍uni-app开发环境的搭建和配置。
EOF

# 创建1.2.1开发环境配置文件
cat > "$BASE_DIR/第1章-基础入门/1.2-环境搭建/1.2.1-开发环境配置.md" << 'EOF'
---
title: 开发环境配置
icon: uni-app-env-setup
order: 1
---

# 开发环境配置

## 基础环境
- Node.js
- HBuilderX
- Vue CLI
- 编辑器插件
- 开发工具

## 环境配置
- 系统要求
- 依赖安装
- 环境变量
- 代理设置
- 调试工具

## 项目初始化
- 创建项目
- 目录结构
- 配置文件
- 依赖管理
- 运行调试

## 开发准备
- 编码规范
- 调试方法
- 打包发布
- 版本控制
- 团队协作
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建1.2.2HBuilderX配置文件
cat > "$BASE_DIR/第1章-基础入门/1.2-环境搭建/1.2.2-HBuilderX配置.md" << 'EOF'
---
title: HBuilderX配置
icon: uni-app-hbuilderx
order: 2
---

# HBuilderX配置

## 基础配置
- 安装步骤
- 界面设置
- 快捷键
- 编码设置
- 主题选择

## 开发配置
- 编译设置
- 调试配置
- 真机运行
- 模拟器
- 性能优化

## 插件管理
- 常用插件
- 安装方法
- 配置说明
- 使用技巧
- 问题排查

## 工具功能
- 代码提示
- 格式化
- 代码块
- 版本控制
- 发布工具
EOF

# 创建1.2.3CLI创建项目文件
cat > "$BASE_DIR/第1章-基础入门/1.2-环境搭建/1.2.3-CLI创建项目.md" << 'EOF'
---
title: CLI创建项目
icon: uni-app-cli
order: 3
---

# CLI创建项目

## 环境准备
- Node.js安装
- Vue CLI安装
- uni-app CLI
- 依赖配置
- 环境变量

## 创建流程
- 命令说明
- 项目模板
- 配置选项
- 目录结构
- 启动运行

## 项目配置
- 基础配置
- 编译配置
- 运行配置
- 发布配置
- 环境配置

## 开发调试
- 开发模式
- 调试工具
- 热重载
- 错误处理
- 性能优化
EOF

# 创建1.2.4插件安装文件
cat > "$BASE_DIR/第1章-基础入门/1.2-环境搭建/1.2.4-插件安装.md" << 'EOF'
---
title: 插件安装
icon: uni-app-plugins
order: 4
---

# 插件安装

## 插件类型
- 编译插件
- 开发插件
- 调试插件
- 工具插件
- 扩展插件

## 安装方法
- 在线安装
- 离线安装
- 手动安装
- 更新管理
- 卸载方法

## 常用插件
- 语法高亮
- 代码提示
- 格式化
- 调试工具
- 版本控制

## 配置管理
- 插件设置
- 权限管理
- 冲突处理
- 性能优化
- 问题排查
EOF

# 创建1.2.5Git/SVN配置文件
cat > "$BASE_DIR/第1章-基础入门/1.2-环境搭建/1.2.5-Git_SVN配置.md" << 'EOF'
---
title: Git/SVN配置
icon: uni-app-version-control
order: 5
---

# Git/SVN配置

## 基础配置
- 安装配置
- 账号设置
- 仓库配置
- 忽略文件
- 权限设置

## 使用方法
- 基本操作
- 分支管理
- 冲突处理
- 版本回退
- 标签管理

## 工作流程
- 提交规范
- 分支策略
- 代码审查
- 合并策略
- 发布流程

## 最佳实践
- 团队协作
- 版本管理
- 代码备份
- 安全控制
- 问题追踪
EOF

# 创建1.3快速上手目录
mkdir -p "$BASE_DIR/第1章-基础入门/1.3-快速上手"

# 创建1.3快速上手README文件
cat > "$BASE_DIR/第1章-基础入门/1.3-快速上手/README.md" << 'EOF'
---
title: 快速上手
icon: uni-app-quickstart
order: 3
---

# 快速上手

本节介绍uni-app的快速入门指南。
EOF

# 创建1.3.1第一个应用文件
cat > "$BASE_DIR/第1章-基础入门/1.3-快速上手/1.3.1-第一个应用.md" << 'EOF'
---
title: 第一个应用
icon: uni-app-first-app
order: 1
---

# 第一个应用

## 创建项目
- 选择模板
- 基础配置
- 项目初始化
- 运行调试
- 打包发布

## 基础功能
- 页面开发
- 组件使用
- 数据绑定
- 事件处理
- 生命周期

## 开发流程
- 需求分析
- 功能实现
- 调试测试
- 优化改进
- 发布上线

## 注意事项
- 常见问题
- 调试技巧
- 性能优化
- 兼容处理
- 安全考虑
EOF

# 创建1.3.2项目结构文件
cat > "$BASE_DIR/第1章-基础入门/1.3-快速上手/1.3.2-项目结构.md" << 'EOF'
---
title: 项目结构
icon: uni-app-structure
order: 2
---

# 项目结构

## 目录结构
- 根目录
- 源码目录
- 静态资源
- 配置文件
- 编译输出

## 文件说明
- 入口文件
- 页面文件
- 组件文件
- 配置文件
- 工具文件

## 配置详解
- 全局配置
- 页面配置
- 组件配置
- 路由配置
- 应用配置

## 开发规范
- 命名规范
- 目录规范
- 代码规范
- 注释规范
- 文档规范
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建1.3.3开发规范文件
cat > "$BASE_DIR/第1章-基础入门/1.3-快速上手/1.3.3-开发规范.md" << 'EOF'
---
title: 开发规范
icon: uni-app-standards
order: 3
---

# 开发规范

## 代码规范
- 命名规范
- 目录结构
- 编码风格
- 注释规范
- 版本控制

## 组件规范
- 组件设计
- 生命周期
- 数据流转
- 事件处理
- 性能优化

## 项目规范
- 项目结构
- 配置管理
- 资源管理
- 依赖管理
- 发布流程

## 团队协作
- 开发流程
- 代码审查
- 文档管理
- 版本管理
- 持续集成
EOF

# 创建1.3.4发布流程文件
cat > "$BASE_DIR/第1章-基础入门/1.3-快速上手/1.3.4-发布流程.md" << 'EOF'
---
title: 发布流程
icon: uni-app-deployment
order: 4
---

# 发布流程

## 发布准备
- 环境配置
- 版本管理
- 资源优化
- 测试验证
- 文档准备

## 打包发布
- 打包配置
- 多平台打包
- 证书管理
- 资源处理
- 版本控制

## 上线发布
- 发布流程
- 环境切换
- 灰度发布
- 回滚机制
- 监控告警

## 维护更新
- 版本更新
- 问题修复
- 性能优化
- 数据统计
- 用户反馈
EOF

# 创建1.3.5案例学习文件
cat > "$BASE_DIR/第1章-基础入门/1.3-快速上手/1.3.5-案例学习.md" << 'EOF'
---
title: 案例学习
icon: uni-app-examples
order: 5
---

# 案例学习

## 基础案例
- Hello World
- 页面导航
- 数据绑定
- 组件使用
- API调用

## 进阶案例
- 列表展示
- 表单处理
- 状态管理
- 网络请求
- 本地存储

## 实战案例
- 商城项目
- 社交应用
- 工具应用
- 企业应用
- 游戏应用

## 最佳实践
- 性能优化
- 代码复用
- 组件封装
- 错误处理
- 用户体验
EOF

# 创建1.4迁移指南目录
mkdir -p "$BASE_DIR/第1章-基础入门/1.4-迁移指南"

# 创建1.4迁移指南README文件
cat > "$BASE_DIR/第1章-基础入门/1.4-迁移指南/README.md" << 'EOF'
---
title: 迁移指南
icon: uni-app-migration
order: 4
---

# 迁移指南

本节介绍如何将其他项目迁移到uni-app框架。
EOF

# 创建1.4.1其他项目转uni-app文件
cat > "$BASE_DIR/第1章-基础入门/1.4-迁移指南/1.4.1-其他项目转uni-app.md" << 'EOF'
---
title: 其他项目转uni-app
icon: uni-app-convert
order: 1
---

# 其他项目转uni-app

## 迁移准备
- 项目评估
- 技术选型
- 资源准备
- 团队培训
- 计划制定

## 迁移步骤
- 代码转换
- 组件迁移
- 样式适配
- 接口对接
- 功能测试

## 注意事项
- 兼容性处理
- 性能优化
- 代码重构
- 测试验证
- 文档更新

## 最佳实践
- 渐进式迁移
- 模块化迁移
- 并行开发
- 持续集成
- 监控反馈
EOF

# 创建1.4.2老项目集成uni-app文件
cat > "$BASE_DIR/第1章-基础入门/1.4-迁移指南/1.4.2-老项目集成uni-app.md" << 'EOF'
---
title: 老项目集成uni-app
icon: uni-app-integration
order: 2
---

# 老项目集成uni-app

## 集成方案
- 混合开发
- 分模块集成
- 渐进式重构
- 并行开发
- 独立部署

## 技术实现
- 路由对接
- 数据通信
- 状态同步
- 组件复用
- 样式隔离

## 开发流程
- 需求分析
- 方案设计
- 接口定义
- 功能实现
- 测试验证

## 最佳实践
- 架构设计
- 代码组织
- 性能优化
- 测试策略
- 部署方案
EOF

# 创建1.4.3常见问题处理文件
cat > "$BASE_DIR/第1章-基础入门/1.4-迁移指南/1.4.3-常见问题处理.md" << 'EOF'
---
title: 常见问题处理
icon: uni-app-troubleshooting
order: 3
---

# 常见问题处理

## 兼容性问题
- 平台差异
- API兼容
- 样式适配
- 功能限制
- 性能问题

## 开发问题
- 环境配置
- 调试方法
- 错误处理
- 性能优化
- 代码质量

## 运行问题
- 启动异常
- 运行错误
- 性能问题
- 内存泄漏
- 崩溃处理

## 解决方案
- 问题定位
- 解决方法
- 优化建议
- 预防措施
- 最佳实践
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建1.4.4跨端注意事项文件
cat > "$BASE_DIR/第1章-基础入门/1.4-迁移指南/1.4.4-跨端注意事项.md" << 'EOF'
---
title: 跨端注意事项
icon: uni-app-cross-platform
order: 4
---

# 跨端注意事项

## 平台差异
- API差异
- 组件差异
- 样式差异
- 功能限制
- 性能差异

## 适配策略
- 条件编译
- 平台判断
- 样式适配
- 降级方案
- 兼容处理

## 开发建议
- 统一规范
- 模块化设计
- 组件封装
- 代码复用
- 测试验证

## 常见问题
- 兼容性问题
- 性能优化
- 调试方法
- 发布流程
- 维护更新
EOF

# 创建第2章开发基础目录
mkdir -p "$BASE_DIR/第2章-开发基础"

# 创建第2章开发基础README文件
cat > "$BASE_DIR/第2章-开发基础/README.md" << 'EOF'
---
title: 开发基础
icon: uni-app-basics
order: 2
---

# 开发基础

本章介绍uni-app开发的基础知识和配置说明。
EOF

# 创建2.1项目配置目录
mkdir -p "$BASE_DIR/第2章-开发基础/2.1-项目配置"

# 创建2.1项目配置README文件
cat > "$BASE_DIR/第2章-开发基础/2.1-项目配置/README.md" << 'EOF'
---
title: 项目配置
icon: uni-app-config
order: 1
---

# 项目配置

本节介绍uni-app项目的各种配置文件及其用法。
EOF

# 创建2.1.1pages.json文件
cat > "$BASE_DIR/第2章-开发基础/2.1-项目配置/2.1.1-pages.json.md" << 'EOF'
---
title: pages.json（页面路由）
icon: uni-app-pages
order: 1
---

# pages.json（页面路由）

## 基本配置
- 页面路径
- 页面样式
- 窗口配置
- 导航配置
- 全局配置

## 路由配置
- 页面注册
- 路由参数
- 路由拦截
- 路由动画
- 路由事件

## 导航配置
- 导航栏
- 标题栏
- 底部栏
- 侧边栏
- 自定义导航

## 最佳实践
- 配置规范
- 路由管理
- 页面优化
- 性能考虑
- 维护建议
EOF

# 创建2.1.2manifest.json文件
cat > "$BASE_DIR/第2章-开发基础/2.1-项目配置/2.1.2-manifest.json.md" << 'EOF'
---
title: manifest.json（应用配置）
icon: uni-app-manifest
order: 2
---

# manifest.json（应用配置）

## 基本配置
- 应用信息
- 图标配置
- 权限配置
- 模块配置
- 平台配置

## 发布配置
- 应用标识
- 版本信息
- 渠道配置
- 证书配置
- 云服务配置

## 平台差异
- iOS配置
- Android配置
- 小程序配置
- H5配置
- APP配置

## 最佳实践
- 配置管理
- 权限控制
- 版本管理
- 安全考虑
- 优化建议
EOF

# 创建2.1.3package.json文件
cat > "$BASE_DIR/第2章-开发基础/2.1-项目配置/2.1.3-package.json.md" << 'EOF'
---
title: package.json（项目配置）
icon: uni-app-package
order: 3
---

# package.json（项目配置）

## 基本配置
- 项目信息
- 依赖管理
- 脚本命令
- 版本控制
- 项目配置

## 依赖管理
- 开发依赖
- 生产依赖
- 版本锁定
- 依赖更新
- 冲突处理

## 脚本配置
- 开发脚本
- 构建脚本
- 测试脚本
- 发布脚本
- 工具脚本

## 最佳实践
- 依赖管理
- 版本控制
- 脚本优化
- 安全考虑
- 维护建议
EOF

# 创建2.1.4vue.config.js/vite.config.js文件
cat > "$BASE_DIR/第2章-开发基础/2.1-项目配置/2.1.4-构建配置.md" << 'EOF'
---
title: vue.config.js/vite.config.js（构建配置）
icon: uni-app-build
order: 4
---

# vue.config.js/vite.config.js（构建配置）

## 基本配置
- 构建目标
- 开发服务器
- 资源处理
- 插件配置
- 优化配置

## 环境配置
- 开发环境
- 生产环境
- 测试环境
- 环境变量
- 代理设置

## 性能优化
- 代码分割
- 懒加载
- 缓存配置
- 压缩优化
- 打包分析

## 最佳实践
- 配置管理
- 构建优化
- 开发效率
- 部署策略
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建2.1.5AndroidManifest.xml文件
cat > "$BASE_DIR/第2章-开发基础/2.1-项目配置/2.1.5-AndroidManifest.xml.md" << 'EOF'
---
title: AndroidManifest.xml（安卓配置）
icon: uni-app-android
order: 5
---

# AndroidManifest.xml（安卓配置）

## 基本配置
- 应用权限
- 组件声明
- 应用属性
- 系统配置
- 硬件要求

## 权限管理
- 系统权限
- 自定义权限
- 权限组
- 运行时权限
- 特殊权限

## 组件配置
- Activity配置
- Service配置
- Broadcast配置
- Provider配置
- Intent过滤器

## 最佳实践
- 权限控制
- 安全配置
- 性能优化
- 兼容适配
- 发布设置
EOF

# 创建2.1.6Info.plist文件
cat > "$BASE_DIR/第2章-开发基础/2.1-项目配置/2.1.6-Info.plist.md" << 'EOF'
---
title: Info.plist（iOS配置）
icon: uni-app-ios
order: 6
---

# Info.plist（iOS配置）

## 基本配置
- 应用标识
- 版本信息
- 设备支持
- 系统要求
- 权限声明

## 功能配置
- 网络访问
- 相机权限
- 定位服务
- 推送通知
- 后台模式

## 界面配置
- 启动界面
- 图标设置
- 状态栏
- 方向控制
- 界面适配

## 最佳实践
- 权限管理
- 安全设置
- 性能优化
- 兼容适配
- 发布配置
EOF

# 创建2.1.7App.vue/uvue文件
cat > "$BASE_DIR/第2章-开发基础/2.1-项目配置/2.1.7-App.vue_uvue.md" << 'EOF'
---
title: App.vue/uvue
icon: uni-app-vue
order: 7
---

# App.vue/uvue

## 基本结构
- 应用入口
- 全局样式
- 生命周期
- 全局方法
- 状态管理

## 配置项
- 页面配置
- 路由配置
- 主题设置
- 全局变量
- 插件配置

## 生命周期
- 应用启动
- 页面切换
- 应用退出
- 错误处理
- 状态维护

## 最佳实践
- 代码组织
- 性能优化
- 状态管理
- 错误处理
- 维护建议
EOF

# 创建2.1.8main.js/uts文件
cat > "$BASE_DIR/第2章-开发基础/2.1-项目配置/2.1.8-main.js_uts.md" << 'EOF'
---
title: main.js/uts
icon: uni-app-main
order: 8
---

# main.js/uts

## 入口配置
- Vue实例
- 全局组件
- 插件注册
- 路由配置
- 状态管理

## 全局设置
- 全局方法
- 全局过滤器
- 全局指令
- 全局混入
- 全局配置

## 扩展功能
- API扩展
- 工具函数
- 中间件
- 拦截器
- 自定义插件

## 最佳实践
- 代码组织
- 性能优化
- 错误处理
- 模块化
- 维护建议
EOF

# 创建2.1.9uni.scss文件
cat > "$BASE_DIR/第2章-开发基础/2.1-项目配置/2.1.9-uni.scss.md" << 'EOF'
---
title: uni.scss
icon: uni-app-scss
order: 9
---

# uni.scss

## 基础样式
- 变量定义
- 混合宏
- 函数
- 主题配置
- 全局样式

## 样式规范
- 命名规范
- 样式复用
- 样式隔离
- 响应式
- 主题切换

## 常用配置
- 颜色系统
- 字体系统
- 布局系统
- 动画系统
- 组件样式

## 最佳实践
- 样式管理
- 性能优化
- 主题定制
- 维护建议
- 兼容处理
EOF

# 创建2.2开发规范目录
mkdir -p "$BASE_DIR/第2章-开发基础/2.2-开发规范"

# 创建2.2开发规范README文件
cat > "$BASE_DIR/第2章-开发基础/2.2-开发规范/README.md" << 'EOF'
---
title: 开发规范
icon: uni-app-standards
order: 2
---

# 开发规范

本节介绍uni-app项目开发的规范和最佳实践。
EOF

# 创建2.2.1目录结构规范文件
cat > "$BASE_DIR/第2章-开发基础/2.2-开发规范/2.2.1-目录结构规范.md" << 'EOF'
---
title: 目录结构规范
icon: uni-app-directory
order: 1
---

# 目录结构规范

## 基本结构
- 源码目录
- 资源目录
- 配置文件
- 工具脚本
- 文档目录

## 命名规范
- 文件命名
- 目录命名
- 组件命名
- 变量命名
- 函数命名

## 目录说明
- 页面目录
- 组件目录
- 工具目录
- 静态资源
- 配置目录

## 最佳实践
- 目录组织
- 代码分层
- 模块划分
- 资源管理
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建2.2.2代码组织规范文件
cat > "$BASE_DIR/第2章-开发基础/2.2-开发规范/2.2.2-代码组织规范.md" << 'EOF'
---
title: 代码组织规范
icon: uni-app-code-organization
order: 2
---

# 代码组织规范

## 文件组织
- 文件分类
- 模块划分
- 代码分层
- 依赖管理
- 资源组织

## 代码结构
- 组件结构
- 页面结构
- 逻辑分离
- 状态管理
- 工具函数

## 模块化
- 组件封装
- 功能模块
- 业务模块
- 公共模块
- 第三方模块

## 最佳实践
- 代码复用
- 解耦设计
- 性能优化
- 可维护性
- 可扩展性
EOF

# 创建2.2.3命名规范文件
cat > "$BASE_DIR/第2章-开发基础/2.2-开发规范/2.2.3-命名规范.md" << 'EOF'
---
title: 命名规范
icon: uni-app-naming
order: 3
---

# 命名规范

## 基本原则
- 命名风格
- 语义化
- 一致性
- 简洁性
- 可读性

## 具体规范
- 文件命名
- 组件命名
- 变量命名
- 函数命名
- 类命名

## 特殊规范
- 常量命名
- 事件命名
- 样式命名
- 接口命名
- 配置命名

## 最佳实践
- 命名技巧
- 常见问题
- 规范执行
- 团队协作
- 维护建议
EOF

# 创建2.2.4注释规范文件
cat > "$BASE_DIR/第2章-开发基础/2.2-开发规范/2.2.4-注释规范.md" << 'EOF'
---
title: 注释规范
icon: uni-app-comments
order: 4
---

# 注释规范

## 基本原则
- 注释目的
- 注释风格
- 注释内容
- 注释位置
- 注释格式

## 注释类型
- 文件注释
- 函数注释
- 类注释
- 方法注释
- 行内注释

## 特殊注释
- TODO注释
- FIXME注释
- API文档
- 版权信息
- 调试注释

## 最佳实践
- 注释技巧
- 自动生成
- 维护更新
- 团队规范
- 文档生成
EOF

# 创建2.2.5uni错误规范文件
cat > "$BASE_DIR/第2章-开发基础/2.2-开发规范/2.2.5-uni错误规范.md" << 'EOF'
---
title: uni错误规范
icon: uni-app-error
order: 5
---

# uni错误规范

## 错误类型
- 语法错误
- 运行时错误
- 逻辑错误
- 网络错误
- 平台错误

## 错误处理
- 错误捕获
- 错误上报
- 错误恢复
- 错误提示
- 错误日志

## 调试方法
- 控制台调试
- 断点调试
- 日志分析
- 性能分析
- 远程调试

## 最佳实践
- 错误预防
- 异常处理
- 监控告警
- 问题定位
- 优化建议
EOF

# 创建2.3基础语法目录
mkdir -p "$BASE_DIR/第2章-开发基础/2.3-基础语法"

# 创建2.3基础语法README文件
cat > "$BASE_DIR/第2章-开发基础/2.3-基础语法/README.md" << 'EOF'
---
title: 基础语法
icon: uni-app-syntax
order: 3
---

# 基础语法

本节介绍uni-app开发中的基础语法知识。
EOF

# 创建2.3.1JavaScript语法文件
cat > "$BASE_DIR/第2章-开发基础/2.3-基础语法/2.3.1-JavaScript语法.md" << 'EOF'
---
title: JavaScript语法
icon: uni-app-javascript
order: 1
---

# JavaScript语法

## 基础语法
- 变量声明
- 数据类型
- 运算符
- 流程控制
- 函数定义

## ES6+特性
- 箭头函数
- 解构赋值
- 模板字符串
- Promise
- async/await

## Vue语法
- 数据绑定
- 计算属性
- 事件处理
- 生命周期
- 组件通信

## 最佳实践
- 代码风格
- 性能优化
- 错误处理
- 调试技巧
- 兼容处理
EOF

# 创建2.3.2CSS/SCSS语法文件
cat > "$BASE_DIR/第2章-开发基础/2.3-基础语法/2.3.2-CSS_SCSS语法.md" << 'EOF'
---
title: CSS/SCSS语法
icon: uni-app-css
order: 2
---

# CSS/SCSS语法

## 基础语法
- 选择器
- 盒模型
- 布局方式
- 响应式
- 动画效果

## SCSS特性
- 变量定义
- 嵌套规则
- 混合指令
- 继承机制
- 函数使用

## 样式规范
- 命名规范
- 样式组织
- 样式复用
- 样式隔离
- 主题定制

## 最佳实践
- 性能优化
- 兼容处理
- 响应式设计
- 维护建议
- 调试技巧
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建2.3.3Vue模板语法文件
cat > "$BASE_DIR/第2章-开发基础/2.3-基础语法/2.3.3-Vue模板语法.md" << 'EOF'
---
title: Vue模板语法
icon: uni-app-vue-template
order: 3
---

# Vue模板语法

## 基础语法
- 插值表达式
- 指令系统
- 事件绑定
- 条件渲染
- 列表渲染

## 高级特性
- 计算属性
- 侦听器
- 过滤器
- 自定义指令
- 插槽使用

## 组件通信
- Props传递
- 事件机制
- 依赖注入
- 状态管理
- 跨组件通信

## 最佳实践
- 性能优化
- 代码复用
- 组件设计
- 错误处理
- 调试技巧
EOF

# 创建2.3.4TypeScript/ts专题文件
cat > "$BASE_DIR/第2章-开发基础/2.3-基础语法/2.3.4-TypeScript_ts专题.md" << 'EOF'
---
title: TypeScript/ts专题
icon: uni-app-typescript
order: 4
---

# TypeScript/ts专题

## 基础类型
- 数据类型
- 类型注解
- 接口定义
- 类型断言
- 泛型使用

## 高级特性
- 装饰器
- 枚举类型
- 命名空间
- 模块系统
- 类型推断

## 工程实践
- 配置文件
- 类型声明
- 编译选项
- 调试工具
- 代码检查

## 最佳实践
- 类型设计
- 错误处理
- 性能优化
- 代码组织
- 维护建议
EOF

# 创建2.3.5JSX/TSX语法文件
cat > "$BASE_DIR/第2章-开发基础/2.3-基础语法/2.3.5-JSX_TSX语法.md" << 'EOF'
---
title: JSX/TSX语法
icon: uni-app-jsx
order: 5
---

# JSX/TSX语法

## 基础语法
- JSX语法
- TSX类型
- 组件定义
- 属性传递
- 事件处理

## 高级特性
- 条件渲染
- 列表渲染
- 组件组合
- 类型检查
- 性能优化

## 工程实践
- 开发配置
- 编译设置
- 调试工具
- 代码检查
- 性能分析

## 最佳实践
- 代码组织
- 类型设计
- 组件封装
- 错误处理
- 维护建议
EOF

# 创建2.3.6UTS语法文件
cat > "$BASE_DIR/第2章-开发基础/2.3-基础语法/2.3.6-UTS语法.md" << 'EOF'
---
title: UTS语法
icon: uni-app-uts
order: 6
---

# UTS语法

## 基础语法
- 数据类型
- 控制流程
- 函数定义
- 类和接口
- 模块系统

## 特有功能
- 原生能力
- 平台API
- 性能优化
- 内存管理
- 异常处理

## 开发实践
- 环境配置
- 调试方法
- 性能监控
- 错误处理
- 代码优化

## 最佳实践
- 架构设计
- 代码组织
- 性能优化
- 安全考虑
- 维护建议
EOF

# 创建2.3.7条件编译文件
cat > "$BASE_DIR/第2章-开发基础/2.3-基础语法/2.3.7-条件编译.md" << 'EOF'
---
title: 条件编译
icon: uni-app-conditional
order: 7
---

# 条件编译

## 基本概念
- 编译指令
- 平台判断
- 环境变量
- 代码块
- 注释规范

## 应用场景
- 平台差异
- 环境配置
- 功能开关
- 调试模式
- 版本控制

## 实现方法
- 语法规则
- 指令使用
- 代码组织
- 调试技巧
- 性能优化

## 最佳实践
- 代码复用
- 平台适配
- 维护管理
- 调试方法
- 版本控制
EOF

# 创建2.4页面开发目录
mkdir -p "$BASE_DIR/第2章-开发基础/2.4-页面开发"

# 创建2.4页面开发README文件
cat > "$BASE_DIR/第2章-开发基础/2.4-页面开发/README.md" << 'EOF'
---
title: 页面开发
icon: uni-app-page
order: 4
---

# 页面开发

本节介绍uni-app页面开发的相关知识。
EOF

# 创建2.4.1页面生命周期文件
cat > "$BASE_DIR/第2章-开发基础/2.4-页面开发/2.4.1-页面生命周期.md" << 'EOF'
---
title: 页面生命周期
icon: uni-app-lifecycle
order: 1
---

# 页面生命周期

## 基本概念
- 生命周期
- 执行顺序
- 钩子函数
- 状态管理
- 页面通信

## 生命周期函数
- 创建阶段
- 挂载阶段
- 更新阶段
- 卸载阶段
- 错误处理

## 应用场景
- 数据初始化
- 页面切换
- 状态维护
- 资源释放
- 性能优化

## 最佳实践
- 生命周期管理
- 状态同步
- 内存管理
- 性能优化
- 错误处理
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建2.4.2页面通信文件
cat > "$BASE_DIR/第2章-开发基础/2.4-页面开发/2.4.2-页面通信.md" << 'EOF'
---
title: 页面通信
icon: uni-app-communication
order: 2
---

# 页面通信

## 通信方式
- 路由参数
- 全局状态
- 事件总线
- 本地存储
- 页面栈

## 数据传递
- 参数传递
- 状态共享
- 数据同步
- 数据持久化
- 跨页面通信

## 状态管理
- Vuex/Pinia
- 全局变量
- 缓存管理
- 状态同步
- 数据流向

## 最佳实践
- 通信设计
- 数据流控制
- 性能优化
- 安全考虑
- 调试方法
EOF

# 创建2.4.3页面事件文件
cat > "$BASE_DIR/第2章-开发基础/2.4-页面开发/2.4.3-页面事件.md" << 'EOF'
---
title: 页面事件
icon: uni-app-events
order: 3
---

# 页面事件

## 事件类型
- 点击事件
- 表单事件
- 触摸事件
- 系统事件
- 自定义事件

## 事件处理
- 事件绑定
- 事件传参
- 事件修饰符
- 事件代理
- 事件冒泡

## 事件机制
- 事件流
- 事件循环
- 事件队列
- 事件优先级
- 事件监听

## 最佳实践
- 性能优化
- 内存管理
- 错误处理
- 调试技巧
- 兼容处理
EOF

# 创建2.4.4页面引用文件
cat > "$BASE_DIR/第2章-开发基础/2.4-页面开发/2.4.4-页面引用.md" << 'EOF'
---
title: 页面引用
icon: uni-app-reference
order: 4
---

# 页面引用

## 引用方式
- 组件引用
- 页面引用
- 模块引用
- 资源引用
- 外部引用

## 引用管理
- 依赖管理
- 版本控制
- 路径管理
- 循环引用
- 按需加载

## 性能优化
- 懒加载
- 预加载
- 缓存策略
- 资源压缩
- 代码分割

## 最佳实践
- 引用规范
- 依赖控制
- 性能优化
- 错误处理
- 维护建议
EOF

# 创建2.4.5页面动画文件
cat > "$BASE_DIR/第2章-开发基础/2.4-页面开发/2.4.5-页面动画.md" << 'EOF'
---
title: 页面动画
icon: uni-app-animation
order: 5
---

# 页面动画

## 动画类型
- 过渡动画
- 关键帧动画
- 路由动画
- 手势动画
- 交互动画

## 实现方式
- CSS动画
- JS动画
- 动画库
- 自定义动画
- 原生动画

## 性能优化
- 硬件加速
- 动画性能
- 内存管理
- 帧率控制
- 动画降级

## 最佳实践
- 动画设计
- 性能优化
- 兼容处理
- 调试方法
- 维护建议
EOF

# 创建第3章组件系统目录
mkdir -p "$BASE_DIR/第3章-组件系统"

# 创建第3章组件系统README文件
cat > "$BASE_DIR/第3章-组件系统/README.md" << 'EOF'
---
title: 组件系统
icon: uni-app-components
order: 3
---

# 组件系统

本章介绍uni-app的组件系统及其使用方法。
EOF

# 创建3.1组件概述目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.1-组件概述"

# 创建3.1组件概述README文件
cat > "$BASE_DIR/第3章-组件系统/3.1-组件概述/README.md" << 'EOF'
---
title: 组件概述
icon: uni-app-component-overview
order: 1
---

# 组件概述

本节介绍uni-app组件系统的基本概念和使用方法。
EOF

# 创建3.1.1组件体系介绍文件
cat > "$BASE_DIR/第3章-组件系统/3.1-组件概述/3.1.1-组件体系介绍.md" << 'EOF'
---
title: 组件体系介绍
icon: uni-app-component-system
order: 1
---

# 组件体系介绍

## 基本概念
- 组件定义
- 组件类型
- 组件生命周期
- 组件通信
- 组件复用

## 组件分类
- 基础组件
- 表单组件
- 媒体组件
- 导航组件
- 自定义组件

## 组件特性
- 数据流
- 事件机制
- 插槽系统
- 样式隔离
- 性能优化

## 最佳实践
- 组件设计
- 组件封装
- 组件复用
- 性能优化
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建3.1.2组件生命周期文件
cat > "$BASE_DIR/第3章-组件系统/3.1-组件概述/3.1.2-组件生命周期.md" << 'EOF'
---
title: 组件生命周期
icon: uni-app-lifecycle
order: 2
---

# 组件生命周期

## 生命周期阶段
- 创建阶段
- 挂载阶段
- 更新阶段
- 卸载阶段
- 错误处理

## 钩子函数
- beforeCreate
- created
- beforeMount
- mounted
- beforeUpdate
- updated
- beforeDestroy
- destroyed

## 应用场景
- 数据初始化
- DOM操作
- 状态管理
- 资源清理
- 性能优化

## 最佳实践
- 生命周期管理
- 状态同步
- 内存管理
- 错误处理
- 性能优化
EOF

# 创建3.1.3组件通信文件
cat > "$BASE_DIR/第3章-组件系统/3.1-组件概述/3.1.3-组件通信.md" << 'EOF'
---
title: 组件通信
icon: uni-app-communication
order: 3
---

# 组件通信

## 通信方式
- Props传递
- 事件机制
- 依赖注入
- 状态管理
- 消息总线

## 数据流向
- 单向数据流
- 双向绑定
- 状态提升
- 数据共享
- 跨组件通信

## 通信模式
- 父子通信
- 兄弟通信
- 跨级通信
- 全局通信
- 组件广播

## 最佳实践
- 通信设计
- 数据管理
- 性能优化
- 错误处理
- 调试方法
EOF

# 创建3.1.4组件复用文件
cat > "$BASE_DIR/第3章-组件系统/3.1-组件概述/3.1.4-组件复用.md" << 'EOF'
---
title: 组件复用
icon: uni-app-reuse
order: 4
---

# 组件复用

## 复用方式
- 组件封装
- 混入机制
- 插件系统
- 高阶组件
- 组合式API

## 复用策略
- 代码复用
- 逻辑复用
- 样式复用
- 功能复用
- 状态复用

## 设计模式
- 组件模式
- 装饰器模式
- 适配器模式
- 观察者模式
- 工厂模式

## 最佳实践
- 复用设计
- 性能优化
- 维护管理
- 版本控制
- 文档管理
EOF

# 创建3.1.5datacom组件规范文件
cat > "$BASE_DIR/第3章-组件系统/3.1-组件概述/3.1.5-datacom组件规范.md" << 'EOF'
---
title: datacom组件规范
icon: uni-app-datacom
order: 5
---

# datacom组件规范

## 基本规范
- 命名规范
- 结构规范
- 接口规范
- 数据规范
- 事件规范

## 数据处理
- 数据绑定
- 数据验证
- 数据转换
- 数据同步
- 数据持久化

## 组件接口
- 属性定义
- 方法暴露
- 事件触发
- 插槽使用
- 生命周期

## 最佳实践
- 规范执行
- 性能优化
- 错误处理
- 文档维护
- 版本管理
EOF

# 创建3.2内置组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件"

# 创建3.2内置组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/README.md" << 'EOF'
---
title: 内置组件
icon: uni-app-built-in
order: 2
---

# 内置组件

本节介绍uni-app的内置组件及其使用方法。
EOF

# 创建3.2.1视图容器组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.1-视图容器组件"

# 创建3.2.1视图容器组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.1-视图容器组件/README.md" << 'EOF'
---
title: 视图容器组件
icon: uni-app-container
order: 1
---

# 视图容器组件

本节介绍uni-app的视图容器组件。
EOF

# 创建3.2.1.1view文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.1-视图容器组件/3.2.1.1-view.md" << 'EOF'
---
title: view
icon: uni-app-view
order: 1
---

# view

## 基本用法
- 视图容器
- 布局容器
- 样式容器
- 事件容器
- 动画容器

## 属性配置
- 基础属性
- 样式属性
- 事件属性
- 动画属性
- 自定义属性

## 使用场景
- 页面布局
- 列表渲染
- 条件渲染
- 动画效果
- 交互处理

## 最佳实践
- 性能优化
- 布局技巧
- 事件处理
- 动画优化
- 兼容处理
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建3.2.1.2scroll-view文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.1-视图容器组件/3.2.1.2-scroll-view.md" << 'EOF'
---
title: scroll-view
icon: uni-app-scroll
order: 2
---

# scroll-view

## 基本用法
- 垂直滚动
- 水平滚动
- 嵌套滚动
- 下拉刷新
- 触底加载

## 属性配置
- 滚动方向
- 滚动条
- 回弹效果
- 事件监听
- 自定义样式

## 事件处理
- 滚动事件
- 触摸事件
- 刷新事件
- 加载事件
- 动画事件

## 最佳实践
- 性能优化
- 内存管理
- 滚动优化
- 体验优化
- 兼容处理
EOF

# 创建3.2.1.3swiper文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.1-视图容器组件/3.2.1.3-swiper.md" << 'EOF'
---
title: swiper
icon: uni-app-swiper
order: 3
---

# swiper

## 基本用法
- 轮播图
- 页面切换
- 卡片滑动
- 指示器
- 自动播放

## 属性配置
- 切换效果
- 播放间隔
- 指示器样式
- 循环播放
- 手势控制

## 事件处理
- 切换事件
- 触摸事件
- 动画事件
- 自动播放
- 状态监听

## 最佳实践
- 性能优化
- 内存管理
- 动画优化
- 体验优化
- 兼容处理
EOF

# 创建3.2.1.4match-media文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.1-视图容器组件/3.2.1.4-match-media.md" << 'EOF'
---
title: match-media
icon: uni-app-match-media
order: 4
---

# match-media

## 基本用法
- 媒体查询
- 响应式布局
- 条件渲染
- 设备适配
- 屏幕适配

## 属性配置
- 查询条件
- 匹配规则
- 显示模式
- 样式控制
- 动态更新

## 应用场景
- 自适应布局
- 动态样式
- 条件显示
- 设备兼容
- 主题切换

## 最佳实践
- 性能优化
- 兼容处理
- 响应式设计
- 维护管理
- 调试方法
EOF

# 创建3.2.1.5movable-area文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.1-视图容器组件/3.2.1.5-movable-area.md" << 'EOF'
---
title: movable-area
icon: uni-app-movable-area
order: 5
---

# movable-area

## 基本用法
- 可移动区域
- 边界限制
- 缩放区域
- 手势控制
- 嵌套使用

## 属性配置
- 区域大小
- 移动范围
- 缩放比例
- 手势设置
- 样式定制

## 事件处理
- 移动事件
- 缩放事件
- 触摸事件
- 边界事件
- 状态监听

## 最佳实践
- 性能优化
- 手势优化
- 体验优化
- 兼容处理
- 调试方法
EOF

# 创建3.2.1.6movable-view文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.1-视图容器组件/3.2.1.6-movable-view.md" << 'EOF'
---
title: movable-view
icon: uni-app-movable-view
order: 6
---

# movable-view

## 基本用法
- 拖拽移动
- 缩放操作
- 旋转控制
- 惯性滑动
- 边界弹性

## 属性配置
- 移动方向
- 缩放范围
- 旋转角度
- 动画效果
- 手势控制

## 事件处理
- 移动事件
- 缩放事件
- 旋转事件
- 触摸事件
- 状态变化

## 最佳实践
- 性能优化
- 手势优化
- 动画优化
- 体验优化
- 兼容处理
EOF

# 创建3.2.1.7cover-view文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.1-视图容器组件/3.2.1.7-cover-view.md" << 'EOF'
---
title: cover-view
icon: uni-app-cover-view
order: 7
---

# cover-view

## 基本用法
- 覆盖层
- 浮动层
- 固定定位
- 层级控制
- 交互控制

## 属性配置
- 显示位置
- 层级设置
- 样式控制
- 事件穿透
- 动画效果

## 应用场景
- 悬浮窗口
- 遮罩层
- 弹出层
- 导航栏
- 工具栏

## 最佳实践
- 性能优化
- 层级管理
- 交互优化
- 兼容处理
- 调试方法
EOF

# 创建3.2.1.8cover-image文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.1-视图容器组件/3.2.1.8-cover-image.md" << 'EOF'
---
title: cover-image
icon: uni-app-cover-image
order: 8
---

# cover-image

## 基本用法
- 图片覆盖
- 固定定位
- 层级控制
- 图片适配
- 交互控制

## 属性配置
- 图片源
- 显示模式
- 层级设置
- 样式控制
- 事件处理

## 应用场景
- 水印覆盖
- 图标悬浮
- 遮罩图片
- 装饰元素
- 广告图层

## 最佳实践
- 性能优化
- 图片处理
- 内存管理
- 兼容处理
- 加载优化
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建3.2.2基础内容组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.2-基础内容组件"

# 创建3.2.2基础内容组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.2-基础内容组件/README.md" << 'EOF'
---
title: 基础内容组件
icon: uni-app-basic-content
order: 2
---

# 基础内容组件

## 组件类型
- 文本组件
- 图标组件
- 进度组件
- 富文本组件
- 列表组件

## 使用场景
- 内容展示
- 状态显示
- 交互反馈
- 数据渲染
- 布局结构

## 组件特性
- 样式定制
- 事件处理
- 数据绑定
- 动画效果
- 状态管理

## 最佳实践
- 性能优化
- 复用设计
- 兼容处理
- 体验优化
- 维护建议
EOF

# 创建3.2.3表单组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.3-表单组件"

# 创建3.2.3表单组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.3-表单组件/README.md" << 'EOF'
---
title: 表单组件
icon: uni-app-form
order: 3
---

# 表单组件

## 组件类型
- 输入框
- 选择器
- 单选框
- 复选框
- 开关组件

## 数据处理
- 数据绑定
- 数据验证
- 数据提交
- 状态管理
- 错误处理

## 交互设计
- 表单布局
- 输入反馈
- 验证提示
- 提交响应
- 重置功能

## 最佳实践
- 表单设计
- 验证规则
- 用户体验
- 性能优化
- 安全处理
EOF

# 创建3.2.4路由与页面跳转目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.4-路由与页面跳转"

# 创建3.2.4路由与页面跳转README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.4-路由与页面跳转/README.md" << 'EOF'
---
title: 路由与页面跳转
icon: uni-app-router
order: 4
---

# 路由与页面跳转

## 路由管理
- 路由配置
- 路由守卫
- 路由参数
- 路由拦截
- 路由历史

## 页面跳转
- 跳转方式
- 参数传递
- 动画效果
- 返回处理
- 页面栈

## 状态管理
- 页面状态
- 数据共享
- 状态持久化
- 状态同步
- 状态恢复

## 最佳实践
- 路由设计
- 性能优化
- 体验优化
- 安全控制
- 调试方法
EOF

# 创建3.2.5媒体组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.5-媒体组件"

# 创建3.2.5媒体组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.5-媒体组件/README.md" << 'EOF'
---
title: 媒体组件
icon: uni-app-media
order: 5
---

# 媒体组件

## 组件类型
- 图片组件
- 音频组件
- 视频组件
- 相机组件
- 录音组件

## 功能特性
- 媒体播放
- 媒体录制
- 媒体编辑
- 媒体上传
- 媒体下载

## 性能优化
- 加载优化
- 缓存管理
- 内存控制
- 播放控制
- 资源释放

## 最佳实践
- 媒体处理
- 性能优化
- 体验优化
- 兼容处理
- 错误处理
EOF

# 创建3.2.6地图组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.6-地图组件"

# 创建3.2.6地图组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.6-地图组件/README.md" << 'EOF'
---
title: 地图组件
icon: uni-app-map
order: 6
---

# 地图组件

## 基本功能
- 地图显示
- 标记点
- 路线规划
- 地理编码
- 位置服务

## 交互功能
- 缩放控制
- 定位功能
- 手势操作
- 覆盖物
- 信息窗口

## 性能优化
- 加载优化
- 渲染优化
- 内存管理
- 交互优化
- 离线支持

## 最佳实践
- 地图应用
- 性能优化
- 体验优化
- 安全处理
- 调试方法
EOF

# 创建3.2.7画布组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.7-画布组件"

# 创建3.2.7画布组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.7-画布组件/README.md" << 'EOF'
---
title: 画布组件
icon: uni-app-canvas
order: 7
---

# 画布组件

## 基本功能
- 绘图API
- 图形绘制
- 图像处理
- 动画效果
- 事件处理

## 高级特性
- 性能优化
- 内存管理
- 渲染控制
- 缓存策略
- 动画管理

## 应用场景
- 图表绘制
- 游戏开发
- 图像处理
- 签名功能
- 动画效果

## 最佳实践
- 性能优化
- 内存管理
- 渲染优化
- 交互设计
- 调试技巧
EOF

# 创建3.2.8webview组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.8-webview组件"

# 创建3.2.8webview组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.8-webview组件/README.md" << 'EOF'
---
title: webview组件
icon: uni-app-webview
order: 8
---

# webview组件

## 基本功能
- 网页加载
- JS交互
- 页面控制
- 事件处理
- 状态管理

## 高级特性
- 性能优化
- 内存管理
- 通信机制
- 安全控制
- 缓存策略

## 应用场景
- 混合开发
- 网页集成
- 支付功能
- 分享功能
- 第三方服务

## 最佳实践
- 性能优化
- 内存管理
- 安全处理
- 调试方法
- 兼容处理
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建3.2.9广告组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.9-广告组件"

# 创建3.2.9广告组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.9-广告组件/README.md" << 'EOF'
---
title: 广告组件
icon: uni-app-ad
order: 9
---

# 广告组件

## 基本功能
- 广告展示
- 广告类型
- 广告位置
- 广告样式
- 广告事件

## 配置选项
- 广告单元
- 展示规则
- 刷新策略
- 样式定制
- 错误处理

## 收益优化
- 展示策略
- 位置优化
- 用户体验
- 数据分析
- 收益统计

## 最佳实践
- 加载优化
- 展示控制
- 用户体验
- 收益优化
- 错误处理
EOF

# 创建3.2.10uniCloud-db组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.10-uniCloud-db组件"

# 创建3.2.10uniCloud-db组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.10-uniCloud-db组件/README.md" << 'EOF'
---
title: uniCloud-db组件
icon: uni-app-cloud-db
order: 10
---

# uniCloud-db组件

## 基本功能
- 数据查询
- 数据操作
- 实时同步
- 权限控制
- 错误处理

## 高级特性
- 联表查询
- 分页加载
- 数据缓存
- 字段筛选
- 排序功能

## 性能优化
- 查询优化
- 缓存策略
- 加载优化
- 同步机制
- 内存管理

## 最佳实践
- 数据设计
- 安全控制
- 性能优化
- 错误处理
- 维护建议
EOF

# 创建3.2.11页面属性配置节点目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.11-页面属性配置节点"

# 创建3.2.11页面属性配置节点README文件
cat > "$BASE_DIR/第3章-组件系统/3.2-内置组件/3.2.11-页面属性配置节点/README.md" << 'EOF'
---
title: 页面属性配置节点
icon: uni-app-page-config
order: 11
---

# 页面属性配置节点

## 基本配置
- 页面标题
- 导航栏
- 背景色
- 下拉刷新
- 上拉加载

## 高级配置
- 窗口样式
- 状态栏
- 导航栏
- 页面动画
- 页面事件

## 应用场景
- 页面定制
- 主题设置
- 交互优化
- 性能优化
- 用户体验

## 最佳实践
- 配置管理
- 性能优化
- 体验优化
- 兼容处理
- 维护建议
EOF

# 创建3.3扩展组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.3-扩展组件"

# 创建3.3扩展组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.3-扩展组件/README.md" << 'EOF'
---
title: 扩展组件（uni-ui）
icon: uni-app-ui
order: 3
---

# 扩展组件（uni-ui）

本节介绍uni-app的扩展组件库uni-ui的使用方法。
EOF

# 创建3.3.1uni-badge文件
cat > "$BASE_DIR/第3章-组件系统/3.3-扩展组件/3.3.1-uni-badge.md" << 'EOF'
---
title: uni-badge
icon: uni-app-badge
order: 1
---

# uni-badge

## 基本用法
- 徽标显示
- 样式定制
- 数字显示
- 点状显示
- 自定义内容

## 属性配置
- 显示内容
- 显示类型
- 最大值
- 样式主题
- 位置调整

## 事件处理
- 点击事件
- 状态变化
- 动画效果
- 交互反馈
- 数据更新

## 最佳实践
- 样式优化
- 交互优化
- 性能优化
- 兼容处理
- 使用建议
EOF

# 创建3.3.2uni-breadcrumb文件
cat > "$BASE_DIR/第3章-组件系统/3.3-扩展组件/3.3.2-uni-breadcrumb.md" << 'EOF'
---
title: uni-breadcrumb
icon: uni-app-breadcrumb
order: 2
---

# uni-breadcrumb

## 基本用法
- 路径导航
- 层级显示
- 分隔符
- 链接跳转
- 自定义样式

## 属性配置
- 导航项
- 分隔符
- 样式主题
- 链接处理
- 图标配置

## 交互功能
- 点击跳转
- 路径记录
- 状态管理
- 动态更新
- 历史记录

## 最佳实践
- 导航设计
- 交互优化
- 样式定制
- 兼容处理
- 使用建议
EOF

# 创建3.3.3uni-calendar文件
cat > "$BASE_DIR/第3章-组件系统/3.3-扩展组件/3.3.3-uni-calendar.md" << 'EOF'
---
title: uni-calendar
icon: uni-app-calendar
order: 3
---

# uni-calendar

## 基本功能
- 日期选择
- 范围选择
- 农历显示
- 节日显示
- 自定义样式

## 属性配置
- 选择模式
- 日期范围
- 默认值
- 显示规则
- 主题定制

## 事件处理
- 日期选择
- 范围变化
- 月份切换
- 状态更新
- 数据同步

## 最佳实践
- 交互设计
- 性能优化
- 样式定制
- 兼容处理
- 使用建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建3.3.4uni-card文件
cat > "$BASE_DIR/第3章-组件系统/3.3-扩展组件/3.3.4-uni-card.md" << 'EOF'
---
title: uni-card
icon: uni-app-card
order: 4
---

# uni-card

## 基本用法
- 卡片布局
- 标题栏
- 内容区
- 操作区
- 自定义样式

## 属性配置
- 卡片类型
- 边框样式
- 阴影效果
- 圆角设置
- 间距控制

## 插槽使用
- 标题插槽
- 封面插槽
- 内容插槽
- 操作插槽
- 扩展插槽

## 最佳实践
- 布局设计
- 样式优化
- 交互优化
- 性能优化
- 使用建议
EOF

# 创建3.3.5uni-collapse文件
cat > "$BASE_DIR/第3章-组件系统/3.3-扩展组件/3.3.5-uni-collapse.md" << 'EOF'
---
title: uni-collapse
icon: uni-app-collapse
order: 5
---

# uni-collapse

## 基本用法
- 折叠面板
- 手风琴模式
- 嵌套使用
- 动画效果
- 自定义样式

## 属性配置
- 展开模式
- 动画设置
- 图标配置
- 状态控制
- 样式定制

## 事件处理
- 展开事件
- 折叠事件
- 状态变化
- 动画完成
- 交互反馈

## 最佳实践
- 交互设计
- 性能优化
- 动画优化
- 内存管理
- 使用建议
EOF

# 创建3.3.6uni-combox文件
cat > "$BASE_DIR/第3章-组件系统/3.3-扩展组件/3.3.6-uni-combox.md" << 'EOF'
---
title: uni-combox
icon: uni-app-combox
order: 6
---

# uni-combox

## 基本用法
- 组合框
- 下拉选择
- 输入过滤
- 自动完成
- 自定义样式

## 属性配置
- 数据源
- 显示字段
- 过滤规则
- 选择模式
- 样式定制

## 事件处理
- 选择事件
- 输入事件
- 过滤事件
- 状态变化
- 值更新

## 最佳实践
- 交互设计
- 性能优化
- 体验优化
- 数据处理
- 使用建议
EOF

# 创建3.3.7uni-countdown文件
cat > "$BASE_DIR/第3章-组件系统/3.3-扩展组件/3.3.7-uni-countdown.md" << 'EOF'
---
title: uni-countdown
icon: uni-app-countdown
order: 7
---

# uni-countdown

## 基本用法
- 倒计时
- 时间格式
- 显示样式
- 自动开始
- 自定义样式

## 属性配置
- 时间设置
- 格式定制
- 显示规则
- 状态控制
- 样式主题

## 事件处理
- 开始事件
- 结束事件
- 时间更新
- 状态变化
- 交互反馈

## 最佳实践
- 时间处理
- 性能优化
- 显示优化
- 内存管理
- 使用建议
EOF

# 创建3.3.8uni-data-checkbox文件
cat > "$BASE_DIR/第3章-组件系统/3.3-扩展组件/3.3.8-uni-data-checkbox.md" << 'EOF'
---
title: uni-data-checkbox
icon: uni-app-checkbox
order: 8
---

# uni-data-checkbox

## 基本用法
- 复选框组
- 单选模式
- 数据绑定
- 禁用状态
- 自定义样式

## 属性配置
- 数据源
- 选择模式
- 默认值
- 禁用规则
- 样式定制

## 事件处理
- 选择事件
- 值变化
- 状态更新
- 数据同步
- 交互反馈

## 最佳实践
- 数据处理
- 性能优化
- 交互优化
- 状态管理
- 使用建议
EOF

# 创建3.3.9uni-data-picker文件
cat > "$BASE_DIR/第3章-组件系统/3.3-扩展组件/3.3.9-uni-data-picker.md" << 'EOF'
---
title: uni-data-picker
icon: uni-app-picker
order: 9
---

# uni-data-picker

## 基本用法
- 数据选择器
- 级联选择
- 树形选择
- 远程数据
- 自定义样式

## 属性配置
- 数据源
- 选择模式
- 显示字段
- 默认值
- 加载配置

## 事件处理
- 选择事件
- 加载事件
- 值变化
- 状态更新
- 错误处理

## 最佳实践
- 数据处理
- 性能优化
- 交互优化
- 加载优化
- 使用建议
EOF

# 创建3.3.10uni-data-select文件
cat > "$BASE_DIR/第3章-组件系统/3.3-扩展组件/3.3.10-uni-data-select.md" << 'EOF'
---
title: uni-data-select
icon: uni-app-select
order: 10
---

# uni-data-select

## 基本用法
- 下拉选择
- 数据绑定
- 搜索过滤
- 远程数据
- 自定义样式

## 属性配置
- 数据源
- 显示字段
- 搜索配置
- 加载设置
- 样式定制

## 事件处理
- 选择事件
- 搜索事件
- 加载事件
- 值变化
- 状态更新

## 最佳实践
- 数据处理
- 性能优化
- 交互优化
- 加载优化
- 使用建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建3.4平台组件目录
mkdir -p "$BASE_DIR/第3章-组件系统/3.4-平台组件"

# 创建3.4平台组件README文件
cat > "$BASE_DIR/第3章-组件系统/3.4-平台组件/README.md" << 'EOF'
---
title: 平台组件
icon: uni-app-platform
order: 4
---

# 平台组件

本节介绍uni-app各平台特有的组件及其使用方法。
EOF

# 创建3.4.1Vue组件文件
cat > "$BASE_DIR/第3章-组件系统/3.4-平台组件/3.4.1-Vue组件.md" << 'EOF'
---
title: Vue组件
icon: uni-app-vue
order: 1
---

# Vue组件

## 基本概念
- 组件定义
- 生命周期
- 数据流
- 组件通信
- 状态管理

## 组件特性
- 响应式数据
- 计算属性
- 侦听器
- 插槽系统
- 动态组件

## 高级功能
- 混入机制
- 自定义指令
- 渲染函数
- 插件系统
- 组合式API

## 最佳实践
- 组件设计
- 性能优化
- 代码复用
- 状态管理
- 调试技巧
EOF

# 创建3.4.2NVUE组件文件
cat > "$BASE_DIR/第3章-组件系统/3.4-平台组件/3.4.2-NVUE组件.md" << 'EOF'
---
title: NVUE组件
icon: uni-app-nvue
order: 2
---

# NVUE组件

## 基本概念
- 原生渲染
- 组件系统
- 样式系统
- 布局引擎
- 事件机制

## 特有功能
- 原生组件
- 动画系统
- 手势系统
- 渲染优化
- 性能优化

## 平台差异
- iOS特性
- Android特性
- 兼容处理
- 降级方案
- 性能考虑

## 最佳实践
- 架构设计
- 性能优化
- 体验优化
- 调试方法
- 发布部署
EOF

# 创建3.4.3小程序组件文件
cat > "$BASE_DIR/第3章-组件系统/3.4-平台组件/3.4.3-小程序组件.md" << 'EOF'
---
title: 小程序组件
icon: uni-app-miniprogram
order: 3
---

# 小程序组件

## 基本概念
- 组件规范
- 生命周期
- 数据绑定
- 事件系统
- 组件通信

## 平台特性
- 微信特性
- 支付宝特性
- 百度特性
- 抖音特性
- 跨平台处理

## 功能特点
- 原生组件
- 页面路由
- 数据缓存
- 网络请求
- 界面交互

## 最佳实践
- 组件设计
- 性能优化
- 体验优化
- 调试方法
- 发布部署
EOF

# 创建3.4.4小程序自定义组件文件
cat > "$BASE_DIR/第3章-组件系统/3.4-平台组件/3.4.4-小程序自定义组件.md" << 'EOF'
---
title: 小程序自定义组件
icon: uni-app-custom
order: 4
---

# 小程序自定义组件

## 基本概念
- 组件创建
- 组件配置
- 生命周期
- 数据管理
- 事件系统

## 开发规范
- 文件结构
- 命名规范
- 接口设计
- 样式隔离
- 版本管理

## 高级特性
- 组件通信
- 数据监听
- 插槽使用
- 组件复用
- 性能优化

## 最佳实践
- 组件设计
- 代码复用
- 性能优化
- 调试方法
- 发布部署
EOF

# 创建第4章状态管理与数据处理目录
mkdir -p "$BASE_DIR/第4章-状态管理与数据处理"

# 创建第4章状态管理与数据处理README文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/README.md" << 'EOF'
---
title: 状态管理与数据处理
icon: uni-app-state
order: 4
---

# 状态管理与数据处理

本章介绍uni-app的状态管理和数据处理方案。
EOF

# 创建4.1数据管理目录
mkdir -p "$BASE_DIR/第4章-状态管理与数据处理/4.1-数据管理"

# 创建4.1数据管理README文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.1-数据管理/README.md" << 'EOF'
---
title: 数据管理
icon: uni-app-data
order: 1
---

# 数据管理

## 基本概念
- 数据流
- 状态管理
- 数据持久化
- 数据同步
- 数据安全

## 管理方案
- Vuex/Pinia
- 本地存储
- 云存储
- 数据库
- 缓存策略

## 数据处理
- 数据转换
- 数据验证
- 数据过滤
- 数据加密
- 错误处理

## 最佳实践
- 架构设计
- 性能优化
- 安全控制
- 调试方法
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建4.1.1Vuex/Pinia集成文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.1-数据管理/4.1.1-Vuex_Pinia集成.md" << 'EOF'
---
title: Vuex/Pinia集成
icon: uni-app-store
order: 1
---

# Vuex/Pinia集成

## 基本配置
- 安装集成
- 目录结构
- 状态定义
- 模块划分
- 插件配置

## 核心概念
- State状态
- Getters计算
- Mutations修改
- Actions动作
- Modules模块

## 高级特性
- 状态持久化
- 插件机制
- 严格模式
- 热重载
- 开发工具

## 最佳实践
- 状态设计
- 性能优化
- 代码组织
- 调试方法
- 维护建议
EOF

# 创建4.1.2状态持久化文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.1-数据管理/4.1.2-状态持久化.md" << 'EOF'
---
title: 状态持久化
icon: uni-app-persistence
order: 2
---

# 状态持久化

## 存储方式
- 本地存储
- 缓存存储
- 数据库存储
- 云端存储
- 混合存储

## 实现策略
- 自动持久化
- 手动持久化
- 选择性持久化
- 加密存储
- 版本控制

## 数据同步
- 实时同步
- 定时同步
- 条件同步
- 冲突处理
- 错误恢复

## 最佳实践
- 存储策略
- 性能优化
- 安全处理
- 容错机制
- 维护建议
EOF

# 创建4.1.3数据同步策略文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.1-数据管理/4.1.3-数据同步策略.md" << 'EOF'
---
title: 数据同步策略
icon: uni-app-sync
order: 3
---

# 数据同步策略

## 同步方式
- 实时同步
- 定时同步
- 增量同步
- 全量同步
- 手动同步

## 同步策略
- 冲突检测
- 冲突解决
- 优先级控制
- 版本管理
- 回滚机制

## 性能优化
- 同步频率
- 数据压缩
- 网络优化
- 缓存策略
- 批量处理

## 最佳实践
- 策略设计
- 性能优化
- 错误处理
- 监控告警
- 维护建议
EOF

# 创建4.2网络请求目录
mkdir -p "$BASE_DIR/第4章-状态管理与数据处理/4.2-网络请求"

# 创建4.2网络请求README文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.2-网络请求/README.md" << 'EOF'
---
title: 网络请求
icon: uni-app-network
order: 2
---

# 网络请求

本节介绍uni-app的网络请求处理方案。
EOF

# 创建4.2.1请求封装文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.2-网络请求/4.2.1-请求封装.md" << 'EOF'
---
title: 请求封装
icon: uni-app-request
order: 1
---

# 请求封装

## 基础封装
- 请求配置
- 响应处理
- 错误处理
- 超时处理
- 重试机制

## 高级特性
- 请求队列
- 请求合并
- 请求取消
- 断点续传
- 进度监控

## 功能扩展
- 数据转换
- 缓存策略
- 鉴权处理
- 日志记录
- 性能监控

## 最佳实践
- 接口设计
- 性能优化
- 安全处理
- 调试方法
- 维护建议
EOF

# 创建4.2.2拦截器配置文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.2-网络请求/4.2.2-拦截器配置.md" << 'EOF'
---
title: 拦截器配置
icon: uni-app-interceptor
order: 2
---

# 拦截器配置

## 基本配置
- 请求拦截
- 响应拦截
- 错误拦截
- 认证拦截
- 日志拦截

## 功能实现
- 参数处理
- 头部处理
- 认证处理
- 响应处理
- 错误处理

## 高级特性
- 链式调用
- 优先级控制
- 条件拦截
- 动态配置
- 插件机制

## 最佳实践
- 拦截器设计
- 性能优化
- 安全处理
- 调试方法
- 维护建议
EOF

# 创建4.2.3错误处理文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.2-网络请求/4.2.3-错误处理.md" << 'EOF'
---
title: 错误处理
icon: uni-app-error
order: 3
---

# 错误处理

## 错误类型
- 网络错误
- 请求错误
- 响应错误
- 业务错误
- 系统错误

## 处理策略
- 错误捕获
- 错误分类
- 错误提示
- 错误恢复
- 错误上报

## 容错机制
- 重试机制
- 降级策略
- 超时处理
- 备份方案
- 恢复策略

## 最佳实践
- 错误设计
- 用户体验
- 监控告警
- 调试方法
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建4.2.4缓存策略文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.2-网络请求/4.2.4-缓存策略.md" << 'EOF'
---
title: 缓存策略
icon: uni-app-cache
order: 4
---

# 缓存策略

## 缓存类型
- 内存缓存
- 持久化缓存
- 网络缓存
- 混合缓存
- 分级缓存

## 缓存策略
- 缓存时间
- 缓存容量
- 缓存更新
- 缓存清理
- 缓存优先级

## 高级特性
- 预加载
- 懒加载
- 增量更新
- 离线访问
- 版本控制

## 最佳实践
- 策略设计
- 性能优化
- 内存管理
- 调试方法
- 维护建议
EOF

# 创建4.3本地存储目录
mkdir -p "$BASE_DIR/第4章-状态管理与数据处理/4.3-本地存储"

# 创建4.3本地存储README文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.3-本地存储/README.md" << 'EOF'
---
title: 本地存储
icon: uni-app-storage
order: 3
---

# 本地存储

本节介绍uni-app的本地存储解决方案。
EOF

# 创建4.3.1StorageAPI文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.3-本地存储/4.3.1-StorageAPI.md" << 'EOF'
---
title: StorageAPI
icon: uni-app-storage-api
order: 1
---

# StorageAPI

## 基本操作
- 数据存储
- 数据读取
- 数据删除
- 清空操作
- 容量管理

## 高级特性
- 同步操作
- 异步操作
- 加密存储
- 过期控制
- 事件监听

## 性能优化
- 批量操作
- 压缩存储
- 缓存策略
- 容量控制
- 垃圾回收

## 最佳实践
- 接口设计
- 性能优化
- 安全处理
- 调试方法
- 维护建议
EOF

# 创建4.3.2文件系统文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.3-本地存储/4.3.2-文件系统.md" << 'EOF'
---
title: 文件系统
icon: uni-app-filesystem
order: 2
---

# 文件系统

## 基本操作
- 文件读写
- 目录操作
- 文件管理
- 权限控制
- 路径处理

## 高级特性
- 文件流
- 断点续传
- 文件监听
- 压缩解压
- 加密存储

## 性能优化
- 异步操作
- 缓冲区
- 批量处理
- 内存管理
- 垃圾回收

## 最佳实践
- 接口设计
- 性能优化
- 安全处理
- 调试方法
- 维护建议
EOF

# 创建4.3.3数据库操作文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.3-本地存储/4.3.3-数据库操作.md" << 'EOF'
---
title: 数据库操作
icon: uni-app-database
order: 3
---

# 数据库操作

## 基本操作
- 数据增删
- 数据查询
- 数据更新
- 事务处理
- 索引管理

## 高级特性
- 关系操作
- 批量处理
- 数据迁移
- 版本控制
- 数据备份

## 性能优化
- 查询优化
- 索引优化
- 缓存策略
- 连接池
- 内存管理

## 最佳实践
- 数据建模
- 性能优化
- 安全处理
- 调试方法
- 维护建议
EOF

# 创建4.4数据安全目录
mkdir -p "$BASE_DIR/第4章-状态管理与数据处理/4.4-数据安全"

# 创建4.4数据安全README文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.4-数据安全/README.md" << 'EOF'
---
title: 数据安全
icon: uni-app-security
order: 4
---

# 数据安全

本节介绍uni-app的数据安全解决方案。
EOF

# 创建4.4.1数据加密文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.4-数据安全/4.4.1-数据加密.md" << 'EOF'
---
title: 数据加密
icon: uni-app-encryption
order: 1
---

# 数据加密

## 加密算法
- 对称加密
- 非对称加密
- 哈希算法
- 数字签名
- 密钥管理

## 应用场景
- 数据存储
- 数据传输
- 身份认证
- 完整性校验
- 隐私保护

## 安全策略
- 密钥保护
- 算法选择
- 加密强度
- 性能平衡
- 安全更新

## 最佳实践
- 方案设计
- 性能优化
- 安全评估
- 调试方法
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建4.4.2安全存储文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.4-数据安全/4.4.2-安全存储.md" << 'EOF'
---
title: 安全存储
icon: uni-app-secure-storage
order: 2
---

# 安全存储

## 存储方案
- 加密存储
- 安全容器
- 密钥管理
- 访问控制
- 数据隔离

## 安全机制
- 身份认证
- 权限控制
- 数据加密
- 完整性校验
- 安全审计

## 防护策略
- 越权防护
- 注入防护
- 篡改防护
- 泄露防护
- 备份恢复

## 最佳实践
- 方案设计
- 安全评估
- 性能优化
- 监控告警
- 应急响应
EOF

# 创建4.4.3防护措施文件
cat > "$BASE_DIR/第4章-状态管理与数据处理/4.4-数据安全/4.4.3-防护措施.md" << 'EOF'
---
title: 防护措施
icon: uni-app-protection
order: 3
---

# 防护措施

## 基本防护
- 代码混淆
- 反调试
- 完整性校验
- 环境检测
- 安全沙箱

## 攻击防护
- XSS防护
- CSRF防护
- SQL注入防护
- 重放攻击防护
- 越权访问防护

## 数据防护
- 敏感数据加密
- 传输加密
- 存储加密
- 备份保护
- 销毁机制

## 最佳实践
- 防护设计
- 安全评估
- 性能平衡
- 监控预警
- 应急处理
EOF

# 创建第5章跨端开发目录
mkdir -p "$BASE_DIR/第5章-跨端开发"

# 创建第5章跨端开发README文件
cat > "$BASE_DIR/第5章-跨端开发/README.md" << 'EOF'
---
title: 跨端开发
icon: uni-app-cross-platform
order: 5
---

# 跨端开发

本章介绍uni-app的跨端开发解决方案。
EOF

# 创建5.1H5开发目录
mkdir -p "$BASE_DIR/第5章-跨端开发/5.1-H5开发"

# 创建5.1H5开发README文件
cat > "$BASE_DIR/第5章-跨端开发/5.1-H5开发/README.md" << 'EOF'
---
title: H5开发
icon: uni-app-h5
order: 1
---

# H5开发

本节介绍uni-app的H5开发相关知识。
EOF

# 创建5.1.1浏览器兼容文件
cat > "$BASE_DIR/第5章-跨端开发/5.1-H5开发/5.1.1-浏览器兼容.md" << 'EOF'
---
title: 浏览器兼容
icon: uni-app-browser
order: 1
---

# 浏览器兼容

## 兼容策略
- 特性检测
- 降级处理
- 优雅降级
- 渐进增强
- polyfill支持

## 适配方案
- 样式适配
- 功能适配
- 布局适配
- 交互适配
- 性能适配

## 测试验证
- 兼容性测试
- 功能测试
- 性能测试
- 自动化测试
- 回归测试

## 最佳实践
- 兼容设计
- 性能优化
- 调试方法
- 问题处理
- 维护建议
EOF

# 创建5.1.2PWA支持文件
cat > "$BASE_DIR/第5章-跨端开发/5.1-H5开发/5.1.2-PWA支持.md" << 'EOF'
---
title: PWA支持
icon: uni-app-pwa
order: 2
---

# PWA支持

## 基本特性
- Service Worker
- Manifest配置
- 离线缓存
- 消息推送
- 后台同步

## 功能实现
- 安装体验
- 离线访问
- 消息通知
- 性能优化
- 桌面图标

## 开发工具
- 调试工具
- 测试工具
- 构建工具
- 性能监控
- 错误追踪

## 最佳实践
- 架构设计
- 性能优化
- 体验优化
- 调试方法
- 发布部署
EOF

# 创建5.1.3性能优化文件
cat > "$BASE_DIR/第5章-跨端开发/5.1-H5开发/5.1.3-性能优化.md" << 'EOF'
---
title: 性能优化
icon: uni-app-performance
order: 3
---

# 性能优化

## 加载优化
- 资源压缩
- 懒加载
- 预加载
- 缓存策略
- CDN加速

## 运行优化
- 代码优化
- 渲染优化
- 内存优化
- 动画优化
- 交互优化

## 体验优化
- 首屏优化
- 响应优化
- 流畅度优化
- 网络优化
- 离线体验

## 最佳实践
- 优化策略
- 性能监控
- 问题诊断
- 调试方法
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建5.2小程序开发目录
mkdir -p "$BASE_DIR/第5章-跨端开发/5.2-小程序开发"

# 创建5.2小程序开发README文件
cat > "$BASE_DIR/第5章-跨端开发/5.2-小程序开发/README.md" << 'EOF'
---
title: 小程序开发
icon: uni-app-miniprogram
order: 2
---

# 小程序开发

本节介绍uni-app的小程序开发相关知识。
EOF

# 创建5.2.1平台差异文件
cat > "$BASE_DIR/第5章-跨端开发/5.2-小程序开发/5.2.1-平台差异.md" << 'EOF'
---
title: 平台差异
icon: uni-app-platform-diff
order: 1
---

# 平台差异

## 基础差异
- 运行环境
- 生命周期
- 页面结构
- 组件系统
- API差异

## 功能差异
- 界面交互
- 网络请求
- 数据存储
- 权限管理
- 硬件能力

## 开发差异
- 开发工具
- 调试方法
- 发布流程
- 版本管理
- 性能限制

## 最佳实践
- 兼容处理
- 性能优化
- 体验优化
- 调试技巧
- 维护建议
EOF

# 创建5.2.2特殊API处理文件
cat > "$BASE_DIR/第5章-跨端开发/5.2-小程序开发/5.2.2-特殊API处理.md" << 'EOF'
---
title: 特殊API处理
icon: uni-app-api
order: 2
---

# 特殊API处理

## API类型
- 平台专有API
- 条件编译API
- 兼容性API
- 扩展API
- 自定义API

## 处理策略
- 能力检测
- 降级处理
- 替代方案
- 错误处理
- 性能优化

## 实现方案
- 接口封装
- 条件编译
- 适配层
- 插件机制
- 扩展开发

## 最佳实践
- 接口设计
- 兼容处理
- 性能优化
- 调试方法
- 维护建议
EOF

# 创建5.2.3分包优化文件
cat > "$BASE_DIR/第5章-跨端开发/5.2-小程序开发/5.2.3-分包优化.md" << 'EOF'
---
title: 分包优化
icon: uni-app-subpackage
order: 3
---

# 分包优化

## 分包策略
- 主包优化
- 分包配置
- 加载策略
- 预加载
- 按需加载

## 优化方案
- 代码分割
- 资源分包
- 依赖管理
- 体积控制
- 加载优化

## 性能提升
- 首屏优化
- 加载速度
- 运行性能
- 内存优化
- 体验优化

## 最佳实践
- 分包设计
- 性能优化
- 体验优化
- 调试方法
- 维护建议
EOF

# 创建5.3App开发目录
mkdir -p "$BASE_DIR/第5章-跨端开发/5.3-App开发"

# 创建5.3App开发README文件
cat > "$BASE_DIR/第5章-跨端开发/5.3-App开发/README.md" << 'EOF'
---
title: App开发
icon: uni-app-app
order: 3
---

# App开发

本节介绍uni-app的App开发相关知识。
EOF

# 创建5.3.1Android开发文件
cat > "$BASE_DIR/第5章-跨端开发/5.3-App开发/5.3.1-Android开发.md" << 'EOF'
---
title: Android开发
icon: uni-app-android
order: 1
---

# Android开发

## 基础配置
- 环境搭建
- 项目配置
- 权限管理
- 签名配置
- 打包发布

## 功能开发
- 原生能力
- 硬件接口
- 系统服务
- 性能优化
- 安全机制

## 平台特性
- 生命周期
- 界面适配
- 版本兼容
- 系统特性
- 调试工具

## 最佳实践
- 架构设计
- 性能优化
- 体验优化
- 调试方法
- 发布部署
EOF

# 创建5.3.2iOS开发文件
cat > "$BASE_DIR/第5章-跨端开发/5.3-App开发/5.3.2-iOS开发.md" << 'EOF'
---
title: iOS开发
icon: uni-app-ios
order: 2
---

# iOS开发

## 基础配置
- 环境搭建
- 项目配置
- 权限管理
- 证书配置
- 打包发布

## 功能开发
- 原生能力
- 硬件接口
- 系统服务
- 性能优化
- 安全机制

## 平台特性
- 生命周期
- 界面适配
- 版本兼容
- 系统特性
- 调试工具

## 最佳实践
- 架构设计
- 性能优化
- 体验优化
- 调试方法
- 发布部署
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建5.3.3原生插件文件
cat > "$BASE_DIR/第5章-跨端开发/5.3-App开发/5.3.3-原生插件.md" << 'EOF'
---
title: 原生插件
icon: uni-app-native-plugin
order: 3
---

# 原生插件

## 基础概念
- 插件架构
- 开发规范
- 生命周期
- 通信机制
- 调试工具

## 开发流程
- 环境配置
- 接口设计
- 功能实现
- 测试验证
- 发布部署

## 功能扩展
- 原生能力
- 硬件接口
- 系统服务
- 第三方SDK
- 自定义功能

## 最佳实践
- 架构设计
- 性能优化
- 安全处理
- 调试方法
- 维护建议
EOF

# 创建5.4鸿蒙开发目录
mkdir -p "$BASE_DIR/第5章-跨端开发/5.4-鸿蒙开发"

# 创建5.4鸿蒙开发README文件
cat > "$BASE_DIR/第5章-跨端开发/5.4-鸿蒙开发/README.md" << 'EOF'
---
title: 鸿蒙开发
icon: uni-app-harmony
order: 4
---

# 鸿蒙开发

本节介绍uni-app的鸿蒙开发相关知识。
EOF

# 创建5.4.1应用开发文件
cat > "$BASE_DIR/第5章-跨端开发/5.4-鸿蒙开发/5.4.1-应用开发.md" << 'EOF'
---
title: 应用开发
icon: uni-app-harmony-app
order: 1
---

# 应用开发

## 基础配置
- 环境搭建
- 项目配置
- 权限管理
- 签名配置
- 打包发布

## 功能开发
- UI开发
- 生命周期
- 数据管理
- 页面路由
- 系统服务

## 平台特性
- 分布式特性
- 超级终端
- 多设备协同
- 系统能力
- 安全机制

## 最佳实践
- 架构设计
- 性能优化
- 体验优化
- 调试方法
- 发布部署
EOF

# 创建5.4.2元服务开发文件
cat > "$BASE_DIR/第5章-跨端开发/5.4-鸿蒙开发/5.4.2-元服务开发.md" << 'EOF'
---
title: 元服务开发
icon: uni-app-harmony-service
order: 2
---

# 元服务开发

## 基础概念
- 服务定义
- 服务注册
- 服务发现
- 服务通信
- 服务管理

## 开发流程
- 接口设计
- 功能实现
- 测试验证
- 部署发布
- 运维监控

## 高级特性
- 分布式能力
- 跨设备协同
- 服务编排
- 安全机制
- 性能优化

## 最佳实践
- 架构设计
- 性能优化
- 安全处理
- 调试方法
- 维护建议
EOF

# 创建5.4.3性能优化文件
cat > "$BASE_DIR/第5章-跨端开发/5.4-鸿蒙开发/5.4.3-性能优化.md" << 'EOF'
---
title: 性能优化
icon: uni-app-harmony-performance
order: 3
---

# 性能优化

## 启动优化
- 冷启动优化
- 热启动优化
- 进程优化
- 内存优化
- 资源优化

## 运行优化
- 渲染优化
- 动画优化
- 内存管理
- 电量优化
- 网络优化

## 体验优化
- 响应优化
- 流畅度优化
- 交互优化
- 稳定性优化
- 兼容性优化

## 最佳实践
- 优化策略
- 性能监控
- 问题诊断
- 调试方法
- 维护建议
EOF

# 创建第6章性能优化目录
mkdir -p "$BASE_DIR/第6章-性能优化"

# 创建第6章性能优化README文件
cat > "$BASE_DIR/第6章-性能优化/README.md" << 'EOF'
---
title: 性能优化
icon: uni-app-performance
order: 6
---

# 性能优化

本章介绍uni-app的性能优化相关知识。
EOF

# 创建6.1加载优化目录
mkdir -p "$BASE_DIR/第6章-性能优化/6.1-加载优化"

# 创建6.1加载优化README文件
cat > "$BASE_DIR/第6章-性能优化/6.1-加载优化/README.md" << 'EOF'
---
title: 加载优化
icon: uni-app-loading
order: 1
---

# 加载优化

## 优化策略
- 资源加载
- 代码加载
- 预加载
- 懒加载
- 缓存优化

## 实现方案
- 代码分割
- 资源压缩
- 并行加载
- 按需加载
- 缓存管理

## 性能指标
- 首屏时间
- 加载速度
- 资源占用
- 内存使用
- 性能监控

## 最佳实践
- 优化设计
- 性能监控
- 问题诊断
- 调试方法
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建6.1.1首屏加载文件
cat > "$BASE_DIR/第6章-性能优化/6.1-加载优化/6.1.1-首屏加载.md" << 'EOF'
---
title: 首屏加载
icon: uni-app-first-screen
order: 1
---

# 首屏加载

## 优化策略
- 代码分割
- 资源压缩
- 懒加载
- 预加载
- 缓存优化

## 实现方案
- 路由优化
- 组件优化
- 资源优化
- 渲染优化
- 网络优化

## 性能指标
- 白屏时间
- 首屏时间
- 可交互时间
- 资源加载
- 性能监控

## 最佳实践
- 优化设计
- 监控分析
- 问题诊断
- 调试方法
- 维护建议
EOF

# 创建6.1.2资源加载文件
cat > "$BASE_DIR/第6章-性能优化/6.1-加载优化/6.1.2-资源加载.md" << 'EOF'
---
title: 资源加载
icon: uni-app-resource
order: 2
---

# 资源加载

## 资源类型
- 图片资源
- 样式资源
- 脚本资源
- 媒体资源
- 字体资源

## 优化策略
- 资源压缩
- 资源合并
- 按需加载
- 并行加载
- 缓存策略

## 加载方案
- 异步加载
- 延迟加载
- 预加载
- 按需加载
- 条件加载

## 最佳实践
- 资源管理
- 加载优化
- 缓存优化
- 监控分析
- 维护建议
EOF

# 创建6.1.3预加载策略文件
cat > "$BASE_DIR/第6章-性能优化/6.1-加载优化/6.1.3-预加载策略.md" << 'EOF'
---
title: 预加载策略
icon: uni-app-preload
order: 3
---

# 预加载策略

## 预加载类型
- 路由预加载
- 组件预加载
- 资源预加载
- 数据预加载
- 服务预加载

## 实现方案
- 静态预加载
- 动态预加载
- 智能预加载
- 条件预加载
- 优先级控制

## 优化策略
- 时机控制
- 资源控制
- 内存控制
- 网络控制
- 性能平衡

## 最佳实践
- 策略设计
- 性能优化
- 资源管理
- 监控分析
- 维护建议
EOF

# 创建6.2运行优化目录
mkdir -p "$BASE_DIR/第6章-性能优化/6.2-运行优化"

# 创建6.2运行优化README文件
cat > "$BASE_DIR/第6章-性能优化/6.2-运行优化/README.md" << 'EOF'
---
title: 运行优化
icon: uni-app-runtime
order: 2
---

# 运行优化

本节介绍uni-app的运行时性能优化相关知识。
EOF

# 创建6.2.1渲染性能文件
cat > "$BASE_DIR/第6章-性能优化/6.2-运行优化/6.2.1-渲染性能.md" << 'EOF'
---
title: 渲染性能
icon: uni-app-render
order: 1
---

# 渲染性能

## 渲染优化
- 虚拟列表
- 懒渲染
- 按需渲染
- 重绘优化
- 回流优化

## 实现方案
- DOM优化
- 样式优化
- 布局优化
- 动画优化
- 事件优化

## 性能监控
- 渲染指标
- 性能分析
- 瓶颈定位
- 优化建议
- 监控告警

## 最佳实践
- 优化策略
- 性能监控
- 问题诊断
- 调试方法
- 维护建议
EOF

# 创建6.2.2内存管理文件
cat > "$BASE_DIR/第6章-性能优化/6.2-运行优化/6.2.2-内存管理.md" << 'EOF'
---
title: 内存管理
icon: uni-app-memory
order: 2
---

# 内存管理

## 内存优化
- 内存泄漏
- 内存占用
- 垃圾回收
- 缓存管理
- 资源释放

## 监控分析
- 内存监控
- 性能分析
- 泄漏检测
- 占用分析
- 优化建议

## 优化策略
- 资源管理
- 缓存控制
- 组件优化
- 数据优化
- 生命周期

## 最佳实践
- 优化设计
- 监控分析
- 问题诊断
- 调试方法
- 维护建议
EOF

# 创建6.2.3动画优化文件
cat > "$BASE_DIR/第6章-性能优化/6.2-运行优化/6.2.3-动画优化.md" << 'EOF'
---
title: 动画优化
icon: uni-app-animation
order: 3
---

# 动画优化

## 动画类型
- CSS动画
- JS动画
- 帧动画
- 过渡动画
- 手势动画

## 优化策略
- 性能优化
- 流畅度优化
- 内存优化
- 电量优化
- 体验优化

## 实现方案
- 硬件加速
- 动画触发
- 动画控制
- 动画复用
- 动画同步

## 最佳实践
- 动画设计
- 性能优化
- 体验优化
- 调试方法
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建6.3包体积优化目录
mkdir -p "$BASE_DIR/第6章-性能优化/6.3-包体积优化"

# 创建6.3包体积优化README文件
cat > "$BASE_DIR/第6章-性能优化/6.3-包体积优化/README.md" << 'EOF'
---
title: 包体积优化
icon: uni-app-package
order: 3
---

# 包体积优化

本节介绍uni-app的包体积优化相关知识。
EOF

# 创建6.3.1代码压缩文件
cat > "$BASE_DIR/第6章-性能优化/6.3-包体积优化/6.3.1-代码压缩.md" << 'EOF'
---
title: 代码压缩
icon: uni-app-code-compress
order: 1
---

# 代码压缩

## 压缩策略
- 代码混淆
- 变量压缩
- 死代码消除
- 树摇优化
- 模块合并

## 工具选择
- Terser
- UglifyJS
- webpack优化
- rollup优化
- 自定义压缩

## 优化效果
- 体积减少
- 加载提速
- 执行优化
- 安全增强
- 性能提升

## 最佳实践
- 压缩配置
- 性能平衡
- 兼容处理
- 调试支持
- 维护建议
EOF

# 创建6.3.2资源压缩文件
cat > "$BASE_DIR/第6章-性能优化/6.3-包体积优化/6.3.2-资源压缩.md" << 'EOF'
---
title: 资源压缩
icon: uni-app-resource-compress
order: 2
---

# 资源压缩

## 资源类型
- 图片压缩
- 样式压缩
- 字体压缩
- 媒体压缩
- 配置压缩

## 压缩工具
- 图片优化
- CSS压缩
- 字体子集化
- 媒体转码
- 配置精简

## 优化策略
- 质量控制
- 格式选择
- 按需加载
- 缓存优化
- 动态加载

## 最佳实践
- 工具选择
- 压缩配置
- 质量平衡
- 性能监控
- 维护建议
EOF

# 创建6.3.3分包策略文件
cat > "$BASE_DIR/第6章-性能优化/6.3-包体积优化/6.3.3-分包策略.md" << 'EOF'
---
title: 分包策略
icon: uni-app-subpackage
order: 3
---

# 分包策略

## 分包方案
- 主包优化
- 分包配置
- 预加载
- 按需加载
- 并行加载

## 优化策略
- 依赖分析
- 代码分割
- 资源分配
- 加载优化
- 缓存策略

## 实现技术
- 路由分包
- 组件分包
- 资源分包
- 动态加载
- 懒加载

## 最佳实践
- 分包设计
- 性能优化
- 加载优化
- 调试方法
- 维护建议
EOF

# 创建第7章工程化实践目录
mkdir -p "$BASE_DIR/第7章-工程化实践"

# 创建第7章工程化实践README文件
cat > "$BASE_DIR/第7章-工程化实践/README.md" << 'EOF'
---
title: 工程化实践
icon: uni-app-engineering
order: 7
---

# 工程化实践

本章介绍uni-app的工程化实践相关知识。
EOF

# 创建7.1开发工具目录
mkdir -p "$BASE_DIR/第7章-工程化实践/7.1-开发工具"

# 创建7.1开发工具README文件
cat > "$BASE_DIR/第7章-工程化实践/7.1-开发工具/README.md" << 'EOF'
---
title: 开发工具
icon: uni-app-tools
order: 1
---

# 开发工具

本节介绍uni-app的开发工具相关知识。
EOF

# 创建7.1.1HBuilderX文件
cat > "$BASE_DIR/第7章-工程化实践/7.1-开发工具/7.1.1-HBuilderX.md" << 'EOF'
---
title: HBuilderX
icon: uni-app-hbuilderx
order: 1
---

# HBuilderX

## 基本功能
- 项目管理
- 代码编辑
- 调试工具
- 编译打包
- 插件扩展

## 开发特性
- 智能提示
- 代码格式化
- 代码检查
- 版本控制
- 集成终端

## 调试功能
- 断点调试
- 网络调试
- 性能分析
- 错误追踪
- 日志查看

## 最佳实践
- 工具配置
- 插件使用
- 快捷键
- 调试技巧
- 性能优化
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建7.1.2VSCode文件
cat > "$BASE_DIR/第7章-工程化实践/7.1-开发工具/7.1.2-VSCode.md" << 'EOF'
---
title: VSCode
icon: uni-app-vscode
order: 2
---

# VSCode

## 基本配置
- 插件安装
- 工作区设置
- 快捷键配置
- 代码片段
- 主题定制

## 开发插件
- Vetur/Volar
- ESLint
- Prettier
- Git集成
- 调试工具

## 调试功能
- 断点调试
- 变量监视
- 调用堆栈
- 控制台
- 性能分析

## 最佳实践
- 环境配置
- 插件推荐
- 调试技巧
- 快捷操作
- 性能优化
EOF

# 创建7.1.3WebStorm文件
cat > "$BASE_DIR/第7章-工程化实践/7.1-开发工具/7.1.3-WebStorm.md" << 'EOF'
---
title: WebStorm
icon: uni-app-webstorm
order: 3
---

# WebStorm

## 基本功能
- 项目管理
- 代码编辑
- 智能提示
- 重构工具
- 版本控制

## 开发特性
- Vue支持
- TypeScript
- 调试工具
- 测试集成
- 性能工具

## 插件扩展
- 代码检查
- 格式化工具
- 主题插件
- 开发工具
- 效率插件

## 最佳实践
- 环境配置
- 插件推荐
- 调试技巧
- 快捷操作
- 性能优化
EOF

# 创建7.2构建工具目录
mkdir -p "$BASE_DIR/第7章-工程化实践/7.2-构建工具"

# 创建7.2构建工具README文件
cat > "$BASE_DIR/第7章-工程化实践/7.2-构建工具/README.md" << 'EOF'
---
title: 构建工具
icon: uni-app-build
order: 2
---

# 构建工具

本节介绍uni-app的构建工具相关知识。
EOF

# 创建7.2.1Vite配置文件
cat > "$BASE_DIR/第7章-工程化实践/7.2-构建工具/7.2.1-Vite配置.md" << 'EOF'
---
title: Vite配置
icon: uni-app-vite
order: 1
---

# Vite配置

## 基础配置
- 项目配置
- 环境变量
- 插件配置
- 构建选项
- 开发服务器

## 性能优化
- 构建优化
- 依赖优化
- 缓存策略
- 代码分割
- 资源处理

## 插件开发
- 插件机制
- 钩子函数
- 转换流程
- 虚拟模块
- 构建优化

## 最佳实践
- 配置推荐
- 性能优化
- 调试技巧
- 问题处理
- 维护建议
EOF

# 创建7.2.2Webpack配置文件
cat > "$BASE_DIR/第7章-工程化实践/7.2-构建工具/7.2.2-Webpack配置.md" << 'EOF'
---
title: Webpack配置
icon: uni-app-webpack
order: 2
---

# Webpack配置

## 基础配置
- 入口配置
- 输出配置
- 加载器配置
- 插件配置
- 优化配置

## 性能优化
- 代码分割
- 懒加载
- 缓存优化
- 体积优化
- 速度优化

## 插件开发
- 插件架构
- 生命周期
- 钩子函数
- 资源处理
- 构建优化

## 最佳实践
- 配置推荐
- 性能优化
- 调试技巧
- 问题处理
- 维护建议
EOF

# 创建7.2.3自动化构建文件
cat > "$BASE_DIR/第7章-工程化实践/7.2-构建工具/7.2.3-自动化构建.md" << 'EOF'
---
title: 自动化构建
icon: uni-app-automation
order: 3
---

# 自动化构建

## 构建流程
- 环境准备
- 依赖安装
- 代码构建
- 资源处理
- 部署发布

## 工具选择
- CI/CD工具
- 构建工具
- 测试工具
- 部署工具
- 监控工具

## 优化策略
- 并行构建
- 缓存优化
- 增量构建
- 资源优化
- 错误处理

## 最佳实践
- 流程设计
- 性能优化
- 监控告警
- 问题处理
- 维护建议
EOF

# 创建7.3测试体系目录
mkdir -p "$BASE_DIR/第7章-工程化实践/7.3-测试体系"

# 创建7.3测试体系README文件
cat > "$BASE_DIR/第7章-工程化实践/7.3-测试体系/README.md" << 'EOF'
---
title: 测试体系
icon: uni-app-test
order: 3
---

# 测试体系

## 测试类型
- 单元测试
- 集成测试
- E2E测试
- 性能测试
- 兼容性测试

## 测试工具
- Jest
- Vitest
- Cypress
- Selenium
- 自动化工具

## 测试策略
- 测试计划
- 用例设计
- 覆盖率
- 持续集成
- 报告分析

## 最佳实践
- 测试规范
- 工具选择
- 效率提升
- 质量保证
- 持续改进
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建7.3.1单元测试文件
cat > "$BASE_DIR/第7章-工程化实践/7.3-测试体系/7.3.1-单元测试.md" << 'EOF'
---
title: 单元测试
icon: uni-app-unit-test
order: 1
---

# 单元测试

## 测试框架
- Jest配置
- Vitest使用
- 断言方法
- Mock机制
- 覆盖率统计

## 测试类型
- 组件测试
- 服务测试
- 工具测试
- API测试
- 钩子测试

## 测试技巧
- 测试隔离
- 数据模拟
- 异步测试
- 快照测试
- 边界测试

## 最佳实践
- 测试规范
- 用例设计
- 效率提升
- 质量保证
- 持续改进
EOF

# 创建7.3.2E2E测试文件
cat > "$BASE_DIR/第7章-工程化实践/7.3-测试体系/7.3.2-E2E测试.md" << 'EOF'
---
title: E2E测试
icon: uni-app-e2e-test
order: 2
---

# E2E测试

## 测试框架
- Cypress
- Playwright
- Selenium
- Puppeteer
- TestCafe

## 测试场景
- 页面交互
- 路由跳转
- 数据流转
- 性能监控
- 兼容性测试

## 测试策略
- 场景设计
- 数据准备
- 环境配置
- 并行执行
- 报告生成

## 最佳实践
- 框架选择
- 用例设计
- 效率优化
- 稳定性
- 维护建议
EOF

# 创建7.3.3自动化测试文件
cat > "$BASE_DIR/第7章-工程化实践/7.3-测试体系/7.3.3-自动化测试.md" << 'EOF'
---
title: 自动化测试
icon: uni-app-auto-test
order: 3
---

# 自动化测试

## 测试流程
- 环境准备
- 用例执行
- 结果验证
- 报告生成
- 问题跟踪

## 工具链
- 测试框架
- CI工具
- 监控工具
- 报告工具
- 分析工具

## 优化策略
- 并行执行
- 失败重试
- 数据管理
- 环境隔离
- 性能优化

## 最佳实践
- 流程设计
- 工具选择
- 效率提升
- 质量保证
- 持续改进
EOF

# 创建7.4CI/CD目录
mkdir -p "$BASE_DIR/第7章-工程化实践/7.4-CI_CD"

# 创建7.4CI/CD README文件
cat > "$BASE_DIR/第7章-工程化实践/7.4-CI_CD/README.md" << 'EOF'
---
title: CI/CD
icon: uni-app-cicd
order: 4
---

# CI/CD

本节介绍uni-app的CI/CD相关知识。
EOF

# 创建7.4.1持续集成文件
cat > "$BASE_DIR/第7章-工程化实践/7.4-CI_CD/7.4.1-持续集成.md" << 'EOF'
---
title: 持续集成
icon: uni-app-ci
order: 1
---

# 持续集成

## 基础配置
- 环境配置
- 流程定义
- 触发规则
- 构建配置
- 测试集成

## 工具链
- Jenkins
- GitLab CI
- GitHub Actions
- Travis CI
- Circle CI

## 优化策略
- 并行构建
- 缓存优化
- 资源管理
- 监控告警
- 问题处理

## 最佳实践
- 流程设计
- 工具选择
- 效率提升
- 质量保证
- 持续改进
EOF

# 创建7.4.2自动部署文件
cat > "$BASE_DIR/第7章-工程化实践/7.4-CI_CD/7.4.2-自动部署.md" << 'EOF'
---
title: 自动部署
icon: uni-app-cd
order: 2
---

# 自动部署

## 部署流程
- 环境准备
- 代码部署
- 配置更新
- 服务重启
- 健康检查

## 部署策略
- 蓝绿部署
- 金丝雀发布
- 滚动更新
- 灰度发布
- 回滚机制

## 工具选择
- Docker
- Kubernetes
- Ansible
- Shell脚本
- 监控工具

## 最佳实践
- 流程设计
- 工具选择
- 效率提升
- 安全保证
- 持续改进
EOF

# 创建7.4.3环境管理文件
cat > "$BASE_DIR/第7章-工程化实践/7.4-CI_CD/7.4.3-环境管理.md" << 'EOF'
---
title: 环境管理
icon: uni-app-env
order: 3
---

# 环境管理

## 环境类型
- 开发环境
- 测试环境
- 预发环境
- 生产环境
- 灾备环境

## 配置管理
- 环境变量
- 配置中心
- 密钥管理
- 权限控制
- 版本管理

## 运维管理
- 监控告警
- 日志管理
- 备份恢复
- 安全策略
- 应急预案

## 最佳实践
- 环境规划
- 配置管理
- 安全控制
- 监控预警
- 持续优化
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建第8章云开发目录
mkdir -p "$BASE_DIR/第8章-云开发"

# 创建第8章云开发README文件
cat > "$BASE_DIR/第8章-云开发/README.md" << 'EOF'
---
title: 云开发
icon: uni-app-cloud
order: 8
---

# 云开发

本章介绍uni-app的云开发相关知识。
EOF

# 创建8.1云函数开发目录
mkdir -p "$BASE_DIR/第8章-云开发/8.1-云函数开发"

# 创建8.1云函数开发README文件
cat > "$BASE_DIR/第8章-云开发/8.1-云函数开发/README.md" << 'EOF'
---
title: 云函数开发
icon: uni-app-cloud-function
order: 1
---

# 云函数开发

本节介绍uni-app的云函数开发相关知识。
EOF

# 创建8.1.1云函数基础文件
cat > "$BASE_DIR/第8章-云开发/8.1-云函数开发/8.1.1-云函数基础.md" << 'EOF'
---
title: 云函数基础
icon: uni-app-cloud-basic
order: 1
---

# 云函数基础

## 基本概念
- 云函数定义
- 运行环境
- 生命周期
- 触发方式
- 开发模式

## 开发流程
- 环境配置
- 函数编写
- 本地调试
- 部署发布
- 监控运维

## 功能特性
- 异步执行
- 定时触发
- 事件驱动
- 环境变量
- 日志管理

## 最佳实践
- 架构设计
- 性能优化
- 安全控制
- 调试方法
- 维护建议
EOF

# 创建8.1.2定时触发器文件
cat > "$BASE_DIR/第8章-云开发/8.1-云函数开发/8.1.2-定时触发器.md" << 'EOF'
---
title: 定时触发器
icon: uni-app-cloud-trigger
order: 2
---

# 定时触发器

## 基本概念
- 触发器类型
- 触发规则
- 执行时间
- 并发控制
- 错误处理

## 配置管理
- 时间设置
- 重试策略
- 超时设置
- 并发限制
- 日志配置

## 应用场景
- 定时任务
- 数据同步
- 缓存更新
- 报表生成
- 清理任务

## 最佳实践
- 触发设计
- 性能优化
- 监控告警
- 问题处理
- 维护建议
EOF

# 创建8.1.3云函数安全文件
cat > "$BASE_DIR/第8章-云开发/8.1-云函数开发/8.1.3-云函数安全.md" << 'EOF'
---
title: 云函数安全
icon: uni-app-cloud-security
order: 3
---

# 云函数安全

## 安全策略
- 访问控制
- 身份认证
- 权限管理
- 数据加密
- 安全审计

## 防护措施
- 输入验证
- 敏感信息
- 日志记录
- 异常处理
- 安全监控

## 最佳实践
- 安全设计
- 代码审查
- 漏洞扫描
- 安全测试
- 应急响应

## 运维管理
- 监控告警
- 日志分析
- 安全更新
- 事件处理
- 安全评估
EOF

# 创建8.1.4性能优化文件
cat > "$BASE_DIR/第8章-云开发/8.1-云函数开发/8.1.4-性能优化.md" << 'EOF'
---
title: 性能优化
icon: uni-app-cloud-performance
order: 4
---

# 性能优化

## 优化策略
- 冷启动优化
- 资源管理
- 并发控制
- 超时处理
- 错误重试

## 监控分析
- 性能指标
- 资源使用
- 调用链路
- 错误分析
- 性能瓶颈

## 优化方案
- 代码优化
- 资源配置
- 缓存策略
- 并发处理
- 异常处理

## 最佳实践
- 优化设计
- 监控告警
- 问题诊断
- 调试方法
- 维护建议
EOF

# 创建8.1.5常用云函数文件
cat > "$BASE_DIR/第8章-云开发/8.1-云函数开发/8.1.5-常用云函数.md" << 'EOF'
---
title: 常用云函数
icon: uni-app-cloud-common
order: 5
---

# 常用云函数

## 数据处理
- 数据增删改查
- 数据同步
- 数据转换
- 数据验证
- 数据分析

## 业务功能
- 用户管理
- 消息推送
- 支付处理
- 文件处理
- 定时任务

## 系统功能
- 日志记录
- 监控统计
- 安全校验
- 缓存管理
- 错误处理

## 最佳实践
- 功能设计
- 代码复用
- 性能优化
- 安全控制
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建8.2数据库开发目录
mkdir -p "$BASE_DIR/第8章-云开发/8.2-数据库开发"

# 创建8.2数据库开发README文件
cat > "$BASE_DIR/第8章-云开发/8.2-数据库开发/README.md" << 'EOF'
---
title: 数据库开发
icon: uni-app-cloud-database
order: 2
---

# 数据库开发

本节介绍uni-app的云数据库开发相关知识。
EOF

# 创建8.2.1数据模型设计文件
cat > "$BASE_DIR/第8章-云开发/8.2-数据库开发/8.2.1-数据模型设计.md" << 'EOF'
---
title: 数据模型设计
icon: uni-app-database-design
order: 1
---

# 数据模型设计

## 设计原则
- 数据结构
- 字段类型
- 关系设计
- 索引设计
- 约束设计

## 模型规范
- 命名规范
- 字段规范
- 关系规范
- 索引规范
- 性能考虑

## 优化策略
- 数据冗余
- 字段优化
- 关系优化
- 查询优化
- 存储优化

## 最佳实践
- 设计方法
- 性能优化
- 安全控制
- 维护建议
- 扩展性考虑
EOF

# 创建8.2.2权限控制文件
cat > "$BASE_DIR/第8章-云开发/8.2-数据库开发/8.2.2-权限控制.md" << 'EOF'
---
title: 权限控制
icon: uni-app-database-auth
order: 2
---

# 权限控制

## 权限模型
- 用户权限
- 角色权限
- 数据权限
- 字段权限
- 操作权限

## 控制策略
- 访问控制
- 数据隔离
- 字段过滤
- 操作限制
- 安全审计

## 实现方案
- 权限配置
- 权限验证
- 权限缓存
- 权限继承
- 权限同步

## 最佳实践
- 权限设计
- 安全控制
- 性能优化
- 维护建议
- 扩展性考虑
EOF

# 创建8.2.3数据库事务文件
cat > "$BASE_DIR/第8章-云开发/8.2-数据库开发/8.2.3-数据库事务.md" << 'EOF'
---
title: 数据库事务
icon: uni-app-database-transaction
order: 3
---

# 数据库事务

## 事务特性
- 原子性
- 一致性
- 隔离性
- 持久性
- 事务边界

## 事务控制
- 事务开始
- 事务提交
- 事务回滚
- 事务嵌套
- 事务超时

## 隔离级别
- 读未提交
- 读已提交
- 可重复读
- 串行化
- 隔离实现

## 最佳实践
- 事务设计
- 性能优化
- 并发控制
- 问题处理
- 维护建议
EOF

# 创建8.2.4数据库索引文件
cat > "$BASE_DIR/第8章-云开发/8.2-数据库开发/8.2.4-数据库索引.md" << 'EOF'
---
title: 数据库索引
icon: uni-app-database-index
order: 4
---

# 数据库索引

## 索引类型
- 主键索引
- 唯一索引
- 复合索引
- 全文索引
- 空间索引

## 索引设计
- 字段选择
- 顺序设计
- 覆盖索引
- 索引维护
- 索引优化

## 使用策略
- 查询分析
- 索引选择
- 执行计划
- 性能监控
- 维护优化

## 最佳实践
- 设计原则
- 性能优化
- 维护策略
- 问题处理
- 优化建议
EOF

# 创建8.2.5聚合统计文件
cat > "$BASE_DIR/第8章-云开发/8.2-数据库开发/8.2.5-聚合统计.md" << 'EOF'
---
title: 聚合统计
icon: uni-app-database-aggregate
order: 5
---

# 聚合统计

## 聚合函数
- 计数统计
- 求和统计
- 平均值
- 最大最小
- 分组统计

## 统计方法
- 简单统计
- 分组统计
- 条件统计
- 关联统计
- 复杂统计

## 优化策略
- 查询优化
- 索引利用
- 缓存策略
- 分页处理
- 性能监控

## 最佳实践
- 设计方法
- 性能优化
- 缓存策略
- 维护建议
- 扩展考虑
EOF

# 创建8.3云存储开发目录
mkdir -p "$BASE_DIR/第8章-云开发/8.3-云存储开发"

# 创建8.3云存储开发README文件
cat > "$BASE_DIR/第8章-云开发/8.3-云存储开发/README.md" << 'EOF'
---
title: 云存储开发
icon: uni-app-cloud-storage
order: 3
---

# 云存储开发

## 基础功能
- 文件上传
- 文件下载
- 文件管理
- 权限控制
- 安全策略

## 高级特性
- 断点续传
- 分片上传
- 文件预览
- 文件处理
- 缓存管理

## 最佳实践
- 存储设计
- 性能优化
- 安全控制
- 成本控制
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建8.3.1文件上传下载文件
cat > "$BASE_DIR/第8章-云开发/8.3-云存储开发/8.3.1-文件上传下载.md" << 'EOF'
---
title: 文件上传下载
icon: uni-app-cloud-file
order: 1
---

# 文件上传下载

## 上传功能
- 单文件上传
- 多文件上传
- 断点续传
- 分片上传
- 进度监控

## 下载功能
- 文件下载
- 断点续传
- 批量下载
- 进度显示
- 错误处理

## 性能优化
- 压缩处理
- 并发控制
- 缓存策略
- 超时处理
- 重试机制

## 最佳实践
- 功能设计
- 性能优化
- 安全控制
- 用户体验
- 维护建议
EOF

# 创建8.3.2图片处理文件
cat > "$BASE_DIR/第8章-云开发/8.3-云存储开发/8.3.2-图片处理.md" << 'EOF'
---
title: 图片处理
icon: uni-app-cloud-image
order: 2
---

# 图片处理

## 基础处理
- 图片压缩
- 格式转换
- 尺寸调整
- 质量控制
- 水印添加

## 高级功能
- 图片裁剪
- 滤镜效果
- 人脸识别
- 智能剪裁
- 图片优化

## 性能优化
- 缓存策略
- 延迟加载
- 预加载
- 并发控制
- CDN加速

## 最佳实践
- 处理流程
- 性能优化
- 质量控制
- 成本控制
- 维护建议
EOF

# 创建8.3.3CDN加速文件
cat > "$BASE_DIR/第8章-云开发/8.3-云存储开发/8.3.3-CDN加速.md" << 'EOF'
---
title: CDN加速
icon: uni-app-cloud-cdn
order: 3
---

# CDN加速

## 基础配置
- 域名配置
- 源站设置
- 缓存规则
- 刷新预热
- HTTPS配置

## 优化策略
- 缓存策略
- 带宽优化
- 访问控制
- 安全防护
- 性能监控

## 高级功能
- 智能压缩
- 图片优化
- 防盗链
- 访问控制
- 日志分析

## 最佳实践
- 配置优化
- 性能优化
- 成本控制
- 安全防护
- 维护建议
EOF

# 创建8.3.4安全策略文件
cat > "$BASE_DIR/第8章-云开发/8.3-云存储开发/8.3.4-安全策略.md" << 'EOF'
---
title: 安全策略
icon: uni-app-cloud-security
order: 4
---

# 安全策略

## 访问控制
- 身份认证
- 权限管理
- 签名验证
- 防盗链
- 黑白名单

## 数据安全
- 传输加密
- 存储加密
- 数据备份
- 防篡改
- 安全审计

## 防护措施
- DDOS防护
- WAF防护
- 漏洞扫描
- 入侵检测
- 应急响应

## 最佳实践
- 安全设计
- 防护配置
- 监控告警
- 应急处理
- 维护建议
EOF

# 创建8.4云端一体目录
mkdir -p "$BASE_DIR/第8章-云开发/8.4-云端一体"

# 创建8.4云端一体README文件
cat > "$BASE_DIR/第8章-云开发/8.4-云端一体/README.md" << 'EOF'
---
title: 云端一体
icon: uni-app-cloud-integration
order: 4
---

# 云端一体

本节介绍uni-app的云端一体化开发相关知识。
EOF

# 创建8.4.1开发模式文件
cat > "$BASE_DIR/第8章-云开发/8.4-云端一体/8.4.1-开发模式.md" << 'EOF'
---
title: 开发模式
icon: uni-app-cloud-dev
order: 1
---

# 开发模式

## 架构设计
- 前后端分离
- 云端一体
- 微服务
- 无服务
- 混合模式

## 开发流程
- 环境配置
- 接口设计
- 数据流转
- 部署发布
- 运维监控

## 技术选型
- 框架选择
- 工具链
- 云服务
- 开发效率
- 可维护性

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 安全控制
- 维护建议
EOF

# 创建8.4.2数据交互文件
cat > "$BASE_DIR/第8章-云开发/8.4-云端一体/8.4.2-数据交互.md" << 'EOF'
---
title: 数据交互
icon: uni-app-cloud-data
order: 2
---

# 数据交互

## 交互方式
- HTTP请求
- WebSocket
- 消息队列
- 事件驱动
- 实时同步

## 数据处理
- 数据格式
- 数据验证
- 数据转换
- 错误处理
- 性能优化

## 安全控制
- 身份认证
- 权限验证
- 数据加密
- 防注入
- 日志审计

## 最佳实践
- 接口设计
- 性能优化
- 安全控制
- 监控告警
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建8.4.3数据验证文件
cat > "$BASE_DIR/第8章-云开发/8.4-云端一体/8.4.3-数据验证.md" << 'EOF'
---
title: 数据验证
icon: uni-app-cloud-validation
order: 3
---

# 数据验证

## 验证类型
- 格式验证
- 类型验证
- 范围验证
- 规则验证
- 业务验证

## 验证策略
- 前端验证
- 后端验证
- 实时验证
- 批量验证
- 异步验证

## 错误处理
- 错误捕获
- 错误提示
- 错误日志
- 错误恢复
- 错误统计

## 最佳实践
- 验证设计
- 性能优化
- 用户体验
- 安全控制
- 维护建议
EOF

# 创建8.4.4业务逻辑文件
cat > "$BASE_DIR/第8章-云开发/8.4-云端一体/8.4.4-业务逻辑.md" << 'EOF'
---
title: 业务逻辑
icon: uni-app-cloud-business
order: 4
---

# 业务逻辑

## 逻辑层次
- 表示层
- 业务层
- 数据层
- 服务层
- 基础设施层

## 实现方式
- 云函数
- 微服务
- 中间件
- 事件驱动
- 消息队列

## 优化策略
- 代码复用
- 性能优化
- 可维护性
- 可扩展性
- 可测试性

## 最佳实践
- 架构设计
- 代码组织
- 性能优化
- 安全控制
- 维护建议
EOF

# 创建第9章最佳实践目录
mkdir -p "$BASE_DIR/第9章-最佳实践"

# 创建第9章最佳实践README文件
cat > "$BASE_DIR/第9章-最佳实践/README.md" << 'EOF'
---
title: 最佳实践
icon: uni-app-best-practice
order: 9
---

# 最佳实践

本章介绍uni-app的最佳实践相关知识。
EOF

# 创建9.1架构设计目录
mkdir -p "$BASE_DIR/第9章-最佳实践/9.1-架构设计"

# 创建9.1架构设计README文件
cat > "$BASE_DIR/第9章-最佳实践/9.1-架构设计/README.md" << 'EOF'
---
title: 架构设计
icon: uni-app-architecture
order: 1
---

# 架构设计

本节介绍uni-app的架构设计相关知识。
EOF

# 创建9.1.1项目架构文件
cat > "$BASE_DIR/第9章-最佳实践/9.1-架构设计/9.1.1-项目架构.md" << 'EOF'
---
title: 项目架构
icon: uni-app-project-arch
order: 1
---

# 项目架构

## 架构层次
- 应用层
- 业务层
- 服务层
- 数据层
- 基础设施层

## 技术选型
- 框架选择
- 工具链
- 开发语言
- 数据存储
- 部署方案

## 设计原则
- 高内聚
- 低耦合
- 可扩展
- 可维护
- 可测试

## 最佳实践
- 架构设计
- 性能优化
- 安全控制
- 可维护性
- 扩展性
EOF

# 创建9.1.2模块设计文件
cat > "$BASE_DIR/第9章-最佳实践/9.1-架构设计/9.1.2-模块设计.md" << 'EOF'
---
title: 模块设计
icon: uni-app-module
order: 2
---

# 模块设计

## 设计原则
- 单一职责
- 开闭原则
- 依赖倒置
- 接口隔离
- 里氏替换

## 模块划分
- 功能模块
- 业务模块
- 公共模块
- 工具模块
- 基础模块

## 模块通信
- 事件通信
- 状态管理
- 数据流转
- 接口调用
- 消息队列

## 最佳实践
- 设计规范
- 性能优化
- 代码组织
- 测试策略
- 维护建议
EOF

# 创建9.1.3代码复用文件
cat > "$BASE_DIR/第9章-最佳实践/9.1-架构设计/9.1.3-代码复用.md" << 'EOF'
---
title: 代码复用
icon: uni-app-code-reuse
order: 3
---

# 代码复用

## 复用方式
- 组件复用
- 工具复用
- 服务复用
- 配置复用
- 模板复用

## 设计模式
- 工厂模式
- 单例模式
- 观察者模式
- 策略模式
- 适配器模式

## 实现技术
- Mixin
- HOC
- Hooks
- 插件
- 工具库

## 最佳实践
- 设计原则
- 代码组织
- 性能优化
- 维护建议
- 测试策略
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建9.2开发规范目录
mkdir -p "$BASE_DIR/第9章-最佳实践/9.2-开发规范"

# 创建9.2开发规范README文件
cat > "$BASE_DIR/第9章-最佳实践/9.2-开发规范/README.md" << 'EOF'
---
title: 开发规范
icon: uni-app-standard
order: 2
---

# 开发规范

本节介绍uni-app的开发规范相关知识。
EOF

# 创建9.2.1编码规范文件
cat > "$BASE_DIR/第9章-最佳实践/9.2-开发规范/9.2.1-编码规范.md" << 'EOF'
---
title: 编码规范
icon: uni-app-code-standard
order: 1
---

# 编码规范

## 命名规范
- 文件命名
- 组件命名
- 变量命名
- 函数命名
- 类命名

## 代码风格
- 缩进格式
- 空格使用
- 注释规范
- 代码组织
- 模块划分

## 最佳实践
- 代码复用
- 性能优化
- 错误处理
- 安全控制
- 可维护性

## 工具支持
- ESLint配置
- Prettier配置
- 编辑器配置
- 代码检查
- 自动格式化
EOF

# 创建9.2.2Git规范文件
cat > "$BASE_DIR/第9章-最佳实践/9.2-开发规范/9.2.2-Git规范.md" << 'EOF'
---
title: Git规范
icon: uni-app-git
order: 2
---

# Git规范

## 分支管理
- 分支策略
- 分支命名
- 分支流程
- 合并策略
- 版本管理

## 提交规范
- 提交信息
- 提交粒度
- 提交检查
- 代码审查
- 冲突处理

## 工作流程
- 功能开发
- 代码审查
- 测试验证
- 发布部署
- 版本发布

## 最佳实践
- 流程规范
- 工具配置
- 团队协作
- 质量控制
- 持续集成
EOF

# 创建9.2.3发布规范文件
cat > "$BASE_DIR/第9章-最佳实践/9.2-开发规范/9.2.3-发布规范.md" << 'EOF'
---
title: 发布规范
icon: uni-app-release
order: 3
---

# 发布规范

## 版本管理
- 版本号规范
- 版本控制
- 版本发布
- 版本回滚
- 版本追踪

## 发布流程
- 代码审查
- 测试验证
- 打包构建
- 环境部署
- 监控验证

## 发布策略
- 灰度发布
- 蓝绿部署
- 金丝雀发布
- 回滚机制
- 应急预案

## 最佳实践
- 流程规范
- 质量控制
- 监控告警
- 问题处理
- 持续改进
EOF

# 创建9.3调试技巧目录
mkdir -p "$BASE_DIR/第9章-最佳实践/9.3-调试技巧"

# 创建9.3调试技巧README文件
cat > "$BASE_DIR/第9章-最佳实践/9.3-调试技巧/README.md" << 'EOF'
---
title: 调试技巧
icon: uni-app-debug
order: 3
---

# 调试技巧

本节介绍uni-app的调试技巧相关知识。
EOF

# 创建9.3.1开发调试文件
cat > "$BASE_DIR/第9章-最佳实践/9.3-调试技巧/9.3.1-开发调试.md" << 'EOF'
---
title: 开发调试
icon: uni-app-dev-debug
order: 1
---

# 开发调试

## 调试工具
- 开发者工具
- 控制台
- 断点调试
- 网络面板
- 性能分析

## 调试技巧
- 日志输出
- 断点设置
- 变量监视
- 调用堆栈
- 性能分析

## 常见问题
- 页面渲染
- 数据流转
- 生命周期
- 网络请求
- 性能优化

## 最佳实践
- 调试方法
- 问题定位
- 性能优化
- 错误处理
- 调试工具
EOF

# 创建9.3.2真机调试文件
cat > "$BASE_DIR/第9章-最佳实践/9.3-调试技巧/9.3.2-真机调试.md" << 'EOF'
---
title: 真机调试
icon: uni-app-device-debug
order: 2
---

# 真机调试

## 调试环境
- 设备连接
- 环境配置
- 调试工具
- 性能监控
- 日志收集

## 调试方法
- 远程调试
- 日志分析
- 性能分析
- 网络监控
- 错误追踪

## 常见问题
- 兼容性问题
- 性能问题
- 网络问题
- 硬件问题
- 系统问题

## 最佳实践
- 调试流程
- 问题定位
- 性能优化
- 兼容处理
- 调试工具
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建9.3.3线上调试文件
cat > "$BASE_DIR/第9章-最佳实践/9.3-调试技巧/9.3.3-线上调试.md" << 'EOF'
---
title: 线上调试
icon: uni-app-online-debug
order: 3
---

# 线上调试

## 调试工具
- 远程调试
- 日志系统
- 监控系统
- 性能分析
- 错误追踪

## 调试方法
- 日志分析
- 性能监控
- 错误排查
- 用户反馈
- 问题复现

## 应急处理
- 问题定位
- 紧急修复
- 版本回滚
- 数据恢复
- 用户通知

## 最佳实践
- 监控告警
- 日志收集
- 问题分析
- 应急预案
- 持续优化
EOF

# 创建9.4问题排查目录
mkdir -p "$BASE_DIR/第9章-最佳实践/9.4-问题排查"

# 创建9.4问题排查README文件
cat > "$BASE_DIR/第9章-最佳实践/9.4-问题排查/README.md" << 'EOF'
---
title: 问题排查
icon: uni-app-troubleshooting
order: 4
---

# 问题排查

本节介绍uni-app的问题排查相关知识。
EOF

# 创建9.4.1常见问题文件
cat > "$BASE_DIR/第9章-最佳实践/9.4-问题排查/9.4.1-常见问题.md" << 'EOF'
---
title: 常见问题
icon: uni-app-common-issues
order: 1
---

# 常见问题

## 运行问题
- 启动问题
- 白屏问题
- 闪退问题
- 卡顿问题
- 崩溃问题

## 功能问题
- 页面问题
- 组件问题
- 接口问题
- 数据问题
- 交互问题

## 环境问题
- 编译问题
- 打包问题
- 部署问题
- 兼容问题
- 网络问题

## 解决方案
- 问题定位
- 解决步骤
- 验证方法
- 预防措施
- 最佳实践
EOF

# 创建9.4.2性能问题文件
cat > "$BASE_DIR/第9章-最佳实践/9.4-问题排查/9.4.2-性能问题.md" << 'EOF'
---
title: 性能问题
icon: uni-app-performance-issues
order: 2
---

# 性能问题

## 加载性能
- 首屏加载
- 资源加载
- 代码加载
- 缓存问题
- 网络问题

## 运行性能
- 渲染性能
- 内存问题
- CPU占用
- 电量消耗
- 响应延迟

## 优化方案
- 代码优化
- 资源优化
- 缓存优化
- 网络优化
- 架构优化

## 最佳实践
- 性能监控
- 问题定位
- 优化方法
- 效果验证
- 持续改进
EOF

# 创建9.4.3兼容性问题文件
cat > "$BASE_DIR/第9章-最佳实践/9.4-问题排查/9.4.3-兼容性问题.md" << 'EOF'
---
title: 兼容性问题
icon: uni-app-compatibility
order: 3
---

# 兼容性问题

## 平台兼容
- iOS兼容
- Android兼容
- H5兼容
- 小程序兼容
- 桌面端兼容

## 版本兼容
- 系统版本
- 框架版本
- API版本
- 组件版本
- 插件版本

## 解决方案
- 条件编译
- 降级处理
- 替代方案
- 版本检测
- 错误处理

## 最佳实践
- 兼容设计
- 测试验证
- 问题处理
- 文档维护
- 持续更新
EOF

# 创建第10章跨端开发目录
mkdir -p "$BASE_DIR/第10章-跨端开发"

# 创建第10章跨端开发README文件
cat > "$BASE_DIR/第10章-跨端开发/README.md" << 'EOF'
---
title: 跨端开发
icon: uni-app-cross-platform
order: 10
---

# 跨端开发

本章介绍uni-app的跨端开发相关知识。
EOF

# 创建10.1H5开发目录
mkdir -p "$BASE_DIR/第10章-跨端开发/10.1-H5开发"

# 创建10.1H5开发README文件
cat > "$BASE_DIR/第10章-跨端开发/10.1-H5开发/README.md" << 'EOF'
---
title: H5开发
icon: uni-app-h5
order: 1
---

# H5开发

## 开发特点
- 跨平台性
- 开发效率
- 部署便捷
- 更新灵活
- 成本优势

## 技术要点
- 响应式设计
- 性能优化
- 兼容处理
- 调试技巧
- 发布部署

## 最佳实践
- 架构设计
- 性能优化
- 体验优化
- 安全控制
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建10.1.1浏览器兼容文件
cat > "$BASE_DIR/第10章-跨端开发/10.1-H5开发/10.1.1-浏览器兼容.md" << 'EOF'
---
title: 浏览器兼容
icon: uni-app-browser
order: 1
---

# 浏览器兼容

## 兼容策略
- 特性检测
- 降级处理
- 前缀处理
- 垫片使用
- 优雅降级

## 常见问题
- CSS兼容
- JS兼容
- API兼容
- 布局兼容
- 功能兼容

## 解决方案
- Polyfill
- Autoprefixer
- Babel转译
- 条件编译
- 替代方案

## 最佳实践
- 兼容设计
- 测试验证
- 问题处理
- 文档维护
- 持续更新
EOF

# 创建10.1.2PWA支持文件
cat > "$BASE_DIR/第10章-跨端开发/10.1-H5开发/10.1.2-PWA支持.md" << 'EOF'
---
title: PWA支持
icon: uni-app-pwa
order: 2
---

# PWA支持

## 基础特性
- Service Worker
- Manifest配置
- 离线缓存
- 消息推送
- 桌面图标

## 实现方案
- 缓存策略
- 离线功能
- 推送通知
- 后台同步
- 安装提示

## 优化策略
- 性能优化
- 体验优化
- 安全控制
- 兼容处理
- 调试方法

## 最佳实践
- 架构设计
- 功能实现
- 性能优化
- 用户体验
- 维护建议
EOF

# 创建10.1.3微信环境文件
cat > "$BASE_DIR/第10章-跨端开发/10.1-H5开发/10.1.3-微信环境.md" << 'EOF'
---
title: 微信环境
icon: uni-app-weixin
order: 3
---

# 微信环境

## 基础配置
- 公众号配置
- JSSDK配置
- 授权认证
- 支付配置
- 分享设置

## 功能开发
- 微信登录
- 微信支付
- 分享功能
- 图片处理
- 地理位置

## 调试技巧
- 开发者工具
- 真机调试
- 错误处理
- 性能优化
- 问题排查

## 最佳实践
- 功能设计
- 性能优化
- 安全控制
- 用户体验
- 维护建议
EOF

# 创建10.1.4调试工具文件
cat > "$BASE_DIR/第10章-跨端开发/10.1-H5开发/10.1.4-调试工具.md" << 'EOF'
---
title: 调试工具
icon: uni-app-debug-tools
order: 4
---

# 调试工具

## 开发工具
- Chrome DevTools
- Eruda
- VConsole
- Whistle
- Charles

## 调试功能
- 元素调试
- 网络分析
- 性能分析
- 控制台
- 源码调试

## 调试技巧
- 断点调试
- 网络抓包
- 性能分析
- 错误追踪
- 日志分析

## 最佳实践
- 工具选择
- 调试方法
- 问题定位
- 性能优化
- 效率提升
EOF

# 创建10.1.5性能优化文件
cat > "$BASE_DIR/第10章-跨端开发/10.1-H5开发/10.1.5-性能优化.md" << 'EOF'
---
title: 性能优化
icon: uni-app-h5-performance
order: 5
---

# 性能优化

## 加载优化
- 资源压缩
- 懒加载
- 预加载
- 缓存策略
- CDN加速

## 运行优化
- 代码优化
- 渲染优化
- 内存优化
- 动画优化
- 事件优化

## 体验优化
- 首屏优化
- 交互优化
- 响应优化
- 流畅度
- 用户体验

## 最佳实践
- 优化策略
- 性能监控
- 问题诊断
- 效果验证
- 持续改进
EOF

# 创建10.2小程序开发目录
mkdir -p "$BASE_DIR/第10章-跨端开发/10.2-小程序开发"

# 创建10.2小程序开发README文件
cat > "$BASE_DIR/第10章-跨端开发/10.2-小程序开发/README.md" << 'EOF'
---
title: 小程序开发
icon: uni-app-miniprogram
order: 2
---

# 小程序开发

本节介绍uni-app的小程序开发相关知识。
EOF

# 创建10.2.1微信小程序文件
cat > "$BASE_DIR/第10章-跨端开发/10.2-小程序开发/10.2.1-微信小程序.md" << 'EOF'
---
title: 微信小程序
icon: uni-app-weapp
order: 1
---

# 微信小程序

## 基础配置
- 项目配置
- 页面配置
- 组件配置
- 接口配置
- 权限配置

## 功能开发
- 页面开发
- 组件开发
- 接口调用
- 数据管理
- 生命周期

## 优化策略
- 性能优化
- 体验优化
- 包体积优化
- 启动优化
- 渲染优化

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 安全控制
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建10.2.2支付宝小程序文件
cat > "$BASE_DIR/第10章-跨端开发/10.2-小程序开发/10.2.2-支付宝小程序.md" << 'EOF'
---
title: 支付宝小程序
icon: uni-app-alipay
order: 2
---

# 支付宝小程序

## 基础配置
- 项目配置
- 支付配置
- 授权配置
- 安全配置
- 插件配置

## 功能开发
- 支付功能
- 授权登录
- 生活号
- 会员卡
- 营销工具

## 特色功能
- 小程序客服
- 模板消息
- 生活号关注
- 会员体系
- 商家功能

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 安全控制
- 维护建议
EOF

# 创建10.2.3百度小程序文件
cat > "$BASE_DIR/第10章-跨端开发/10.2-小程序开发/10.2.3-百度小程序.md" << 'EOF'
---
title: 百度小程序
icon: uni-app-baidu
order: 3
---

# 百度小程序

## 基础配置
- 项目配置
- 智能小程序
- 开放能力
- 支付功能
- 数据统计

## 功能开发
- 智能接口
- 搜索优化
- 流量获取
- 用户分析
- 数据统计

## 特色功能
- AI能力
- 搜索直达
- 场景流量
- 智能获客
- 数据分析

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- SEO优化
- 维护建议
EOF

# 创建10.2.4抖音小程序文件
cat > "$BASE_DIR/第10章-跨端开发/10.2-小程序开发/10.2.4-抖音小程序.md" << 'EOF'
---
title: 抖音小程序
icon: uni-app-douyin
order: 4
---

# 抖音小程序

## 基础配置
- 项目配置
- 开放能力
- 支付功能
- 直播能力
- 数据分析

## 功能开发
- 视频能力
- 直播功能
- 互动功能
- 营销工具
- 数据统计

## 特色功能
- 短视频
- 直播带货
- 互动玩法
- 流量获取
- 数据分析

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 营销策略
- 维护建议
EOF

# 创建10.2.5QQ小程序文件
cat > "$BASE_DIR/第10章-跨端开发/10.2-小程序开发/10.2.5-QQ小程序.md" << 'EOF'
---
title: QQ小程序
icon: uni-app-qq
order: 5
---

# QQ小程序

## 基础配置
- 项目配置
- 开放能力
- 支付功能
- 社交能力
- 数据统计

## 功能开发
- QQ登录
- 社交分享
- 支付功能
- 互动功能
- 数据统计

## 特色功能
- 群应用
- 好友互动
- 消息推送
- 社交分享
- 数据分析

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 社交策略
- 维护建议
EOF

# 创建10.2.6快手小程序文件
cat > "$BASE_DIR/第10章-跨端开发/10.2-小程序开发/10.2.6-快手小程序.md" << 'EOF'
---
title: 快手小程序
icon: uni-app-kuaishou
order: 6
---

# 快手小程序

## 基础配置
- 项目配置
- 开放能力
- 支付功能
- 直播能力
- 数据分析

## 功能开发
- 视频能力
- 直播功能
- 互动功能
- 营销工具
- 数据统计

## 特色功能
- 短视频
- 直播带货
- 互动玩法
- 流量获取
- 数据分析

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 营销策略
- 维护建议
EOF

# 创建10.2.7飞书小程序文件
cat > "$BASE_DIR/第10章-跨端开发/10.2-小程序开发/10.2.7-飞书小程序.md" << 'EOF'
---
title: 飞书小程序
icon: uni-app-feishu
order: 7
---

# 飞书小程序

## 基础配置
- 项目配置
- 开放能力
- 企业功能
- 协作能力
- 数据统计

## 功能开发
- 企业应用
- 协作功能
- 消息推送
- 身份认证
- 数据统计

## 特色功能
- 企业集成
- 工作流程
- 团队协作
- 应用管理
- 数据分析

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 协作策略
- 维护建议
EOF

# 创建10.2.8平台差异文件
cat > "$BASE_DIR/第10章-跨端开发/10.2-小程序开发/10.2.8-平台差异.md" << 'EOF'
---
title: 平台差异
icon: uni-app-platform-diff
order: 8
---

# 平台差异

## 功能差异
- API差异
- 组件差异
- 样式差异
- 能力差异
- 限制差异

## 开发差异
- 开发工具
- 调试方法
- 发布流程
- 审核要求
- 维护方式

## 适配策略
- 条件编译
- 平台判断
- 兼容处理
- 降级方案
- 替代方案

## 最佳实践
- 架构设计
- 开发规范
- 兼容处理
- 测试验证
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建10.2.9特殊API处理文件
cat > "$BASE_DIR/第10章-跨端开发/10.2-小程序开发/10.2.9-特殊API处理.md" << 'EOF'
---
title: 特殊API处理
icon: uni-app-api
order: 9
---

# 特殊API处理

## 平台API
- 登录授权
- 支付功能
- 分享功能
- 地理位置
- 设备功能

## 兼容处理
- API封装
- 降级处理
- 替代方案
- 错误处理
- 性能优化

## 调试方法
- 开发工具
- 真机调试
- 日志分析
- 错误追踪
- 性能监控

## 最佳实践
- 接口设计
- 兼容处理
- 性能优化
- 安全控制
- 维护建议
EOF

# 创建10.2.10分包优化文件
cat > "$BASE_DIR/第10章-跨端开发/10.2-小程序开发/10.2.10-分包优化.md" << 'EOF'
---
title: 分包优化
icon: uni-app-subpackage
order: 10
---

# 分包优化

## 分包策略
- 主包优化
- 分包配置
- 分包加载
- 预加载
- 按需加载

## 优化方案
- 代码分割
- 资源分包
- 依赖分析
- 加载优化
- 缓存策略

## 性能优化
- 包体积优化
- 加载性能
- 运行性能
- 内存优化
- 启动优化

## 最佳实践
- 分包设计
- 性能优化
- 加载策略
- 监控分析
- 维护建议
EOF

# 创建10.3App开发目录
mkdir -p "$BASE_DIR/第10章-跨端开发/10.3-App开发"

# 创建10.3App开发README文件
cat > "$BASE_DIR/第10章-跨端开发/10.3-App开发/README.md" << 'EOF'
---
title: App开发
icon: uni-app-app
order: 3
---

# App开发

本节介绍uni-app的App开发相关知识。
EOF

# 创建10.3.1Android平台文件
cat > "$BASE_DIR/第10章-跨端开发/10.3-App开发/10.3.1-Android平台.md" << 'EOF'
---
title: Android平台
icon: uni-app-android
order: 1
---

# Android平台

## 基础配置
- 环境配置
- 权限配置
- 签名配置
- 混淆配置
- 渠道配置

## 功能开发
- 原生能力
- 硬件接口
- 推送服务
- 支付功能
- 分享功能

## 性能优化
- 启动优化
- 内存优化
- 渲染优化
- 包体积优化
- 电量优化

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 安全控制
- 维护建议
EOF

# 创建10.3.2iOS平台文件
cat > "$BASE_DIR/第10章-跨端开发/10.3-App开发/10.3.2-iOS平台.md" << 'EOF'
---
title: iOS平台
icon: uni-app-ios
order: 2
---

# iOS平台

## 基础配置
- 证书配置
- 权限配置
- 推送配置
- 签名配置
- 发布配置

## 功能开发
- 原生能力
- 硬件接口
- 推送服务
- 支付功能
- 分享功能

## 性能优化
- 启动优化
- 内存优化
- 渲染优化
- 包体积优化
- 电量优化

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 安全控制
- 维护建议
EOF

# 创建10.3.3原生插件文件
cat > "$BASE_DIR/第10章-跨端开发/10.3-App开发/10.3.3-原生插件.md" << 'EOF'
---
title: 原生插件
icon: uni-app-plugin
order: 3
---

# 原生插件

## 插件开发
- 开发环境
- 接口设计
- 功能实现
- 调试测试
- 发布部署

## 功能集成
- 插件安装
- 接口调用
- 生命周期
- 错误处理
- 性能优化

## 调试技巧
- 开发调试
- 真机调试
- 日志分析
- 错误追踪
- 性能监控

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 安全控制
- 维护建议
EOF

# 创建10.3.4离线打包文件
cat > "$BASE_DIR/第10章-跨端开发/10.3-App开发/10.3.4-离线打包.md" << 'EOF'
---
title: 离线打包
icon: uni-app-package
order: 4
---

# 离线打包

## 打包环境
- Android环境
- iOS环境
- 工具配置
- 证书配置
- 签名配置

## 打包流程
- 资源准备
- 配置修改
- 打包命令
- 签名验证
- 发布部署

## 优化策略
- 包体积优化
- 启动优化
- 性能优化
- 安全加固
- 渠道打包

## 最佳实践
- 流程规范
- 自动化构建
- 持续集成
- 质量控制
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建10.3.5热更新文件
cat > "$BASE_DIR/第10章-跨端开发/10.3-App开发/10.3.5-热更新.md" << 'EOF'
---
title: 热更新
icon: uni-app-hot-update
order: 5
---

# 热更新

## 更新机制
- 资源更新
- 代码更新
- 增量更新
- 全量更新
- 回滚机制

## 实现方案
- 版本检测
- 差量计算
- 下载更新
- 安装部署
- 回滚处理

## 安全控制
- 完整性校验
- 签名验证
- 加密传输
- 权限控制
- 异常处理

## 最佳实践
- 更新策略
- 性能优化
- 安全控制
- 监控告警
- 维护建议
EOF

# 创建10.4鸿蒙开发目录
mkdir -p "$BASE_DIR/第10章-跨端开发/10.4-鸿蒙开发"

# 创建10.4鸿蒙开发README文件
cat > "$BASE_DIR/第10章-跨端开发/10.4-鸿蒙开发/README.md" << 'EOF'
---
title: 鸿蒙开发
icon: uni-app-harmony
order: 4
---

# 鸿蒙开发

本节介绍uni-app的鸿蒙开发相关知识。
EOF

# 创建10.4.1鸿蒙应用文件
cat > "$BASE_DIR/第10章-跨端开发/10.4-鸿蒙开发/10.4.1-鸿蒙应用.md" << 'EOF'
---
title: 鸿蒙应用
icon: uni-app-harmony-app
order: 1
---

# 鸿蒙应用

## 基础配置
- 开发环境
- 项目配置
- 权限配置
- 签名配置
- 发布配置

## 功能开发
- UI开发
- 生命周期
- 数据管理
- 事件处理
- 页面路由

## 特色功能
- 分布式能力
- 多设备协同
- 超级终端
- 一次开发
- 多端部署

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 安全控制
- 维护建议
EOF

# 创建10.4.2服务卡片文件
cat > "$BASE_DIR/第10章-跨端开发/10.4-鸿蒙开发/10.4.2-服务卡片.md" << 'EOF'
---
title: 服务卡片
icon: uni-app-harmony-card
order: 2
---

# 服务卡片

## 基础配置
- 卡片配置
- 布局设计
- 数据绑定
- 事件处理
- 生命周期

## 功能开发
- 卡片更新
- 数据同步
- 交互处理
- 状态管理
- 性能优化

## 特色功能
- 动态更新
- 智能推荐
- 场景联动
- 多设备同步
- 分布式部署

## 最佳实践
- 设计规范
- 开发规范
- 性能优化
- 用户体验
- 维护建议
EOF

# 创建10.4.3原子化服务文件
cat > "$BASE_DIR/第10章-跨端开发/10.4-鸿蒙开发/10.4.3-原子化服务.md" << 'EOF'
---
title: 原子化服务
icon: uni-app-harmony-service
order: 3
---

# 原子化服务

## 服务设计
- 服务定义
- 接口设计
- 数据流转
- 生命周期
- 状态管理

## 功能实现
- 服务注册
- 服务发现
- 服务调用
- 服务同步
- 错误处理

## 特色功能
- 分布式部署
- 跨设备调用
- 服务迁移
- 状态同步
- 故障恢复

## 最佳实践
- 架构设计
- 开发规范
- 性能优化
- 安全控制
- 维护建议
EOF

# 创建10.4.4性能优化文件
cat > "$BASE_DIR/第10章-跨端开发/10.4-鸿蒙开发/10.4.4-性能优化.md" << 'EOF'
---
title: 性能优化
icon: uni-app-harmony-performance
order: 4
---

# 性能优化

## 启动优化
- 冷启动
- 热启动
- 预加载
- 延迟加载
- 资源优化

## 运行优化
- 内存管理
- 电量优化
- 渲染优化
- 线程优化
- 网络优化

## 分布式优化
- 任务调度
- 资源分配
- 负载均衡
- 数据同步
- 故障恢复

## 最佳实践
- 优化策略
- 监控分析
- 问题诊断
- 效果验证
- 持续改进
EOF

# 创建第11章工程化与工具目录
mkdir -p "$BASE_DIR/第11章-工程化与工具"

# 创建第11章工程化与工具README文件
cat > "$BASE_DIR/第11章-工程化与工具/README.md" << 'EOF'
---
title: 工程化与工具
icon: uni-app-engineering
order: 11
---

# 工程化与工具

本章介绍uni-app的工程化与工具相关知识。
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建11.1开发工具目录
mkdir -p "$BASE_DIR/第11章-工程化与工具/11.1-开发工具"

# 创建11.1开发工具README文件
cat > "$BASE_DIR/第11章-工程化与工具/11.1-开发工具/README.md" << 'EOF'
---
title: 开发工具
icon: uni-app-tools
order: 1
---

# 开发工具

本节介绍uni-app的开发工具相关知识。
EOF

# 创建11.1.1HBuilderX文件
cat > "$BASE_DIR/第11章-工程化与工具/11.1-开发工具/11.1.1-HBuilderX.md" << 'EOF'
---
title: HBuilderX
icon: uni-app-hbuilderx
order: 1
---

# HBuilderX

## 基础功能
- 项目管理
- 代码编辑
- 智能提示
- 调试工具
- 插件系统

## 特色功能
- 真机运行
- 打包发布
- 代码提示
- 语法检查
- 格式化

## 插件扩展
- 常用插件
- 插件配置
- 插件开发
- 插件市场
- 插件管理

## 最佳实践
- 工具配置
- 快捷键
- 调试技巧
- 性能优化
- 使用技巧
EOF

# 创建11.1.2VSCode文件
cat > "$BASE_DIR/第11章-工程化与工具/11.1-开发工具/11.1.2-VSCode.md" << 'EOF'
---
title: VSCode
icon: uni-app-vscode
order: 2
---

# VSCode

## 基础配置
- 环境配置
- 插件安装
- 工作区设置
- 快捷键
- 主题设置

## 插件推荐
- uni-app插件
- Vue插件
- Git插件
- 调试插件
- 格式化插件

## 开发功能
- 代码提示
- 语法检查
- 调试工具
- 版本控制
- 终端集成

## 最佳实践
- 工具配置
- 插件选择
- 快捷键
- 调试技巧
- 效率提升
EOF

# 创建11.1.3WebStorm文件
cat > "$BASE_DIR/第11章-工程化与工具/11.1-开发工具/11.1.3-WebStorm.md" << 'EOF'
---
title: WebStorm
icon: uni-app-webstorm
order: 3
---

# WebStorm

## 基础配置
- 环境配置
- 项目设置
- 插件安装
- 快捷键
- 主题设置

## 开发功能
- 智能提示
- 代码重构
- 调试工具
- 版本控制
- 集成终端

## 特色功能
- Vue支持
- TypeScript
- 单元测试
- 性能分析
- 远程开发

## 最佳实践
- 工具配置
- 插件选择
- 快捷键
- 调试技巧
- 效率提升
EOF

# 创建11.1.4代码提示文件
cat > "$BASE_DIR/第11章-工程化与工具/11.1-开发工具/11.1.4-代码提示.md" << 'EOF'
---
title: 代码提示
icon: uni-app-code-hints
order: 4
---

# 代码提示

## 基础提示
- 语法提示
- API提示
- 组件提示
- 属性提示
- 事件提示

## 智能提示
- 上下文提示
- 类型推断
- 自动导入
- 错误提示
- 快速修复

## 自定义提示
- 代码片段
- 注释提示
- 文档提示
- 类型定义
- 配置文件

## 最佳实践
- 提示配置
- 效率提升
- 使用技巧
- 问题处理
- 维护建议
EOF

# 创建11.1.5代码格式化文件
cat > "$BASE_DIR/第11章-工程化与工具/11.1-开发工具/11.1.5-代码格式化.md" << 'EOF'
---
title: 代码格式化
icon: uni-app-code-format
order: 5
---

# 代码格式化

## 格式规则
- 缩进规则
- 空格规则
- 换行规则
- 注释规则
- 排序规则

## 工具配置
- ESLint配置
- Prettier配置
- EditorConfig
- 自定义规则
- 忽略配置

## 自动化配置
- 保存格式化
- 提交格式化
- 批量格式化
- 规则检查
- 错误修复

## 最佳实践
- 规则制定
- 工具选择
- 团队协作
- 效率提升
- 维护建议
EOF

# 创建11.1.6代码模板文件
cat > "$BASE_DIR/第11章-工程化与工具/11.1-开发工具/11.1.6-代码模板.md" << 'EOF'
---
title: 代码模板
icon: uni-app-code-template
order: 6
---

# 代码模板

## 基础模板
- 页面模板
- 组件模板
- 样式模板
- 脚本模板
- 配置模板

## 自定义模板
- 模板定义
- 变量设置
- 快捷键
- 模板管理
- 模板共享

## 最佳实践
- 模板设计
- 变量使用
- 快捷键
- 团队共享
- 维护更新

## 使用技巧
- 快速创建
- 批量生成
- 模板继承
- 模板复用
- 效率提升
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建11.1.7快捷键文件
cat > "$BASE_DIR/第11章-工程化与工具/11.1-开发工具/11.1.7-快捷键.md" << 'EOF'
---
title: 快捷键
icon: uni-app-shortcuts
order: 7
---

# 快捷键

## 常用快捷键
- 文件操作
- 编辑操作
- 查找替换
- 代码导航
- 代码重构

## 工具快捷键
- 调试快捷键
- 版本控制
- 终端操作
- 面板切换
- 视图操作

## 自定义快捷键
- 快捷键设置
- 冲突解决
- 快捷键映射
- 快捷键导出
- 快捷键导入

## 最佳实践
- 常用组合
- 效率技巧
- 快捷键记忆
- 使用场景
- 配置建议
EOF

# 创建11.1.8插件扩展文件
cat > "$BASE_DIR/第11章-工程化与工具/11.1-开发工具/11.1.8-插件扩展.md" << 'EOF'
---
title: 插件扩展
icon: uni-app-plugins
order: 8
---

# 插件扩展

## 常用插件
- 开发插件
- 调试插件
- 格式化插件
- 代码提示
- 主题插件

## 插件管理
- 插件安装
- 插件配置
- 插件更新
- 插件卸载
- 插件市场

## 插件开发
- 开发环境
- API使用
- 调试测试
- 打包发布
- 版本管理

## 最佳实践
- 插件选择
- 配置优化
- 性能优化
- 问题处理
- 维护建议
EOF

# 创建11.2构建工具目录
mkdir -p "$BASE_DIR/第11章-工程化与工具/11.2-构建工具"

# 创建11.2构建工具README文件
cat > "$BASE_DIR/第11章-工程化与工具/11.2-构建工具/README.md" << 'EOF'
---
title: 构建工具
icon: uni-app-build
order: 2
---

# 构建工具

本节介绍uni-app的构建工具相关知识。
EOF

# 创建11.2.1Vite配置文件
cat > "$BASE_DIR/第11章-工程化与工具/11.2-构建工具/11.2.1-Vite配置.md" << 'EOF'
---
title: Vite配置
icon: uni-app-vite
order: 1
---

# Vite配置

## 基础配置
- 项目配置
- 环境配置
- 插件配置
- 构建配置
- 优化配置

## 开发配置
- 服务配置
- 代理配置
- 热更新
- 调试配置
- 性能优化

## 生产配置
- 打包配置
- 压缩配置
- 分包配置
- CDN配置
- 性能优化

## 最佳实践
- 配置优化
- 性能优化
- 构建优化
- 部署优化
- 维护建议
EOF

# 创建11.2.2Webpack配置文件
cat > "$BASE_DIR/第11章-工程化与工具/11.2-构建工具/11.2.2-Webpack配置.md" << 'EOF'
---
title: Webpack配置
icon: uni-app-webpack
order: 2
---

# Webpack配置

## 基础配置
- 入口配置
- 输出配置
- 加载器配置
- 插件配置
- 优化配置

## 开发配置
- 开发服务器
- 热更新
- 代理配置
- 调试配置
- 性能优化

## 生产配置
- 代码分割
- 压缩优化
- 缓存配置
- CDN配置
- 性能优化

## 最佳实践
- 配置优化
- 性能优化
- 构建优化
- 部署优化
- 维护建议
EOF

# 创建11.2.3自动化构建文件
cat > "$BASE_DIR/第11章-工程化与工具/11.2-构建工具/11.2.3-自动化构建.md" << 'EOF'
---
title: 自动化构建
icon: uni-app-automation
order: 3
---

# 自动化构建

## 构建流程
- 环境准备
- 依赖安装
- 代码检查
- 单元测试
- 构建部署

## 工具配置
- CI/CD工具
- 构建脚本
- 环境变量
- 配置文件
- 部署配置

## 优化策略
- 缓存优化
- 并行构建
- 增量构建
- 构建分析
- 错误处理

## 最佳实践
- 流程设计
- 工具选择
- 性能优化
- 监控告警
- 维护建议
EOF

# 创建11.2.4多平台打包文件
cat > "$BASE_DIR/第11章-工程化与工具/11.2-构建工具/11.2.4-多平台打包.md" << 'EOF'
---
title: 多平台打包
icon: uni-app-package
order: 4
---

# 多平台打包

## 平台配置
- H5配置
- 小程序配置
- App配置
- 鸿蒙配置
- 环境配置

## 打包策略
- 条件编译
- 资源处理
- 依赖处理
- 优化配置
- 环境变量

## 发布部署
- 版本管理
- 环境部署
- 更新策略
- 回滚机制
- 监控告警

## 最佳实践
- 配置管理
- 性能优化
- 自动化部署
- 质量控制
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建11.2.5资源优化文件
cat > "$BASE_DIR/第11章-工程化与工具/11.2-构建工具/11.2.5-资源优化.md" << 'EOF'
---
title: 资源优化
icon: uni-app-resource
order: 5
---

# 资源优化

## 图片优化
- 图片压缩
- 格式选择
- 懒加载
- 预加载
- CDN加速

## 代码优化
- 代码分割
- 懒加载
- Tree Shaking
- 压缩混淆
- 缓存策略

## 资源管理
- 资源合并
- 资源压缩
- 资源缓存
- 版本控制
- 按需加载

## 最佳实践
- 优化策略
- 性能监控
- 效果分析
- 持续优化
- 维护建议
EOF

# 创建11.2.6代码混淆文件
cat > "$BASE_DIR/第11章-工程化与工具/11.2-构建工具/11.2.6-代码混淆.md" << 'EOF'
---
title: 代码混淆
icon: uni-app-obfuscation
order: 6
---

# 代码混淆

## 混淆配置
- 基础配置
- 规则设置
- 排除规则
- 自定义规则
- 优化配置

## 混淆策略
- 变量混淆
- 函数混淆
- 类名混淆
- 属性混淆
- 字符串混淆

## 安全控制
- 代码保护
- 反调试
- 加密策略
- 完整性校验
- 安全加固

## 最佳实践
- 混淆策略
- 性能优化
- 兼容处理
- 问题排查
- 维护建议
EOF

# 创建11.3调试工具目录
mkdir -p "$BASE_DIR/第11章-工程化与工具/11.3-调试工具"

# 创建11.3调试工具README文件
cat > "$BASE_DIR/第11章-工程化与工具/11.3-调试工具/README.md" << 'EOF'
---
title: 调试工具
icon: uni-app-debug-tools
order: 3
---

# 调试工具

本节介绍uni-app的调试工具相关知识。
EOF

# 创建11.3.1内置调试器文件
cat > "$BASE_DIR/第11章-工程化与工具/11.3-调试工具/11.3.1-内置调试器.md" << 'EOF'
---
title: 内置调试器
icon: uni-app-debugger
order: 1
---

# 内置调试器

## 基础功能
- 断点调试
- 变量监视
- 调用堆栈
- 控制台
- 源码映射

## 调试技巧
- 条件断点
- 日志断点
- 异常断点
- 表达式求值
- 内存分析

## 性能分析
- 性能监控
- 内存分析
- CPU分析
- 网络分析
- 事件分析

## 最佳实践
- 调试方法
- 问题定位
- 性能优化
- 效率提升
- 调试技巧
EOF

# 创建11.3.2真机调试文件
cat > "$BASE_DIR/第11章-工程化与工具/11.3-调试工具/11.3.2-真机调试.md" << 'EOF'
---
title: 真机调试
icon: uni-app-device-debug
order: 2
---

# 真机调试

## 环境配置
- 设备连接
- 调试模式
- 证书配置
- 网络配置
- 权限设置

## 调试功能
- 远程调试
- 日志查看
- 性能监控
- 网络分析
- 错误追踪

## 调试技巧
- 断点调试
- 变量监视
- 网络抓包
- 性能分析
- 内存分析

## 最佳实践
- 调试流程
- 问题定位
- 性能优化
- 效率提升
- 调试技巧
EOF

# 创建11.3.3网络调试文件
cat > "$BASE_DIR/第11章-工程化与工具/11.3-调试工具/11.3.3-网络调试.md" << 'EOF'
---
title: 网络调试
icon: uni-app-network-debug
order: 3
---

# 网络调试

## 调试工具
- 网络面板
- 抓包工具
- 代理工具
- 模拟器
- 性能分析

## 调试功能
- 请求分析
- 响应分析
- 性能监控
- 错误追踪
- 安全检测

## 调试技巧
- 请求拦截
- 数据模拟
- 网络优化
- 错误处理
- 性能优化

## 最佳实践
- 调试方法
- 问题定位
- 性能优化
- 安全控制
- 维护建议
EOF

# 创建11.3.4性能分析文件
cat > "$BASE_DIR/第11章-工程化与工具/11.3-调试工具/11.3.4-性能分析.md" << 'EOF'
---
title: 性能分析
icon: uni-app-performance
order: 4
---

# 性能分析

## 分析工具
- 性能面板
- 内存分析
- CPU分析
- 网络分析
- 渲染分析

## 分析指标
- 加载性能
- 运行性能
- 内存使用
- 渲染性能
- 网络性能

## 优化策略
- 代码优化
- 资源优化
- 缓存优化
- 渲染优化
- 网络优化

## 最佳实践
- 性能监控
- 问题定位
- 优化方案
- 效果验证
- 持续改进
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建11.3.5内存分析文件
cat > "$BASE_DIR/第11章-工程化与工具/11.3-调试工具/11.3.5-内存分析.md" << 'EOF'
---
title: 内存分析
icon: uni-app-memory
order: 5
---

# 内存分析

## 分析工具
- 内存面板
- 堆快照
- 内存时间线
- 对象分配
- 内存泄漏

## 分析指标
- 内存占用
- 内存分配
- 垃圾回收
- 内存泄漏
- 内存碎片

## 优化策略
- 内存管理
- 对象复用
- 缓存优化
- 垃圾回收
- 内存释放

## 最佳实践
- 监控分析
- 问题定位
- 优化方案
- 效果验证
- 持续改进
EOF

# 创建11.4CI/CD目录
mkdir -p "$BASE_DIR/第11章-工程化与工具/11.4-CI-CD"

# 创建11.4CI/CD README文件
cat > "$BASE_DIR/第11章-工程化与工具/11.4-CI-CD/README.md" << 'EOF'
---
title: CI/CD
icon: uni-app-cicd
order: 4
---

# CI/CD

本节介绍uni-app的CI/CD相关知识。
EOF

# 创建11.4.1持续集成文件
cat > "$BASE_DIR/第11章-工程化与工具/11.4-CI-CD/11.4.1-持续集成.md" << 'EOF'
---
title: 持续集成
icon: uni-app-ci
order: 1
---

# 持续集成

## 基础配置
- 环境配置
- 工具配置
- 流程配置
- 触发条件
- 通知配置

## 构建流程
- 代码检出
- 依赖安装
- 代码检查
- 单元测试
- 构建打包

## 质量控制
- 代码审查
- 自动化测试
- 性能测试
- 安全检查
- 代码覆盖率

## 最佳实践
- 流程设计
- 工具选择
- 质量控制
- 监控告警
- 维护建议
EOF

# 创建11.4.2自动部署文件
cat > "$BASE_DIR/第11章-工程化与工具/11.4-CI-CD/11.4.2-自动部署.md" << 'EOF'
---
title: 自动部署
icon: uni-app-cd
order: 2
---

# 自动部署

## 部署流程
- 环境准备
- 构建打包
- 部署发布
- 健康检查
- 回滚机制

## 部署策略
- 蓝绿部署
- 金丝雀发布
- 灰度发布
- 滚动更新
- 版本控制

## 自动化工具
- 部署工具
- 配置管理
- 监控工具
- 日志工具
- 告警工具

## 最佳实践
- 流程设计
- 工具选择
- 监控告警
- 问题处理
- 维护建议
EOF

# 创建11.4.3环境管理文件
cat > "$BASE_DIR/第11章-工程化与工具/11.4-CI-CD/11.4.3-环境管理.md" << 'EOF'
---
title: 环境管理
icon: uni-app-env
order: 3
---

# 环境管理

## 环境配置
- 开发环境
- 测试环境
- 预发环境
- 生产环境
- 灾备环境

## 配置管理
- 环境变量
- 配置文件
- 密钥管理
- 权限控制
- 版本控制

## 环境维护
- 环境监控
- 日志管理
- 备份恢复
- 安全控制
- 性能优化

## 最佳实践
- 环境规划
- 配置管理
- 安全控制
- 监控告警
- 维护建议
EOF

# 创建11.4.4自动化测试文件
cat > "$BASE_DIR/第11章-工程化与工具/11.4-CI-CD/11.4.4-自动化测试.md" << 'EOF'
---
title: 自动化测试
icon: uni-app-test
order: 4
---

# 自动化测试

## 测试类型
- 单元测试
- 集成测试
- 端到端测试
- 性能测试
- 安全测试

## 测试工具
- 测试框架
- 断言库
- 模拟工具
- 覆盖率工具
- 报告工具

## 测试策略
- 测试计划
- 用例设计
- 数据准备
- 执行策略
- 结果分析

## 最佳实践
- 测试规范
- 工具选择
- 持续集成
- 质量控制
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建第12章运维与运营目录
mkdir -p "$BASE_DIR/第12章-运维与运营"

# 创建第12章运维与运营README文件
cat > "$BASE_DIR/第12章-运维与运营/README.md" << 'EOF'
---
title: 运维与运营
icon: uni-app-ops
order: 12
---

# 运维与运营

本章介绍uni-app的运维与运营相关知识。
EOF

# 创建12.1应用发布目录
mkdir -p "$BASE_DIR/第12章-运维与运营/12.1-应用发布"

# 创建12.1应用发布README文件
cat > "$BASE_DIR/第12章-运维与运营/12.1-应用发布/README.md" << 'EOF'
---
title: 应用发布
icon: uni-app-publish
order: 1
---

# 应用发布

本节介绍uni-app的应用发布相关知识。
EOF

# 创建12.1.1应用商店发布文件
cat > "$BASE_DIR/第12章-运维与运营/12.1-应用发布/12.1.1-应用商店发布.md" << 'EOF'
---
title: 应用商店发布
icon: uni-app-store
order: 1
---

# 应用商店发布

## 发布准备
- 账号注册
- 资质认证
- 材料准备
- 应用信息
- 隐私政策

## 发布流程
- 应用打包
- 信息填写
- 材料提交
- 审核流程
- 发布上架

## 运营维护
- 版本更新
- 用户反馈
- 数据分析
- 问题处理
- 持续优化

## 最佳实践
- 发布策略
- 审核技巧
- 运营方案
- 问题处理
- 持续改进
EOF

# 创建12.1.2各平台上架要求文件
cat > "$BASE_DIR/第12章-运维与运营/12.1-应用发布/12.1.2-各平台上架要求.md" << 'EOF'
---
title: 各平台上架要求
icon: uni-app-requirements
order: 2
---

# 各平台上架要求

## 应用商店
- App Store
- Google Play
- 华为商店
- 小米商店
- OPPO商店

## 小程序平台
- 微信小程序
- 支付宝小程序
- 百度小程序
- 抖音小程序
- QQ小程序

## 审核要求
- 内容规范
- 功能要求
- 技术要求
- 隐私要求
- 安全要求

## 最佳实践
- 平台选择
- 规范遵守
- 审核技巧
- 问题处理
- 持续优化
EOF

# 创建12.1.3审核规范文件
cat > "$BASE_DIR/第12章-运维与运营/12.1-应用发布/12.1.3-审核规范.md" << 'EOF'
---
title: 审核规范
icon: uni-app-review
order: 3
---

# 审核规范

## 内容规范
- 信息真实性
- 内容合规性
- 版权要求
- 广告规范
- 用户协议

## 功能规范
- 功能完整性
- 性能要求
- 用户体验
- 安全要求
- 隐私保护

## 技术规范
- 代码规范
- 接口规范
- 兼容要求
- 性能要求
- 安全要求

## 最佳实践
- 规范遵守
- 审核技巧
- 问题处理
- 持续改进
- 维护建议
EOF

# 创建12.1.4更新机制文件
cat > "$BASE_DIR/第12章-运维与运营/12.1-应用发布/12.1.4-更新机制.md" << 'EOF'
---
title: 更新机制
icon: uni-app-update
order: 4
---

# 更新机制

## 更新策略
- 版本规划
- 更新频率
- 强制更新
- 增量更新
- 灰度更新

## 更新流程
- 版本发布
- 用户提示
- 下载安装
- 更新验证
- 回滚机制

## 更新内容
- 功能更新
- 性能优化
- 问题修复
- 安全更新
- 体验优化

## 最佳实践
- 更新策略
- 发布流程
- 用户体验
- 问题处理
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建12.1.5版本规划文件
cat > "$BASE_DIR/第12章-运维与运营/12.1-应用发布/12.1.5-版本规划.md" << 'EOF'
---
title: 版本规划
icon: uni-app-version
order: 5
---

# 版本规划

## 版本策略
- 版本号规范
- 迭代周期
- 功能规划
- 发布计划
- 维护策略

## 版本管理
- 分支管理
- 代码管理
- 发布流程
- 质量控制
- 文档维护

## 发布流程
- 开发阶段
- 测试阶段
- 预发布
- 正式发布
- 版本维护

## 最佳实践
- 规划方法
- 版本控制
- 质量保证
- 发布策略
- 维护建议
EOF

# 创建12.1.6回滚机制文件
cat > "$BASE_DIR/第12章-运维与运营/12.1-应用发布/12.1.6-回滚机制.md" << 'EOF'
---
title: 回滚机制
icon: uni-app-rollback
order: 6
---

# 回滚机制

## 回滚策略
- 版本回滚
- 数据回滚
- 增量回滚
- 全量回滚
- 应急处理

## 回滚流程
- 问题发现
- 影响评估
- 回滚决策
- 执行回滚
- 验证确认

## 预案准备
- 回滚方案
- 应急预案
- 数据备份
- 监控告警
- 恢复流程

## 最佳实践
- 预案设计
- 流程优化
- 效果验证
- 问题总结
- 持续改进
EOF

# 创建12.2运营工具目录
mkdir -p "$BASE_DIR/第12章-运维与运营/12.2-运营工具"

# 创建12.2运营工具README文件
cat > "$BASE_DIR/第12章-运维与运营/12.2-运营工具/README.md" << 'EOF'
---
title: 运营工具
icon: uni-app-operation
order: 2
---

# 运营工具

本节介绍uni-app的运营工具相关知识。
EOF

# 创建12.2.1数据统计文件
cat > "$BASE_DIR/第12章-运维与运营/12.2-运营工具/12.2.1-数据统计.md" << 'EOF'
---
title: 数据统计
icon: uni-app-statistics
order: 1
---

# 数据统计

## 统计指标
- 用户数据
- 行为数据
- 性能数据
- 业务数据
- 转化数据

## 统计工具
- 埋点系统
- 数据采集
- 数据分析
- 报表系统
- 可视化

## 数据应用
- 趋势分析
- 用户画像
- 行为分析
- 转化分析
- 决策支持

## 最佳实践
- 指标设计
- 数据采集
- 分析方法
- 应用策略
- 持续优化
EOF

# 创建12.2.2用户分析文件
cat > "$BASE_DIR/第12章-运维与运营/12.2-运营工具/12.2.2-用户分析.md" << 'EOF'
---
title: 用户分析
icon: uni-app-user-analysis
order: 2
---

# 用户分析

## 用户画像
- 基础属性
- 行为特征
- 使用习惯
- 消费能力
- 兴趣偏好

## 行为分析
- 访问路径
- 使用时长
- 功能偏好
- 转化行为
- 留存分析

## 分析方法
- 数据采集
- 指标分析
- 行为分析
- 趋势分析
- 预测分析

## 最佳实践
- 分析方法
- 数据应用
- 优化策略
- 效果评估
- 持续改进
EOF

# 创建12.2.3渠道管理文件
cat > "$BASE_DIR/第12章-运维与运营/12.2-运营工具/12.2.3-渠道管理.md" << 'EOF'
---
title: 渠道管理
icon: uni-app-channel
order: 3
---

# 渠道管理

## 渠道类型
- 应用商店
- 小程序平台
- 社交媒体
- 广告平台
- 合作渠道

## 渠道策略
- 渠道选择
- 资源分配
- 投放策略
- 效果评估
- 优化调整

## 数据分析
- 渠道数据
- 转化数据
- 成本分析
- ROI分析
- 效果评估

## 最佳实践
- 渠道规划
- 资源配置
- 效果优化
- 成本控制
- 持续改进
EOF

# 创建12.2.4推广工具文件
cat > "$BASE_DIR/第12章-运维与运营/12.2-运营工具/12.2.4-推广工具.md" << 'EOF'
---
title: 推广工具
icon: uni-app-promotion
order: 4
---

# 推广工具

## 推广渠道
- 应用商店
- 社交媒体
- 广告平台
- 内容平台
- 合作渠道

## 推广方式
- ASO优化
- 广告投放
- 内容营销
- 社交推广
- 活动运营

## 效果分析
- 数据监控
- 效果评估
- 成本分析
- ROI分析
- 优化策略

## 最佳实践
- 渠道选择
- 资源配置
- 效果优化
- 成本控制
- 持续改进
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建12.2.5错误监控文件
cat > "$BASE_DIR/第12章-运维与运营/12.2-运营工具/12.2.5-错误监控.md" << 'EOF'
---
title: 错误监控
icon: uni-app-error
order: 5
---

# 错误监控

## 监控类型
- 代码错误
- 接口错误
- 性能异常
- 用户反馈
- 系统异常

## 监控工具
- 错误采集
- 日志分析
- 告警系统
- 统计分析
- 可视化

## 处理流程
- 错误发现
- 问题定位
- 分析解决
- 验证确认
- 复盘总结

## 最佳实践
- 监控策略
- 告警配置
- 处理流程
- 预防措施
- 持续优化
EOF

# 创建12.2.6性能监控文件
cat > "$BASE_DIR/第12章-运维与运营/12.2-运营工具/12.2.6-性能监控.md" << 'EOF'
---
title: 性能监控
icon: uni-app-performance
order: 6
---

# 性能监控

## 监控指标
- 加载性能
- 运行性能
- 内存使用
- 网络性能
- 用户体验

## 监控工具
- 性能采集
- 数据分析
- 告警系统
- 报表系统
- 可视化

## 优化策略
- 性能分析
- 问题定位
- 优化方案
- 效果验证
- 持续改进

## 最佳实践
- 监控配置
- 告警策略
- 优化方法
- 效果评估
- 维护建议
EOF

# 创建12.3服务支持目录
mkdir -p "$BASE_DIR/第12章-运维与运营/12.3-服务支持"

# 创建12.3服务支持README文件
cat > "$BASE_DIR/第12章-运维与运营/12.3-服务支持/README.md" << 'EOF'
---
title: 服务支持
icon: uni-app-support
order: 3
---

# 服务支持

本节介绍uni-app的服务支持相关知识。
EOF

# 创建12.3.1技术支持文件
cat > "$BASE_DIR/第12章-运维与运营/12.3-服务支持/12.3.1-技术支持.md" << 'EOF'
---
title: 技术支持
icon: uni-app-tech-support
order: 1
---

# 技术支持

## 支持方式
- 在线咨询
- 远程协助
- 问题跟踪
- 知识库
- 培训服务

## 服务内容
- 问题解答
- 故障处理
- 技术咨询
- 版本升级
- 性能优化

## 服务流程
- 问题接收
- 分析处理
- 解决方案
- 验证确认
- 结果反馈

## 最佳实践
- 服务规范
- 响应速度
- 解决效率
- 用户满意度
- 持续改进
EOF

# 创建12.3.2问题反馈文件
cat > "$BASE_DIR/第12章-运维与运营/12.3-服务支持/12.3.2-问题反馈.md" << 'EOF'
---
title: 问题反馈
icon: uni-app-feedback
order: 2
---

# 问题反馈

## 反馈渠道
- 在线反馈
- 邮件反馈
- 社区反馈
- 客服反馈
- 应用内反馈

## 处理流程
- 问题收集
- 分类整理
- 分析处理
- 解决反馈
- 效果跟踪

## 反馈分析
- 问题分类
- 统计分析
- 趋势分析
- 改进建议
- 效果评估

## 最佳实践
- 反馈管理
- 处理流程
- 分析方法
- 改进措施
- 持续优化
EOF

# 创建12.3.3社区交流文件
cat > "$BASE_DIR/第12章-运维与运营/12.3-服务支持/12.3.3-社区交流.md" << 'EOF'
---
title: 社区交流
icon: uni-app-community
order: 3
---

# 社区交流

## 交流平台
- 官方论坛
- 技术社区
- 社交媒体
- 开发者群
- 线下活动

## 交流内容
- 技术分享
- 经验交流
- 问题解答
- 资源共享
- 活动组织

## 运营管理
- 内容管理
- 用户管理
- 活动管理
- 数据分析
- 效果评估

## 最佳实践
- 社区运营
- 内容策略
- 用户激励
- 活动策划
- 持续优化
EOF

# 创建12.3.4文档维护文件
cat > "$BASE_DIR/第12章-运维与运营/12.3-服务支持/12.3.4-文档维护.md" << 'EOF'
---
title: 文档维护
icon: uni-app-docs
order: 4
---

# 文档维护

## 文档类型
- 开发文档
- 使用手册
- API文档
- 常见问题
- 最佳实践

## 维护流程
- 内容更新
- 版本管理
- 审核校对
- 发布部署
- 效果反馈

## 文档规范
- 格式规范
- 内容规范
- 命名规范
- 版本规范
- 发布规范

## 最佳实践
- 文档管理
- 更新策略
- 质量控制
- 用户体验
- 持续优化
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建12.4运维监控目录
mkdir -p "$BASE_DIR/第12章-运维与运营/12.4-运维监控"

# 创建12.4运维监控README文件
cat > "$BASE_DIR/第12章-运维与运营/12.4-运维监控/README.md" << 'EOF'
---
title: 运维监控
icon: uni-app-ops-monitor
order: 4
---

# 运维监控

本节介绍uni-app的运维监控相关知识。
EOF

# 创建12.4.1多环境配置文件
cat > "$BASE_DIR/第12章-运维与运营/12.4-运维监控/12.4.1-多环境配置.md" << 'EOF'
---
title: 多环境配置
icon: uni-app-env-config
order: 1
---

# 多环境配置

## 环境类型
- 开发环境
- 测试环境
- 预发环境
- 生产环境
- 灾备环境

## 配置管理
- 环境变量
- 配置文件
- 密钥管理
- 权限控制
- 版本管理

## 部署策略
- 环境隔离
- 配置分离
- 数据隔离
- 权限控制
- 监控告警

## 最佳实践
- 环境规划
- 配置管理
- 部署流程
- 安全控制
- 维护建议
EOF

# 创建12.4.2灰度发布文件
cat > "$BASE_DIR/第12章-运维与运营/12.4-运维监控/12.4.2-灰度发布.md" << 'EOF'
---
title: 灰度发布
icon: uni-app-gray-release
order: 2
---

# 灰度发布

## 发布策略
- 用户分组
- 流量控制
- 版本控制
- 回滚机制
- 监控告警

## 实施流程
- 策略制定
- 环境准备
- 灰度发布
- 效果监控
- 全量发布

## 监控分析
- 性能监控
- 错误监控
- 用户反馈
- 数据分析
- 效果评估

## 最佳实践
- 策略设计
- 风险控制
- 监控告警
- 应急处理
- 持续优化
EOF

# 创建12.4.3监控告警文件
cat > "$BASE_DIR/第12章-运维与运营/12.4-运维监控/12.4.3-监控告警.md" << 'EOF'
---
title: 监控告警
icon: uni-app-monitor
order: 3
---

# 监控告警

## 监控指标
- 性能指标
- 错误指标
- 业务指标
- 用户指标
- 系统指标

## 告警策略
- 告警规则
- 告警级别
- 通知方式
- 处理流程
- 升级机制

## 处理流程
- 问题发现
- 分析定位
- 处理解决
- 验证确认
- 复盘总结

## 最佳实践
- 监控配置
- 告警策略
- 处理流程
- 效果评估
- 持续优化
EOF

# 创建12.4.4日志分析文件
cat > "$BASE_DIR/第12章-运维与运营/12.4-运维监控/12.4.4-日志分析.md" << 'EOF'
---
title: 日志分析
icon: uni-app-log
order: 4
---

# 日志分析

## 日志类型
- 运行日志
- 错误日志
- 性能日志
- 业务日志
- 安全日志

## 分析工具
- 日志收集
- 日志存储
- 日志分析
- 可视化
- 告警系统

## 分析方法
- 实时分析
- 离线分析
- 统计分析
- 趋势分析
- 异常检测

## 最佳实践
- 日志规范
- 分析方法
- 工具选择
- 效果评估
- 持续优化
EOF

# 创建12.4.5用户反馈文件
cat > "$BASE_DIR/第12章-运维与运营/12.4-运维监控/12.4.5-用户反馈.md" << 'EOF'
---
title: 用户反馈
icon: uni-app-feedback
order: 5
---

# 用户反馈

## 反馈渠道
- 应用内反馈
- 客服系统
- 社区论坛
- 邮件支持
- 社交媒体

## 处理流程
- 收集整理
- 分类分级
- 分析处理
- 解决反馈
- 跟踪改进

## 分析应用
- 问题分类
- 统计分析
- 趋势分析
- 改进建议
- 效果评估

## 最佳实践
- 反馈管理
- 处理流程
- 分析方法
- 改进措施
- 持续优化
EOF

# 创建第13章高级功能目录
mkdir -p "$BASE_DIR/第13章-高级功能"

# 创建第13章高级功能README文件
cat > "$BASE_DIR/第13章-高级功能/README.md" << 'EOF'
---
title: 高级功能
icon: uni-app-advanced
order: 13
---

# 高级功能

本章介绍uni-app的高级功能相关知识。
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建13.1动画处理目录
mkdir -p "$BASE_DIR/第13章-高级功能/13.1-动画处理"

# 创建13.1动画处理README文件
cat > "$BASE_DIR/第13章-高级功能/13.1-动画处理/README.md" << 'EOF'
---
title: 动画处理
icon: uni-app-animation
order: 1
---

# 动画处理

本节介绍uni-app的动画处理相关知识。
EOF

# 创建13.1.1CSS动画文件
cat > "$BASE_DIR/第13章-高级功能/13.1-动画处理/13.1.1-CSS动画.md" << 'EOF'
---
title: CSS动画
icon: uni-app-css-animation
order: 1
---

# CSS动画

## 基础动画
- 过渡效果
- 关键帧动画
- 变换效果
- 动画属性
- 动画事件

## 动画类型
- 位移动画
- 缩放动画
- 旋转动画
- 透明度
- 组合动画

## 性能优化
- 硬件加速
- 动画触发
- 帧率控制
- 内存优化
- 渲染优化

## 最佳实践
- 动画设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.1.2JS动画文件
cat > "$BASE_DIR/第13章-高级功能/13.1-动画处理/13.1.2-JS动画.md" << 'EOF'
---
title: JS动画
icon: uni-app-js-animation
order: 2
---

# JS动画

## 动画实现
- 定时器动画
- requestAnimationFrame
- Web Animation API
- Canvas动画
- SVG动画

## 动画控制
- 开始暂停
- 速度控制
- 方向控制
- 循环控制
- 事件处理

## 性能优化
- 动画算法
- 性能监控
- 内存管理
- 渲染优化
- 帧率控制

## 最佳实践
- 动画设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.1.3帧动画文件
cat > "$BASE_DIR/第13章-高级功能/13.1-动画处理/13.1.3-帧动画.md" << 'EOF'
---
title: 帧动画
icon: uni-app-frame-animation
order: 3
---

# 帧动画

## 基础概念
- 帧序列
- 帧率控制
- 动画控制
- 资源管理
- 性能优化

## 实现方式
- CSS Sprite
- Canvas绘制
- WebGL渲染
- 图片序列
- SVG动画

## 优化策略
- 资源加载
- 内存管理
- 渲染优化
- 帧率控制
- 性能监控

## 最佳实践
- 动画设计
- 资源管理
- 性能优化
- 调试技巧
- 维护建议
EOF

# 创建13.1.4骨骼动画文件
cat > "$BASE_DIR/第13章-高级功能/13.1-动画处理/13.1.4-骨骼动画.md" << 'EOF'
---
title: 骨骼动画
icon: uni-app-skeleton-animation
order: 4
---

# 骨骼动画

## 基础概念
- 骨骼结构
- 关键帧
- 动画控制
- 资源管理
- 性能优化

## 实现方式
- DragonBones
- Spine
- Live2D
- 自定义实现
- WebGL渲染

## 优化策略
- 资源加载
- 内存管理
- 渲染优化
- 帧率控制
- 性能监控

## 最佳实践
- 动画设计
- 资源管理
- 性能优化
- 调试技巧
- 维护建议
EOF

# 创建13.1.5过渡动画文件
cat > "$BASE_DIR/第13章-高级功能/13.1-动画处理/13.1.5-过渡动画.md" << 'EOF'
---
title: 过渡动画
icon: uni-app-transition
order: 5
---

# 过渡动画

## 基础概念
- 过渡类型
- 过渡时间
- 过渡效果
- 触发条件
- 事件处理

## 实现方式
- CSS过渡
- JS过渡
- 组件过渡
- 路由过渡
- 自定义过渡

## 优化策略
- 性能优化
- 内存管理
- 渲染优化
- 帧率控制
- 体验优化

## 最佳实践
- 动画设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.2多媒体目录
mkdir -p "$BASE_DIR/第13章-高级功能/13.2-多媒体"

# 创建13.2多媒体README文件
cat > "$BASE_DIR/第13章-高级功能/13.2-多媒体/README.md" << 'EOF'
---
title: 多媒体
icon: uni-app-media
order: 2
---

# 多媒体

本节介绍uni-app的多媒体相关知识。
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建13.2.1音频处理文件
cat > "$BASE_DIR/第13章-高级功能/13.2-多媒体/13.2.1-音频处理.md" << 'EOF'
---
title: 音频处理
icon: uni-app-audio
order: 1
---

# 音频处理

## 基础功能
- 音频播放
- 音频录制
- 音频控制
- 音频格式
- 音频转码

## 高级特性
- 音频剪辑
- 音频合成
- 音频效果
- 音频分析
- 音频可视化

## 性能优化
- 资源加载
- 内存管理
- 播放控制
- 缓存策略
- 错误处理

## 最佳实践
- 音频处理
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.2.2视频播放文件
cat > "$BASE_DIR/第13章-高级功能/13.2-多媒体/13.2.2-视频播放.md" << 'EOF'
---
title: 视频播放
icon: uni-app-video
order: 2
---

# 视频播放

## 基础功能
- 视频播放
- 播放控制
- 视频格式
- 清晰度切换
- 全屏控制

## 高级特性
- 弹幕功能
- 进度预览
- 字幕支持
- 倍速播放
- 画中画

## 性能优化
- 资源加载
- 内存管理
- 播放控制
- 缓存策略
- 错误处理

## 最佳实践
- 播放器设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.2.3直播文件
cat > "$BASE_DIR/第13章-高级功能/13.2-多媒体/13.2.3-直播.md" << 'EOF'
---
title: 直播
icon: uni-app-live
order: 3
---

# 直播

## 基础功能
- 推流功能
- 拉流功能
- 直播控制
- 清晰度切换
- 延迟控制

## 互动功能
- 弹幕系统
- 礼物系统
- 聊天系统
- 点赞功能
- 分享功能

## 性能优化
- 网络优化
- 内存管理
- 延迟控制
- 画质优化
- 错误处理

## 最佳实践
- 直播设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.2.4AR/VR文件
cat > "$BASE_DIR/第13章-高级功能/13.2-多媒体/13.2.4-AR-VR.md" << 'EOF'
---
title: AR/VR
icon: uni-app-ar-vr
order: 4
---

# AR/VR

## 基础功能
- AR识别
- VR展示
- 场景控制
- 交互控制
- 设备适配

## 高级特性
- 3D渲染
- 空间定位
- 手势识别
- 动作捕捉
- 场景切换

## 性能优化
- 渲染优化
- 内存管理
- 设备适配
- 交互优化
- 错误处理

## 最佳实践
- 场景设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.3图形图像目录
mkdir -p "$BASE_DIR/第13章-高级功能/13.3-图形图像"

# 创建13.3图形图像README文件
cat > "$BASE_DIR/第13章-高级功能/13.3-图形图像/README.md" << 'EOF'
---
title: 图形图像
icon: uni-app-graphics
order: 3
---

# 图形图像

本节介绍uni-app的图形图像相关知识。
EOF

# 创建13.3.1Canvas文件
cat > "$BASE_DIR/第13章-高级功能/13.3-图形图像/13.3.1-Canvas.md" << 'EOF'
---
title: Canvas
icon: uni-app-canvas
order: 1
---

# Canvas

## 基础绘制
- 图形绘制
- 文本绘制
- 图像处理
- 动画效果
- 事件处理

## 高级特性
- 图形变换
- 渐变效果
- 阴影效果
- 混合模式
- 像素操作

## 性能优化
- 渲染优化
- 内存管理
- 事件优化
- 缓存策略
- 错误处理

## 最佳实践
- 绘图设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.3.2WebGL文件
cat > "$BASE_DIR/第13章-高级功能/13.3-图形图像/13.3.2-WebGL.md" << 'EOF'
---
title: WebGL
icon: uni-app-webgl
order: 2
---

# WebGL

## 基础概念
- 着色器
- 缓冲区
- 纹理
- 矩阵变换
- 光照效果

## 高级特性
- 3D渲染
- 粒子系统
- 后期处理
- 物理引擎
- 场景管理

## 性能优化
- 渲染优化
- 内存管理
- GPU优化
- 资源加载
- 错误处理

## 最佳实践
- 场景设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建13.3.3SVG文件
cat > "$BASE_DIR/第13章-高级功能/13.3-图形图像/13.3.3-SVG.md" << 'EOF'
---
title: SVG
icon: uni-app-svg
order: 3
---

# SVG

## 基础图形
- 基本形状
- 路径绘制
- 文本处理
- 图形变换
- 样式设置

## 高级特性
- 渐变效果
- 滤镜效果
- 动画效果
- 事件处理
- 脚本控制

## 性能优化
- 渲染优化
- 内存管理
- 文件优化
- 动画优化
- 加载优化

## 最佳实践
- 图形设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.3.4图片处理文件
cat > "$BASE_DIR/第13章-高级功能/13.3-图形图像/13.3.4-图片处理.md" << 'EOF'
---
title: 图片处理
icon: uni-app-image
order: 4
---

# 图片处理

## 基础功能
- 图片加载
- 图片裁剪
- 图片缩放
- 图片旋转
- 图片滤镜

## 高级处理
- 图片压缩
- 格式转换
- 特效处理
- 水印添加
- 图片编辑

## 性能优化
- 加载优化
- 内存管理
- 缓存策略
- 渲染优化
- 错误处理

## 最佳实践
- 处理流程
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.4手势与触摸目录
mkdir -p "$BASE_DIR/第13章-高级功能/13.4-手势与触摸"

# 创建13.4手势与触摸README文件
cat > "$BASE_DIR/第13章-高级功能/13.4-手势与触摸/README.md" << 'EOF'
---
title: 手势与触摸
icon: uni-app-gesture
order: 4
---

# 手势与触摸

本节介绍uni-app的手势与触摸相关知识。
EOF

# 创建13.4.1手势识别文件
cat > "$BASE_DIR/第13章-高级功能/13.4-手势与触摸/13.4.1-手势识别.md" << 'EOF'
---
title: 手势识别
icon: uni-app-gesture-recognition
order: 1
---

# 手势识别

## 基础手势
- 点击手势
- 长按手势
- 滑动手势
- 缩放手势
- 旋转手势

## 复杂手势
- 多点触控
- 组合手势
- 自定义手势
- 手势冲突
- 手势优先级

## 性能优化
- 事件处理
- 内存管理
- 响应优化
- 冲突处理
- 错误处理

## 最佳实践
- 手势设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.4.2触摸事件文件
cat > "$BASE_DIR/第13章-高级功能/13.4-手势与触摸/13.4.2-触摸事件.md" << 'EOF'
---
title: 触摸事件
icon: uni-app-touch
order: 2
---

# 触摸事件

## 事件类型
- 触摸开始
- 触摸移动
- 触摸结束
- 触摸取消
- 多点触控

## 事件处理
- 事件监听
- 事件传播
- 事件代理
- 事件阻止
- 事件冒泡

## 性能优化
- 事件节流
- 事件防抖
- 内存管理
- 响应优化
- 错误处理

## 最佳实践
- 事件设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建13.4.3拖拽功能文件
cat > "$BASE_DIR/第13章-高级功能/13.4-手势与触摸/13.4.3-拖拽功能.md" << 'EOF'
---
title: 拖拽功能
icon: uni-app-drag
order: 3
---

# 拖拽功能

## 基础功能
- 拖拽开始
- 拖拽过程
- 拖拽结束
- 放置目标
- 拖拽效果

## 高级特性
- 多项拖拽
- 限制范围
- 自动滚动
- 拖拽排序
- 拖拽动画

## 性能优化
- 事件处理
- 内存管理
- 渲染优化
- 动画优化
- 错误处理

## 最佳实践
- 功能设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建第14章性能优化实践目录
mkdir -p "$BASE_DIR/第14章-性能优化实践"

# 创建第14章性能优化实践README文件
cat > "$BASE_DIR/第14章-性能优化实践/README.md" << 'EOF'
---
title: 性能优化实践
icon: uni-app-performance
order: 14
---

# 性能优化实践

本章介绍uni-app的性能优化实践相关知识。
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建14.1启动优化目录
mkdir -p "$BASE_DIR/第14章-性能优化实践/14.1-启动优化"

# 创建14.1启动优化README文件
cat > "$BASE_DIR/第14章-性能优化实践/14.1-启动优化/README.md" << 'EOF'
---
title: 启动优化
icon: uni-app-startup
order: 1
---

# 启动优化

本节介绍uni-app的启动优化相关知识。
EOF

# 创建14.1.1首屏加载优化文件
cat > "$BASE_DIR/第14章-性能优化实践/14.1-启动优化/14.1.1-首屏加载优化.md" << 'EOF'
---
title: 首屏加载优化
icon: uni-app-first-screen
order: 1
---

# 首屏加载优化

## 优化策略
- 资源压缩
- 代码分割
- 懒加载
- 预加载
- 缓存策略

## 加载优化
- 关键资源
- 非关键资源
- 异步加载
- 并行加载
- 按需加载

## 渲染优化
- 骨架屏
- 预渲染
- 延迟渲染
- 分批渲染
- 优先级控制

## 最佳实践
- 优化方案
- 性能监控
- 效果评估
- 持续优化
- 维护建议
EOF

# 创建14.1.2资源预加载文件
cat > "$BASE_DIR/第14章-性能优化实践/14.1-启动优化/14.1.2-资源预加载.md" << 'EOF'
---
title: 资源预加载
icon: uni-app-preload
order: 2
---

# 资源预加载

## 预加载策略
- 资源分类
- 优先级控制
- 加载时机
- 加载方式
- 缓存策略

## 实现方式
- DNS预解析
- 资源预获取
- 资源预加载
- 资源预连接
- 资源预渲染

## 性能优化
- 加载优化
- 内存管理
- 缓存优化
- 并发控制
- 错误处理

## 最佳实践
- 策略设计
- 性能监控
- 效果评估
- 持续优化
- 维护建议
EOF

# 创建14.1.3代码分包文件
cat > "$BASE_DIR/第14章-性能优化实践/14.1-启动优化/14.1.3-代码分包.md" << 'EOF'
---
title: 代码分包
icon: uni-app-subpackage
order: 3
---

# 代码分包

## 分包策略
- 主包配置
- 分包配置
- 依赖分析
- 加载策略
- 预加载

## 实现方式
- 路由分包
- 组件分包
- 资源分包
- 动态加载
- 按需加载

## 性能优化
- 包体积优化
- 加载优化
- 缓存策略
- 预加载优化
- 错误处理

## 最佳实践
- 分包设计
- 性能监控
- 效果评估
- 持续优化
- 维护建议
EOF

# 创建14.2渲染优化目录
mkdir -p "$BASE_DIR/第14章-性能优化实践/14.2-渲染优化"

# 创建14.2渲染优化README文件
cat > "$BASE_DIR/第14章-性能优化实践/14.2-渲染优化/README.md" << 'EOF'
---
title: 渲染优化
icon: uni-app-render
order: 2
---

# 渲染优化

本节介绍uni-app的渲染优化相关知识。
EOF

# 创建14.2.1虚拟列表文件
cat > "$BASE_DIR/第14章-性能优化实践/14.2-渲染优化/14.2.1-虚拟列表.md" << 'EOF'
---
title: 虚拟列表
icon: uni-app-virtual-list
order: 1
---

# 虚拟列表

## 基本原理
- 可视区域
- 数据缓冲
- 滚动计算
- 元素复用
- 高度估算

## 实现方式
- 固定高度
- 动态高度
- 无限滚动
- 双向滚动
- 分组列表

## 性能优化
- 渲染优化
- 滚动优化
- 内存管理
- 事件处理
- 缓存策略

## 最佳实践
- 实现方案
- 性能监控
- 效果评估
- 持续优化
- 维护建议
EOF

# 创建14.2.2延迟渲染文件
cat > "$BASE_DIR/第14章-性能优化实践/14.2-渲染优化/14.2.2-延迟渲染.md" << 'EOF'
---
title: 延迟渲染
icon: uni-app-lazy-render
order: 2
---

# 延迟渲染

## 基本原理
- 渲染时机
- 优先级控制
- 可见性检测
- 渲染队列
- 资源管理

## 实现方式
- 组件延迟
- 内容延迟
- 条件渲染
- 分批渲染
- 按需渲染

## 性能优化
- 渲染优化
- 内存管理
- 事件处理
- 资源加载
- 错误处理

## 最佳实践
- 实现方案
- 性能监控
- 效果评估
- 持续优化
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建14.2.3按需渲染文件
cat > "$BASE_DIR/第14章-性能优化实践/14.2-渲染优化/14.2.3-按需渲染.md" << 'EOF'
---
title: 按需渲染
icon: uni-app-on-demand
order: 3
---

# 按需渲染

## 基本原理
- 渲染时机
- 渲染条件
- 渲染优先级
- 渲染队列
- 资源管理

## 实现方式
- 条件渲染
- 动态组件
- 异步组件
- 路由懒加载
- 组件懒加载

## 性能优化
- 渲染优化
- 内存管理
- 资源加载
- 事件处理
- 错误处理

## 最佳实践
- 实现方案
- 性能监控
- 效果评估
- 持续优化
- 维护建议
EOF

# 创建14.3网络优化目录
mkdir -p "$BASE_DIR/第14章-性能优化实践/14.3-网络优化"

# 创建14.3网络优化README文件
cat > "$BASE_DIR/第14章-性能优化实践/14.3-网络优化/README.md" << 'EOF'
---
title: 网络优化
icon: uni-app-network
order: 3
---

# 网络优化

本节介绍uni-app的网络优化相关知识。
EOF

# 创建14.3.1请求合并文件
cat > "$BASE_DIR/第14章-性能优化实践/14.3-网络优化/14.3.1-请求合并.md" << 'EOF'
---
title: 请求合并
icon: uni-app-request-merge
order: 1
---

# 请求合并

## 合并策略
- 接口合并
- 数据打包
- 批量处理
- 优先级控制
- 并发控制

## 实现方式
- 请求队列
- 请求批处理
- 数据聚合
- 响应拆分
- 错误处理

## 性能优化
- 请求优化
- 响应优化
- 并发控制
- 超时处理
- 错误重试

## 最佳实践
- 策略设计
- 性能监控
- 效果评估
- 持续优化
- 维护建议
EOF

# 创建14.3.2数据缓存文件
cat > "$BASE_DIR/第14章-性能优化实践/14.3-网络优化/14.3.2-数据缓存.md" << 'EOF'
---
title: 数据缓存
icon: uni-app-cache
order: 2
---

# 数据缓存

## 缓存策略
- 内存缓存
- 持久化缓存
- 网络缓存
- 离线缓存
- 预缓存

## 实现方式
- 本地存储
- IndexedDB
- WebSQL
- 文件系统
- 服务工作线程

## 性能优化
- 缓存管理
- 内存控制
- 过期策略
- 清理策略
- 同步策略

## 最佳实践
- 策略设计
- 性能监控
- 效果评估
- 持续优化
- 维护建议
EOF

# 创建14.3.3离线包文件
cat > "$BASE_DIR/第14章-性能优化实践/14.3-网络优化/14.3.3-离线包.md" << 'EOF'
---
title: 离线包
icon: uni-app-offline
order: 3
---

# 离线包

## 基本概念
- 离线资源
- 版本控制
- 更新机制
- 加载策略
- 缓存管理

## 实现方式
- 资源打包
- 增量更新
- 按需加载
- 预加载
- 版本管理

## 性能优化
- 包体积优化
- 加载优化
- 更新优化
- 缓存优化
- 网络优化

## 最佳实践
- 策略设计
- 性能监控
- 效果评估
- 持续优化
- 维护建议
EOF

# 创建14.4内存优化目录
mkdir -p "$BASE_DIR/第14章-性能优化实践/14.4-内存优化"

# 创建14.4内存优化README文件
cat > "$BASE_DIR/第14章-性能优化实践/14.4-内存优化/README.md" << 'EOF'
---
title: 内存优化
icon: uni-app-memory
order: 4
---

# 内存优化

本节介绍uni-app的内存优化相关知识。
EOF

# 创建14.4.1内存泄漏文件
cat > "$BASE_DIR/第14章-性能优化实践/14.4-内存优化/14.4.1-内存泄漏.md" << 'EOF'
---
title: 内存泄漏
icon: uni-app-memory-leak
order: 1
---

# 内存泄漏

## 常见问题
- 闭包泄漏
- 事件泄漏
- 定时器泄漏
- DOM泄漏
- 缓存泄漏

## 检测方法
- 内存监控
- 性能分析
- 泄漏定位
- 代码审查
- 工具分析

## 优化策略
- 代码优化
- 资源释放
- 内存回收
- 引用管理
- 缓存控制

## 最佳实践
- 问题预防
- 检测方法
- 优化方案
- 效果评估
- 持续改进
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建14.4.2大数据处理文件
cat > "$BASE_DIR/第14章-性能优化实践/14.4-内存优化/14.4.2-大数据处理.md" << 'EOF'
---
title: 大数据处理
icon: uni-app-big-data
order: 2
---

# 大数据处理

## 数据处理
- 数据分片
- 虚拟列表
- 懒加载
- 增量加载
- 数据压缩

## 优化策略
- 内存控制
- 分批处理
- 异步处理
- 缓存策略
- 垃圾回收

## 性能监控
- 内存监控
- 性能分析
- 瓶颈定位
- 优化验证
- 持续改进

## 最佳实践
- 处理方案
- 优化策略
- 监控方法
- 效果评估
- 维护建议
EOF

# 创建14.4.3页面切换文件
cat > "$BASE_DIR/第14章-性能优化实践/14.4-内存优化/14.4.3-页面切换.md" << 'EOF'
---
title: 页面切换
icon: uni-app-page-switch
order: 3
---

# 页面切换

## 切换优化
- 页面缓存
- 预加载
- 资源释放
- 状态保持
- 动画优化

## 内存管理
- 组件卸载
- 事件清理
- 资源回收
- 缓存控制
- 内存监控

## 性能优化
- 切换速度
- 内存占用
- 渲染性能
- 动画流畅
- 体验优化

## 最佳实践
- 优化方案
- 性能监控
- 效果评估
- 持续改进
- 维护建议
EOF

# 创建14.5电量优化目录
mkdir -p "$BASE_DIR/第14章-性能优化实践/14.5-电量优化"

# 创建14.5电量优化README文件
cat > "$BASE_DIR/第14章-性能优化实践/14.5-电量优化/README.md" << 'EOF'
---
title: 电量优化
icon: uni-app-battery
order: 5
---

# 电量优化

本节介绍uni-app的电量优化相关知识。
EOF

# 创建14.5.1后台任务文件
cat > "$BASE_DIR/第14章-性能优化实践/14.5-电量优化/14.5.1-后台任务.md" << 'EOF'
---
title: 后台任务
icon: uni-app-background
order: 1
---

# 后台任务

## 任务管理
- 任务分类
- 优先级控制
- 执行时机
- 资源控制
- 唤醒策略

## 优化策略
- 任务合并
- 延迟执行
- 批量处理
- 网络优化
- 定时控制

## 性能监控
- 电量消耗
- 资源占用
- 执行时长
- 唤醒次数
- 网络使用

## 最佳实践
- 任务设计
- 优化策略
- 监控方法
- 效果评估
- 维护建议
EOF

# 创建14.5.2定位优化文件
cat > "$BASE_DIR/第14章-性能优化实践/14.5-电量优化/14.5.2-定位优化.md" << 'EOF'
---
title: 定位优化
icon: uni-app-location
order: 2
---

# 定位优化

## 定位策略
- 定位方式
- 定位频率
- 精度控制
- 超时处理
- 缓存策略

## 优化方案
- 按需定位
- 定位复用
- 网络优化
- 电量控制
- 精度平衡

## 性能监控
- 电量消耗
- 定位精度
- 响应时间
- 成功率
- 资源占用

## 最佳实践
- 策略设计
- 优化方案
- 监控方法
- 效果评估
- 维护建议
EOF

# 创建14.5.3网络请求文件
cat > "$BASE_DIR/第14章-性能优化实践/14.5-电量优化/14.5.3-网络请求.md" << 'EOF'
---
title: 网络请求
icon: uni-app-network
order: 3
---

# 网络请求

## 请求优化
- 请求合并
- 请求压缩
- 缓存策略
- 超时控制
- 重试机制

## 网络策略
- 网络类型
- 信号强度
- 带宽控制
- 流量优化
- 电量平衡

## 性能监控
- 电量消耗
- 网络流量
- 响应时间
- 成功率
- 资源占用

## 最佳实践
- 优化策略
- 监控方法
- 效果评估
- 持续改进
- 维护建议
EOF

# 创建第15章API与扩展能力目录
mkdir -p "$BASE_DIR/第15章-API与扩展能力"

# 创建第15章API与扩展能力README文件
cat > "$BASE_DIR/第15章-API与扩展能力/README.md" << 'EOF'
---
title: API与扩展能力
icon: uni-app-api
order: 15
---

# API与扩展能力

本章介绍uni-app的API与扩展能力相关知识。
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建15.1基础API目录
mkdir -p "$BASE_DIR/第15章-API与扩展能力/15.1-基础API"

# 创建15.1基础API README文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.1-基础API/README.md" << 'EOF'
---
title: 基础API
icon: uni-app-base-api
order: 1
---

# 基础API

本节介绍uni-app的基础API相关知识。
EOF

# 创建15.1.1应用生命周期文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.1-基础API/15.1.1-应用生命周期.md" << 'EOF'
---
title: 应用生命周期
icon: uni-app-lifecycle
order: 1
---

# 应用生命周期

## 生命周期
- 应用启动
- 应用运行
- 应用切换
- 应用退出
- 错误处理

## 事件处理
- 初始化事件
- 运行事件
- 切换事件
- 退出事件
- 错误事件

## 状态管理
- 应用状态
- 数据状态
- 页面状态
- 缓存状态
- 网络状态

## 最佳实践
- 生命周期管理
- 状态维护
- 性能优化
- 错误处理
- 调试技巧
EOF

# 创建15.1.2页面生命周期文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.1-基础API/15.1.2-页面生命周期.md" << 'EOF'
---
title: 页面生命周期
icon: uni-app-page-lifecycle
order: 2
---

# 页面生命周期

## 生命周期
- 页面加载
- 页面显示
- 页面隐藏
- 页面卸载
- 页面重载

## 事件处理
- 加载事件
- 显示事件
- 隐藏事件
- 卸载事件
- 重载事件

## 状态管理
- 页面状态
- 数据状态
- 组件状态
- 路由状态
- 缓存状态

## 最佳实践
- 生命周期管理
- 状态维护
- 性能优化
- 错误处理
- 调试技巧
EOF

# 创建15.1.3全局配置文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.1-基础API/15.1.3-全局配置.md" << 'EOF'
---
title: 全局配置
icon: uni-app-config
order: 3
---

# 全局配置

## 基础配置
- 应用信息
- 页面配置
- 窗口配置
- 网络配置
- 权限配置

## 功能配置
- 导航配置
- 分包配置
- 预加载配置
- 调试配置
- 优化配置

## 平台配置
- 条件编译
- 平台差异
- 兼容处理
- 特殊配置
- 扩展配置

## 最佳实践
- 配置管理
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.1.4环境变量文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.1-基础API/15.1.4-环境变量.md" << 'EOF'
---
title: 环境变量
icon: uni-app-env
order: 4
---

# 环境变量

## 变量类型
- 系统变量
- 应用变量
- 运行变量
- 配置变量
- 自定义变量

## 变量管理
- 变量定义
- 变量获取
- 变量修改
- 变量删除
- 变量保护

## 环境配置
- 开发环境
- 测试环境
- 生产环境
- 调试环境
- 特殊环境

## 最佳实践
- 变量管理
- 环境配置
- 安全处理
- 调试技巧
- 维护建议
EOF

# 创建15.2界面交互目录
mkdir -p "$BASE_DIR/第15章-API与扩展能力/15.2-界面交互"

# 创建15.2界面交互README文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.2-界面交互/README.md" << 'EOF'
---
title: 界面交互
icon: uni-app-ui
order: 2
---

# 界面交互

本节介绍uni-app的界面交互相关知识。
EOF

# 创建15.2.1路由与页面文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.2-界面交互/15.2.1-路由与页面.md" << 'EOF'
---
title: 路由与页面
icon: uni-app-router
order: 1
---

# 路由与页面

## 路由管理
- 路由配置
- 路由跳转
- 路由参数
- 路由拦截
- 路由守卫

## 页面管理
- 页面栈
- 页面切换
- 页面传参
- 页面通信
- 页面缓存

## 交互优化
- 转场动画
- 加载状态
- 返回处理
- 手势交互
- 页面预加载

## 最佳实践
- 路由设计
- 页面管理
- 性能优化
- 调试技巧
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建15.2.2导航与窗口文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.2-界面交互/15.2.2-导航与窗口.md" << 'EOF'
---
title: 导航与窗口
icon: uni-app-navigation
order: 2
---

# 导航与窗口

## 导航功能
- 导航栏配置
- 导航栏样式
- 导航栏按钮
- 导航栏事件
- 自定义导航

## 窗口管理
- 窗口样式
- 窗口动画
- 窗口事件
- 窗口状态
- 窗口通信

## 交互优化
- 手势导航
- 转场动画
- 状态保持
- 返回处理
- 预加载

## 最佳实践
- 导航设计
- 窗口管理
- 性能优化
- 调试技巧
- 维护建议
EOF

# 创建15.2.3界面元素文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.2-界面交互/15.2.3-界面元素.md" << 'EOF'
---
title: 界面元素
icon: uni-app-ui-elements
order: 3
---

# 界面元素

## 基础元素
- 文本组件
- 图片组件
- 按钮组件
- 表单组件
- 列表组件

## 交互元素
- 弹窗组件
- 加载组件
- 滚动组件
- 手势组件
- 动画组件

## 布局元素
- 容器组件
- 栅格组件
- 定位组件
- 浮动组件
- 弹性布局

## 最佳实践
- 组件设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.2.4动画处理文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.2-界面交互/15.2.4-动画处理.md" << 'EOF'
---
title: 动画处理
icon: uni-app-animation
order: 4
---

# 动画处理

## 动画类型
- 过渡动画
- 关键帧动画
- 变换动画
- 路径动画
- 组合动画

## 动画控制
- 动画参数
- 动画事件
- 动画状态
- 动画队列
- 动画插值

## 性能优化
- 硬件加速
- 帧率控制
- 内存管理
- 渲染优化
- 动画缓存

## 最佳实践
- 动画设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.3网络与存储目录
mkdir -p "$BASE_DIR/第15章-API与扩展能力/15.3-网络与存储"

# 创建15.3网络与存储README文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.3-网络与存储/README.md" << 'EOF'
---
title: 网络与存储
icon: uni-app-network-storage
order: 3
---

# 网络与存储

本节介绍uni-app的网络与存储相关知识。
EOF

# 创建15.3.1网络请求文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.3-网络与存储/15.3.1-网络请求.md" << 'EOF'
---
title: 网络请求
icon: uni-app-network
order: 1
---

# 网络请求

## 请求方式
- GET请求
- POST请求
- PUT请求
- DELETE请求
- 文件上传

## 请求配置
- 请求头
- 请求参数
- 超时设置
- 重试机制
- 拦截器

## 响应处理
- 响应解析
- 错误处理
- 状态码处理
- 数据转换
- 缓存策略

## 最佳实践
- 请求设计
- 性能优化
- 安全处理
- 调试技巧
- 维护建议
EOF

# 创建15.3.2数据缓存文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.3-网络与存储/15.3.2-数据缓存.md" << 'EOF'
---
title: 数据缓存
icon: uni-app-cache
order: 2
---

# 数据缓存

## 缓存类型
- 内存缓存
- 持久化缓存
- 网络缓存
- 离线缓存
- 预缓存

## 缓存管理
- 缓存策略
- 缓存控制
- 缓存清理
- 缓存同步
- 缓存监控

## 性能优化
- 存储优化
- 读写优化
- 空间管理
- 过期策略
- 并发控制

## 最佳实践
- 缓存设计
- 性能优化
- 安全处理
- 调试技巧
- 维护建议
EOF

# 创建15.3.3文件系统文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.3-网络与存储/15.3.3-文件系统.md" << 'EOF'
---
title: 文件系统
icon: uni-app-filesystem
order: 3
---

# 文件系统

## 文件操作
- 文件读写
- 文件复制
- 文件移动
- 文件删除
- 文件遍历

## 目录管理
- 目录创建
- 目录删除
- 目录遍历
- 目录监听
- 权限控制

## 存储管理
- 存储空间
- 存储限制
- 存储清理
- 存储监控
- 存储优化

## 最佳实践
- 文件管理
- 性能优化
- 安全处理
- 调试技巧
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建15.3.4数据安全文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.3-网络与存储/15.3.4-数据安全.md" << 'EOF'
---
title: 数据安全
icon: uni-app-security
order: 4
---

# 数据安全

## 加密解密
- 对称加密
- 非对称加密
- 哈希算法
- 数字签名
- 密钥管理

## 数据保护
- 数据脱敏
- 访问控制
- 数据备份
- 数据恢复
- 安全审计

## 安全策略
- 传输安全
- 存储安全
- 运行安全
- 权限控制
- 漏洞防护

## 最佳实践
- 安全设计
- 风险控制
- 监控告警
- 应急处理
- 维护建议
EOF

# 创建15.4媒体能力目录
mkdir -p "$BASE_DIR/第15章-API与扩展能力/15.4-媒体能力"

# 创建15.4媒体能力README文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.4-媒体能力/README.md" << 'EOF'
---
title: 媒体能力
icon: uni-app-media
order: 4
---

# 媒体能力

本节介绍uni-app的媒体能力相关知识。
EOF

# 创建15.4.1图片处理文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.4-媒体能力/15.4.1-图片处理.md" << 'EOF'
---
title: 图片处理
icon: uni-app-image
order: 1
---

# 图片处理

## 基础操作
- 图片选择
- 图片预览
- 图片保存
- 图片压缩
- 图片裁剪

## 高级处理
- 图片滤镜
- 图片编辑
- 图片合成
- 图片识别
- 图片特效

## 性能优化
- 加载优化
- 缓存策略
- 内存管理
- 渲染优化
- 错误处理

## 最佳实践
- 处理流程
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.4.2音频管理文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.4-媒体能力/15.4.2-音频管理.md" << 'EOF'
---
title: 音频管理
icon: uni-app-audio
order: 2
---

# 音频管理

## 基础功能
- 音频播放
- 音频录制
- 音频暂停
- 音频停止
- 音量控制

## 高级特性
- 音频剪辑
- 音频合成
- 音频效果
- 音频分析
- 音频可视化

## 性能优化
- 加载优化
- 播放优化
- 内存管理
- 缓存策略
- 错误处理

## 最佳实践
- 功能设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.4.3视频处理文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.4-媒体能力/15.4.3-视频处理.md" << 'EOF'
---
title: 视频处理
icon: uni-app-video
order: 3
---

# 视频处理

## 基础功能
- 视频播放
- 视频录制
- 视频暂停
- 视频停止
- 进度控制

## 高级特性
- 视频剪辑
- 视频合成
- 视频特效
- 视频转码
- 视频压缩

## 性能优化
- 加载优化
- 播放优化
- 内存管理
- 缓存策略
- 错误处理

## 最佳实践
- 功能设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.4.4相机控制文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.4-媒体能力/15.4.4-相机控制.md" << 'EOF'
---
title: 相机控制
icon: uni-app-camera
order: 4
---

# 相机控制

## 基础功能
- 相机初始化
- 拍照功能
- 录像功能
- 闪光灯控制
- 焦距调节

## 高级特性
- 实时预览
- 人脸识别
- 滤镜效果
- 美颜处理
- AR叠加

## 性能优化
- 内存管理
- 性能控制
- 资源释放
- 错误处理
- 兼容适配

## 最佳实践
- 功能设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.5设备能力目录
mkdir -p "$BASE_DIR/第15章-API与扩展能力/15.5-设备能力"

# 创建15.5设备能力README文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.5-设备能力/README.md" << 'EOF'
---
title: 设备能力
icon: uni-app-device
order: 5
---

# 设备能力

本节介绍uni-app的设备能力相关知识。
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建15.5.1基础信息文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.5-设备能力/15.5.1-基础信息.md" << 'EOF'
---
title: 基础信息
icon: uni-app-device-info
order: 1
---

# 基础信息

## 设备信息
- 设备型号
- 系统版本
- 屏幕信息
- 网络状态
- 存储空间

## 应用信息
- 应用版本
- 运行环境
- 权限状态
- 安装信息
- 更新信息

## 系统信息
- 系统语言
- 系统主题
- 系统设置
- 系统状态
- 系统能力

## 最佳实践
- 信息获取
- 兼容处理
- 性能优化
- 调试技巧
- 维护建议
EOF

# 创建15.5.2传感器文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.5-设备能力/15.5.2-传感器.md" << 'EOF'
---
title: 传感器
icon: uni-app-sensor
order: 2
---

# 传感器

## 基础传感器
- 加速度计
- 陀螺仪
- 磁力计
- 距离传感器
- 光线传感器

## 位置传感器
- GPS定位
- 网络定位
- 高度计
- 方向传感器
- 运动传感器

## 生物传感器
- 指纹识别
- 面部识别
- 心率监测
- 压力传感器
- 温度传感器

## 最佳实践
- 传感器使用
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.5.3硬件接口文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.5-设备能力/15.5.3-硬件接口.md" << 'EOF'
---
title: 硬件接口
icon: uni-app-hardware
order: 3
---

# 硬件接口

## 通信接口
- 蓝牙接口
- WiFi接口
- NFC接口
- USB接口
- 串口通信

## 外设接口
- 打印机
- 扫码器
- 读卡器
- 外接显示
- 音频设备

## 控制接口
- 震动控制
- 屏幕亮度
- 音量控制
- 电源管理
- 按键监听

## 最佳实践
- 接口调用
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.5.4系统能力文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.5-设备能力/15.5.4-系统能力.md" << 'EOF'
---
title: 系统能力
icon: uni-app-system
order: 4
---

# 系统能力

## 系统服务
- 通知服务
- 定位服务
- 后台服务
- 推送服务
- 系统广播

## 系统权限
- 权限申请
- 权限检查
- 权限管理
- 权限回调
- 权限说明

## 系统交互
- 应用跳转
- 系统分享
- 系统设置
- 系统调用
- 系统事件

## 最佳实践
- 能力调用
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.6第三方能力目录
mkdir -p "$BASE_DIR/第15章-API与扩展能力/15.6-第三方能力"

# 创建15.6第三方能力README文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.6-第三方能力/README.md" << 'EOF'
---
title: 第三方能力
icon: uni-app-third-party
order: 6
---

# 第三方能力

本节介绍uni-app的第三方能力相关知识。
EOF

# 创建15.6.1支付功能文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.6-第三方能力/15.6.1-支付功能.md" << 'EOF'
---
title: 支付功能
icon: uni-app-payment
order: 1
---

# 支付功能

## 支付方式
- 微信支付
- 支付宝支付
- 银联支付
- 苹果支付
- 其他支付

## 支付流程
- 订单创建
- 支付调用
- 支付验证
- 支付回调
- 订单查询

## 安全处理
- 签名验证
- 加密传输
- 防重复支付
- 异常处理
- 日志记录

## 最佳实践
- 支付设计
- 安全控制
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.6.2分享功能文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.6-第三方能力/15.6.2-分享功能.md" << 'EOF'
---
title: 分享功能
icon: uni-app-share
order: 2
---

# 分享功能

## 分享方式
- 微信分享
- QQ分享
- 微博分享
- 系统分享
- 自定义分享

## 分享内容
- 文本分享
- 图片分享
- 链接分享
- 小程序分享
- 自定义内容

## 分享处理
- 分享调用
- 分享回调
- 分享验证
- 分享统计
- 错误处理

## 最佳实践
- 分享设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建15.6.3地图服务文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.6-第三方能力/15.6.3-地图服务.md" << 'EOF'
---
title: 地图服务
icon: uni-app-map
order: 3
---

# 地图服务

## 基础功能
- 地图显示
- 地图控制
- 标记点管理
- 路线规划
- 地理编码

## 高级特性
- 自定义样式
- 覆盖物绘制
- 热力图
- 实时路况
- 室内地图

## 位置服务
- 定位功能
- 地址解析
- 周边搜索
- 距离计算
- 区域检索

## 最佳实践
- 地图应用
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.6.4推送服务文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.6-第三方能力/15.6.4-推送服务.md" << 'EOF'
---
title: 推送服务
icon: uni-app-push
order: 4
---

# 推送服务

## 推送类型
- 本地推送
- 远程推送
- 定时推送
- 条件推送
- 静默推送

## 推送管理
- 推送注册
- 推送发送
- 推送接收
- 推送处理
- 推送统计

## 高级功能
- 通知栏管理
- 角标管理
- 分组管理
- 自定义声音
- 交互处理

## 最佳实践
- 推送设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.6.5广告服务文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.6-第三方能力/15.6.5-广告服务.md" << 'EOF'
---
title: 广告服务
icon: uni-app-ad
order: 5
---

# 广告服务

## 广告类型
- 横幅广告
- 插屏广告
- 激励广告
- 原生广告
- 开屏广告

## 广告管理
- 广告加载
- 广告展示
- 广告关闭
- 广告回调
- 广告统计

## 投放控制
- 展示频率
- 定向投放
- 场景控制
- 时间控制
- 用户控制

## 最佳实践
- 广告设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.7扩展能力目录
mkdir -p "$BASE_DIR/第15章-API与扩展能力/15.7-扩展能力"

# 创建15.7扩展能力README文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.7-扩展能力/README.md" << 'EOF'
---
title: 扩展能力
icon: uni-app-extension
order: 7
---

# 扩展能力

本节介绍uni-app的扩展能力相关知识。
EOF

# 创建15.7.1Worker文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.7-扩展能力/15.7.1-Worker.md" << 'EOF'
---
title: Worker
icon: uni-app-worker
order: 1
---

# Worker

## 基础概念
- Worker创建
- 消息通信
- 线程管理
- 错误处理
- 资源释放

## 应用场景
- 数据处理
- 图像处理
- 文件处理
- 网络请求
- 复杂计算

## 性能优化
- 线程控制
- 内存管理
- 通信优化
- 任务调度
- 错误处理

## 最佳实践
- 应用设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.7.2原生插件文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.7-扩展能力/15.7.2-原生插件.md" << 'EOF'
---
title: 原生插件
icon: uni-app-plugin
order: 2
---

# 原生插件

## 插件开发
- 插件创建
- 接口定义
- 功能实现
- 生命周期
- 错误处理

## 插件使用
- 插件安装
- 插件配置
- 插件调用
- 插件更新
- 插件卸载

## 性能优化
- 加载优化
- 内存管理
- 通信优化
- 资源释放
- 错误处理

## 最佳实践
- 插件设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建15.7.3条件编译文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.7-扩展能力/15.7.3-条件编译.md" << 'EOF'
---
title: 条件编译
icon: uni-app-conditional
order: 3
---

# 条件编译

## 基础用法
- 平台判断
- 环境判断
- 版本判断
- 功能判断
- 自定义判断

## 应用场景
- 平台差异
- 环境差异
- 版本差异
- 功能差异
- 自定义差异

## 优化策略
- 代码组织
- 性能优化
- 维护性
- 可读性
- 复用性

## 最佳实践
- 编译策略
- 代码组织
- 性能优化
- 调试技巧
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建15.7.4跨端兼容文件
cat > "$BASE_DIR/第15章-API与扩展能力/15.7-扩展能力/15.7.4-跨端兼容.md" << 'EOF'
---
title: 跨端兼容
icon: uni-app-compatibility
order: 4
---

# 跨端兼容

## 平台差异
- 系统差异
- API差异
- 组件差异
- 样式差异
- 功能差异

## 兼容策略
- 条件编译
- 运行时判断
- 样式适配
- 功能降级
- 替代方案

## 适配方案
- H5适配
- 小程序适配
- App适配
- 桌面端适配
- 其他平台适配

## 最佳实践
- 兼容设计
- 性能优化
- 测试验证
- 调试技巧
- 维护建议
EOF

# 创建第16章调试与发布工具目录
mkdir -p "$BASE_DIR/第16章-调试与发布工具"

# 创建第16章调试与发布工具README文件
cat > "$BASE_DIR/第16章-调试与发布工具/README.md" << 'EOF'
---
title: 调试与发布工具
icon: uni-app-tools
order: 16
---

# 调试与发布工具

本章介绍uni-app的调试与发布工具相关知识。
EOF

# 创建16.1调试工具目录
mkdir -p "$BASE_DIR/第16章-调试与发布工具/16.1-调试工具"

# 创建16.1调试工具README文件
cat > "$BASE_DIR/第16章-调试与发布工具/16.1-调试工具/README.md" << 'EOF'
---
title: 调试工具
icon: uni-app-debug
order: 1
---

# 调试工具

本节介绍uni-app的调试工具相关知识。
EOF

# 创建16.1.1内置调试器文件
cat > "$BASE_DIR/第16章-调试与发布工具/16.1-调试工具/16.1.1-内置调试器.md" << 'EOF'
---
title: 内置调试器
icon: uni-app-debugger
order: 1
---

# 内置调试器

## 基础功能
- 断点调试
- 变量查看
- 调用栈
- 控制台
- 源码映射

## 调试工具
- 元素审查
- 网络监控
- 存储查看
- 性能分析
- 日志记录

## 调试技巧
- 条件断点
- 表达式求值
- 变量监听
- 异步调试
- 远程调试

## 最佳实践
- 调试流程
- 问题定位
- 性能优化
- 调试技巧
- 维护建议
EOF

# 创建16.1.2真机调试文件
cat > "$BASE_DIR/第16章-调试与发布工具/16.1-调试工具/16.1.2-真机调试.md" << 'EOF'
---
title: 真机调试
icon: uni-app-device-debug
order: 2
---

# 真机调试

## 调试环境
- 设备连接
- 环境配置
- 调试模式
- 权限设置
- 网络配置

## 调试功能
- 日志查看
- 断点调试
- 性能监控
- 网络分析
- 内存分析

## 调试工具
- 开发者工具
- 调试面板
- 日志工具
- 抓包工具
- 性能工具

## 最佳实践
- 调试流程
- 问题定位
- 性能优化
- 调试技巧
- 维护建议
EOF

# 创建16.1.3网络调试文件
cat > "$BASE_DIR/第16章-调试与发布工具/16.1-调试工具/16.1.3-网络调试.md" << 'EOF'
---
title: 网络调试
icon: uni-app-network-debug
order: 3
---

# 网络调试

## 调试工具
- 抓包工具
- 网络面板
- 请求分析
- 响应分析
- 性能分析

## 调试功能
- 请求监控
- 响应监控
- 错误分析
- 性能监控
- 安全检测

## 调试技巧
- 请求拦截
- 响应模拟
- 网络限速
- 断网测试
- 代理设置

## 最佳实践
- 调试流程
- 问题定位
- 性能优化
- 调试技巧
- 维护建议
EOF

# 创建16.1.4性能分析文件
cat > "$BASE_DIR/第16章-调试与发布工具/16.1-调试工具/16.1.4-性能分析.md" << 'EOF'
---
title: 性能分析
icon: uni-app-performance
order: 4
---

# 性能分析

## 分析工具
- 性能面板
- 内存分析
- CPU分析
- 网络分析
- 渲染分析

## 分析指标
- 启动时间
- 响应时间
- 内存占用
- CPU使用
- 帧率监控

## 优化方向
- 代码优化
- 资源优化
- 网络优化
- 渲染优化
- 内存优化

## 最佳实践
- 分析方法
- 问题定位
- 优化方案
- 效果验证
- 持续改进
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建16.1.5内存分析文件
cat > "$BASE_DIR/第16章-调试与发布工具/16.1-调试工具/16.1.5-内存分析.md" << 'EOF'
---
title: 内存分析
icon: uni-app-memory
order: 5
---

# 内存分析

## 分析工具
- 内存面板
- 堆快照
- 内存时间轴
- 对象分配
- 垃圾回收

## 分析指标
- 内存占用
- 内存泄漏
- 内存碎片
- 对象引用
- 内存趋势

## 优化方向
- 内存管理
- 对象复用
- 资源释放
- 缓存优化
- 内存监控

## 最佳实践
- 分析方法
- 问题定位
- 优化方案
- 效果验证
- 持续改进
EOF

# 创建16.2发布工具目录
mkdir -p "$BASE_DIR/第16章-调试与发布工具/16.2-发布工具"

# 创建16.2发布工具README文件
cat > "$BASE_DIR/第16章-调试与发布工具/16.2-发布工具/README.md" << 'EOF'
---
title: 发布工具
icon: uni-app-publish
order: 2
---

# 发布工具

本节介绍uni-app的发布工具相关知识。
EOF

# 创建16.2.1多平台打包文件
cat > "$BASE_DIR/第16章-调试与发布工具/16.2-发布工具/16.2.1-多平台打包.md" << 'EOF'
---
title: 多平台打包
icon: uni-app-package
order: 1
---

# 多平台打包

## 打包配置
- 基础配置
- 平台配置
- 环境配置
- 资源配置
- 优化配置

## 打包工具
- CLI工具
- GUI工具
- 云打包
- 自动打包
- 持续集成

## 平台适配
- H5打包
- 小程序打包
- App打包
- 桌面端打包
- 其他平台

## 最佳实践
- 打包流程
- 性能优化
- 问题处理
- 调试技巧
- 维护建议
EOF

# 创建16.2.2资源优化文件
cat > "$BASE_DIR/第16章-调试与发布工具/16.2-发布工具/16.2.2-资源优化.md" << 'EOF'
---
title: 资源优化
icon: uni-app-resource
order: 2
---

# 资源优化

## 优化类型
- 图片优化
- 字体优化
- 媒体优化
- 代码优化
- 样式优化

## 优化工具
- 压缩工具
- 合并工具
- 分析工具
- 优化工具
- 监控工具

## 优化策略
- 资源压缩
- 资源合并
- 按需加载
- 缓存策略
- 预加载

## 最佳实践
- 优化流程
- 性能监控
- 效果评估
- 持续优化
- 维护建议
EOF

# 创建16.2.3代码混淆文件
cat > "$BASE_DIR/第16章-调试与发布工具/16.2-发布工具/16.2.3-代码混淆.md" << 'EOF'
---
title: 代码混淆
icon: uni-app-obfuscation
order: 3
---

# 代码混淆

## 混淆配置
- 基础配置
- 规则配置
- 排除配置
- 映射配置
- 优化配置

## 混淆工具
- 代码混淆
- 变量混淆
- 字符串混淆
- 结构混淆
- 资源混淆

## 安全策略
- 代码保护
- 反编译防护
- 加密保护
- 签名验证
- 完整性校验

## 最佳实践
- 混淆流程
- 安全控制
- 性能优化
- 调试技巧
- 维护建议
EOF

# 创建16.2.4版本管理文件
cat > "$BASE_DIR/第16章-调试与发布工具/16.2-发布工具/16.2.4-版本管理.md" << 'EOF'
---
title: 版本管理
icon: uni-app-version
order: 4
---

# 版本管理

## 版本策略
- 版本规划
- 版本命名
- 版本控制
- 版本发布
- 版本回滚

## 管理工具
- 版本工具
- 发布工具
- 更新工具
- 回滚工具
- 监控工具

## 更新机制
- 热更新
- 增量更新
- 强制更新
- 静默更新
- 差量更新

## 最佳实践
- 版本规划
- 发布流程
- 更新策略
- 监控方案
- 维护建议
EOF

# 创建第17章特色功能目录
mkdir -p "$BASE_DIR/第17章-特色功能"

# 创建第17章特色功能README文件
cat > "$BASE_DIR/第17章-特色功能/README.md" << 'EOF'
---
title: 特色功能
icon: uni-app-features
order: 17
---

# 特色功能

本章介绍uni-app的特色功能相关知识。
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建17.1国际化目录
mkdir -p "$BASE_DIR/第17章-特色功能/17.1-国际化"

# 创建17.1国际化README文件
cat > "$BASE_DIR/第17章-特色功能/17.1-国际化/README.md" << 'EOF'
---
title: 国际化
icon: uni-app-i18n
order: 1
---

# 国际化

本节介绍uni-app的国际化相关知识。
EOF

# 创建17.1.1多语言配置文件
cat > "$BASE_DIR/第17章-特色功能/17.1-国际化/17.1.1-多语言配置.md" << 'EOF'
---
title: 多语言配置
icon: uni-app-language
order: 1
---

# 多语言配置

## 基础配置
- 语言定义
- 配置文件
- 默认语言
- 回退策略
- 格式规范

## 配置管理
- 配置加载
- 配置更新
- 配置同步
- 配置验证
- 配置优化

## 使用方式
- 静态翻译
- 动态翻译
- 插值翻译
- 复数翻译
- 嵌套翻译

## 最佳实践
- 配置设计
- 性能优化
- 维护管理
- 调试技巧
- 实践建议
EOF

# 创建17.1.2语言包管理文件
cat > "$BASE_DIR/第17章-特色功能/17.1-国际化/17.1.2-语言包管理.md" << 'EOF'
---
title: 语言包管理
icon: uni-app-language-pack
order: 2
---

# 语言包管理

## 包结构
- 文件组织
- 命名规范
- 版本控制
- 依赖管理
- 打包配置

## 管理工具
- 包管理器
- 翻译工具
- 同步工具
- 验证工具
- 优化工具

## 更新机制
- 在线更新
- 增量更新
- 版本控制
- 缓存策略
- 回滚机制

## 最佳实践
- 包设计
- 更新策略
- 性能优化
- 调试技巧
- 维护建议
EOF

# 创建17.1.3动态切换文件
cat > "$BASE_DIR/第17章-特色功能/17.1-国际化/17.1.3-动态切换.md" << 'EOF'
---
title: 动态切换
icon: uni-app-switch
order: 3
---

# 动态切换

## 切换机制
- 语言检测
- 切换触发
- 状态管理
- 数据同步
- 界面刷新

## 实现方式
- 运行时切换
- 组件切换
- 路由切换
- 状态切换
- 样式切换

## 性能优化
- 加载优化
- 切换优化
- 缓存策略
- 资源管理
- 内存控制

## 最佳实践
- 切换设计
- 性能优化
- 用户体验
- 调试技巧
- 维护建议
EOF

# 创建17.1.4日期时间本地化文件
cat > "$BASE_DIR/第17章-特色功能/17.1-国际化/17.1.4-日期时间本地化.md" << 'EOF'
---
title: 日期时间本地化
icon: uni-app-datetime
order: 4
---

# 日期时间本地化

## 格式化
- 日期格式
- 时间格式
- 时区处理
- 本地习惯
- 自定义格式

## 显示规则
- 时间显示
- 日期显示
- 时区显示
- 格式转换
- 本地适配

## 处理方式
- 格式转换
- 时区转换
- 本地化处理
- 自动适配
- 手动设置

## 最佳实践
- 格式设计
- 转换处理
- 性能优化
- 调试技巧
- 维护建议
EOF

# 创建17.1.5货币本地化文件
cat > "$BASE_DIR/第17章-特色功能/17.1-国际化/17.1.5-货币本地化.md" << 'EOF'
---
title: 货币本地化
icon: uni-app-currency
order: 5
---

# 货币本地化

## 格式化
- 货币符号
- 数字格式
- 小数处理
- 千位分隔
- 负数处理

## 显示规则
- 货币显示
- 汇率转换
- 精度控制
- 舍入规则
- 本地适配

## 处理方式
- 格式转换
- 汇率计算
- 本地化处理
- 自动适配
- 手动设置

## 最佳实践
- 格式设计
- 转换处理
- 性能优化
- 调试技巧
- 维护建议
EOF

# 创建17.2主题系统目录
mkdir -p "$BASE_DIR/第17章-特色功能/17.2-主题系统"

# 创建17.2主题系统README文件
cat > "$BASE_DIR/第17章-特色功能/17.2-主题系统/README.md" << 'EOF'
---
title: 主题系统
icon: uni-app-theme
order: 2
---

# 主题系统

本节介绍uni-app的主题系统相关知识。
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建17.2.1暗黑主题文件
cat > "$BASE_DIR/第17章-特色功能/17.2-主题系统/17.2.1-暗黑主题.md" << 'EOF'
---
title: 暗黑主题
icon: uni-app-dark
order: 1
---

# 暗黑主题

## 基础配置
- 颜色系统
- 变量定义
- 主题切换
- 样式覆盖
- 组件适配

## 实现方式
- CSS变量
- 样式切换
- 媒体查询
- 动态加载
- 状态管理

## 适配范围
- 基础组件
- 业务组件
- 图标系统
- 图片资源
- 自定义组件

## 最佳实践
- 主题设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建17.2.2主题定制文件
cat > "$BASE_DIR/第17章-特色功能/17.2-主题系统/17.2.2-主题定制.md" << 'EOF'
---
title: 主题定制
icon: uni-app-theme-custom
order: 2
---

# 主题定制

## 定制系统
- 变量系统
- 样式系统
- 组件系统
- 布局系统
- 动画系统

## 定制方式
- 全局定制
- 组件定制
- 局部定制
- 动态定制
- 条件定制

## 定制工具
- 主题编辑器
- 样式生成器
- 预览工具
- 导出工具
- 调试工具

## 最佳实践
- 定制设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建17.2.3动态主题文件
cat > "$BASE_DIR/第17章-特色功能/17.2-主题系统/17.2.3-动态主题.md" << 'EOF'
---
title: 动态主题
icon: uni-app-theme-dynamic
order: 3
---

# 动态主题

## 实现原理
- 主题生成
- 主题加载
- 主题切换
- 主题缓存
- 主题同步

## 动态特性
- 运行时切换
- 实时预览
- 动态编译
- 热更新
- 状态保持

## 性能优化
- 加载优化
- 切换优化
- 缓存策略
- 资源管理
- 内存控制

## 最佳实践
- 主题设计
- 性能优化
- 兼容处理
- 调试技巧
- 维护建议
EOF

# 创建17.2.4主题切换文件
cat > "$BASE_DIR/第17章-特色功能/17.2-主题系统/17.2.4-主题切换.md" << 'EOF'
---
title: 主题切换
icon: uni-app-theme-switch
order: 4
---

# 主题切换

## 切换机制
- 主题检测
- 切换触发
- 状态管理
- 数据同步
- 界面刷新

## 实现方式
- 运行时切换
- 组件切换
- 路由切换
- 状态切换
- 样式切换

## 性能优化
- 加载优化
- 切换优化
- 缓存策略
- 资源管理
- 内存控制

## 最佳实践
- 切换设计
- 性能优化
- 用户体验
- 调试技巧
- 维护建议
EOF

# 创建17.3备案专题目录
mkdir -p "$BASE_DIR/第17章-特色功能/17.3-备案专题"

# 创建17.3备案专题README文件
cat > "$BASE_DIR/第17章-特色功能/17.3-备案专题/README.md" << 'EOF'
---
title: 备案专题
icon: uni-app-icp
order: 3
---

# 备案专题

本节介绍uni-app的备案专题相关知识。
EOF

# 创建17.3.1备案流程文件
cat > "$BASE_DIR/第17章-特色功能/17.3-备案专题/17.3.1-备案流程.md" << 'EOF'
---
title: 备案流程
icon: uni-app-icp-process
order: 1
---

# 备案流程

## 准备工作
- 材料准备
- 信息核实
- 资质审查
- 域名验证
- 环境检查

## 申请流程
- 信息填报
- 材料提交
- 初审审核
- 管局审核
- 备案完成

## 注意事项
- 材料要求
- 时间周期
- 常见问题
- 审核标准
- 变更流程

## 最佳实践
- 流程规划
- 材料准备
- 进度跟踪
- 问题处理
- 维护建议
EOF

# 创建17.3.2备案要求文件
cat > "$BASE_DIR/第17章-特色功能/17.3-备案专题/17.3.2-备案要求.md" << 'EOF'
---
title: 备案要求
icon: uni-app-icp-requirements
order: 2
---

# 备案要求

## 基本要求
- 主体资质
- 网站性质
- 域名要求
- 服务器要求
- 内容要求

## 材料要求
- 证件要求
- 照片要求
- 合同要求
- 承诺书要求
- 其他材料

## 技术要求
- 接入要求
- 安全要求
- 监控要求
- 日志要求
- 备份要求

## 最佳实践
- 要求解读
- 合规建议
- 技术实现
- 问题处理
- 维护建议
EOF
BASE_DIR="c:\project\kphub\src\uni-app"

# 创建17.3.3常见问题文件
cat > "$BASE_DIR/第17章-特色功能/17.3-备案专题/17.3.3-常见问题.md" << 'EOF'
---
title: 常见问题
icon: uni-app-icp-faq
order: 3
---

# 常见问题

## 备案问题
- 备案驳回处理
- 材料补充要求
- 信息修正方法
- 审核进度查询
- 变更流程说明

## 技术问题
- 接入配置指南
- 域名解析设置
- 服务器要求
- 安全配置说明
- 监控部署方法

## 运营问题
- 内容审核标准
- 信息变更步骤
- 注销操作指南
- 年审流程说明
- 投诉处理方法

## 解决方案
- 问题诊断方法
- 处理步骤说明
- 预防措施指南
- 应急处理流程
- 维护计划制定
EOF

# 创建17.3.4合规指南文件
cat > "$BASE_DIR/第17章-特色功能/17.3-备案专题/17.3.4-合规指南.md" << 'EOF'
---
title: 合规指南
icon: uni-app-icp-compliance
order: 4
---

# 合规指南

## 法律法规
- 法律条例解读
- 行业规范说明
- 政策要求分析
- 监管规定详解
- 处罚标准说明

## 运营规范
- 内容审核规则
- 信息发布标准
- 用户管理要求
- 数据保护方案
- 安全管理制度

## 技术要求
- 系统安全标准
- 数据安全规范
- 网络安全要求
- 访问控制方案
- 日志管理制度

## 最佳实践
- 合规操作指南
- 风险防控方案
- 应急预案制定
- 改进方案建议
- 维护计划执行
EOF