# Bash脚本：创建知识库目录结构及文档内容

BASE_DIR="/Users/guanrunbai/my/kphub/src/kotlin"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。
EOF

# 创建1. Kotlin基础目录
mkdir -p "$BASE_DIR/1-Kotlin基础"
cat > "$BASE_DIR/1-Kotlin基础/README.md" << 'EOF'
---
title: Kotlin基础
icon: code
order: 1
---

# Kotlin基础

本章节涵盖了Kotlin编程语言的基础知识，包括语法规则、习惯用法、类型系统等核心内容，帮助初学者快速入门Kotlin开发。
EOF

# 创建1.1 入门基础目录
mkdir -p "$BASE_DIR/1-Kotlin基础/1.1-入门基础"
cat > "$BASE_DIR/1-Kotlin基础/1.1-入门基础/README.md" << 'EOF'
---
title: 入门基础
icon: guide
order: 1
---

# 入门基础

本节介绍Kotlin的基本语法、习惯用法、实例教程和编码规范，帮助您快速掌握Kotlin的基础知识。
EOF

# 创建1.1.1 基本语法
cat > "$BASE_DIR/1-Kotlin基础/1.1-入门基础/1.1.1-基本语法.md" << 'EOF'
---
title: 基本语法
icon: code
order: 1
---

# 基本语法

Kotlin的基本语法设计简洁而强大，融合了面向对象和函数式编程的特性。本文将介绍Kotlin的基本语法元素，包括变量声明、函数定义、控制流等基础内容。
EOF

# 创建1.1.2 习惯用法
cat > "$BASE_DIR/1-Kotlin基础/1.1-入门基础/1.1.2-习惯用法.md" << 'EOF'
---
title: 习惯用法
icon: code
order: 2
---

# 习惯用法

Kotlin提供了许多简洁而强大的习惯用法，可以让代码更加简洁、可读性更强。本文介绍Kotlin中常见的习惯用法和最佳实践。
EOF

# 创建1.1.3 例学Kotlin
cat > "$BASE_DIR/1-Kotlin基础/1.1-入门基础/1.1.3-例学Kotlin.md" << 'EOF'
---
title: 例学Kotlin
icon: example
order: 3
---

# 例学Kotlin

通过实际的代码示例来学习Kotlin是最直观有效的方式。本文提供了一系列精心设计的示例，帮助您快速理解和掌握Kotlin的核心特性。
EOF

# 创建1.1.4 编码规范
cat > "$BASE_DIR/1-Kotlin基础/1.1-入门基础/1.1.4-编码规范.md" << 'EOF'
---
title: 编码规范
icon: format
order: 4
---

# 编码规范

遵循统一的编码规范可以提高代码的可读性和可维护性。本文介绍Kotlin官方推荐的编码规范和最佳实践，帮助您编写高质量的Kotlin代码。
EOF

# 创建1.2 类型系统目录
mkdir -p "$BASE_DIR/1-Kotlin基础/1.2-类型系统"
cat > "$BASE_DIR/1-Kotlin基础/1.2-类型系统/README.md" << 'EOF'
---
title: 类型系统
icon: type
order: 2
---

# 类型系统

Kotlin拥有强大而灵活的类型系统，本节将详细介绍Kotlin中的各种数据类型及其特性。
EOF

# 创建1.2.1 基本类型概述
cat > "$BASE_DIR/1-Kotlin基础/1.2-类型系统/1.2.1-基本类型概述.md" << 'EOF'
---
title: 基本类型概述
icon: info
order: 1
---

# 基本类型概述

Kotlin的类型系统设计精巧，既保留了Java的类型安全特性，又增加了许多现代语言的便捷功能。本文概述Kotlin中的基本类型体系。
EOF

# 创建1.2.2 数字类型
cat > "$BASE_DIR/1-Kotlin基础/1.2-类型系统/1.2.2-数字类型.md" << 'EOF'
---
title: 数字类型
icon: number
order: 2
---

# 数字类型

Kotlin提供了一系列内置的数字类型，包括整数和浮点数类型。本文详细介绍Kotlin中的数字类型及其操作。
EOF

# 创建1.2.3 布尔类型
cat > "$BASE_DIR/1-Kotlin基础/1.2-类型系统/1.2.3-布尔类型.md" << 'EOF'
---
title: 布尔类型
icon: boolean
order: 3
---

# 布尔类型

布尔类型是编程中最基础的类型之一，用于表示逻辑值。本文介绍Kotlin中布尔类型的特性和用法。
EOF

# 创建1.2.4 字符与字符串
cat > "$BASE_DIR/1-Kotlin基础/1.2-类型系统/1.2.4-字符与字符串.md" << 'EOF'
---
title: 字符与字符串
icon: string
order: 4
---

# 字符与字符串

Kotlin中的字符和字符串类型提供了丰富的功能和操作。本文详细介绍Kotlin中字符和字符串的特性及常用操作。
EOF

# 创建1.2.5 数组
cat > "$BASE_DIR/1-Kotlin基础/1.2-类型系统/1.2.5-数组.md" << 'EOF'
---
title: 数组
icon: array
order: 5
---

# 数组

数组是编程中最基础的数据结构之一。本文介绍Kotlin中数组的创建、访问和操作方法。
EOF

# 创建1.2.6 无符号整型
cat > "$BASE_DIR/1-Kotlin基础/1.2-类型系统/1.2.6-无符号整型.md" << 'EOF'
---
title: 无符号整型
icon: number
order: 6
---

# 无符号整型

Kotlin 1.3引入了无符号整数类型，为处理大数值提供了更多选择。本文介绍Kotlin中无符号整型的特性和用法。
EOF

# 创建1.2.7 类型检测与类型转换
cat > "$BASE_DIR/1-Kotlin基础/1.2-类型系统/1.2.7-类型检测与类型转换.md" << 'EOF'
---
title: 类型检测与类型转换
icon: transform
order: 7
---

# 类型检测与类型转换

Kotlin提供了安全、便捷的类型检测和类型转换机制。本文介绍如何在Kotlin中进行类型检测和类型转换操作。
EOF

# 创建1.4 包与导入目录
mkdir -p "$BASE_DIR/1-Kotlin基础/1.4-包与导入"
cat > "$BASE_DIR/1-Kotlin基础/1.4-包与导入/README.md" << 'EOF'
---
title: 包与导入
icon: package
order: 4
---

# 包与导入

本节介绍Kotlin中的包管理和导入机制，帮助您更好地组织和使用代码。
EOF

# 创建1.4.2 导入声明
cat > "$BASE_DIR/1-Kotlin基础/1.4-包与导入/1.4.2-导入声明.md" << 'EOF'
---
title: 导入声明
icon: import
order: 2
---

# 导入声明

Kotlin的导入声明允许您在代码中引用其他包中的类和函数。本文详细介绍Kotlin中导入声明的语法和用法。
EOF

# 创建1.4.3 包的组织结构
cat > "$BASE_DIR/1-Kotlin基础/1.4-包与导入/1.4.3-包的组织结构.md" << 'EOF'
---
title: 包的组织结构
icon: structure
order: 3
---

# 包的组织结构

良好的包组织结构可以提高代码的可维护性和可读性。本文介绍Kotlin项目中包的组织原则和最佳实践。
EOF

# 创建2. 类与对象目录
mkdir -p "$BASE_DIR/2-类与对象"
cat > "$BASE_DIR/2-类与对象/README.md" << 'EOF'
---
title: 类与对象
icon: class
order: 2
---

# 类与对象

本章节详细介绍Kotlin中类和对象的概念、特性和用法，包括类的定义、构造函数等核心内容。
EOF

# 创建2.1 类的基本概念目录
mkdir -p "$BASE_DIR/2-类与对象/2.1-类的基本概念"
cat > "$BASE_DIR/2-类与对象/2.1-类的基本概念/README.md" << 'EOF'
---
title: 类的基本概念
icon: concept
order: 1
---

# 类的基本概念

本节介绍Kotlin中类的基本概念，包括类的定义和构造函数等核心内容。
EOF

# 创建2.1.1 类的定义
cat > "$BASE_DIR/2-类与对象/2.1-类的基本概念/2.1.1-类的定义.md" << 'EOF'
---
title: 类的定义
icon: define
order: 1
---

# 类的定义

Kotlin中类的定义语法简洁而强大，支持多种特性和修饰符。本文详细介绍如何在Kotlin中定义和使用类。
EOF

# 创建2.1.2 构造函数
cat > "$BASE_DIR/2-类与对象/2.1-类的基本概念/2.1.2-构造函数.md" << 'EOF'
---
title: 构造函数
icon: constructor
order: 2
---

# 构造函数

Kotlin中的构造函数分为主构造函数和次构造函数，提供了灵活的对象初始化方式。本文详细介绍Kotlin中构造函数的定义和使用。
EOF


mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建2.1.3实例创建
mkdir -p "$BASE_DIR/02-类与对象/01-类基础"
cat > "$BASE_DIR/02-类与对象/01-类基础/03-实例创建.md" << 'EOF'
---
title: 实例创建
icon: code
order: 3
---

# 实例创建

在Kotlin中，创建类的实例非常简洁，不需要使用`new`关键字。Kotlin的构造函数系统灵活而强大，支持主构造函数和次构造函数，以及默认参数值，使得对象创建更加灵活和简洁。
EOF

# 创建2.1.4继承
cat > "$BASE_DIR/02-类与对象/01-类基础/04-继承.md" << 'EOF'
---
title: 继承
icon: code
order: 4
---

# 继承

Kotlin中的继承使用冒号表示，所有类默认都是final的，需要使用open关键字标记才能被继承。Kotlin支持方法重写和属性重写，并且要求显式使用override修饰符。
EOF

# 创建2.2属性与接口目录
mkdir -p "$BASE_DIR/02-类与对象/02-属性与接口"
cat > "$BASE_DIR/02-类与对象/02-属性与接口/README.md" << 'EOF'
---
title: 属性与接口
icon: code
order: 2
---

# 属性与接口

本章节介绍Kotlin中属性和接口的概念与使用方法，包括属性声明、接口定义、函数式接口以及可见性修饰符等内容。
EOF

# 创建2.2.1属性声明与使用
cat > "$BASE_DIR/02-类与对象/02-属性与接口/01-属性声明与使用.md" << 'EOF'
---
title: 属性声明与使用
icon: code
order: 1
---

# 属性声明与使用

Kotlin中的属性可以声明为可变(var)或只读(val)。属性可以有自定义的getter和setter，也可以使用幕后字段(field)进行引用。Kotlin的属性系统比Java更加强大和灵活。
EOF

# 创建2.2.2接口定义
cat > "$BASE_DIR/02-类与对象/02-属性与接口/02-接口定义.md" << 'EOF'
---
title: 接口定义
icon: code
order: 2
---

# 接口定义

Kotlin的接口与Java 8类似，可以包含抽象方法的声明以及方法的实现。不同的是，Kotlin接口可以包含属性，但不能有状态，可以有抽象属性或提供访问器实现。
EOF

# 创建2.2.3函数式(SAM)接口
cat > "$BASE_DIR/02-类与对象/02-属性与接口/03-函数式接口.md" << 'EOF'
---
title: 函数式(SAM)接口
icon: code
order: 3
---

# 函数式(SAM)接口

函数式接口或单一抽象方法(SAM)接口是只包含一个抽象方法的接口。在Kotlin中，可以使用fun关键字定义函数式接口，这使得它们可以与lambda表达式一起使用，提高代码简洁性。
EOF

# 创建2.2.4可见性修饰符
cat > "$BASE_DIR/02-类与对象/02-属性与接口/04-可见性修饰符.md" << 'EOF'
---
title: 可见性修饰符
icon: code
order: 4
---

# 可见性修饰符

Kotlin提供了四种可见性修饰符：public(默认)、private、protected和internal。这些修饰符控制类、接口、方法和属性的访问范围，帮助实现良好的封装和模块化设计。
EOF

# 创建2.5.3委托模式
mkdir -p "$BASE_DIR/02-类与对象/05-对象与委托"
cat > "$BASE_DIR/02-类与对象/05-对象与委托/03-委托模式.md" << 'EOF'
---
title: 委托模式
icon: code
order: 3
---

# 委托模式

Kotlin原生支持委托模式，使用关键字by可以轻松实现。委托模式是一种设计模式，允许对象将特定任务委托给辅助对象，而不是自己实现该功能。Kotlin的委托机制简化了这一模式的实现。
EOF

mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建2.3扩展与数据类目录
mkdir -p "$BASE_DIR/02-类与对象/03-扩展与数据类"
cat > "$BASE_DIR/02-类与对象/03-扩展与数据类/README.md" << 'EOF'
---
title: 扩展与数据类
icon: code
order: 3
---

# 扩展与数据类

本章节介绍Kotlin中的扩展功能和数据类，包括扩展函数、扩展属性、数据类以及密封类与密封接口等内容，这些特性使Kotlin编程更加灵活和高效。
EOF

# 创建2.3.1扩展函数
cat > "$BASE_DIR/02-类与对象/03-扩展与数据类/01-扩展函数.md" << 'EOF'
---
title: 扩展函数
icon: code
order: 1
---

# 扩展函数

Kotlin允许我们为现有类添加新的函数，而无需继承该类或使用装饰器模式。这种机制称为扩展函数，它是Kotlin中非常强大和实用的特性，可以显著提高代码的可读性和复用性。
EOF

# 创建2.3.2扩展属性
cat > "$BASE_DIR/02-类与对象/03-扩展与数据类/02-扩展属性.md" << 'EOF'
---
title: 扩展属性
icon: code
order: 2
---

# 扩展属性

与扩展函数类似，Kotlin也允许为现有类定义扩展属性。扩展属性提供了一种语法糖，使我们可以通过属性语法访问某些函数。扩展属性不能有初始化器，只能显式提供getter/setter定义。
EOF

# 创建2.3.3数据类
cat > "$BASE_DIR/02-类与对象/03-扩展与数据类/03-数据类.md" << 'EOF'
---
title: 数据类
icon: code
order: 3
---

# 数据类

Kotlin的数据类是专门用来保存数据的类，使用data关键字声明。编译器会自动为数据类生成equals()、hashCode()、toString()、copy()等方法，大大减少了样板代码，提高了开发效率。
EOF

# 创建2.3.4密封类与密封接口
cat > "$BASE_DIR/02-类与对象/03-扩展与数据类/04-密封类与密封接口.md" << 'EOF'
---
title: 密封类与密封接口
icon: code
order: 4
---

# 密封类与密封接口

密封类(sealed class)和密封接口(sealed interface)用于表示受限的类层次结构，当一个值可以是有限集合中的类型之一，但不能是其他类型时使用。它们在模式匹配和枚举类型方面非常有用。
EOF

# 创建2.4泛型与嵌套类目录
mkdir -p "$BASE_DIR/02-类与对象/04-泛型与嵌套类"
cat > "$BASE_DIR/02-类与对象/04-泛型与嵌套类/README.md" << 'EOF'
---
title: 泛型与嵌套类
icon: code
order: 4
---

# 泛型与嵌套类

本章节介绍Kotlin中的泛型和嵌套类相关概念，包括泛型的协变与逆变、嵌套类、枚举类以及内联类等内容，这些特性为Kotlin程序提供了更强的类型安全和代码组织能力。
EOF

# 创建2.4.1泛型：in、out、where
cat > "$BASE_DIR/02-类与对象/04-泛型与嵌套类/01-泛型in-out-where.md" << 'EOF'
---
title: 泛型：in、out、where
icon: code
order: 1
---

# 泛型：in、out、where

Kotlin的泛型系统支持声明处型变(declaration-site variance)，使用out关键字表示协变，in关键字表示逆变。where关键字用于指定类型参数的上界约束，使泛型更加灵活和类型安全。
EOF

# 创建2.4.2嵌套类
cat > "$BASE_DIR/02-类与对象/04-泛型与嵌套类/02-嵌套类.md" << 'EOF'
---
title: 嵌套类
icon: code
order: 2
---

# 嵌套类

Kotlin允许在一个类中嵌套另一个类。默认情况下，嵌套类不能访问外部类的成员。如果需要访问外部类的成员，可以使用inner关键字将嵌套类声明为内部类，内部类会持有对外部类的引用。
EOF

# 创建2.4.3枚举类
cat > "$BASE_DIR/02-类与对象/04-泛型与嵌套类/03-枚举类.md" << 'EOF'
---
title: 枚举类
icon: code
order: 3
---

# 枚举类

Kotlin中的枚举类使用enum class声明，每个枚举常量都是枚举类的实例。枚举类可以实现接口，可以定义方法和属性，还可以为每个枚举常量提供特定的实现，使枚举更加强大和灵活。
EOF

# 创建2.4.4内联类
cat > "$BASE_DIR/02-类与对象/04-泛型与嵌套类/04-内联类.md" << 'EOF'
---
title: 内联类
icon: code
order: 4
---

# 内联类

内联类是Kotlin 1.3引入的实验性功能，使用value class关键字声明。内联类包装一个单一值，在运行时通常直接使用该值，避免了额外的堆分配，提高了性能，同时保持了类型安全。
EOF

mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建2.4泛型与嵌套类目录
mkdir -p "$BASE_DIR/02-类与对象/04-泛型与嵌套类"
cat > "$BASE_DIR/02-类与对象/04-泛型与嵌套类/README.md" << 'EOF'
---
title: 泛型与嵌套类
icon: code
order: 4
---

# 泛型与嵌套类

本章节介绍Kotlin中的泛型和嵌套类相关概念，包括泛型的协变与逆变、嵌套类、枚举类以及内联类等内容，这些特性为Kotlin程序提供了更强的类型安全和代码组织能力。
EOF

# 创建2.4.1泛型：in、out、where
cat > "$BASE_DIR/02-类与对象/04-泛型与嵌套类/01-泛型in-out-where.md" << 'EOF'
---
title: 泛型：in、out、where
icon: code
order: 1
---

# 泛型：in、out、where

Kotlin的泛型系统支持声明处型变(declaration-site variance)，使用out关键字表示协变，in关键字表示逆变。where关键字用于指定类型参数的上界约束，使泛型更加灵活和类型安全。
EOF

# 创建2.4.2嵌套类
cat > "$BASE_DIR/02-类与对象/04-泛型与嵌套类/02-嵌套类.md" << 'EOF'
---
title: 嵌套类
icon: code
order: 2
---

# 嵌套类

Kotlin允许在一个类中嵌套另一个类。默认情况下，嵌套类不能访问外部类的成员。如果需要访问外部类的成员，可以使用inner关键字将嵌套类声明为内部类，内部类会持有对外部类的引用。
EOF

# 创建2.4.3枚举类
cat > "$BASE_DIR/02-类与对象/04-泛型与嵌套类/03-枚举类.md" << 'EOF'
---
title: 枚举类
icon: code
order: 3
---

# 枚举类

Kotlin中的枚举类使用enum class声明，每个枚举常量都是枚举类的实例。枚举类可以实现接口，可以定义方法和属性，还可以为每个枚举常量提供特定的实现，使枚举更加强大和灵活。
EOF

# 创建2.4.4内联类
cat > "$BASE_DIR/02-类与对象/04-泛型与嵌套类/04-内联类.md" << 'EOF'
---
title: 内联类
icon: code
order: 4
---

# 内联类

内联类是Kotlin 1.3引入的实验性功能，使用value class关键字声明。内联类包装一个单一值，在运行时通常直接使用该值，避免了额外的堆分配，提高了性能，同时保持了类型安全。
EOF

# 创建2.5对象与委托目录
mkdir -p "$BASE_DIR/02-类与对象/05-对象与委托"
cat > "$BASE_DIR/02-类与对象/05-对象与委托/README.md" << 'EOF'
---
title: 对象与委托
icon: code
order: 5
---

# 对象与委托

本章节介绍Kotlin中的对象表达式、对象声明和委托模式等特性，这些功能使Kotlin在面向对象编程方面更加灵活和强大，为开发者提供了更多的设计选择。
EOF

# 创建2.5.1对象表达式
cat > "$BASE_DIR/02-类与对象/05-对象与委托/01-对象表达式.md" << 'EOF'
---
title: 对象表达式
icon: code
order: 1
---

# 对象表达式

Kotlin的对象表达式用于创建匿名类的实例，类似于Java中的匿名内部类。对象表达式可以继承自某个类型，也可以实现一个或多个接口，非常适合创建一次性使用的对象。
EOF

# 创建2.5.2对象声明
cat > "$BASE_DIR/02-类与对象/05-对象与委托/02-对象声明.md" << 'EOF'
---
title: 对象声明
icon: code
order: 2
---

# 对象声明

Kotlin中的对象声明是单例模式的一种实现方式，使用object关键字声明。对象声明可以有超类型，可以包含属性、方法、初始化块等，但不能有构造函数。对象声明在首次访问时被初始化。
EOF

mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建2.5.3委托模式
mkdir -p "$BASE_DIR/02-类与对象/05-对象与委托"
cat > "$BASE_DIR/02-类与对象/05-对象与委托/03-委托模式.md" << 'EOF'
---
title: 委托模式
icon: code
order: 3
---

# 委托模式

Kotlin原生支持委托模式，使用关键字by可以轻松实现。委托模式是一种设计模式，允许对象将特定任务委托给辅助对象，而不是自己实现该功能。Kotlin的委托机制简化了这一模式的实现。
EOF

# 创建2.5.4属性委托
cat > "$BASE_DIR/02-类与对象/05-对象与委托/04-属性委托.md" << 'EOF'
---
title: 属性委托
icon: code
order: 4
---

# 属性委托

属性委托是Kotlin中的一个强大特性，允许将属性的getter和setter委托给另一个对象。Kotlin标准库提供了几种常用的委托，如lazy、observable和map委托等，大大简化了常见的属性操作模式。
EOF

# 创建2.5.5类型别名
cat > "$BASE_DIR/02-类与对象/05-对象与委托/05-类型别名.md" << 'EOF'
---
title: 类型别名
icon: code
order: 5
---

# 类型别名

Kotlin中的类型别名(typealias)允许为现有类型提供替代名称，特别适用于简化复杂类型签名，如函数类型或泛型类型。类型别名不会引入新类型，它们等同于相应的原始类型。
EOF

# 创建3.函数与表达式目录
mkdir -p "$BASE_DIR/03-函数与表达式"
cat > "$BASE_DIR/03-函数与表达式/README.md" << 'EOF'
---
title: 函数与表达式
icon: function
order: 3
---

# 函数与表达式

本章节介绍Kotlin中的函数和表达式相关概念，包括函数声明、Lambda表达式、高阶函数、内联函数等内容，这些特性使Kotlin在函数式编程方面具有强大的表现力和灵活性。
EOF

# 创建3.1函数基础目录
mkdir -p "$BASE_DIR/03-函数与表达式/01-函数基础"
cat > "$BASE_DIR/03-函数与表达式/01-函数基础/README.md" << 'EOF'
---
title: 函数基础
icon: function
order: 1
---

# 函数基础

本章节介绍Kotlin中函数的基础知识，包括函数声明、参数、返回值、默认参数、命名参数以及可变参数等内容，帮助您掌握Kotlin函数的基本用法和特性。
EOF

# 创建3.1.1函数声明
cat > "$BASE_DIR/03-函数与表达式/01-函数基础/01-函数声明.md" << 'EOF'
---
title: 函数声明
icon: function
order: 1
---

# 函数声明

Kotlin中的函数使用fun关键字声明。函数可以定义在顶层、作为类的成员、局部函数或扩展函数。Kotlin函数支持默认参数、命名参数、单表达式函数等特性，使函数声明更加灵活和简洁。
EOF

mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建3.1.2函数参数
mkdir -p "$BASE_DIR/03-函数与表达式/01-函数基础"
cat > "$BASE_DIR/03-函数与表达式/01-函数基础/02-函数参数.md" << 'EOF'
---
title: 函数参数
icon: function
order: 2
---

# 函数参数

Kotlin函数参数采用Pascal表示法，即参数名在前，类型在后。参数用逗号分隔，每个参数必须显式指定类型。Kotlin支持默认参数值和命名参数，大大提高了函数调用的灵活性和可读性。
EOF

# 创建3.1.3返回值与Unit类型
cat > "$BASE_DIR/03-函数与表达式/01-函数基础/03-返回值与Unit类型.md" << 'EOF'
---
title: 返回值与Unit类型
icon: function
order: 3
---

# 返回值与Unit类型

Kotlin函数的返回类型在参数列表后面使用冒号指定。如果函数不返回任何有用的值，可以返回Unit类型，这相当于Java中的void。Unit类型的返回值声明可以省略，编译器会自动推断。
EOF

# 创建3.1.4单表达式函数
cat > "$BASE_DIR/03-函数与表达式/01-函数基础/04-单表达式函数.md" << 'EOF'
---
title: 单表达式函数
icon: function
order: 4
---

# 单表达式函数

当Kotlin函数只返回单个表达式的结果时，可以使用单表达式函数语法，省略花括号，直接使用等号连接表达式。对于单表达式函数，返回类型可以省略，由编译器自动推断。
EOF

# 创建3.2高级函数特性目录
mkdir -p "$BASE_DIR/03-函数与表达式/02-高级函数特性"
cat > "$BASE_DIR/03-函数与表达式/02-高级函数特性/README.md" << 'EOF'
---
title: 高级函数特性
icon: function
order: 2
---

# 高级函数特性

本章节介绍Kotlin中的高级函数特性，包括lambda表达式、内联函数、操作符重载等内容，这些特性使Kotlin在函数式编程方面更加强大和灵活，能够编写更简洁、更高效的代码。
EOF

# 创建3.2.1lambda表达式
cat > "$BASE_DIR/03-函数与表达式/02-高级函数特性/01-lambda表达式.md" << 'EOF'
---
title: lambda表达式
icon: function
order: 1
---

# lambda表达式

Lambda表达式是Kotlin中的一种匿名函数，可以作为表达式传递给其他函数。Lambda表达式使用花括号包围，参数声明在花括号内，函数体跟在箭头(->)后面。Kotlin的Lambda表达式简洁而强大。
EOF

# 创建3.2.2内联函数
cat > "$BASE_DIR/03-函数与表达式/02-高级函数特性/02-内联函数.md" << 'EOF'
---
title: 内联函数
icon: function
order: 2
---

# 内联函数

Kotlin的内联函数使用inline关键字声明，编译器会将函数体复制到调用处，而不是生成函数调用。内联函数可以提高使用lambda表达式的代码性能，避免额外的对象创建和虚拟调用。
EOF

# 创建3.2.3操作符重载
cat > "$BASE_DIR/03-函数与表达式/02-高级函数特性/03-操作符重载.md" << 'EOF'
---
title: 操作符重载
icon: function
order: 3
---

# 操作符重载

Kotlin允许为类型提供预定义操作符的自定义实现，称为操作符重载。通过使用operator关键字修饰特定名称的函数，可以实现对应的操作符功能，使代码更加直观和表达力强。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建3.2.4类型安全的构建器
mkdir -p "$BASE_DIR/03-函数与表达式/02-高级函数特性"
cat > "$BASE_DIR/03-函数与表达式/02-高级函数特性/04-类型安全的构建器.md" << 'EOF'
---
title: 类型安全的构建器
icon: function
order: 4
---

# 类型安全的构建器

Kotlin的类型安全构建器是一种DSL（领域特定语言）技术，允许以半声明方式创建嵌套结构。这种技术广泛应用于构建HTML、XML、UI组件等，使代码更加直观和类型安全。
EOF

# 创建3.3特殊语言特性目录
mkdir -p "$BASE_DIR/03-函数与表达式/03-特殊语言特性"
cat > "$BASE_DIR/03-函数与表达式/03-特殊语言特性/README.md" << 'EOF'
---
title: 特殊语言特性
icon: function
order: 3
---

# 特殊语言特性

本章节介绍Kotlin中的特殊语言特性，包括空安全、相等性、this表达式和解构声明等内容，这些特性使Kotlin更加安全、简洁和表达力强，帮助开发者编写更高质量的代码。
EOF

# 创建3.3.1空安全
cat > "$BASE_DIR/03-函数与表达式/03-特殊语言特性/01-空安全.md" << 'EOF'
---
title: 空安全
icon: shield
order: 1
---

# 空安全

Kotlin的类型系统旨在消除代码中的空引用异常（NullPointerException）。Kotlin通过可空类型和非空类型的区分，以及安全调用操作符（?.）、Elvis操作符（?:）等特性，提供了全面的空安全保障。
EOF

# 创建3.3.2相等性
cat > "$BASE_DIR/03-函数与表达式/03-特殊语言特性/02-相等性.md" << 'EOF'
---
title: 相等性
icon: equals
order: 2
---

# 相等性

Kotlin中有两种相等性：结构相等（使用==操作符检查）和引用相等（使用===操作符检查）。结构相等会调用equals()方法比较内容，而引用相等检查两个引用是否指向同一对象。
EOF

# 创建3.3.3this表达式
cat > "$BASE_DIR/03-函数与表达式/03-特殊语言特性/03-this表达式.md" << 'EOF'
---
title: this表达式
icon: code
order: 3
---

# this表达式

在Kotlin中，this表达式指代当前接收者。在类的成员中，this指向该类的当前对象。在扩展函数或带接收者的函数字面值中，this表示在点左侧传递的接收者参数。
EOF

# 创建3.3.4解构声明
cat > "$BASE_DIR/03-函数与表达式/03-特殊语言特性/04-解构声明.md" << 'EOF'
---
title: 解构声明
icon: code
order: 4
---

# 解构声明

Kotlin的解构声明允许我们将一个对象解构为多个变量。这对于返回多个值的函数特别有用，可以通过componentN()函数实现。数据类自动生成这些函数，使解构更加方便。
EOF

mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建4.异步编程目录
mkdir -p "$BASE_DIR/04-异步编程"
cat > "$BASE_DIR/04-异步编程/README.md" << 'EOF'
---
title: 异步编程
icon: async
order: 4
---

# 异步编程

本章节介绍Kotlin中的异步编程技术，主要聚焦于协程(Coroutines)这一强大的异步编程工具。通过学习协程的基础概念和实践应用，您将能够编写高效、简洁的异步代码，处理并发任务和异步操作。
EOF

# 创建4.1协程基础目录
mkdir -p "$BASE_DIR/04-异步编程/01-协程基础"
cat > "$BASE_DIR/04-异步编程/01-协程基础/README.md" << 'EOF'
---
title: 协程基础
icon: coroutine
order: 1
---

# 协程基础

本章节介绍Kotlin协程的基础知识，包括异步程序设计技术、协程概念、基础用法以及协程与通道等内容，帮助您理解协程的工作原理和基本使用方法，为进一步学习协程的高级特性打下基础。
EOF

# 创建4.1.1异步程序设计技术
cat > "$BASE_DIR/04-异步编程/01-协程基础/01-异步程序设计技术.md" << 'EOF'
---
title: 异步程序设计技术
icon: async
order: 1
---

# 异步程序设计技术

异步编程是处理非阻塞操作的一种方式，允许程序在等待某个操作完成的同时继续执行其他任务。在Kotlin中，协程提供了一种简洁且强大的异步编程方式，相比传统的回调和Future更加直观和易用。
EOF

# 创建4.1.2协程概念
cat > "$BASE_DIR/04-异步编程/01-协程基础/02-协程概念.md" << 'EOF'
---
title: 协程概念
icon: coroutine
order: 2
---

# 协程概念

协程是一种轻量级线程，由开发者管理而非操作系统。Kotlin的协程提供了一种结构化并发的方式，使异步代码看起来像同步代码，大大简化了异步编程。协程通过挂起函数实现非阻塞操作。
EOF

# 创建4.1.3协程基础
cat > "$BASE_DIR/04-异步编程/01-协程基础/03-协程基础.md" << 'EOF'
---
title: 协程基础
icon: coroutine
order: 3
---

# 协程基础

Kotlin协程的基础包括协程构建器(如launch、async)、协程作用域(CoroutineScope)和上下文(CoroutineContext)。协程构建器用于创建协程，作用域定义协程的生命周期，上下文包含协程的各种配置。
EOF

# 创建4.1.4协程与通道介绍
cat > "$BASE_DIR/04-异步编程/01-协程基础/04-协程与通道介绍.md" << 'EOF'
---
title: 协程与通道介绍
icon: channel
order: 4
---

# 协程与通道介绍

通道(Channel)是协程之间通信的一种方式，类似于Java中的BlockingQueue，但具有挂起特性而非阻塞。通道提供了一种安全的方式在不同协程之间传递数据，支持生产者-消费者模式的实现。
EOF

mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建4.2协程控制目录
mkdir -p "$BASE_DIR/04-异步编程/02-协程控制"
cat > "$BASE_DIR/04-异步编程/02-协程控制/README.md" << 'EOF'
---
title: 协程控制
icon: control
order: 2
---

# 协程控制

本章节介绍Kotlin协程的控制机制，包括取消与超时、组合挂起函数、协程上下文与调度器以及异常处理等内容，帮助您更好地管理和控制协程的执行流程，提高异步代码的可靠性和健壮性。
EOF

# 创建4.2.1取消与超时
cat > "$BASE_DIR/04-异步编程/02-协程控制/01-取消与超时.md" << 'EOF'
---
title: 取消与超时
icon: cancel
order: 1
---

# 取消与超时

Kotlin协程提供了取消机制，允许在不再需要协程时停止其执行。协程的取消是协作的，需要协程代码检查自身的取消状态。超时是取消的一种特殊形式，当协程执行时间超过指定限制时自动取消。
EOF

# 创建4.2.2组合挂起函数
cat > "$BASE_DIR/04-异步编程/02-协程控制/02-组合挂起函数.md" << 'EOF'
---
title: 组合挂起函数
icon: combine
order: 2
---

# 组合挂起函数

Kotlin提供了多种方式组合挂起函数，包括顺序执行、并发执行和异步操作。通过async和await可以并行执行多个操作并等待所有结果，而select表达式允许等待多个挂起函数中的第一个完成。
EOF

# 创建4.2.3协程上下文与调度器
cat > "$BASE_DIR/04-异步编程/02-协程控制/03-协程上下文与调度器.md" << 'EOF'
---
title: 协程上下文与调度器
icon: context
order: 3
---

# 协程上下文与调度器

协程上下文是一组定义协程行为的元素集合，包括协程调度器（决定协程在哪个线程执行）、协程名称、协程异常处理器等。Kotlin提供了多种内置调度器，如Dispatchers.Main、Dispatchers.IO等。
EOF

# 创建4.2.4协程异常处理
cat > "$BASE_DIR/04-异步编程/02-协程控制/04-协程异常处理.md" << 'EOF'
---
title: 协程异常处理
icon: error
order: 4
---

# 协程异常处理

Kotlin协程提供了结构化的异常处理机制，包括try-catch块、supervisorScope和CoroutineExceptionHandler。协程的异常传播行为取决于使用的协程构建器和作用域，理解这些机制对编写健壮的异步代码至关重要。
EOF

# 创建4.3高级协程特性目录
mkdir -p "$BASE_DIR/04-异步编程/03-高级协程特性"
cat > "$BASE_DIR/04-异步编程/03-高级协程特性/README.md" << 'EOF'
---
title: 高级协程特性
icon: advanced
order: 3
---

# 高级协程特性

本章节介绍Kotlin协程的高级特性，包括异步流、共享状态管理、协程测试等内容，这些高级特性使协程能够处理更复杂的异步场景，提供更强大的并发编程能力。
EOF

# 创建4.3.1异步流
cat > "$BASE_DIR/04-异步编程/03-高级协程特性/01-异步流.md" << 'EOF'
---
title: 异步流
icon: flow
order: 1
---

# 异步流

Kotlin的Flow API是一种用于处理异步数据流的方式，类似于响应式编程中的Observable，但与协程完全集成。Flow提供了一种类型安全的方式来表示可以异步计算多个值，支持各种操作符如map、filter、transform等。
EOF

mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建4.3.2通道
mkdir -p "$BASE_DIR/04-异步编程/03-高级协程特性"
cat > "$BASE_DIR/04-异步编程/03-高级协程特性/02-通道.md" << 'EOF'
---
title: 通道
icon: channel
order: 2
---

# 通道

通道(Channel)是协程之间通信的一种方式，提供了一种非阻塞的方式在不同协程之间传递数据。通道有不同的类型，如无缓冲、有缓冲、无限等，可以根据需要选择合适的类型来优化协程间的通信。
EOF

# 创建4.3.3共享的可变状态与并发
cat > "$BASE_DIR/04-异步编程/03-高级协程特性/03-共享的可变状态与并发.md" << 'EOF'
---
title: 共享的可变状态与并发
icon: share
order: 3
---

# 共享的可变状态与并发

在协程中处理共享的可变状态需要特别注意，因为多个协程可能同时访问和修改同一状态。Kotlin提供了多种方式来安全地处理共享状态，包括互斥锁(Mutex)、原子变量和协程限制(如单线程上下文)等。
EOF

# 创建4.3.4select表达式(实验性)
cat > "$BASE_DIR/04-异步编程/03-高级协程特性/04-select表达式.md" << 'EOF'
---
title: select表达式(实验性)
icon: select
order: 4
---

# select表达式(实验性)

select表达式是Kotlin协程的一个实验性特性，允许同时等待多个挂起函数，并选择第一个完成的结果。这类似于Go语言中的select语句，对于需要处理多个并发操作的场景非常有用，如超时处理或竞态条件。
EOF

# 创建4.4协程调试目录
mkdir -p "$BASE_DIR/04-异步编程/04-协程调试"
cat > "$BASE_DIR/04-异步编程/04-协程调试/README.md" << 'EOF'
---
title: 协程调试
icon: debug
order: 4
---

# 协程调试

本章节介绍如何使用IntelliJ IDEA调试Kotlin协程和Flow，包括查看协程的执行状态、跟踪协程的创建和取消、分析Flow的数据流等内容，帮助您更好地理解和排查协程相关的问题。
EOF

# 创建4.4.1使用IntelliJ IDEA调试协程
cat > "$BASE_DIR/04-异步编程/04-协程调试/01-使用IntelliJ-IDEA调试协程.md" << 'EOF'
---
title: 使用IntelliJ IDEA调试协程
icon: debug
order: 1
---

# 使用IntelliJ IDEA调试协程

IntelliJ IDEA提供了专门的工具来调试Kotlin协程，包括协程视图、堆栈跟踪增强等功能。通过这些工具，您可以查看协程的层次结构、跟踪协程的创建和取消、分析协程的执行状态，从而更容易理解和排查协程相关的问题。
EOF

# 创建4.4.2使用IntelliJ IDEA调试Kotlin Flow
cat > "$BASE_DIR/04-异步编程/04-协程调试/02-使用IntelliJ-IDEA调试Kotlin-Flow.md" << 'EOF'
---
title: 使用IntelliJ IDEA调试Kotlin Flow
icon: flow
order: 2
---

# 使用IntelliJ IDEA调试Kotlin Flow

IntelliJ IDEA为Kotlin Flow提供了专门的调试支持，允许您查看Flow的数据流、操作符链和执行状态。通过设置断点和使用调试器的步进功能，您可以跟踪Flow中数据的传递和转换过程，帮助理解和优化Flow的使用。
EOF

mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建5.标准库目录
mkdir -p "$BASE_DIR/05-标准库"
cat > "$BASE_DIR/05-标准库/README.md" << 'EOF'
---
title: 标准库
icon: library
order: 5
---

# 标准库

本章节介绍Kotlin标准库的核心组件和功能，包括集合框架、作用域函数、IO操作、反射等内容，这些标准库功能为Kotlin编程提供了强大的支持，使开发更加高效和便捷。
EOF

# 创建5.1集合框架目录
mkdir -p "$BASE_DIR/05-标准库/01-集合框架"
cat > "$BASE_DIR/05-标准库/01-集合框架/README.md" << 'EOF'
---
title: 集合框架
icon: collection
order: 1
---

# 集合框架

本章节介绍Kotlin的集合框架，包括集合概述、构造集合、迭代器、区间与数列以及序列等内容，帮助您理解和使用Kotlin丰富的集合API，高效处理数据集合和序列操作。
EOF

# 创建5.1.1集合概述
cat > "$BASE_DIR/05-标准库/01-集合框架/01-集合概述.md" << 'EOF'
---
title: 集合概述
icon: collection
order: 1
---

# 集合概述

Kotlin标准库提供了一套完整的集合框架，包括List、Set、Map等基本集合类型。Kotlin的集合分为可变集合和不可变集合，默认情况下集合是不可变的，这有助于编写更安全、更可预测的代码。
EOF

# 创建5.1.2构造集合
cat > "$BASE_DIR/05-标准库/01-集合框架/02-构造集合.md" << 'EOF'
---
title: 构造集合
icon: build
order: 2
---

# 构造集合

Kotlin提供了多种方式来构造集合，包括使用标准库函数如listOf()、setOf()、mapOf()等，以及使用构建器函数如buildList{}、buildSet{}、buildMap{}。这些函数使创建和初始化集合变得简单而灵活。
EOF

# 创建5.1.3迭代器
cat > "$BASE_DIR/05-标准库/01-集合框架/03-迭代器.md" << 'EOF'
---
title: 迭代器
icon: iterator
order: 3
---

# 迭代器

迭代器是一种设计模式，提供了一种方法来访问集合中的元素，而不暴露其底层表示。Kotlin的集合都实现了Iterable接口，可以使用for循环或forEach等函数进行迭代，还支持自定义迭代器。
EOF

# 创建5.1.4区间与数列
cat > "$BASE_DIR/05-标准库/01-集合框架/04-区间与数列.md" << 'EOF'
---
title: 区间与数列
icon: range
order: 4
---

# 区间与数列

Kotlin中的区间表示一个范围内的值，使用..操作符创建，如1..10表示从1到10的闭区间。数列是区间的一种扩展，可以指定步长，如1..10 step 2表示1,3,5,7,9。区间和数列广泛用于循环和条件判断。
EOF

# 创建5.1.5序列
cat > "$BASE_DIR/05-标准库/01-集合框架/05-序列.md" << 'EOF'
---
title: 序列
icon: sequence
order: 5
---

# 序列

Kotlin的序列(Sequence)类似于Java的Stream，提供了一种惰性求值的方式来处理集合元素。与普通集合操作相比，序列可以避免创建中间集合，提高处理大数据集的效率，特别适合链式操作和无限序列。
EOF



mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建5.2集合操作目录
mkdir -p "$BASE_DIR/05-标准库/02-集合操作"
cat > "$BASE_DIR/05-标准库/02-集合操作/README.md" << 'EOF'
---
title: 集合操作
icon: operation
order: 2
---

# 集合操作

本章节介绍Kotlin集合的各种操作，包括集合转换、过滤、加减操作符和分组等内容，这些操作使得处理集合数据更加简洁高效，是Kotlin函数式编程风格的重要体现。
EOF

# 创建5.2.1集合操作概述
cat > "$BASE_DIR/05-标准库/02-集合操作/01-集合操作概述.md" << 'EOF'
---
title: 集合操作概述
icon: overview
order: 1
---

# 集合操作概述

Kotlin标准库提供了丰富的集合操作API，包括转换、过滤、聚合、排序等多种操作。这些操作大多采用函数式编程风格，通过高阶函数和lambda表达式实现，使代码更加简洁、可读性更强。
EOF

# 创建5.2.2集合转换操作
cat > "$BASE_DIR/05-标准库/02-集合操作/02-集合转换操作.md" << 'EOF'
---
title: 集合转换操作
icon: transform
order: 2
---

# 集合转换操作

Kotlin提供了多种集合转换操作，如map()将集合中的每个元素转换为新元素，flatMap()将嵌套集合展平，zip()将两个集合合并为一个包含键值对的集合等。这些转换操作使数据处理更加灵活和强大。
EOF

# 创建5.2.3过滤集合
cat > "$BASE_DIR/05-标准库/02-集合操作/03-过滤集合.md" << 'EOF'
---
title: 过滤集合
icon: filter
order: 3
---

# 过滤集合

Kotlin的过滤操作允许根据特定条件选择集合中的元素。常用的过滤函数包括filter()、filterNot()、filterNotNull()、take()、drop()等。这些函数使得从集合中提取所需数据变得简单直观。
EOF

# 创建5.2.4加减操作符
cat > "$BASE_DIR/05-标准库/02-集合操作/04-加减操作符.md" << 'EOF'
---
title: 加减操作符
icon: math
order: 4
---

# 加减操作符

Kotlin为集合提供了加减操作符，如+和-，可以用于添加或移除元素。这些操作符被重载用于不同类型的集合，如List、Set和Map，使集合操作更加直观和符合数学直觉。
EOF

# 创建5.2.5分组操作
cat > "$BASE_DIR/05-标准库/02-集合操作/05-分组操作.md" << 'EOF'
---
title: 分组操作
icon: group
order: 5
---

# 分组操作

Kotlin的分组操作允许将集合元素按照特定条件分组。主要函数包括groupBy()和groupingBy()，前者直接返回分组结果，后者返回一个Grouping对象，支持更复杂的聚合操作。分组操作在数据分析和处理中非常有用。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建5.3集合访问与修改目录
mkdir -p "$BASE_DIR/05-标准库/03-集合访问与修改"
cat > "$BASE_DIR/05-标准库/03-集合访问与修改/README.md" << 'EOF'
---
title: 集合访问与修改
icon: edit
order: 3
---

# 集合访问与修改

本章节介绍Kotlin集合的访问与修改操作，包括取集合的一部分、取单个元素、排序、聚合操作以及集合写操作等内容，这些操作使得集合数据的处理更加灵活和高效。
EOF

# 创建5.3.1取集合的一部分
cat > "$BASE_DIR/05-标准库/03-集合访问与修改/01-取集合的一部分.md" << 'EOF'
---
title: 取集合的一部分
icon: slice
order: 1
---

# 取集合的一部分

Kotlin提供了多种方式从集合中获取子集合，如slice()、take()、drop()、chunked()等函数。这些函数可以根据索引、条件或数量从原集合中提取元素，形成新的集合，非常适合数据分片和分页处理。
EOF

# 创建5.3.2取单个元素
cat > "$BASE_DIR/05-标准库/03-集合访问与修改/02-取单个元素.md" << 'EOF'
---
title: 取单个元素
icon: element
order: 2
---

# 取单个元素

Kotlin提供了多种函数来获取集合中的单个元素，如elementAt()、first()、last()、find()等。这些函数可以根据索引、条件或位置获取元素，并且大多数函数都有安全版本，避免因元素不存在而抛出异常。
EOF

# 创建5.3.3排序
cat > "$BASE_DIR/05-标准库/03-集合访问与修改/03-排序.md" << 'EOF'
---
title: 排序
icon: sort
order: 3
---

# 排序

Kotlin提供了丰富的排序函数，如sorted()、sortedBy()、sortedDescending()等。这些函数可以按自然顺序、自定义比较器或特定属性对集合元素进行排序，返回排序后的新集合，而不修改原集合。
EOF

# 创建5.3.4聚合操作
cat > "$BASE_DIR/05-标准库/03-集合访问与修改/04-聚合操作.md" << 'EOF'
---
title: 聚合操作
icon: aggregate
order: 4
---

# 聚合操作

Kotlin的聚合操作用于从集合中计算单个值，如count()、sum()、average()、max()、min()、reduce()、fold()等。这些函数可以计算集合的大小、总和、平均值、最大值、最小值或通过累积操作生成结果。
EOF

# 创建5.3.5集合写操作
cat > "$BASE_DIR/05-标准库/03-集合访问与修改/05-集合写操作.md" << 'EOF'
---
title: 集合写操作
icon: write
order: 5
---

# 集合写操作

Kotlin的可变集合支持各种写操作，如add()、remove()、clear()等。这些操作直接修改原集合，而不是创建新集合。Kotlin还提供了一些扩展函数，如removeIf()、retainAll()等，使集合修改更加便捷。
EOF

# 创建5.4特定集合操作目录
mkdir -p "$BASE_DIR/05-标准库/04-特定集合操作"
cat > "$BASE_DIR/05-标准库/04-特定集合操作/README.md" << 'EOF'
---
title: 特定集合操作
icon: specific
order: 4
---

# 特定集合操作

本章节介绍Kotlin中针对特定集合类型的操作，包括List、Set和Map的专用操作，以及集合与字符串之间的转换等内容，帮助您更高效地使用不同类型的集合。
EOF

# 创建5.4.1List特定操作
cat > "$BASE_DIR/05-标准库/04-特定集合操作/01-List特定操作.md" << 'EOF'
---
title: List特定操作
icon: list
order: 1
---

# List特定操作

List是有序集合，Kotlin为List提供了一些特定操作，如按索引访问元素、查找元素位置、二分查找等。这些操作利用了List的有序特性，提供了高效的元素访问和查找功能。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建5.4特定集合操作目录
mkdir -p "$BASE_DIR/05-标准库/04-特定集合操作"
cat > "$BASE_DIR/05-标准库/04-特定集合操作/README.md" << 'EOF'
---
title: 特定集合操作
icon: specific
order: 4
---

# 特定集合操作

本章节介绍Kotlin中针对特定集合类型的操作，包括List、Set和Map的专用操作，以及选择加入要求等内容，帮助您更高效地使用不同类型的集合，充分发挥各类集合的特性。
EOF

# 创建5.4.1List相关操作
cat > "$BASE_DIR/05-标准库/04-特定集合操作/01-List相关操作.md" << 'EOF'
---
title: List相关操作
icon: list
order: 1
---

# List相关操作

Kotlin为List提供了丰富的操作函数，包括索引访问、查找元素位置、二分查找、列表分割等。这些操作充分利用了List的有序特性，使得对列表数据的处理更加高效和便捷。
EOF

# 创建5.4.2Set相关操作
cat > "$BASE_DIR/05-标准库/04-特定集合操作/02-Set相关操作.md" << 'EOF'
---
title: Set相关操作
icon: set
order: 2
---

# Set相关操作

Set是不包含重复元素的集合，Kotlin为Set提供了一系列特定操作，如并集、交集、差集等集合运算。这些操作使得处理元素唯一性和集合间关系变得简单直观，适用于需要去重和集合比较的场景。
EOF

# 创建5.4.3Map相关操作
cat > "$BASE_DIR/05-标准库/04-特定集合操作/03-Map相关操作.md" << 'EOF'
---
title: Map相关操作
icon: map
order: 3
---

# Map相关操作

Map是键值对集合，Kotlin提供了多种操作Map的函数，如获取键值、过滤转换、合并Map等。这些操作使得处理键值对数据更加灵活，能够满足复杂的数据处理需求，如数据分组、查找和转换等。
EOF

# 创建5.4.4选择加入要求
cat > "$BASE_DIR/05-标准库/04-特定集合操作/04-选择加入要求.md" << 'EOF'
---
title: 选择加入要求
icon: opt-in
order: 4
---

# 选择加入要求

Kotlin的选择加入要求(Opt-in requirements)是一种标记API稳定性的机制，用于标识实验性或不稳定的API。使用这些API时，需要显式地选择加入，表明开发者了解相关风险。这种机制在集合API的演进中尤为重要。
EOF

# 创建5.5其他标准库功能目录
mkdir -p "$BASE_DIR/05-标准库/05-其他标准库功能"
cat > "$BASE_DIR/05-标准库/05-其他标准库功能/README.md" << 'EOF'
---
title: 其他标准库功能
icon: more
order: 5
---

# 其他标准库功能

本章节介绍Kotlin标准库中的其他实用功能，包括作用域函数、时间度量等内容，这些功能虽然不属于集合框架，但在日常编程中同样重要且实用，能够提高代码的简洁性和可读性。
EOF

# 创建5.5.1作用域函数
cat > "$BASE_DIR/05-标准库/05-其他标准库功能/01-作用域函数.md" << 'EOF'
---
title: 作用域函数
icon: scope
order: 1
---

# 作用域函数

Kotlin提供了一系列作用域函数，如let、run、with、apply和also，用于在对象的上下文中执行代码块。这些函数可以使代码更加简洁和可读，减少重复引用对象的需要，是Kotlin中非常实用的语言特性。
EOF

# 创建5.5.2时间度量
cat > "$BASE_DIR/05-标准库/05-其他标准库功能/02-时间度量.md" << 'EOF'
---
title: 时间度量
icon: time
order: 2
---

# 时间度量

Kotlin标准库提供了测量代码执行时间的工具，如measureTimeMillis和measureNanoTime函数。这些函数可以帮助开发者评估代码性能，识别潜在的性能瓶颈，对于性能优化和基准测试非常有用。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建5.5.3序列化
mkdir -p "$BASE_DIR/05-标准库/05-其他标准库功能"
cat > "$BASE_DIR/05-标准库/05-其他标准库功能/03-序列化.md" << 'EOF'
---
title: 序列化(kotlinx.serialization)
icon: serialize
order: 3
---

# 序列化(kotlinx.serialization)

Kotlin提供了官方的序列化库kotlinx.serialization，支持将Kotlin对象序列化为JSON、CBOR、ProtoBuf等格式，以及反序列化过程。该库完全基于Kotlin，支持多平台项目，并且通过编译时代码生成提供类型安全的序列化。
EOF

# 创建6.多平台开发目录
mkdir -p "$BASE_DIR/06-多平台开发"
cat > "$BASE_DIR/06-多平台开发/README.md" << 'EOF'
---
title: 多平台开发
icon: multiplatform
order: 6
---

# 多平台开发

本章节介绍Kotlin的多平台开发能力，包括Kotlin/JVM、Kotlin/JS、Kotlin/Native等平台的开发特性和最佳实践，帮助您充分利用Kotlin的跨平台优势，实现代码共享和多平台部署。
EOF

# 创建6.1Kotlin/JVM开发目录
mkdir -p "$BASE_DIR/06-多平台开发/01-Kotlin-JVM开发"
cat > "$BASE_DIR/06-多平台开发/01-Kotlin-JVM开发/README.md" << 'EOF'
---
title: Kotlin/JVM开发
icon: jvm
order: 1
---

# Kotlin/JVM开发

本章节介绍Kotlin在JVM平台上的开发，包括与Spring Boot的集成、Android开发基础以及与Java的互操作等内容，帮助您在JVM生态系统中高效地使用Kotlin进行开发。
EOF

# 创建6.1.1Spring Boot集成
cat > "$BASE_DIR/06-多平台开发/01-Kotlin-JVM开发/01-Spring-Boot集成.md" << 'EOF'
---
title: Spring Boot集成
icon: spring
order: 1
---

# Spring Boot集成

Kotlin与Spring Boot的集成非常顺畅，Spring框架提供了对Kotlin的一流支持。本文介绍如何在Spring Boot项目中使用Kotlin，包括配置、依赖注入、数据类的使用以及协程的集成等内容。
EOF

# 创建6.1.2Android开发基础
cat > "$BASE_DIR/06-多平台开发/01-Kotlin-JVM开发/02-Android开发基础.md" << 'EOF'
---
title: Android开发基础
icon: android
order: 2
---

# Android开发基础

Kotlin是Android官方推荐的开发语言，提供了比Java更简洁、更安全的语法。本文介绍Kotlin在Android开发中的基础应用，包括Activity、Fragment、布局、协程在Android中的使用等内容。
EOF

# 创建6.1.3与Java互操作
cat > "$BASE_DIR/06-多平台开发/01-Kotlin-JVM开发/03-与Java互操作.md" << 'EOF'
---
title: 与Java互操作
icon: java
order: 3
---

# 与Java互操作

Kotlin设计之初就考虑了与Java的互操作性，可以无缝调用Java代码，同时Java代码也可以调用Kotlin代码。本文介绍Kotlin与Java互操作的各种场景和注意事项，帮助您在混合项目中高效工作。
EOF


mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建6.1.4JVM平台特定优化
mkdir -p "$BASE_DIR/06-多平台开发/01-Kotlin-JVM开发"
cat > "$BASE_DIR/06-多平台开发/01-Kotlin-JVM开发/04-JVM平台特定优化.md" << 'EOF'
---
title: JVM平台特定优化
icon: optimize
order: 4
---

# JVM平台特定优化

Kotlin在JVM平台上提供了一系列特定优化，包括内联类、尾递归优化、协程的高效实现等。这些优化充分利用了JVM的特性，使Kotlin代码在JVM上运行更加高效，同时保持了代码的简洁性和可读性。
EOF

# 创建6.2Kotlin/JS开发目录
mkdir -p "$BASE_DIR/06-多平台开发/02-Kotlin-JS开发"
cat > "$BASE_DIR/06-多平台开发/02-Kotlin-JS开发/README.md" << 'EOF'
---
title: Kotlin/JS开发
icon: javascript
order: 2
---

# Kotlin/JS开发

本章节介绍Kotlin在JavaScript平台上的开发，包括前端开发基础、React集成、与JavaScript互操作以及在浏览器与Node.js环境中的应用等内容，帮助您使用Kotlin进行高效的Web开发。
EOF

# 创建6.2.1前端开发基础
cat > "$BASE_DIR/06-多平台开发/02-Kotlin-JS开发/01-前端开发基础.md" << 'EOF'
---
title: 前端开发基础
icon: frontend
order: 1
---

# 前端开发基础

Kotlin/JS允许使用Kotlin语言进行前端开发，编译为JavaScript运行在浏览器中。本文介绍Kotlin/JS的基础知识，包括项目设置、DOM操作、事件处理、网络请求等内容，帮助您快速入门Kotlin前端开发。
EOF

# 创建6.2.2React集成
cat > "$BASE_DIR/06-多平台开发/02-Kotlin-JS开发/02-React集成.md" << 'EOF'
---
title: React集成
icon: react
order: 2
---

# React集成

Kotlin/JS可以与React框架无缝集成，通过kotlin-react库提供类型安全的React组件开发。本文介绍如何使用Kotlin开发React应用，包括组件创建、状态管理、生命周期处理以及与React生态系统的集成等内容。
EOF

# 创建6.2.3与JavaScript互操作
cat > "$BASE_DIR/06-多平台开发/02-Kotlin-JS开发/03-与JavaScript互操作.md" << 'EOF'
---
title: 与JavaScript互操作
icon: interop
order: 3
---

# 与JavaScript互操作

Kotlin/JS提供了强大的JavaScript互操作能力，可以轻松调用JavaScript库和API。本文介绍Kotlin与JavaScript的互操作机制，包括动态类型、外部声明、类型定义生成以及处理JavaScript对象和函数等内容。
EOF

# 创建6.2.4浏览器与Node.js环境
cat > "$BASE_DIR/06-多平台开发/02-Kotlin-JS开发/04-浏览器与Node-js环境.md" << 'EOF'
---
title: 浏览器与Node.js环境
icon: browser
order: 4
---

# 浏览器与Node.js环境

Kotlin/JS可以在浏览器和Node.js环境中运行，适用于前端和后端JavaScript开发。本文介绍Kotlin/JS在不同JavaScript环境中的应用，包括浏览器API访问、Node.js模块使用、环境特定配置以及全栈开发等内容。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建6.3Kotlin/Native开发目录
mkdir -p "$BASE_DIR/06-多平台开发/03-Kotlin-Native开发"
cat > "$BASE_DIR/06-多平台开发/03-Kotlin-Native开发/README.md" << 'EOF'
---
title: Kotlin/Native开发
icon: native
order: 3
---

# Kotlin/Native开发

本章节介绍Kotlin/Native技术，它允许将Kotlin代码编译为原生二进制文件，无需虚拟机即可运行。通过学习iOS开发、跨平台共享代码、性能优化和内存管理等内容，您将能够使用Kotlin开发高性能的原生应用。
EOF

# 创建6.3.1iOS开发
cat > "$BASE_DIR/06-多平台开发/03-Kotlin-Native开发/01-iOS开发.md" << 'EOF'
---
title: iOS开发
icon: ios
order: 1
---

# iOS开发

Kotlin/Native允许使用Kotlin语言开发iOS应用，编译为原生二进制文件直接运行在iOS设备上。本文介绍如何使用Kotlin进行iOS开发，包括项目设置、UI开发、与Swift/Objective-C互操作以及发布流程等内容。
EOF

# 创建6.3.2跨平台共享代码
cat > "$BASE_DIR/06-多平台开发/03-Kotlin-Native开发/02-跨平台共享代码.md" << 'EOF'
---
title: 跨平台共享代码
icon: share
order: 2
---

# 跨平台共享代码

Kotlin/Native是Kotlin多平台项目的重要组成部分，允许在iOS、Android和其他平台之间共享代码。本文介绍如何设计和实现跨平台共享的业务逻辑，包括平台特定代码的处理、依赖管理和测试策略等内容。
EOF

# 创建6.3.3性能优化
cat > "$BASE_DIR/06-多平台开发/03-Kotlin-Native开发/03-性能优化.md" << 'EOF'
---
title: 性能优化
icon: performance
order: 3
---

# 性能优化

Kotlin/Native编译为原生代码，性能接近手写C/C++。本文介绍Kotlin/Native的性能优化技巧，包括内存使用优化、编译优化、算法选择以及与平台特定API集成等内容，帮助您开发高性能的原生应用。
EOF

# 创建6.3.4内存管理
cat > "$BASE_DIR/06-多平台开发/03-Kotlin-Native开发/04-内存管理.md" << 'EOF'
---
title: 内存管理
icon: memory
order: 4
---

# 内存管理

Kotlin/Native使用独特的内存管理模型，不同于JVM的垃圾回收机制。本文介绍Kotlin/Native的内存管理原理，包括对象所有权、对象传递规则、冻结对象以及与并发相关的内存安全保障等内容。
EOF

# 创建6.4Kotlin多平台项目(KMP)目录
mkdir -p "$BASE_DIR/06-多平台开发/04-Kotlin多平台项目"
cat > "$BASE_DIR/06-多平台开发/04-Kotlin多平台项目/README.md" << 'EOF'
---
title: Kotlin多平台项目(KMP)
icon: multiplatform
order: 4
---

# Kotlin多平台项目(KMP)

本章节介绍Kotlin多平台项目(KMP)，这是Kotlin官方提供的跨平台解决方案，允许在不同平台之间共享代码。通过学习KMP的项目结构、依赖管理、测试策略等内容，您将能够构建真正的跨平台应用。
EOF

# 创建6.4.1项目结构
cat > "$BASE_DIR/06-多平台开发/04-Kotlin多平台项目/01-项目结构.md" << 'EOF'
---
title: 项目结构
icon: structure
order: 1
---

# 项目结构

Kotlin多平台项目(KMP)采用特定的项目结构，将代码分为共享部分和平台特定部分。本文介绍KMP的项目结构设计，包括源集(sourceSet)配置、平台特定代码组织、构建配置以及模块化设计等内容。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建6.4.2共享代码策略
mkdir -p "$BASE_DIR/06-多平台开发/04-Kotlin多平台项目"
cat > "$BASE_DIR/06-多平台开发/04-Kotlin多平台项目/02-共享代码策略.md" << 'EOF'
---
title: 共享代码策略
icon: share
order: 2
---

# 共享代码策略

在Kotlin多平台项目中，合理的共享代码策略是成功的关键。本文介绍如何设计共享代码，包括业务逻辑抽象、领域模型设计、接口定义以及如何平衡共享与平台特定代码的比例，以实现最大化代码复用。
EOF

# 创建6.4.3平台特定代码
cat > "$BASE_DIR/06-多平台开发/04-Kotlin多平台项目/03-平台特定代码.md" << 'EOF'
---
title: 平台特定代码
icon: platform
order: 3
---

# 平台特定代码

Kotlin多平台项目允许编写平台特定代码来处理各平台的差异。本文介绍如何组织和管理平台特定代码，包括expect/actual声明、平台特定源集、条件编译以及与平台原生API的集成等内容。
EOF

# 创建6.4.4依赖管理
cat > "$BASE_DIR/06-多平台开发/04-Kotlin多平台项目/04-依赖管理.md" << 'EOF'
---
title: 依赖管理
icon: dependency
order: 4
---

# 依赖管理

Kotlin多平台项目的依赖管理涉及多个平台的库和框架。本文介绍KMP项目的依赖管理策略，包括多平台库的使用、平台特定依赖配置、依赖版本控制以及如何处理依赖冲突等内容。
EOF

# 创建7.实战与最佳实践目录
mkdir -p "$BASE_DIR/07-实战与最佳实践"
cat > "$BASE_DIR/07-实战与最佳实践/README.md" << 'EOF'
---
title: 实战与最佳实践
icon: practice
order: 7
---

# 实战与最佳实践

本章节介绍Kotlin的实战应用和最佳实践，包括设计模式、性能优化、测试策略以及实际项目案例等内容，帮助您将Kotlin的理论知识应用到实际开发中，提高代码质量和开发效率。
EOF

# 创建7.1设计模式目录
mkdir -p "$BASE_DIR/07-实战与最佳实践/01-设计模式"
cat > "$BASE_DIR/07-实战与最佳实践/01-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 1
---

# 设计模式

本章节介绍如何在Kotlin中应用各种设计模式，包括函数式设计模式、创建型模式、结构型模式和行为型模式等，帮助您编写更加灵活、可维护和可扩展的代码，提高软件设计质量。
EOF

# 创建7.1.1函数式设计模式
cat > "$BASE_DIR/07-实战与最佳实践/01-设计模式/01-函数式设计模式.md" << 'EOF'
---
title: 函数式设计模式
icon: functional
order: 1
---

# 函数式设计模式

Kotlin结合了面向对象和函数式编程的特性，使得函数式设计模式在Kotlin中有独特的实现方式。本文介绍Kotlin中的函数式设计模式，包括单子、函子、应用函子以及如何利用高阶函数和不可变性实现传统设计模式。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建7.1.2传统设计模式的Kotlin实现
mkdir -p "$BASE_DIR/07-实战与最佳实践/01-设计模式"
cat > "$BASE_DIR/07-实战与最佳实践/01-设计模式/02-传统设计模式的Kotlin实现.md" << 'EOF'
---
title: 传统设计模式的Kotlin实现
icon: pattern
order: 2
---

# 传统设计模式的Kotlin实现

Kotlin的语言特性使得传统设计模式的实现更加简洁和优雅。本文介绍如何使用Kotlin实现常见的设计模式，包括单例模式、工厂模式、观察者模式、策略模式等，并展示Kotlin特有的实现方式和优化技巧。
EOF

# 创建7.1.3协程设计模式
cat > "$BASE_DIR/07-实战与最佳实践/01-设计模式/03-协程设计模式.md" << 'EOF'
---
title: 协程设计模式
icon: coroutine
order: 3
---

# 协程设计模式

Kotlin协程为异步编程提供了新的设计模式可能性。本文介绍基于协程的设计模式，包括生产者-消费者模式、异步任务处理、并发控制模式以及如何使用协程简化传统的异步回调模式，提高代码的可读性和可维护性。
EOF

# 创建7.1.4响应式编程模式
cat > "$BASE_DIR/07-实战与最佳实践/01-设计模式/04-响应式编程模式.md" << 'EOF'
---
title: 响应式编程模式
icon: reactive
order: 4
---

# 响应式编程模式

响应式编程是处理异步数据流的编程范式，与Kotlin结合使用效果显著。本文介绍Kotlin中的响应式编程模式，包括使用Flow API、与RxKotlin的集成、响应式状态管理以及在Android和服务器端应用中的实践。
EOF

# 创建7.2测试与质量保证目录
mkdir -p "$BASE_DIR/07-实战与最佳实践/02-测试与质量保证"
cat > "$BASE_DIR/07-实战与最佳实践/02-测试与质量保证/README.md" << 'EOF'
---
title: 测试与质量保证
icon: test
order: 2
---

# 测试与质量保证

本章节介绍Kotlin项目的测试与质量保证实践，包括单元测试、UI测试、性能测试以及代码质量工具等内容，帮助您构建高质量、可靠的Kotlin应用，提高代码的健壮性和可维护性。
EOF

# 创建7.2.1单元测试
cat > "$BASE_DIR/07-实战与最佳实践/02-测试与质量保证/01-单元测试.md" << 'EOF'
---
title: 单元测试
icon: unit-test
order: 1
---

# 单元测试

Kotlin提供了丰富的单元测试支持，使测试代码更加简洁和表达力强。本文介绍Kotlin单元测试的基础知识和最佳实践，包括测试框架选择、测试编写技巧、模拟对象使用以及如何测试协程和Flow等特性。
EOF

# 创建7.2.2UI测试
cat > "$BASE_DIR/07-实战与最佳实践/02-测试与质量保证/02-UI测试.md" << 'EOF'
---
title: UI测试
icon: ui-test
order: 2
---

# UI测试

UI测试是验证应用界面功能正确性的重要手段。本文介绍Kotlin项目中的UI测试方法，包括Android UI测试、Web前端测试、测试框架选择以及如何编写可维护的UI测试，确保应用界面的质量和用户体验。
EOF

# 创建7.2.3性能测试
cat > "$BASE_DIR/07-实战与最佳实践/02-测试与质量保证/03-性能测试.md" << 'EOF'
---
title: 性能测试
icon: performance
order: 3
---

# 性能测试

性能测试是确保应用高效运行的关键步骤。本文介绍Kotlin项目的性能测试方法，包括基准测试工具、内存使用分析、CPU性能分析以及如何识别和解决常见的性能问题，优化应用的响应速度和资源使用。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建7.2.4代码覆盖率
mkdir -p "$BASE_DIR/07-实战与最佳实践/02-测试与质量保证"
cat > "$BASE_DIR/07-实战与最佳实践/02-测试与质量保证/04-代码覆盖率.md" << 'EOF'
---
title: 代码覆盖率
icon: coverage
order: 4
---

# 代码覆盖率

代码覆盖率是衡量测试完整性的重要指标，反映了测试用例对代码的覆盖程度。本文介绍Kotlin项目中的代码覆盖率工具和实践，包括JaCoCo配置、覆盖率报告生成、覆盖率目标设定以及如何提高关键代码的测试覆盖率。
EOF

# 创建7.3代码规范与风格目录
mkdir -p "$BASE_DIR/07-实战与最佳实践/03-代码规范与风格"
cat > "$BASE_DIR/07-实战与最佳实践/03-代码规范与风格/README.md" << 'EOF'
---
title: 代码规范与风格
icon: style
order: 3
---

# 代码规范与风格

本章节介绍Kotlin的代码规范与风格指南，包括项目结构组织、命名约定、函数设计以及代码审查指南等内容，帮助团队建立一致的编码风格，提高代码的可读性和可维护性。
EOF

# 创建7.3.1项目结构组织
cat > "$BASE_DIR/07-实战与最佳实践/03-代码规范与风格/01-项目结构组织.md" << 'EOF'
---
title: 项目结构组织
icon: structure
order: 1
---

# 项目结构组织

良好的项目结构是代码可维护性的基础。本文介绍Kotlin项目的结构组织最佳实践，包括包命名规则、模块划分原则、资源文件组织以及如何根据项目规模和类型选择合适的架构模式，如MVC、MVP、MVVM或Clean Architecture。
EOF

# 创建7.3.2命名约定
cat > "$BASE_DIR/07-实战与最佳实践/03-代码规范与风格/02-命名约定.md" << 'EOF'
---
title: 命名约定
icon: naming
order: 2
---

# 命名约定

一致的命名约定有助于提高代码可读性。本文介绍Kotlin的命名约定，包括类名、函数名、变量名、常量名的命名规则，以及特殊情况如扩展函数、测试类、接口的命名建议，帮助开发者编写符合Kotlin风格的代码。
EOF

# 创建7.3.3函数设计
cat > "$BASE_DIR/07-实战与最佳实践/03-代码规范与风格/03-函数设计.md" << 'EOF'
---
title: 函数设计
icon: function
order: 3
---

# 函数设计

良好的函数设计是高质量代码的关键。本文介绍Kotlin函数设计的最佳实践，包括函数大小控制、单一职责原则、参数设计、返回值设计以及如何利用Kotlin特性如扩展函数、高阶函数优化函数设计。
EOF

# 创建7.3.4代码审查指南
cat > "$BASE_DIR/07-实战与最佳实践/03-代码规范与风格/04-代码审查指南.md" << 'EOF'
---
title: 代码审查指南
icon: review
order: 4
---

# 代码审查指南

代码审查是保证代码质量的重要环节。本文提供Kotlin代码审查的指南和清单，包括常见问题检查点、性能考量、安全性检查以及如何进行建设性的代码评审，帮助团队建立有效的代码审查流程。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建8.生态系统与工具目录
mkdir -p "$BASE_DIR/08-生态系统与工具"
cat > "$BASE_DIR/08-生态系统与工具/README.md" << 'EOF'
---
title: 生态系统与工具
icon: tools
order: 8
---

# 生态系统与工具

本章节介绍Kotlin的生态系统和相关工具，包括构建工具、IDE支持、库和框架等内容，帮助您了解Kotlin开发环境的全貌，选择合适的工具和库提高开发效率。
EOF

# 创建8.1构建工具目录
mkdir -p "$BASE_DIR/08-生态系统与工具/01-构建工具"
cat > "$BASE_DIR/08-生态系统与工具/01-构建工具/README.md" << 'EOF'
---
title: 构建工具
icon: build
order: 1
---

# 构建工具

本章节介绍Kotlin项目的构建工具，包括Gradle Kotlin DSL、Maven配置、构建优化以及多模块项目管理等内容，帮助您高效地构建、测试和部署Kotlin应用。
EOF

# 创建8.1.1Gradle Kotlin DSL
cat > "$BASE_DIR/08-生态系统与工具/01-构建工具/01-Gradle-Kotlin-DSL.md" << 'EOF'
---
title: Gradle Kotlin DSL
icon: gradle
order: 1
---

# Gradle Kotlin DSL

Gradle Kotlin DSL是使用Kotlin语言编写Gradle构建脚本的方式，提供了类型安全、IDE自动完成和更好的可读性。本文介绍如何使用Gradle Kotlin DSL配置Kotlin项目，包括基本语法、依赖管理、任务配置等内容。
EOF

# 创建8.1.2Maven配置
cat > "$BASE_DIR/08-生态系统与工具/01-构建工具/02-Maven配置.md" << 'EOF'
---
title: Maven配置
icon: maven
order: 2
---

# Maven配置

虽然Gradle是Kotlin项目的主流构建工具，但Maven仍然被许多项目使用。本文介绍如何使用Maven配置和构建Kotlin项目，包括插件配置、依赖管理、多模块项目设置以及与Gradle的比较等内容。
EOF

# 创建8.1.3构建优化
cat > "$BASE_DIR/08-生态系统与工具/01-构建工具/03-构建优化.md" << 'EOF'
---
title: 构建优化
icon: optimize
order: 3
---

# 构建优化

随着项目规模增长，构建性能变得越来越重要。本文介绍Kotlin项目的构建优化技巧，包括增量编译、并行构建、构建缓存、依赖优化以及如何分析和解决常见的构建性能问题。
EOF

# 创建8.1.4多模块项目
cat > "$BASE_DIR/08-生态系统与工具/01-构建工具/04-多模块项目.md" << 'EOF'
---
title: 多模块项目
icon: modules
order: 4
---

# 多模块项目

多模块项目结构有助于代码组织和复用。本文介绍如何设计和管理Kotlin的多模块项目，包括模块划分原则、依赖管理、版本控制、构建配置以及如何在多模块项目中实现功能共享和隔离。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建8.2IDE支持目录
mkdir -p "$BASE_DIR/08-生态系统与工具/02-IDE支持"
cat > "$BASE_DIR/08-生态系统与工具/02-IDE支持/README.md" << 'EOF'
---
title: IDE支持
icon: ide
order: 2
---

# IDE支持

本章节介绍Kotlin的IDE支持，包括IntelliJ IDEA技巧、Android Studio集成、代码生成与重构以及调试技巧等内容，帮助您充分利用IDE提高开发效率，编写高质量的Kotlin代码。
EOF

# 创建8.2.1IntelliJ IDEA技巧
cat > "$BASE_DIR/08-生态系统与工具/02-IDE支持/01-IntelliJ-IDEA技巧.md" << 'EOF'
---
title: IntelliJ IDEA技巧
icon: idea
order: 1
---

# IntelliJ IDEA技巧

IntelliJ IDEA是Kotlin开发的首选IDE，提供了全面的语言支持。本文介绍使用IntelliJ IDEA进行Kotlin开发的实用技巧，包括代码补全、导航、快捷键、实时模板以及Kotlin特有的IDE功能，帮助您提高开发效率。
EOF

# 创建8.2.2Android Studio集成
cat > "$BASE_DIR/08-生态系统与工具/02-IDE支持/02-Android-Studio集成.md" << 'EOF'
---
title: Android Studio集成
icon: android-studio
order: 2
---

# Android Studio集成

Android Studio基于IntelliJ IDEA构建，是Android开发的官方IDE，对Kotlin提供了一流支持。本文介绍Android Studio中的Kotlin特性和工具，包括Kotlin Android扩展、视图绑定、协程调试以及性能分析工具等。
EOF

# 创建8.2.3代码生成与重构
cat > "$BASE_DIR/08-生态系统与工具/02-IDE支持/03-代码生成与重构.md" << 'EOF'
---
title: 代码生成与重构
icon: refactor
order: 3
---

# 代码生成与重构

IDE的代码生成和重构功能可以大幅提高开发效率。本文介绍IntelliJ IDEA和Android Studio中的Kotlin代码生成与重构功能，包括自动生成数据类、转换Java代码到Kotlin、提取函数和变量以及智能重命名等功能。
EOF

# 创建8.2.4调试技巧
cat > "$BASE_DIR/08-生态系统与工具/02-IDE支持/04-调试技巧.md" << 'EOF'
---
title: 调试技巧
icon: debug
order: 4
---

# 调试技巧

高效的调试是解决问题的关键。本文介绍Kotlin项目的调试技巧，包括断点设置、条件断点、表达式求值、协程调试、内存视图以及如何使用IDE的调试工具分析和解决常见问题。
EOF

# 创建8.3常用库与框架目录
mkdir -p "$BASE_DIR/08-生态系统与工具/03-常用库与框架"
cat > "$BASE_DIR/08-生态系统与工具/03-常用库与框架/README.md" << 'EOF'
---
title: 常用库与框架
icon: library
order: 3
---

# 常用库与框架

本章节介绍Kotlin生态系统中的常用库与框架，包括网络框架、数据库操作、依赖注入、图像处理等内容，帮助您选择合适的工具构建高效、可靠的Kotlin应用。
EOF

# 创建8.3.1Ktor(网络框架)
cat > "$BASE_DIR/08-生态系统与工具/03-常用库与框架/01-Ktor网络框架.md" << 'EOF'
---
title: Ktor(网络框架)
icon: network
order: 1
---

# Ktor(网络框架)

Ktor是JetBrains开发的轻量级、灵活的Kotlin网络框架，支持客户端和服务器端开发。本文介绍Ktor的基本概念和使用方法，包括路由配置、中间件、WebSocket支持、客户端API以及如何构建RESTful服务和实时应用。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建8.3.2Exposed(SQL框架)
mkdir -p "$BASE_DIR/08-生态系统与工具/03-常用库与框架"
cat > "$BASE_DIR/08-生态系统与工具/03-常用库与框架/02-Exposed-SQL框架.md" << 'EOF'
---
title: Exposed(SQL框架)
icon: database
order: 2
---

# Exposed(SQL框架)

Exposed是JetBrains开发的Kotlin SQL框架，提供了类型安全的SQL访问方式。本文介绍Exposed的基本用法，包括DSL和DAO两种API风格、表定义、查询构建、事务处理以及与其他ORM框架的比较，帮助您高效地进行数据库操作。
EOF

# 创建8.3.3Arrow(函数式编程)
cat > "$BASE_DIR/08-生态系统与工具/03-常用库与框架/03-Arrow-函数式编程.md" << 'EOF'
---
title: Arrow(函数式编程)
icon: functional
order: 3
---

# Arrow(函数式编程)

Arrow是Kotlin的函数式编程库，提供了丰富的函数式编程工具和抽象。本文介绍Arrow的核心概念和使用方法，包括函子、单子、错误处理、不可变数据结构以及如何使用Arrow简化代码并提高程序的可靠性。
EOF

# 创建8.3.4Koin/Kodein(依赖注入)
cat > "$BASE_DIR/08-生态系统与工具/03-常用库与框架/04-Koin-Kodein-依赖注入.md" << 'EOF'
---
title: Koin/Kodein(依赖注入)
icon: injection
order: 4
---

# Koin/Kodein(依赖注入)

Koin和Kodein是Kotlin原生的依赖注入框架，提供了轻量级且易于使用的依赖注入解决方案。本文比较这两个框架的特点和用法，包括模块定义、组件注入、作用域管理以及在不同平台(Android、服务器端、多平台)中的应用。
EOF

# 创建8.4调试与监控目录
mkdir -p "$BASE_DIR/08-生态系统与工具/04-调试与监控"
cat > "$BASE_DIR/08-生态系统与工具/04-调试与监控/README.md" << 'EOF'
---
title: 调试与监控
icon: monitor
order: 4
---

# 调试与监控

本章节介绍Kotlin应用的调试与监控技术，包括日志处理、性能分析、内存泄漏检测等内容，帮助您诊断和解决应用中的问题，确保应用的稳定性和性能。
EOF

# 创建8.4.1日志处理
cat > "$BASE_DIR/08-生态系统与工具/04-调试与监控/01-日志处理.md" << 'EOF'
---
title: 日志处理
icon: log
order: 1
---

# 日志处理

良好的日志系统对于应用的调试和监控至关重要。本文介绍Kotlin应用中的日志处理方案，包括常用日志库(如SLF4J、Log4j、Logback)的配置和使用、结构化日志、日志级别管理以及如何设计有效的日志策略。
EOF

# 创建8.4.2性能分析
cat > "$BASE_DIR/08-生态系统与工具/04-调试与监控/02-性能分析.md" << 'EOF'
---
title: 性能分析
icon: performance
order: 2
---

# 性能分析

性能分析是优化应用的关键步骤。本文介绍Kotlin应用的性能分析工具和技术，包括CPU分析、内存分析、网络性能监控、热点代码识别以及如何使用分析结果优化应用性能，提高用户体验。
EOF

# 创建8.4.3内存泄漏检测
cat > "$BASE_DIR/08-生态系统与工具/04-调试与监控/03-内存泄漏检测.md" << 'EOF'
---
title: 内存泄漏检测
icon: memory
order: 3
---

# 内存泄漏检测

内存泄漏是应用性能下降和崩溃的常见原因。本文介绍Kotlin应用中内存泄漏的检测和修复方法，包括常见的内存泄漏模式、检测工具(如LeakCanary)的使用、内存分析技术以及如何编写防止内存泄漏的代码。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建8.4.4应用监控
mkdir -p "$BASE_DIR/08-生态系统与工具/04-调试与监控"
cat > "$BASE_DIR/08-生态系统与工具/04-调试与监控/04-应用监控.md" << 'EOF'
---
title: 应用监控
icon: monitor
order: 4
---

# 应用监控

应用监控是确保系统稳定运行的关键环节。本文介绍Kotlin应用的监控方案，包括健康检查、指标收集、告警设置、分布式追踪以及如何集成常见的监控工具如Prometheus、Grafana等，帮助您构建全面的应用监控体系。
EOF

# 创建9.高级主题目录
mkdir -p "$BASE_DIR/09-高级主题"
cat > "$BASE_DIR/09-高级主题/README.md" << 'EOF'
---
title: 高级主题
icon: advanced
order: 9
---

# 高级主题

本章节介绍Kotlin的高级主题，包括函数式编程进阶、元编程、性能优化等内容，帮助您深入理解Kotlin的高级特性，编写更加高效、简洁和可维护的代码。
EOF

# 创建9.1函数式编程进阶目录
mkdir -p "$BASE_DIR/09-高级主题/01-函数式编程进阶"
cat > "$BASE_DIR/09-高级主题/01-函数式编程进阶/README.md" << 'EOF'
---
title: 函数式编程进阶
icon: functional
order: 1
---

# 函数式编程进阶

本章节深入探讨Kotlin的函数式编程特性，包括高阶函数模式、函数组合、不可变数据结构等内容，帮助您掌握函数式编程的高级技巧，编写更加简洁、可测试和可维护的代码。
EOF

# 创建9.1.1高阶函数模式
cat > "$BASE_DIR/09-高级主题/01-函数式编程进阶/01-高阶函数模式.md" << 'EOF'
---
title: 高阶函数模式
icon: function
order: 1
---

# 高阶函数模式

高阶函数是函数式编程的核心概念，Kotlin对其提供了强大支持。本文深入探讨高阶函数的高级应用模式，包括装饰器模式、策略模式、命令模式的函数式实现，以及如何使用高阶函数简化代码结构，提高代码复用性。
EOF

# 创建9.1.2函数组合
cat > "$BASE_DIR/09-高级主题/01-函数式编程进阶/02-函数组合.md" << 'EOF'
---
title: 函数组合
icon: compose
order: 2
---

# 函数组合

函数组合是函数式编程的强大技术，允许将多个简单函数组合成复杂函数。本文介绍Kotlin中的函数组合技术，包括函数管道、柯里化、部分应用以及如何使用这些技术构建灵活、可复用的函数库，简化复杂逻辑的处理。
EOF

# 创建9.1.3不可变数据结构
cat > "$BASE_DIR/09-高级主题/01-函数式编程进阶/03-不可变数据结构.md" << 'EOF'
---
title: 不可变数据结构
icon: immutable
order: 3
---

# 不可变数据结构

不可变性是函数式编程的重要原则，有助于编写更安全、更可预测的代码。本文介绍Kotlin中的不可变数据结构，包括内置的不可变集合、持久化数据结构、不可变对象设计以及如何在实际项目中平衡不可变性和性能。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建9.1.4函数式错误处理
mkdir -p "$BASE_DIR/09-高级主题/01-函数式编程进阶"
cat > "$BASE_DIR/09-高级主题/01-函数式编程进阶/04-函数式错误处理.md" << 'EOF'
---
title: 函数式错误处理
icon: error
order: 4
---

# 函数式错误处理

函数式错误处理提供了一种优雅的方式来处理程序中的异常情况。本文介绍Kotlin中的函数式错误处理技术，包括Result类型、Either模式、Try函数、Railway Oriented Programming以及如何使用这些技术替代传统的异常处理，提高代码的可读性和可维护性。
EOF

# 创建9.2元编程目录
mkdir -p "$BASE_DIR/09-高级主题/02-元编程"
cat > "$BASE_DIR/09-高级主题/02-元编程/README.md" << 'EOF'
---
title: 元编程
icon: meta
order: 2
---

# 元编程

本章节介绍Kotlin的元编程技术，包括注解处理、反射、代码生成以及编译器插件开发等内容，帮助您理解和应用这些强大的技术，实现代码自动化生成、运行时类型检查和自定义语言扩展等高级功能。
EOF

# 创建9.2.1注解处理
cat > "$BASE_DIR/09-高级主题/02-元编程/01-注解处理.md" << 'EOF'
---
title: 注解处理
icon: annotation
order: 1
---

# 注解处理

注解处理是一种强大的元编程技术，可以在编译时生成代码或验证代码。本文介绍Kotlin中的注解定义和处理方法，包括自定义注解创建、注解处理器开发、KAPT(Kotlin Annotation Processing Tool)使用以及常见的注解处理应用场景。
EOF

# 创建9.2.2反射
cat > "$BASE_DIR/09-高级主题/02-元编程/02-反射.md" << 'EOF'
---
title: 反射
icon: reflection
order: 2
---

# 反射

反射允许程序在运行时检查和修改自身的结构和行为。本文介绍Kotlin的反射API，包括类引用、属性引用、函数引用、KClass、KProperty、KFunction等核心概念，以及如何使用反射实现依赖注入、序列化、动态代理等高级功能。
EOF

# 创建9.2.3代码生成
cat > "$BASE_DIR/09-高级主题/02-元编程/03-代码生成.md" << 'EOF'
---
title: 代码生成
icon: generate
order: 3
---

# 代码生成

代码生成是提高开发效率的重要技术，可以自动化创建重复性代码。本文介绍Kotlin中的代码生成技术，包括KSP(Kotlin Symbol Processing)、代码模板引擎、DSL设计以及如何使用这些技术简化样板代码，提高开发效率。
EOF

# 创建9.2.4编译器插件开发
cat > "$BASE_DIR/09-高级主题/02-元编程/04-编译器插件开发.md" << 'EOF'
---
title: 编译器插件开发
icon: plugin
order: 4
---

# 编译器插件开发

Kotlin编译器插件允许开发者扩展Kotlin语言的功能或优化编译过程。本文介绍Kotlin编译器插件的开发方法，包括编译器插件架构、IR(中间表示)操作、自定义语法扩展以及如何开发和发布自己的编译器插件，实现语言层面的定制化功能。
EOF



mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建9.3DSL构建目录
mkdir -p "$BASE_DIR/09-高级主题/03-DSL构建"
cat > "$BASE_DIR/09-高级主题/03-DSL构建/README.md" << 'EOF'
---
title: DSL构建
icon: dsl
order: 3
---

# DSL构建

本章节介绍如何使用Kotlin构建领域特定语言(DSL)，包括DSL设计原则、接收者作用域、实用DSL案例以及性能考量等内容，帮助您掌握DSL设计和实现的技巧，创建易用、直观的API。
EOF

# 创建9.3.1DSL设计原则
cat > "$BASE_DIR/09-高级主题/03-DSL构建/01-DSL设计原则.md" << 'EOF'
---
title: DSL设计原则
icon: design
order: 1
---

# DSL设计原则

领域特定语言(DSL)的设计需要遵循一定的原则才能确保其可用性和可维护性。本文介绍Kotlin DSL设计的核心原则，包括流畅性、可读性、类型安全、一致性以及如何平衡DSL的表达能力和复杂性，帮助您设计出优雅的DSL。
EOF

# 创建9.3.2接收者作用域
cat > "$BASE_DIR/09-高级主题/03-DSL构建/02-接收者作用域.md" << 'EOF'
---
title: 接收者作用域
icon: scope
order: 2
---

# 接收者作用域

接收者作用域是Kotlin DSL的核心概念，通过lambda with receiver实现。本文深入探讨接收者作用域的工作原理，包括this引用、隐式调用、嵌套作用域、作用域控制以及如何利用这些特性构建层次化、直观的DSL结构。
EOF

# 创建9.3.3实用DSL案例
cat > "$BASE_DIR/09-高级主题/03-DSL构建/03-实用DSL案例.md" << 'EOF'
---
title: 实用DSL案例
icon: example
order: 3
---

# 实用DSL案例

通过实际案例学习是掌握DSL构建的有效方法。本文分析几个实用的Kotlin DSL案例，包括构建UI的DSL、网络请求DSL、测试DSL、配置DSL等，剖析这些DSL的设计思路和实现技巧，帮助您应用到自己的项目中。
EOF

# 创建9.3.4DSL性能考量
cat > "$BASE_DIR/09-高级主题/03-DSL构建/04-DSL性能考量.md" << 'EOF'
---
title: DSL性能考量
icon: performance
order: 4
---

# DSL性能考量

DSL虽然提高了代码的可读性和表达能力，但也可能带来性能开销。本文讨论Kotlin DSL的性能考量，包括lambda开销、对象创建、内联函数优化、内存使用以及如何在保持DSL优雅性的同时优化性能，适用于对性能敏感的应用场景。
EOF

# 创建9.4并发编程模型目录
mkdir -p "$BASE_DIR/09-高级主题/04-并发编程模型"
cat > "$BASE_DIR/09-高级主题/04-并发编程模型/README.md" << 'EOF'
---
title: 并发编程模型
icon: concurrent
order: 4
---

# 并发编程模型

本章节介绍Kotlin的并发编程模型，包括协程与线程的比较、并发原语、并发设计模式等内容，帮助您理解和应用Kotlin的并发特性，编写高效、可靠的并发代码。
EOF

# 创建9.4.1协程vs线程
cat > "$BASE_DIR/09-高级主题/04-并发编程模型/01-协程vs线程.md" << 'EOF'
---
title: 协程vs线程
icon: compare
order: 1
---

# 协程vs线程

协程和线程是两种不同的并发模型，各有优缺点。本文比较Kotlin协程和传统线程的区别，包括资源消耗、编程模型、异常处理、取消机制、上下文切换开销以及适用场景，帮助您选择合适的并发方案，提高应用性能和响应性。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建9.4.2响应式编程
mkdir -p "$BASE_DIR/09-高级主题/04-并发编程模型"
cat > "$BASE_DIR/09-高级主题/04-并发编程模型/02-响应式编程.md" << 'EOF'
---
title: 响应式编程
icon: reactive
order: 2
---

# 响应式编程

响应式编程是一种处理异步数据流的编程范式。本文介绍Kotlin中的响应式编程模型，包括RxKotlin、Reactor等库的使用，响应式流规范，以及如何结合协程实现高效的响应式系统，适用于需要处理大量异步事件的应用场景。
EOF

# 创建9.4.3Flow高级用法
cat > "$BASE_DIR/09-高级主题/04-并发编程模型/03-Flow高级用法.md" << 'EOF'
---
title: Flow高级用法
icon: flow
order: 3
---

# Flow高级用法

Flow是Kotlin协程库提供的响应式流API，用于处理异步数据流。本文深入探讨Flow的高级用法，包括Flow操作符组合、背压处理、异常处理、上下文管理、测试技巧以及与其他响应式框架的集成，帮助您掌握Flow的全部潜力。
EOF

# 创建9.4.4并发数据结构
cat > "$BASE_DIR/09-高级主题/04-并发编程模型/04-并发数据结构.md" << 'EOF'
---
title: 并发数据结构
icon: data-structure
order: 4
---

# 并发数据结构

并发数据结构是构建高效并发程序的基础。本文介绍Kotlin中的并发数据结构，包括原子变量、并发集合、Channel、Actor模型以及如何选择和使用适合特定场景的并发数据结构，确保数据在并发环境中的安全访问和高效处理。
EOF

# 创建10.案例研究目录
mkdir -p "$BASE_DIR/10-案例研究"
cat > "$BASE_DIR/10-案例研究/README.md" << 'EOF'
---
title: 案例研究
icon: case
order: 10
---

# 案例研究

本章节通过实际案例研究，展示Kotlin在不同场景下的应用，包括从Java迁移到Kotlin、多平台项目实践、大型项目架构等内容，帮助您从实践中学习，将Kotlin的理论知识应用到实际项目中。
EOF

# 创建10.1从Java迁移到Kotlin目录
mkdir -p "$BASE_DIR/10-案例研究/01-从Java迁移到Kotlin"
cat > "$BASE_DIR/10-案例研究/01-从Java迁移到Kotlin/README.md" << 'EOF'
---
title: 从Java迁移到Kotlin
icon: migrate
order: 1
---

# 从Java迁移到Kotlin

本章节介绍如何将Java项目迁移到Kotlin，包括渐进式迁移策略、常见问题解决、性能优化以及迁移后的最佳实践等内容，帮助您平稳地完成从Java到Kotlin的过渡，充分利用Kotlin的优势。
EOF

# 创建10.1.1渐进式迁移策略
cat > "$BASE_DIR/10-案例研究/01-从Java迁移到Kotlin/01-渐进式迁移策略.md" << 'EOF'
---
title: 渐进式迁移策略
icon: strategy
order: 1
---

# 渐进式迁移策略

将Java项目迁移到Kotlin通常采用渐进式策略，而非一次性重写。本文介绍渐进式迁移的方法和步骤，包括优先级确定、互操作性保障、测试策略、团队培训以及如何处理迁移过程中的常见挑战，确保迁移过程平稳有序。
EOF


mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建10.1.2常见问题与解决方案
mkdir -p "$BASE_DIR/10-案例研究/01-从Java迁移到Kotlin"
cat > "$BASE_DIR/10-案例研究/01-从Java迁移到Kotlin/02-常见问题与解决方案.md" << 'EOF'
---
title: 常见问题与解决方案
icon: solution
order: 2
---

# 常见问题与解决方案

从Java迁移到Kotlin过程中会遇到各种技术和实践问题。本文总结了迁移过程中的常见问题及其解决方案，包括空安全处理、Java互操作性挑战、静态成员访问、匿名内部类转换以及如何处理Kotlin特有语法与Java库的兼容性问题。
EOF

# 创建10.1.3性能对比
cat > "$BASE_DIR/10-案例研究/01-从Java迁移到Kotlin/03-性能对比.md" << 'EOF'
---
title: 性能对比
icon: performance
order: 3
---

# 性能对比

Kotlin与Java在性能方面各有优劣。本文对比Kotlin和Java在不同场景下的性能表现，包括启动时间、内存使用、执行效率、编译时间以及如何优化Kotlin代码以获得与Java相当或更好的性能，帮助您在迁移过程中做出明智的技术决策。
EOF

# 创建10.1.4迁移后的维护
cat > "$BASE_DIR/10-案例研究/01-从Java迁移到Kotlin/04-迁移后的维护.md" << 'EOF'
---
title: 迁移后的维护
icon: maintain
order: 4
---

# 迁移后的维护

成功迁移到Kotlin后，项目维护工作也需要相应调整。本文介绍Kotlin项目的维护最佳实践，包括代码风格统一、团队协作流程、持续集成配置、文档更新以及如何处理混合语言项目的长期维护，确保项目的可持续发展。
EOF

# 创建10.2全栈Kotlin应用开发目录
mkdir -p "$BASE_DIR/10-案例研究/02-全栈Kotlin应用开发"
cat > "$BASE_DIR/10-案例研究/02-全栈Kotlin应用开发/README.md" << 'EOF'
---
title: 全栈Kotlin应用开发
icon: fullstack
order: 2
---

# 全栈Kotlin应用开发

本章节介绍如何使用Kotlin进行全栈应用开发，包括后端(Ktor)、前端(Kotlin/JS)和移动端(Android/iOS)的实现，展示Kotlin作为全栈语言的优势和实践方法，帮助您构建统一技术栈的现代应用。
EOF

# 创建10.2.1后端(Ktor)
cat > "$BASE_DIR/10-案例研究/02-全栈Kotlin应用开发/01-后端-Ktor.md" << 'EOF'
---
title: 后端(Ktor)
icon: backend
order: 1
---

# 后端(Ktor)

Ktor是JetBrains开发的Kotlin原生Web框架，适用于构建微服务和Web应用。本文介绍如何使用Ktor开发后端服务，包括路由配置、认证授权、数据库集成、API设计以及部署策略，帮助您快速构建高效、可扩展的后端服务。
EOF

# 创建10.2.2前端(Kotlin/JS)
cat > "$BASE_DIR/10-案例研究/02-全栈Kotlin应用开发/02-前端-Kotlin-JS.md" << 'EOF'
---
title: 前端(Kotlin/JS)
icon: frontend
order: 2
---

# 前端(Kotlin/JS)

Kotlin/JS允许使用Kotlin开发前端应用，编译为JavaScript运行在浏览器中。本文介绍如何使用Kotlin/JS构建现代Web前端，包括React集成、状态管理、路由配置、样式处理以及与后端服务的通信，展示Kotlin在前端开发中的优势。
EOF

# 创建10.2.3移动端(Android/iOS)
cat > "$BASE_DIR/10-案例研究/02-全栈Kotlin应用开发/03-移动端-Android-iOS.md" << 'EOF'
---
title: 移动端(Android/iOS)
icon: mobile
order: 3
---

# 移动端(Android/iOS)

Kotlin可用于开发Android应用，通过Kotlin多平台还可以共享代码到iOS平台。本文介绍如何使用Kotlin开发移动应用，包括Android原生开发、Kotlin多平台项目设置、共享业务逻辑、平台特定UI实现以及如何实现真正的跨平台移动应用开发。
EOF

mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Kotlin编程指南
icon: kotlin
order: 1
---

# Kotlin编程指南

本知识库系统地整理了Kotlin编程语言的核心概念、语法特性和最佳实践，从基础入门到高级应用，为开发者提供全面的学习资源。无论您是初学者还是有经验的开发人员，都能在这里找到有价值的内容，提升Kotlin编程技能。
EOF

# 创建10.2.4共享业务逻辑
mkdir -p "$BASE_DIR/10-案例研究/02-全栈Kotlin应用开发"
cat > "$BASE_DIR/10-案例研究/02-全栈Kotlin应用开发/04-共享业务逻辑.md" << 'EOF'
---
title: 共享业务逻辑
icon: share
order: 4
---

# 共享业务逻辑

Kotlin多平台项目的核心优势在于能够在不同平台间共享业务逻辑。本文介绍如何设计和实现可在后端、前端和移动端共享的业务逻辑，包括领域模型设计、数据验证、业务规则实现以及如何平衡共享代码和平台特定代码的比例。
EOF

# 创建10.3微服务架构实现目录
mkdir -p "$BASE_DIR/10-案例研究/03-微服务架构实现"
cat > "$BASE_DIR/10-案例研究/03-微服务架构实现/README.md" << 'EOF'
---
title: 微服务架构实现
icon: microservice
order: 3
---

# 微服务架构实现

本章节介绍如何使用Kotlin实现微服务架构，包括服务设计、通信模式、部署策略以及监控与可观测性等内容，帮助您构建可扩展、可维护的微服务系统，充分发挥Kotlin在后端开发中的优势。
EOF

# 创建10.3.1服务设计
cat > "$BASE_DIR/10-案例研究/03-微服务架构实现/01-服务设计.md" << 'EOF'
---
title: 服务设计
icon: design
order: 1
---

# 服务设计

微服务架构的核心是合理的服务设计和边界划分。本文介绍使用Kotlin进行微服务设计的最佳实践，包括领域驱动设计应用、服务边界确定、API设计原则、数据模型设计以及如何利用Kotlin的语言特性简化微服务实现。
EOF

# 创建10.3.2通信模式
cat > "$BASE_DIR/10-案例研究/03-微服务架构实现/02-通信模式.md" << 'EOF'
---
title: 通信模式
icon: communication
order: 2
---

# 通信模式

微服务间的通信是系统设计的关键环节。本文介绍Kotlin微服务中的通信模式，包括同步通信(REST、gRPC)、异步通信(消息队列、事件驱动)、序列化选择(JSON、Protocol Buffers)以及如何处理分布式系统中的通信挑战。
EOF

# 创建10.3.3部署策略
cat > "$BASE_DIR/10-案例研究/03-微服务架构实现/03-部署策略.md" << 'EOF'
---
title: 部署策略
icon: deploy
order: 3
---

# 部署策略

微服务的部署策略直接影响系统的可用性和可维护性。本文介绍Kotlin微服务的部署策略，包括容器化(Docker)、编排工具(Kubernetes)、CI/CD流程、蓝绿部署、金丝雀发布以及如何优化Kotlin应用的构建和部署过程。
EOF

# 创建10.3.4监控与可观测性
cat > "$BASE_DIR/10-案例研究/03-微服务架构实现/04-监控与可观测性.md" << 'EOF'
---
title: 监控与可观测性
icon: monitor
order: 4
---

# 监控与可观测性

监控与可观测性是微服务架构成功运行的关键。本文介绍Kotlin微服务的监控与可观测性实践，包括日志收集、指标监控、分布式追踪、告警设置以及如何使用工具如Prometheus、Grafana、Jaeger等构建完整的可观测性系统。
EOF