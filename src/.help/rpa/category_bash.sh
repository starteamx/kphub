BASE_DIR="c:\project\kphub\src\kotlin"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: code
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容。
EOF

# 创建1. Kotlin基础目录
mkdir -p "$BASE_DIR/01-Kotlin基础"
cat > "$BASE_DIR/01-Kotlin基础/README.md" << 'EOF'
---
title: Kotlin基础
icon: java
order: 1
---

# Kotlin基础

本章节涵盖了Kotlin编程语言的基础知识，包括入门语法、类型系统等核心概念，帮助您快速掌握Kotlin的基本用法和编程思想。
EOF

# 创建1.1 入门基础目录
mkdir -p "$BASE_DIR/01-Kotlin基础/01-入门基础"
cat > "$BASE_DIR/01-Kotlin基础/01-入门基础/README.md" << 'EOF'
---
title: 入门基础
icon: guide
order: 1
---

# 入门基础

本节介绍Kotlin的基本语法、习惯用法、实例教程和编码规范，帮助您快速入门Kotlin编程。
EOF

# 创建1.1.1 基本语法
cat > "$BASE_DIR/01-Kotlin基础/01-入门基础/01-基本语法.md" << 'EOF'
---
title: 基本语法
icon: code
order: 1
---

# Kotlin基本语法

Kotlin是一种静态类型的编程语言，它结合了面向对象和函数式编程的特性。本文将介绍Kotlin的基本语法，包括包声明、函数定义、变量声明、注释、字符串模板等基础内容。
EOF

# 创建1.1.2 习惯用法
cat > "$BASE_DIR/01-Kotlin基础/01-入门基础/02-习惯用法.md" << 'EOF'
---
title: 习惯用法
icon: code
order: 2
---

# Kotlin习惯用法

Kotlin提供了许多简洁而强大的习惯用法，可以帮助开发者编写更加简洁、可读性更高的代码。本文将介绍Kotlin中常见的习惯用法，包括创建DTOs、默认参数、过滤列表等。
EOF

# 创建1.1.3 例学Kotlin
cat > "$BASE_DIR/01-Kotlin基础/01-入门基础/03-例学Kotlin.md" << 'EOF'
---
title: 例学Kotlin
icon: example
order: 3
---

# 例学Kotlin

通过实际的代码示例来学习Kotlin是一种高效的学习方式。本文将通过一系列精心设计的示例，帮助您快速理解和掌握Kotlin的核心特性和编程技巧。
EOF

# 创建1.1.4 编码规范
cat > "$BASE_DIR/01-Kotlin基础/01-入门基础/04-编码规范.md" << 'EOF'
---
title: 编码规范
icon: rule
order: 4
---

# Kotlin编码规范

遵循良好的编码规范可以提高代码的可读性和可维护性。本文介绍Kotlin官方推荐的编码规范，包括命名约定、格式化规则、文档注释等内容，帮助您编写出高质量的Kotlin代码。
EOF

# 创建1.2 类型系统目录
mkdir -p "$BASE_DIR/01-Kotlin基础/02-类型系统"
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/README.md" << 'EOF'
---
title: 类型系统
icon: type
order: 2
---

# 类型系统

本节详细介绍Kotlin的类型系统，包括基本类型、数字类型、布尔类型、字符与字符串、数组、无符号整型以及类型检测与转换等内容。
EOF

# 创建1.2.1 基本类型概述
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/01-基本类型概述.md" << 'EOF'
---
title: 基本类型概述
icon: info
order: 1
---

# 基本类型概述

Kotlin的类型系统旨在消除空引用异常等常见的危险，并提供更好的类型安全性。本文将概述Kotlin中的基本类型，包括数字、字符、布尔值、数组和字符串等。
EOF

# 创建1.2.2 数字类型
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/02-数字类型.md" << 'EOF'
---
title: 数字类型
icon: number
order: 2
---

# 数字类型

Kotlin提供了一系列内置的数字类型，包括整数类型和浮点类型。本文将详细介绍Kotlin中的数字类型，包括它们的范围、表示方式以及相关操作。
EOF

# 创建1.2.3 布尔类型
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/03-布尔类型.md" << 'EOF'
---
title: 布尔类型
icon: boolean
order: 3
---

# 布尔类型

布尔类型在Kotlin中表示为Boolean，可以有true和false两个值。本文将介绍布尔类型的基本用法、逻辑运算以及在条件表达式中的应用。
EOF

# 创建1.2.4 字符与字符串
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/04-字符与字符串.md" << 'EOF'
---
title: 字符与字符串
icon: string
order: 4
---

# 字符与字符串

Kotlin中的字符用Char表示，字符串用String表示。本文将详细介绍字符和字符串的表示方式、常用操作以及字符串模板的使用方法。
EOF

# 创建1.2.5 数组
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/05-数组.md" << 'EOF'
---
title: 数组
icon: array
order: 5
---

# 数组

Kotlin中的数组是一种用于存储固定大小的同类型元素集合的数据结构。本文将介绍数组的创建、访问、修改以及常用的数组操作方法。
EOF

# 创建1.2.6 无符号整型
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/06-无符号整型.md" << 'EOF'
---
title: 无符号整型
icon: number
order: 6
---

# 无符号整型

Kotlin 1.3引入了无符号整数类型，包括UByte、UShort、UInt和ULong。本文将介绍无符号整型的特点、用法以及与有符号整型的区别。
EOF

# 创建1.2.7 类型检测与类型转换
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/07-类型检测与类型转换.md" << 'EOF'
---
title: 类型检测与类型转换
icon: transform
order: 7
---

# 类型检测与类型转换

Kotlin提供了多种方式来检测对象的类型并将其转换为特定类型。本文将介绍is和as操作符、智能类型转换以及安全类型转换的使用方法。
EOFBASE_DIR="c:\project\kphub\src\kotlin"
mkdir -p "$BASE_DIR"

# 创建1.2 类型系统目录
mkdir -p "$BASE_DIR/01-Kotlin基础/02-类型系统"
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/README.md" << 'EOF'
---
title: 类型系统
icon: type
order: 2
---

# 类型系统

本节详细介绍Kotlin的类型系统，包括基本类型、数字类型、布尔类型、字符与字符串、数组、无符号整型以及类型检测与转换等内容。
EOF

# 创建1.2.1 基本类型概述
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/01-基本类型概述.md" << 'EOF'
---
title: 基本类型概述
icon: info
order: 1
---

# 基本类型概述

Kotlin的类型系统旨在消除空引用异常等常见的危险，并提供更好的类型安全性。本文将概述Kotlin中的基本类型，包括数字、字符、布尔值、数组和字符串等。
EOF

# 创建1.2.2 数字类型
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/02-数字类型.md" << 'EOF'
---
title: 数字类型
icon: number
order: 2
---

# 数字类型

Kotlin提供了一系列内置的数字类型，包括整数类型和浮点类型。本文将详细介绍Kotlin中的数字类型，包括它们的范围、表示方式以及相关操作。
EOF

# 创建1.2.3 布尔类型
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/03-布尔类型.md" << 'EOF'
---
title: 布尔类型
icon: boolean
order: 3
---

# 布尔类型

布尔类型在Kotlin中表示为Boolean，可以有true和false两个值。本文将介绍布尔类型的基本用法、逻辑运算以及在条件表达式中的应用。
EOF

# 创建1.2.4 字符与字符串
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/04-字符与字符串.md" << 'EOF'
---
title: 字符与字符串
icon: string
order: 4
---

# 字符与字符串

Kotlin中的字符用Char表示，字符串用String表示。本文将详细介绍字符和字符串的表示方式、常用操作以及字符串模板的使用方法。
EOF

# 创建1.2.5 数组
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/05-数组.md" << 'EOF'
---
title: 数组
icon: array
order: 5
---

# 数组

Kotlin中的数组是一种用于存储固定大小的同类型元素集合的数据结构。本文将介绍数组的创建、访问、修改以及常用的数组操作方法。
EOF

# 创建1.2.6 无符号整型
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/06-无符号整型.md" << 'EOF'
---
title: 无符号整型
icon: number
order: 6
---

# 无符号整型

Kotlin 1.3引入了无符号整数类型，包括UByte、UShort、UInt和ULong。本文将介绍无符号整型的特点、用法以及与有符号整型的区别。
EOF

# 创建1.2.7 类型检测与类型转换
cat > "$BASE_DIR/01-Kotlin基础/02-类型系统/07-类型检测与类型转换.md" << 'EOF'
---
title: 类型检测与类型转换
icon: transform
order: 7
---

# 类型检测与类型转换

Kotlin提供了多种方式来检测对象的类型并将其转换为特定类型。本文将介绍is和as操作符、智能类型转换以及安全类型转换的使用方法。
EOFBASE_DIR="c:\project\kphub\src\kotlin"
mkdir -p "$BASE_DIR"

# 创建1.3 控制流程目录
mkdir -p "$BASE_DIR/01-Kotlin基础/03-控制流程"
cat > "$BASE_DIR/01-Kotlin基础/03-控制流程/README.md" << 'EOF'
---
title: 控制流程
icon: flow
order: 3
---

# 控制流程

本节详细介绍Kotlin中的控制流程语句，包括条件语句、循环结构、返回与跳转以及异常处理机制，帮助您掌握Kotlin程序的执行流程控制。
EOF

# 创建1.3.1 条件与循环
cat > "$BASE_DIR/01-Kotlin基础/03-控制流程/01-条件与循环.md" << 'EOF'
---
title: 条件与循环
icon: loop
order: 1
---

# 条件与循环

Kotlin提供了丰富的条件语句和循环结构，包括if-else表达式、when表达式、for循环、while循环等。本文将详细介绍这些控制结构的语法和用法，帮助您编写流程清晰的Kotlin代码。
EOF

# 创建1.3.2 返回与跳转
cat > "$BASE_DIR/01-Kotlin基础/03-控制流程/02-返回与跳转.md" << 'EOF'
---
title: 返回与跳转
icon: return
order: 2
---

# 返回与跳转

Kotlin中的返回与跳转语句包括return、break、continue以及标签。本文将介绍这些语句的基本用法以及在嵌套结构中的应用，帮助您更灵活地控制程序的执行流程。
EOF

# 创建1.3.3 异常处理
cat > "$BASE_DIR/01-Kotlin基础/03-控制流程/03-异常处理.md" << 'EOF'
---
title: 异常处理
icon: error
order: 3
---

# 异常处理

Kotlin的异常处理机制与Java类似，但有一些重要的改进。本文将介绍Kotlin中的try-catch-finally结构、throw表达式以及自定义异常，帮助您编写健壮的错误处理代码。
EOF

# 创建1.4 包与导入目录
mkdir -p "$BASE_DIR/01-Kotlin基础/04-包与导入"
cat > "$BASE_DIR/01-Kotlin基础/04-包与导入/README.md" << 'EOF'
---
title: 包与导入
icon: package
order: 4
---

# 包与导入

本节介绍Kotlin中的包管理和导入机制，帮助您理解如何组织代码结构并有效地引用外部库和模块。
EOF

# 创建1.4.1 包的定义与使用
cat > "$BASE_DIR/01-Kotlin基础/04-包与导入/01-包的定义与使用.md" << 'EOF'
---
title: 包的定义与使用
icon: folder
order: 1
---

# 包的定义与使用

Kotlin中的包用于组织代码并避免命名冲突。本文将介绍包的声明、导入语句、默认导入以及导入别名等内容，帮助您更好地组织和管理Kotlin项目的代码结构。
EOF