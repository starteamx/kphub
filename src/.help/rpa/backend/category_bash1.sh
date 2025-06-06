BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从常用框架到分布式架构，全面覆盖Java后端开发的各个方面。无论你是初学者还是有经验的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建第1章目录及文件
mkdir -p "$BASE_DIR/01-Java基础与进阶"
cat > "$BASE_DIR/01-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: java
order: 1
---

# Java基础与进阶

本章节涵盖了Java编程语言的基础知识和进阶特性，从语法基础到面向对象编程，从集合框架到并发编程，系统地介绍Java核心技术，为后续的框架学习和实际开发打下坚实基础。
EOF

# 创建1.1 Java语言基础目录及文件
mkdir -p "$BASE_DIR/01-Java基础与进阶/01-Java语言基础"
cat > "$BASE_DIR/01-Java基础与进阶/01-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括语法规则、数据类型、运算符、控制流程等核心概念，帮助初学者快速掌握Java编程的基本要素。
EOF

cat > "$BASE_DIR/01-Java基础与进阶/01-Java语言基础/01-Java简介与环境搭建.md" << 'EOF'
---
title: Java简介与环境搭建
icon: java
order: 1
---

# Java简介与环境搭建

## Java语言概述
- Java的起源与发展历程
- Java的特点：跨平台、面向对象、安全性高
- Java的应用领域：企业级应用、Android开发、大数据处理等
- Java版本演进：从JDK 1.0到最新版本的主要变化

## JDK、JRE与JVM
- JDK (Java Development Kit)：开发工具包
- JRE (Java Runtime Environment)：运行环境
- JVM (Java Virtual Machine)：虚拟机原理
- 三者之间的关系与区别

## 开发环境搭建
- JDK的下载与安装
- 环境变量配置：JAVA_HOME、PATH、CLASSPATH
- 验证安装：命令行运行java -version
- 常见问题与解决方案

## 集成开发环境(IDE)
- IntelliJ IDEA介绍与安装
- Eclipse介绍与安装
- VS Code配置Java开发环境
- IDE的基本使用与快捷键
EOF

cat > "$BASE_DIR/01-Java基础与进阶/01-Java语言基础/02-基本语法与数据类型.md" << 'EOF'
---
title: 基本语法与数据类型
icon: code
order: 2
---

# 基本语法与数据类型

## Java程序基本结构
- 类的定义与命名规范
- 主方法(main方法)结构
- 包的概念与导入语句
- 注释的类型与使用

## 基本数据类型
- 整数类型：byte、short、int、long
- 浮点类型：float、double
- 字符类型：char
- 布尔类型：boolean
- 各类型的取值范围与默认值

## 变量与常量
- 变量的声明与初始化
- 变量的命名规则与最佳实践
- 常量(final)的定义与使用
- 类型转换：自动转换与强制转换

## 运算符
- 算术运算符：+, -, *, /, %
- 关系运算符：==, !=, >, <, >=, <=
- 逻辑运算符：&&, ||, !
- 位运算符：&, |, ^, ~, <<, >>, >>>
- 赋值运算符与复合赋值运算符
- 三元运算符：? :
- 运算符优先级
EOF

cat > "$BASE_DIR/01-Java基础与进阶/01-Java语言基础/03-流程控制语句.md" << 'EOF'
---
title: 流程控制语句
icon: code-branch
order: 3
---

# 流程控制语句

## 条件语句
- if语句
- if-else语句
- if-else if-else语句
- 嵌套if语句
- switch-case语句及其注意事项

## 循环语句
- for循环：基本语法与执行流程
- while循环：前测试循环
- do-while循环：后测试循环
- 增强for循环(for-each)：遍历数组和集合
- 循环控制：break与continue语句

## 分支语句
- break语句：跳出循环
- continue语句：跳过当前迭代
- return语句：从方法返回
- 带标签的break和continue

## 实践案例
- 条件语句的常见应用场景
- 循环语句的性能考量
- 嵌套循环与复杂流程控制
- 避免常见的流程控制错误
EOF

cat > "$BASE_DIR/01-Java基础与进阶/01-Java语言基础/04-数组与字符串.md" << 'EOF'
---
title: 数组与字符串
icon: array
order: 4
---

# 数组与字符串

## 数组基础
- 数组的声明与创建
- 数组初始化：静态初始化与动态初始化
- 数组元素的访问与修改
- 数组长度与遍历方式
- 多维数组的定义与使用

## 数组操作
- 数组复制：System.arraycopy()与Arrays.copyOf()
- 数组排序：Arrays.sort()
- 数组查找：线性查找与二分查找
- 数组填充：Arrays.fill()
- 数组比较：Arrays.equals()

## 字符串基础
- String类的特性：不可变性
- 字符串的创建方式
- 字符串常量池
- 字符串比较：==与equals()方法
- 常用字符串方法：length(), charAt(), substring()等

## 字符串操作
- 字符串连接：+运算符与concat()方法
- 字符串查找：indexOf(), lastIndexOf()
- 字符串替换：replace(), replaceAll()
- 字符串分割：split()
- 大小写转换：toUpperCase(), toLowerCase()
- 空白处理：trim(), strip()

## StringBuilder与StringBuffer
- 可变字符序列的概念
- StringBuilder与StringBuffer的区别
- 常用方法：append(), insert(), delete()等
- 性能比较：String vs StringBuilder vs StringBuffer
EOF

cat > "$BASE_DIR/01-Java基础与进阶/01-Java语言基础/05-基本输入输出.md" << 'EOF'
---
title: 基本输入输出
icon: input
order: 5
---

# 基本输入输出

## 控制台输出
- System.out.println()：输出并换行
- System.out.print()：输出不换行
- System.out.printf()：格式化输出
- 格式化输出的占位符：%d, %f, %s等

## 控制台输入
- Scanner类的使用
- 读取不同类型的输入：nextInt(), nextDouble(), nextLine()等
- 输入验证与异常处理
- Scanner的关闭与资源管理

## 文件输入输出基础
- File类的基本使用
- 文件路径表示方法
- 文件的创建、删除与属性获取
- 目录操作：创建目录、列出文件

## 字节流与字符流
- InputStream与OutputStream
- Reader与Writer
- 缓冲流：BufferedInputStream, BufferedReader等
- 数据流：DataInputStream, DataOutputStream
- 对象流：ObjectInputStream, ObjectOutputStream

## Java NIO简介
- Buffer、Channel、Selector的概念
- Path与Files类
- 文件读写的NIO方式
- NIO与传统IO的比较
EOF

BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性.md" << 'EOF'
---
title: Java发展历史与特性
icon: history
order: 1
---

# Java发展历史与特性

## Java语言的诞生与发展

- 1991年，Sun公司的Green项目
- 1995年，Java语言正式发布
- 2009年，Oracle收购Sun公司
- Java各个版本的重要里程碑(Java 1.0到Java 17)

## Java的核心特性

- 面向对象：封装、继承、多态
- 平台无关性：Write Once, Run Anywhere
- 自动内存管理：垃圾回收机制
- 多线程支持
- 丰富的API和生态系统

## Java的技术体系

- Java SE (Standard Edition)
- Java EE (Enterprise Edition)
- Java ME (Micro Edition)
- Jakarta EE

## Java的优势与应用领域

- 企业级应用开发
- Android移动应用开发
- 大数据处理
- 云服务和微服务架构
- 金融、电信等关键业务系统
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/README.md" << 'EOF'
---
title: Java发展历史与特性
icon: history
order: 1
---

# Java发展历史与特性

本节详细介绍Java语言的发展历程、核心特性以及在不同领域的应用，帮助读者全面了解Java语言的背景和优势。
EOF

# 创建1.1.1.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.1-Java发展历史与特性原理篇.md" << 'EOF'
---
title: Java发展历史与特性原理篇
icon: history
order: 1
---

# Java发展历史与特性原理篇

## Java语言的核心原理

- JVM虚拟机原理与字节码执行机制
- Java内存模型与管理机制
- 跨平台实现原理与JIT编译技术
- 类加载机制与双亲委派模型
- 反射机制与动态特性

## Java语言设计哲学

- 简单性与可靠性设计原则
- 面向对象设计思想的贯彻
- 安全性考量与沙箱机制
- 高性能与可伸缩性设计

## Java技术架构演进

- 从单体JDK到模块化系统
- 从传统Java EE到微服务架构
- 从同步编程到响应式编程
- 从命令式到函数式编程范式
EOF

# 创建1.1.1.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.2-Java语言起源与设计初衷.md" << 'EOF'
---
title: Java语言起源与设计初衷
icon: origin
order: 2
---

# Java语言起源与设计初衷

## Java的诞生背景

- Sun公司与Green项目的故事
- James Gosling与团队的贡献
- Oak语言到Java的转变
- 互联网兴起与Java的机遇

## 设计初衷与目标

- 消费电子设备编程语言的需求
- 网络编程与Web应用开发的愿景
- 跨平台运行的核心目标
- 安全可靠的系统构建理念

## 早期Java的定位与挑战

- 嵌入式设备到互联网应用的转变
- 与C++的差异化竞争策略
- 浏览器中的Java Applet技术
- 企业级应用开发市场的开拓
EOF

# 创建1.1.1.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.3-JDK版本演进历程(1.0-21).md" << 'EOF'
---
title: JDK版本演进历程(1.0-21)
icon: versions
order: 3
---

# JDK版本演进历程(1.0-21)

## 早期版本(JDK 1.0-1.4)

- JDK 1.0: 初代Java发布(1996)
- JDK 1.1: 内部类、JavaBeans、JDBC等
- JDK 1.2: Collections框架、JIT编译器
- JDK 1.3: HotSpot VM、JNDI等
- JDK 1.4: 正则表达式、NIO、日志API

## 成熟期版本(Java 5-8)

- Java 5: 泛型、注解、枚举、自动装箱/拆箱
- Java 6: 性能优化、脚本语言支持
- Java 7: Try-with-resources、Diamond操作符
- Java 8: Lambda表达式、Stream API、新日期时间API

## 现代Java版本(Java 9-17)

- Java 9: 模块系统、JShell、集合工厂方法
- Java 10: 局部变量类型推断(var)
- Java 11: HTTP客户端API、String新方法
- Java 14-16: Records、Pattern Matching、Sealed Classes
- Java 17: LTS版本、模式匹配增强

## 最新发展(Java 18-21)

- Java 18-20: 虚拟线程预览、结构化并发
- Java 21: 虚拟线程正式版、记录模式、字符串模板
EOF

# 创建1.1.1.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.4-Java语言特性演变.md" << 'EOF'
---
title: Java语言特性演变
icon: features
order: 4
---

# Java语言特性演变

## 语法特性的演进

- 从冗长到简洁：语法糖的引入历程
- 类型系统的增强：泛型与类型推断
- 面向对象特性的完善：接口默认方法、密封类
- 函数式编程范式的融入：Lambda与方法引用

## 并发编程模型的变革

- 从Thread到Executor框架
- 从synchronized到Lock API
- 从阻塞集合到并发集合
- 从Future到CompletableFuture
- 从线程池到虚拟线程与结构化并发

## 模块化与项目结构演进

- 从单一JAR包到模块系统
- 从传统构建到Maven/Gradle
- 从单体应用到微服务架构
- 从JEE规范到Spring生态

## 性能与优化方向

- JIT编译技术的演进
- GC算法的代际更迭
- 内存管理模型的优化
- AOT编译与GraalVM
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/README.md" << 'EOF'
---
title: Java发展历史与特性
icon: history
order: 1
---

# Java发展历史与特性

本节详细介绍Java语言的发展历程、核心特性以及在不同领域的应用，帮助读者全面了解Java语言的背景和优势。
EOF

# 创建1.1.1.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.5-Java平台架构演进.md" << 'EOF'
---
title: Java平台架构演进
icon: architecture
order: 5
---

# Java平台架构演进

## Java平台的三大版本

- Java SE (Standard Edition)的演进历程
- Java EE (Enterprise Edition)到Jakarta EE的转变
- Java ME (Micro Edition)的发展与应用场景
- Java嵌入式与IoT应用

## JVM架构的演进

- 从经典JVM到HotSpot VM
- 从分代收集到ZGC/Shenandoah
- 从解释执行到JIT编译
- 从单JIT到分层编译
- 从传统VM到GraalVM

## Java生态系统的扩展

- 从Applet到JavaFX
- 从Servlet到Spring生态
- 从EJB到微服务架构
- 从JDBC到ORM框架
- 从传统部署到云原生应用

## Java平台的未来发展方向

- Project Loom与虚拟线程
- Project Valhalla与值类型
- Project Amber与语言特性增强
- Project Panama与本地接口
- Java与AI/ML集成趋势
EOF

# 创建1.1.1.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.6-Java与其他编程语言对比.md" << 'EOF'
---
title: Java与其他编程语言对比
icon: compare
order: 6
---

# Java与其他编程语言对比

## Java vs C/C++

- 内存管理模型对比
- 性能与效率比较
- 开发效率与安全性分析
- 应用场景差异
- JNI与本地代码集成

## Java vs Python/JavaScript

- 静态类型vs动态类型
- 编译执行vs解释执行
- 并发模型对比
- 生态系统与框架比较
- 全栈开发能力对比

## Java vs Go/Rust

- 现代语言特性对比
- 内存管理机制比较
- 并发编程模型分析
- 性能与资源占用
- 微服务与云原生支持

## Java vs Kotlin/Scala

- JVM语言家族特点
- 语法简洁性与表达能力
- 互操作性与迁移成本
- 企业应用中的定位
- 未来发展趋势预测
EOF

# 创建1.1.1.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.2-Java发展历史与特性实战篇.md" << 'EOF'
---
title: Java发展历史与特性实战篇
icon: practice
order: 2
---

# Java发展历史与特性实战篇

## Java各版本特性实战应用

- Java 8 Lambda表达式与Stream API实战
- Java 9+ 模块化系统实践指南
- Java 10+ var类型推断最佳实践
- Java 14+ Records与Pattern Matching应用
- Java 21 虚拟线程实战案例

## Java平台选择与应用场景

- 企业级应用开发技术栈选择
- 微服务架构中的Java应用
- 大数据处理中的Java技术
- Android开发中的Java应用
- 云原生环境中的Java部署

## Java生态系统工具链

- 构建工具选择：Maven vs Gradle
- IDE工具比较：IntelliJ IDEA vs Eclipse vs VSCode
- 测试框架实践：JUnit vs TestNG vs Mockito
- 文档工具应用：JavaDoc vs Swagger
- CI/CD工具链：Jenkins vs GitHub Actions

## Java性能优化实战

- JVM调优实践指南
- GC策略选择与配置
- 内存管理与泄漏排查
- 多线程性能优化技巧
- 代码级性能优化实践
EOF

# 创建1.1.1.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.3-不同JDK版本兼容性处理.md" << 'EOF'
---
title: 不同JDK版本兼容性处理
icon: compatibility
order: 3
---

# 不同JDK版本兼容性处理

## JDK版本升级策略

- LTS版本vs非LTS版本选择指南
- 企业级应用JDK升级路线图
- 渐进式升级vs直接升级方案
- 兼容性测试与风险评估
- 升级后性能对比与优化

## 向前兼容性问题处理

- API废弃与移除的应对策略
- 内部API使用风险与替代方案
- 第三方库兼容性评估
- 模块系统迁移挑战
- 编译时与运行时兼容性区别

## 多JDK版本共存策略

- 多版本构建与部署方案
- JPMS模块版本管理
- 容器化环境中的JDK版本管理
- CI/CD流水线中的多版本测试
- 开发环境与生产环境版本一致性

## 跨版本迁移实战案例

- Java 8到Java 11迁移指南
- Java 11到Java 17迁移实践
- 遗留系统JDK升级策略
- 大型企业应用升级案例分析
- 微服务架构中的渐进式JDK升级
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/README.md" << 'EOF'
---
title: Java发展历史与特性
icon: history
order: 1
---

# Java发展历史与特性

本节详细介绍Java语言的发展历程、核心特性以及在不同领域的应用，帮助读者全面了解Java语言的背景和优势。
EOF

# 创建1.1.1.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.4-Java平台选择策略.md" << 'EOF'
---
title: Java平台选择策略
icon: strategy
order: 4
---

# Java平台选择策略

## Java SE版本选择指南

- LTS版本vs非LTS版本的选择标准
- 开源JDK vs 商业JDK对比
- Oracle JDK vs OpenJDK vs Azul Zulu等实现比较
- 企业级应用的JDK版本策略
- 新项目JDK版本选择决策框架

## Java EE/Jakarta EE平台选择

- Java EE vs Spring生态系统对比
- 传统应用服务器vs轻量级容器
- Jakarta EE实现选择(Payara, WildFly, TomEE等)
- 微服务架构中的Java EE定位
- 云原生环境中的Java EE应用

## 特定领域Java技术选型

- 大数据处理：Hadoop生态vs Spark
- 响应式编程：RxJava vs Project Reactor
- 微服务框架：Spring Boot vs Quarkus vs Micronaut
- 云原生应用：Spring Cloud vs MicroProfile
- 实时系统：Java RT vs 普通Java应用

## 跨平台部署策略

- 容器化部署vs传统部署
- 多云环境中的Java应用部署
- GraalVM原生镜像vs JVM部署
- 资源受限环境中的Java应用优化
- 混合架构中的Java组件集成
EOF

# 创建1.1.1.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.5-企业Java技术栈演进案例.md" << 'EOF'
---
title: 企业Java技术栈演进案例
icon: enterprise
order: 5
---

# 企业Java技术栈演进案例

## 传统企业应用架构演进

- 从单体JSP/Servlet到MVC架构
- 从EJB到Spring Framework
- 从JDBC直接操作到ORM框架
- 从传统部署到DevOps流水线
- 从单体应用到微服务拆分

## 金融行业Java技术栈案例

- 核心银行系统Java技术栈演进
- 交易系统高性能Java实践
- 风控系统实时计算架构
- 金融数据处理与分析平台
- 合规与安全性保障技术

## 互联网企业Java应用案例

- 电商平台技术架构演进
- 社交媒体后端Java技术栈
- 内容平台的Java微服务实践
- 支付系统的Java技术选型
- 高并发场景下的Java优化

## 数字化转型Java技术实践

- 传统企业向云原生迁移路径
- 遗留系统现代化改造策略
- 大数据与AI集成的Java实践
- 全渠道业务支撑平台架构
- 敏捷开发与持续交付实施
EOF

# 创建1.1.1.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.6-Java社区资源利用.md" << 'EOF'
---
title: Java社区资源利用
icon: community
order: 6
---

# Java社区资源利用

## Java官方资源

- JCP(Java Community Process)参与指南
- OpenJDK社区贡献方法
- Oracle Java资源中心使用技巧
- Java规范与JSR查阅指南
- JEPs(JDK Enhancement Proposals)跟踪

## 开源社区资源

- Apache软件基金会Java项目
- Eclipse基金会Java相关资源
- Spring生态系统社区参与
- GitHub上的Java开源项目贡献
- StackOverflow等问答平台高效利用

## Java技术会议与活动

- JavaOne/Oracle Code One大会
- Devoxx全球Java开发者大会
- JVM语言峰会
- SpringOne平台大会
- 区域性Java用户组(JUG)活动

## 学习与职业发展资源

- Java认证体系与备考资源
- 优质Java技术博客与公众号
- Java相关书籍与在线课程推荐
- Java开发者职业发展路径
- Java技术专家社交网络建立
EOF

# 创建1.1.1.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.1-Java发展历史与特性/1.1.1.7-Java技术选型决策方法.md" << 'EOF'
---
title: Java技术选型决策方法
icon: decision
order: 7
---

# Java技术选型决策方法

## 技术选型评估框架

- 业务需求与技术匹配度分析
- 性能与可伸缩性评估方法
- 开发效率与维护成本考量
- 社区活跃度与长期支持评估
- 安全性与合规性评价标准

## 框架选型决策流程

- 需求分析与技术调研阶段
- 概念验证(POC)设计与实施
- 多方案对比与评分卡方法
- 团队技能与学习曲线考量
- 最终决策与风险管理

## 实用技术选型工具

- 技术雷达(Technology Radar)构建
- 决策矩阵(Decision Matrix)应用
- SWOT分析在技术选型中的应用
- 专家评审与Delphi方法
- A/B测试在技术选型中的应用

## 常见技术选型案例分析

- Web框架选型：Spring MVC vs JSF vs JAX-RS
- ORM框架选择：Hibernate vs MyBatis vs JOOQ
- 微服务框架：Spring Boot vs Quarkus vs Helidon
- 消息中间件：Kafka vs RabbitMQ vs ActiveMQ
- 缓存技术：Redis vs Hazelcast vs Ehcache
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/README.md" << 'EOF'
---
title: JDK、JRE与JVM
icon: java
order: 2
---

# JDK、JRE与JVM

本节详细介绍Java平台的三大核心组件：JDK、JRE和JVM，帮助读者理解它们之间的关系以及各自的作用，为深入学习Java技术打下基础。
EOF

# 创建1.1.2.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.1-JDK、JRE与JVM原理篇.md" << 'EOF'
---
title: JDK、JRE与JVM原理篇
icon: principle
order: 1
---

# JDK、JRE与JVM原理篇

## JDK(Java Development Kit)核心组成

- 开发工具：javac、java、jar、javadoc等
- JRE：Java运行环境的完整实现
- 类库：Java API的标准实现
- 调试工具：jdb、jconsole、jvisualvm等
- 性能分析工具：jstat、jmap、jstack等

## JRE(Java Runtime Environment)内部结构

- JVM：Java虚拟机实现
- 类库：Java SE API的子集
- 支持文件与配置信息
- 部署技术与安全组件
- 国际化与本地化支持

## JVM(Java Virtual Machine)架构详解

- 类加载子系统：类的加载、链接与初始化
- 运行时数据区：方法区、堆、栈、程序计数器等
- 执行引擎：解释器、JIT编译器、垃圾回收器
- 本地方法接口：与本地库交互的桥梁
- 内存模型与线程实现

## 字节码与执行原理

- Java源码到字节码的编译过程
- 字节码指令集与格式规范
- 字节码验证与安全机制
- 解释执行vs即时编译
- 热点代码识别与优化策略
EOF

# 创建1.1.2.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.2-Java平台整体架构.md" << 'EOF'
---
title: Java平台整体架构
icon: architecture
order: 2
---

# Java平台整体架构

## Java平台分层结构

- 硬件与操作系统层
- JVM层：不同操作系统的JVM实现
- 类库层：Java API与扩展库
- 应用层：Java应用程序
- 工具链层：开发、调试与部署工具

## Java平台的跨平台实现机制

- "一次编写，到处运行"的技术原理
- 不同操作系统上的JVM适配
- 本地方法调用与平台相关代码
- 字节码的平台无关性保证
- 跨平台UI实现机制

## Java平台的安全架构

- 类加载器安全机制
- 字节码验证器的作用
- 安全管理器与访问控制
- 密码学API与安全通信
- 沙箱模型与权限控制

## Java平台的性能优化机制

- JIT编译技术与实现
- 自适应优化与分层编译
- 内联缓存与方法内联
- 逃逸分析与栈上分配
- 并行与并发垃圾回收算法
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/README.md" << 'EOF'
---
title: JDK、JRE与JVM
icon: java
order: 2
---

# JDK、JRE与JVM

本节详细介绍Java平台的三大核心组件：JDK、JRE和JVM，帮助读者理解它们之间的关系以及各自的作用，为深入学习Java技术打下基础。
EOF

# 创建1.1.2.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.3-JDK、JRE、JVM关系与区别.md" << 'EOF'
---
title: JDK、JRE、JVM关系与区别
icon: compare
order: 3
---

# JDK、JRE、JVM关系与区别

## 三者的定义与职责

- JDK：Java开发工具包，面向开发者的完整工具集
- JRE：Java运行环境，面向用户的运行时环境
- JVM：Java虚拟机，执行字节码的核心引擎
- 包含关系：JDK包含JRE，JRE包含JVM

## 组件构成对比

- JDK组件：编译器、调试器、文档工具、JRE等
- JRE组件：类库、JVM、支持文件等
- JVM组件：类加载器、执行引擎、运行时数据区等
- 各组件的功能边界与交互方式

## 使用场景差异

- 开发环境vs生产环境的选择
- 不同角色的需求差异：开发者、测试者、最终用户
- 资源占用与性能考量
- 安装包大小与部署策略

## 版本选择与兼容性

- JDK版本与JRE版本的对应关系
- 向前兼容与向后兼容性问题
- 不同厂商实现的差异
- 升级策略与最佳实践
EOF

# 创建1.1.2.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.4-JVM规范与实现差异.md" << 'EOF'
---
title: JVM规范与实现差异
icon: specification
order: 4
---

# JVM规范与实现差异

## JVM规范概述

- Java虚拟机规范的历史与演进
- 规范定义的核心内容：指令集、类文件格式等
- 规范的版本与对应的Java版本
- 规范的开放性与扩展机制

## 主流JVM实现对比

- HotSpot VM：Oracle官方实现
- OpenJ9：Eclipse基金会维护的开源实现
- GraalVM：支持多语言的高性能VM
- Android Runtime (ART)：Android平台专用
- 其他实现：JRockit、IBM J9等历史实现

## 实现差异关键点

- 内存管理与垃圾回收算法
- JIT编译策略与优化技术
- 线程模型与并发处理
- 类加载机制与安全模型
- 性能特性与资源消耗

## 选择合适JVM的考量因素

- 应用场景与性能需求
- 内存占用与启动时间要求
- 平台兼容性与部署环境
- 企业支持与社区活跃度
- 特殊功能需求（如本地镜像编译）
EOF

# 创建1.1.2.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.5-跨平台原理与字节码技术.md" << 'EOF'
---
title: 跨平台原理与字节码技术
icon: platform
order: 5
---

# 跨平台原理与字节码技术

## Java跨平台实现原理

- "Write Once, Run Anywhere"的技术基础
- 源代码、字节码与机器码的转换过程
- JVM作为中间层的抽象作用
- 平台特定实现与本地方法调用
- 跨平台UI实现机制

## 字节码技术深度解析

- 字节码指令集与格式规范
- 常量池与符号引用
- 类文件结构与元数据
- 字节码增强与运行时修改
- 字节码工具：ASM、Javassist、ByteBuddy

## 字节码执行模式

- 解释执行模式的工作原理
- 即时编译(JIT)的触发与优化
- 混合模式下的执行策略
- 提前编译(AOT)与原生镜像
- 性能对比与适用场景

## 字节码技术应用场景

- 动态代理与AOP实现
- ORM框架的对象映射
- 热部署与类重定义
- 性能监控与分析工具
- 代码覆盖率与测试工具
EOF

# 创建1.1.2.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.6-Java安全沙箱模型.md" << 'EOF'
---
title: Java安全沙箱模型
icon: security
order: 6
---

# Java安全沙箱模型

## 安全沙箱模型概述

- Java安全模型的设计初衷
- 沙箱模型的演进历史
- 从Applet沙箱到现代安全架构
- 安全沙箱的核心组件与层次
- 防御深度与多重保护机制

## 类加载器安全机制

- 双亲委派模型与安全隔离
- 自定义类加载器的安全考量
- 命名空间隔离与类型安全
- 受信任与不受信任代码的隔离
- 模块系统(JPMS)中的安全增强

## 字节码验证与安全检查

- 字节码验证器的工作原理
- 验证过程的四个阶段
- 类型安全与内存安全保障
- 结构性验证与语义验证
- 验证失败的处理机制

## 安全管理器与权限控制

- SecurityManager的角色与职责
- 权限类型与访问控制列表
- 代码签名与证书验证
- 策略文件配置与管理
- 运行时权限检查机制

## 现代Java应用的安全实践

- 企业应用中的安全沙箱配置
- 容器环境中的Java安全考量
- 第三方库的安全风险管理
- 安全沙箱的性能影响与优化
- 安全漏洞防范与最佳实践
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/README.md" << 'EOF'
---
title: JDK、JRE与JVM
icon: java
order: 2
---

# JDK、JRE与JVM

本节详细介绍Java平台的三大核心组件：JDK、JRE和JVM，帮助读者理解它们之间的关系以及各自的作用，为深入学习Java技术打下基础。
EOF

# 创建1.1.2.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.2-JDK、JRE与JVM实战篇.md" << 'EOF'
---
title: JDK、JRE与JVM实战篇
icon: practice
order: 2
---

# JDK、JRE与JVM实战篇

## JDK工具实战应用

- javac编译器使用技巧与优化选项
- java命令行参数详解与最佳实践
- jar工具打包与签名操作
- javadoc文档生成与定制化
- jlink自定义运行时镜像创建

## JVM监控与调优实践

- jps、jstat进程监控与统计
- jmap、jhat内存分析与堆转储
- jstack线程分析与死锁检测
- jconsole、jvisualvm图形化监控工具
- JFR(Java Flight Recorder)性能记录与分析

## 常见JVM参数配置

- 内存相关参数配置与优化
- GC相关参数选择与调优
- 线程相关参数设置
- JIT编译相关参数优化
- 性能分析与调试参数

## 实际问题诊断与解决

- 内存泄漏排查与解决方案
- CPU使用率过高问题分析
- 应用启动慢问题优化
- OOM异常分析与预防
- 性能瓶颈识别与突破
EOF

# 创建1.1.2.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.3-JDK安装与环境配置.md" << 'EOF'
---
title: JDK安装与环境配置
icon: setup
order: 3
---

# JDK安装与环境配置

## 不同平台JDK安装指南

- Windows平台JDK安装与配置
- macOS平台JDK安装与配置
- Linux/Unix平台JDK安装与配置
- 容器环境中的JDK配置
- 云平台JDK环境准备

## 环境变量配置详解

- JAVA_HOME环境变量设置
- PATH环境变量配置
- CLASSPATH环境变量设置与最佳实践
- 其他JDK相关环境变量说明
- 环境变量配置验证与测试

## JDK发行版选择指南

- Oracle JDK vs OpenJDK对比
- AdoptOpenJDK/Eclipse Temurin选择
- Azul Zulu、GraalVM等其他发行版介绍
- 企业级应用JDK选型考量因素
- 长期支持(LTS)版本vs最新特性版本

## 开发环境集成配置

- IntelliJ IDEA JDK配置
- Eclipse JDK配置
- VS Code Java环境设置
- Maven/Gradle与JDK版本关联
- 开发团队JDK版本统一策略
EOF

# 创建1.1.2.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.4-多JDK版本管理技巧.md" << 'EOF'
---
title: 多JDK版本管理技巧
icon: manage
order: 4
---

# 多JDK版本管理技巧

## 多JDK版本共存策略

- 系统级多JDK安装与切换
- 项目级JDK版本隔离
- 开发环境与生产环境JDK一致性保障
- 多JDK版本测试与兼容性验证
- 团队协作中的JDK版本管理

## JDK版本管理工具

- Windows平台：使用环境变量与批处理脚本
- macOS/Linux：SDKMAN!工具使用指南
- jEnv工具配置与使用
- Jabba多JDK版本管理器
- Docker容器化JDK环境管理

## 构建工具中的JDK版本控制

- Maven中配置与切换JDK版本
- Gradle中管理多JDK版本
- 持续集成系统中的JDK版本策略
- 多模块项目的JDK版本一致性
- 跨JDK版本构建的兼容性处理

## 版本升级与迁移最佳实践

- JDK版本升级评估与计划
- 渐进式JDK版本迁移策略
- 兼容性测试与风险管理
- 性能对比与回归测试
- 生产环境JDK升级流程
EOF

# 创建1.1.2.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.5-Java程序打包与部署.md" << 'EOF'
---
title: Java程序打包与部署
icon: deploy
order: 5
---

# Java程序打包与部署

## Java应用打包方式

- JAR文件打包与结构
- WAR文件打包与Web应用部署
- EAR文件与企业级应用打包
- 可执行JAR创建与配置
- 自定义JRE与应用打包

## 打包工具与技术

- Maven打包配置与插件
- Gradle构建与打包
- Ant传统打包方式
- jpackage现代应用打包
- 第三方打包工具对比

## 现代Java应用部署方式

- 传统应用服务器部署
- 独立应用部署与服务化
- Docker容器化部署
- Kubernetes编排与部署
- 云平台PaaS服务部署

## 部署自动化与最佳实践

- CI/CD流水线中的Java应用部署
- 蓝绿部署与金丝雀发布
- 配置外部化与环境隔离
- 应用健康检查与监控
- 灾备与高可用部署策略
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/README.md" << 'EOF'
---
title: JDK、JRE与JVM
icon: java
order: 2
---

# JDK、JRE与JVM

本节详细介绍Java平台的三大核心组件：JDK、JRE和JVM，帮助读者理解它们之间的关系以及各自的作用，为深入学习Java技术打下基础。
EOF

# 创建1.1.2.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.6-字节码分析与优化.md" << 'EOF'
---
title: 字节码分析与优化
icon: optimize
order: 6
---

# 字节码分析与优化

## 字节码基础知识

- Java字节码格式与结构
- 常见字节码指令解析
- 字节码与源代码的对应关系
- 类文件结构与常量池
- 字节码版本与JDK版本对应关系

## 字节码分析工具

- javap命令行工具使用详解
- ASM框架字节码分析
- ByteBuddy字节码操作库
- Javassist字节码处理工具
- JD-GUI/CFR等反编译工具

## 字节码优化技术

- 方法内联与代码优化
- 循环优化与展开
- 逃逸分析与栈上分配
- 死代码消除与常量折叠
- 自动装箱/拆箱优化

## 字节码增强应用

- AOP实现原理与字节码织入
- 动态代理的字节码实现
- 热部署与类重定义技术
- 性能监控的字节码插桩
- 代码覆盖率工具的实现原理
EOF

# 创建1.1.2.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.2-JDK、JRE与JVM/1.1.2.7-常见JDK工具使用.md" << 'EOF'
---
title: 常见JDK工具使用
icon: tools
order: 7
---

# 常见JDK工具使用

## 开发工具

- javac：编译器使用技巧与高级选项
- java：运行时参数与调优选项
- javadoc：文档生成与定制化
- jar：打包工具与manifest配置
- jlink：自定义运行时创建

## 诊断与监控工具

- jps：Java进程状态工具
- jstat：JVM统计监控工具
- jinfo：Java配置信息工具
- jmap：Java内存映射工具
- jstack：Java堆栈跟踪工具

## 可视化分析工具

- jconsole：JVM监控与管理控制台
- jvisualvm：可视化监控与分析工具
- JMC (Java Mission Control)：性能分析工具
- Flight Recorder：性能数据记录器
- VisualGC：垃圾收集可视化插件

## 安全与部署工具

- keytool：密钥和证书管理工具
- jarsigner：JAR签名工具
- jdeps：Java类依赖分析器
- jpackage：应用程序打包工具
- jshell：Java交互式编程环境
EOF

# 创建1.1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/README.md" << 'EOF'
---
title: 基本数据类型与包装类
icon: data
order: 3
---

# 基本数据类型与包装类

本节详细介绍Java中的基本数据类型及其对应的包装类，包括它们的特性、使用方法以及相互转换的机制，帮助读者掌握Java中数据类型的基础知识。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/README.md" << 'EOF'
---
title: 基本数据类型与包装类
icon: data
order: 3
---

# 基本数据类型与包装类

本节详细介绍Java中的基本数据类型及其对应的包装类，包括它们的特性、使用方法以及相互转换的机制，帮助读者掌握Java中数据类型的基础知识。
EOF

# 创建1.1.3.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.1-基本数据类型与包装类原理篇.md" << 'EOF'
---
title: 基本数据类型与包装类原理篇
icon: principle
order: 1
---

# 基本数据类型与包装类原理篇

## Java基本数据类型概述

- 整型：byte、short、int、long的取值范围与存储方式
- 浮点型：float、double的IEEE 754表示法与精度特性
- 字符型：char的Unicode编码与表示范围
- 布尔型：boolean的内部表示与存储特点
- 基本类型的默认值与初始化机制

## 包装类设计原理

- 包装类的继承体系与类层次结构
- 包装类的不可变性设计与线程安全性
- Number抽象类与具体包装类的关系
- 包装类的缓存机制与性能优化
- 包装类与基本类型的等值比较机制

## 类型转换机制

- 基本类型之间的隐式转换与显式转换
- 基本类型与包装类之间的转换原理
- 数值类型与字符串之间的转换实现
- 数值溢出与精度丢失问题
- 类型转换中的常见陷阱与最佳实践

## 包装类高级特性

- 包装类的常用方法与工具函数
- 包装类的位操作与进制转换
- 数值比较与大小判断的正确方式
- 包装类在集合框架中的应用
- Java 5后包装类的新特性与改进
EOF

# 创建1.1.3.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.2-Java类型系统设计.md" << 'EOF'
---
title: Java类型系统设计
icon: design
order: 2
---

# Java类型系统设计

## Java类型系统概述

- 静态类型与强类型特性
- 值类型与引用类型的区别
- 原始类型与对象类型的设计考量
- 类型安全与类型检查机制
- Java类型系统的演进历史

## 基本类型的设计原则

- 为什么Java需要基本类型
- 基本类型的性能优势与内存效率
- 基本类型的大小与平台无关性
- 基本类型与JVM指令集的关系
- 与其他语言类型系统的对比

## 包装类的设计模式

- 包装器模式(Wrapper Pattern)在Java中的应用
- 不可变对象设计与线程安全
- 享元模式(Flyweight Pattern)在包装类中的应用
- 工厂方法在包装类中的实现
- 包装类API设计的一致性与规范

## 类型系统的未来发展

- Project Valhalla与值类型(Value Types)
- 原始类型专门化(Primitive Specialization)
- 泛型与基本类型的统一
- 类型推断的增强
- 模式匹配与类型系统的交互
EOF

# 创建1.1.3.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.3-基本数据类型内存模型.md" << 'EOF'
---
title: 基本数据类型内存模型
icon: memory
order: 3
---

# 基本数据类型内存模型

## JVM内存中的基本类型

- 基本类型在栈内存中的分配方式
- 基本类型的对齐与填充规则
- 不同基本类型的内存占用大小
- 基本类型数组的内存布局
- 基本类型在方法参数传递中的内存行为

## 包装类的内存模型

- 包装类对象在堆内存中的结构
- 包装类对象头与实例数据
- 包装类的内存占用分析
- 包装类数组与基本类型数组的内存对比
- 包装类对象的生命周期与垃圾回收

## 内存优化策略

- 基本类型vs包装类的选择原则
- 大量数据处理中的内存优化技巧
- 避免不必要的装箱拆箱操作
- 利用缓存池减少对象创建
- 基本类型数组的高效使用

## 内存模型与并发

- 基本类型的原子性保证
- volatile关键字对基本类型的影响
- 基本类型与线程本地存储
- CAS操作与基本类型更新
- 基本类型在并发集合中的应用
EOF

# 创建1.1.3.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.4-自动装箱与拆箱原理.md" << 'EOF'
---
title: 自动装箱与拆箱原理
icon: convert
order: 4
---

# 自动装箱与拆箱原理

## 自动装箱拆箱基础

- 自动装箱与拆箱的定义与引入背景
- Java编译器中的自动装箱拆箱实现
- 装箱操作的底层实现(valueOf方法)
- 拆箱操作的底层实现(xxxValue方法)
- 自动装箱拆箱的适用场景与限制

## 字节码层面分析

- 自动装箱拆箱的字节码指令
- 编译前后代码的对比分析
- JIT编译器对装箱拆箱的优化
- 装箱拆箱操作的性能开销
- 频繁装箱拆箱的性能问题定位

## 缓存机制详解

- Integer缓存池(-128到127)的实现
- Boolean、Byte、Short、Character的缓存机制
- Long缓存的配置与使用
- 缓存池的初始化时机与方式
- 自定义缓存范围的配置方法

## 常见陷阱与最佳实践

- ==与equals在装箱拆箱中的区别
- 包装类型空指针异常的防范
- 泛型与装箱拆箱的交互
- 性能敏感场景中的装箱拆箱优化
- 集合框架中的装箱拆箱处理
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/README.md" << 'EOF'
---
title: 基本数据类型与包装类
icon: data
order: 3
---

# 基本数据类型与包装类

本节详细介绍Java中的基本数据类型及其对应的包装类，包括它们的特性、使用方法以及相互转换的机制，帮助读者掌握Java中数据类型的基础知识。
EOF

# 创建1.1.3.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.5-数值精度与溢出处理机制.md" << 'EOF'
---
title: 数值精度与溢出处理机制
icon: precision
order: 5
---

# 数值精度与溢出处理机制

## 整型溢出问题

- 整型数据范围与溢出现象
- 有符号整数的溢出特性与环绕效应
- 溢出检测方法与安全计算
- Math类中的溢出安全方法
- Java 8引入的Math.addExact等精确计算方法

## 浮点数精度问题

- IEEE 754标准与浮点数表示
- 浮点数精度限制与舍入误差
- 浮点数比较的正确方式
- 特殊值：NaN、Infinity的处理
- 避免浮点数精度问题的策略

## BigInteger与BigDecimal

- 大整数计算与BigInteger类
- 高精度小数计算与BigDecimal类
- 舍入模式与精度控制
- 性能考量与使用场景
- 与基本数值类型的转换

## 数值计算安全实践

- 金融计算中的精度保障
- 科学计算中的数值稳定性
- 溢出安全的递增与递减操作
- 大数据量计算的精度控制
- 数值边界条件的测试与验证
EOF

# 创建1.1.3.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.6-包装类缓存机制.md" << 'EOF'
---
title: 包装类缓存机制
icon: cache
order: 6
---

# 包装类缓存机制

## 整型包装类缓存

- Integer缓存池的实现原理
- Integer.valueOf()与缓存的关系
- 默认缓存范围：-128到127
- 自定义缓存上限的JVM参数
- 缓存初始化时机与过程

## 其他包装类的缓存

- Boolean缓存：TRUE和FALSE常量
- Byte缓存：全部256个值
- Short缓存：-128到127
- Character缓存：0到127的ASCII字符
- Long缓存：-128到127
- Float与Double无缓存机制

## 缓存机制的性能影响

- 缓存对象复用与内存优化
- 自动装箱场景下的缓存利用
- 缓存边界值的性能陷阱
- 大量数值操作中的缓存效果
- 缓存与对象标识的关系

## 缓存使用的最佳实践

- 合理利用缓存提升性能
- 避免缓存边界导致的问题
- 缓存与对象相等性判断
- 缓存在并发环境中的安全性
- 缓存机制在框架中的应用
EOF

# 创建1.1.3.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.2-基本数据类型与包装类实战篇.md" << 'EOF'
---
title: 基本数据类型与包装类实战篇
icon: practice
order: 2
---

# 基本数据类型与包装类实战篇

## 基本类型的高效使用

- 基本类型选择的性能考量
- 数组与集合中的基本类型应用
- 基本类型参数传递的最佳实践
- 位运算技巧与性能优化
- 基本类型在并发编程中的应用

## 包装类的实用技巧

- 包装类工具方法的高效应用
- 字符串与数值转换的安全处理
- 包装类在集合框架中的使用
- 包装类的比较与排序
- 包装类与泛型的配合使用

## 常见问题与解决方案

- null值处理与防御性编程
- 自动装箱拆箱的性能优化
- 数值溢出的检测与处理
- 浮点数比较的正确方式
- 包装类与基本类型混合使用的陷阱

## 实际案例分析

- 金融系统中的精确计算实现
- 大数据处理中的数值优化
- 游戏开发中的高性能数值计算
- Web应用中的数据转换与验证
- 科学计算中的精度控制方案
EOF

# 创建1.1.3.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.3-数值计算精度问题处理.md" << 'EOF'
---
title: 数值计算精度问题处理
icon: calculate
order: 3
---

# 数值计算精度问题处理

## 浮点数精度问题分析

- 0.1 + 0.2 != 0.3问题解析
- 浮点数二进制表示与精度损失
- 舍入误差的累积效应
- 浮点数比较的epsilon方法
- 浮点数格式化与显示控制

## 金融计算精度保障

- BigDecimal在金融计算中的应用
- 货币计算的精确表示方法
- 四舍五入与其他舍入模式的选择
- 利率与复利计算的精度控制
- 金融应用中的数值验证技术

## 科学计算中的精度控制

- 数值稳定性与条件数
- 误差分析与传播
- 数值算法的精度优化
- 高精度计算库的使用
- 验证与测试数值计算结果

## 实用解决方案

- 定点数计算的实现方式
- 自定义数值类型的设计
- 精度控制的设计模式
- 第三方高精度计算库对比
- 测试驱动开发在精度问题中的应用
EOF

BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/README.md" << 'EOF'
---
title: 基本数据类型与包装类
icon: data
order: 3
---

# 基本数据类型与包装类

本节详细介绍Java中的基本数据类型及其对应的包装类，包括它们的特性、使用方法以及相互转换的机制，帮助读者掌握Java中数据类型的基础知识。
EOF

# 创建1.1.3.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.4-高性能数值处理技巧.md" << 'EOF'
---
title: 高性能数值处理技巧
icon: speed
order: 4
---

# 高性能数值处理技巧

## 基本类型优化策略

- 合理选择数值类型与存储空间
- 避免不必要的类型转换与装箱拆箱
- 基本类型数组vs包装类型数组性能对比
- 局部变量类型推断(var)的性能影响
- 原始类型特化与性能优化

## 位运算高效应用

- 位运算基础与性能优势
- 位掩码技术与标志位处理
- 移位操作代替乘除法
- 位运算在权限系统中的应用
- 位图(Bitmap)索引与内存优化

## JVM数值计算优化

- JIT编译器对数值计算的优化
- 循环展开与向量化计算
- 数学函数的快速实现
- 逃逸分析与栈上分配
- JMH基准测试数值性能

## 并行数值处理

- 并行流处理大规模数值数据
- Fork/Join框架与数值计算
- 原子类与高并发数值更新
- SIMD指令与向量计算
- GPU加速数值计算的Java方案
EOF

# 创建1.1.3.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.5-基本类型与包装类选择策略.md" << 'EOF'
---
title: 基本类型与包装类选择策略
icon: strategy
order: 5
---

# 基本类型与包装类选择策略

## 选择依据与原则

- 性能敏感度评估与选择标准
- 内存占用与对象开销考量
- API设计中的类型选择原则
- 可读性与代码简洁性平衡
- 团队编码规范与一致性

## 应用场景分析

- 集合框架中的包装类应用
- 泛型编程中的类型选择
- 多线程环境下的类型安全
- 序列化与网络传输场景
- 数据库交互与ORM映射

## 性能对比与测试

- 基本类型vs包装类的性能基准测试
- 大规模数据处理的类型选择
- 频繁操作场景的性能优化
- 内存占用分析与监控
- 混合使用策略与性能平衡

## 最佳实践指南

- 企业级应用的类型选择策略
- 微服务架构中的数据类型设计
- 高并发系统的数值处理模式
- 大数据处理的类型优化方案
- 移动应用的资源受限环境考量
EOF

# 创建1.1.3.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.6-常见数值处理陷阱.md" << 'EOF'
---
title: 常见数值处理陷阱
icon: warning
order: 6
---

# 常见数值处理陷阱

## 相等性比较问题

- ==与equals在包装类中的区别
- 缓存池边界值的相等性陷阱
- NaN的特殊比较行为
- 浮点数相等比较的正确方式
- 包装类型null值的安全比较

## 数值溢出与精度丢失

- 整型溢出的隐蔽问题
- 浮点运算中的精度损失
- 大数值计算的溢出风险
- 货币计算的精度陷阱
- 溢出检测与安全计算方法

## 类型转换陷阱

- 隐式类型转换的意外结果
- 窄化转换(Narrowing Conversion)的数据丢失
- 字符串解析的异常处理
- 进制转换中的常见错误
- 国际化环境中的数值格式问题

## 并发环境陷阱

- 包装类的非原子性操作风险
- 可变数值的线程安全问题
- 缓存共享导致的并发问题
- 原子类的误用与性能陷阱
- 线程本地变量的正确使用
EOF

# 创建1.1.3.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.3-基本数据类型与包装类/1.1.3.7-大数据量数值处理优化.md" << 'EOF'
---
title: 大数据量数值处理优化
icon: bigdata
order: 7
---

# 大数据量数值处理优化

## 内存优化策略

- 基本类型数组vs对象数组的内存效率
- 压缩数值表示与位压缩技术
- 稀疏数据结构的高效表示
- 内存映射文件处理大规模数值
- 堆外内存与DirectByteBuffer应用

## 批处理与流式处理

- 数据分批处理的设计模式
- Stream API的惰性求值与并行处理
- 生产者-消费者模式处理大数据量
- 分块处理与合并结果策略
- 增量计算与中间结果缓存

## 并行计算框架应用

- Fork/Join框架处理大规模数值计算
- 并行流与自定义Spliterator
- ExecutorService与任务分解
- 并行算法设计与负载均衡
- 分布式计算框架集成(Spark, Flink等)

## 性能监控与调优

- JVM内存使用监控与分析
- GC行为对数值处理的影响
- 性能热点识别与优化
- 数据局部性与缓存友好设计
- 实时性能监控与自适应优化
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/README.md" << 'EOF'
---
title: 面向对象编程基础
icon: object
order: 4
---

# 面向对象编程基础

本节详细介绍Java面向对象编程的基础概念和核心特性，包括类与对象、封装、继承、多态等内容，帮助读者建立面向对象的思维方式，为进一步学习Java高级特性打下基础。
EOF

# 创建1.1.4.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.1-面向对象编程基础原理篇.md" << 'EOF'
---
title: 面向对象编程基础原理篇
icon: principle
order: 1
---

# 面向对象编程基础原理篇

## 面向对象编程概述

- 面向对象编程的核心思想与优势
- 面向过程vs面向对象的编程范式对比
- 面向对象设计的基本原则(SOLID)
- Java作为面向对象语言的特点
- 面向对象分析与设计方法论

## 类与对象基础概念

- 类的定义与结构(属性、方法、构造器)
- 对象的创建、使用与销毁生命周期
- 引用变量与对象实例的关系
- 类成员vs实例成员的区别
- 静态成员与非静态成员的作用域

## 类的设计与实现

- 类的访问修饰符与可见性控制
- 构造方法的重载与链式调用
- 方法的定义、重载与参数传递
- this关键字的用法与作用
- 静态初始化块与实例初始化块

## 对象间关系模型

- 关联关系(Association)的实现
- 聚合关系(Aggregation)与组合关系(Composition)
- 依赖关系(Dependency)的表示
- 泛化关系(Generalization)与继承
- UML类图与Java代码的映射关系
EOF

# 创建1.1.4.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.2-面向对象三大特性详解.md" << 'EOF'
---
title: 面向对象三大特性详解
icon: features
order: 2
---

# 面向对象三大特性详解

## 封装(Encapsulation)

- 封装的概念与意义
- 访问修饰符(public, protected, default, private)
- 属性封装与getter/setter方法
- 包(package)在封装中的作用
- 封装的最佳实践与设计模式

## 继承(Inheritance)

- 继承的概念与语法
- 单继承与多层继承
- 方法重写(Override)与super关键字
- 构造方法的继承与调用顺序
- final关键字与继承限制

## 多态(Polymorphism)

- 多态的概念与实现机制
- 向上转型与向下转型
- 动态绑定与方法调用解析
- 抽象类与接口在多态中的应用
- 多态的实际应用场景与案例

## 三大特性的协同应用

- 三大特性在系统设计中的配合使用
- 面向接口编程与依赖倒置原则
- 组合优于继承的设计思想
- 设计模式中的三大特性应用
- 实际项目中的最佳实践案例
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/README.md" << 'EOF'
---
title: 面向对象编程基础
icon: object
order: 4
---

# 面向对象编程基础

本节详细介绍Java面向对象编程的基础概念和核心特性，包括类与对象、封装、继承、多态等内容，帮助读者建立面向对象的思维方式，为进一步学习Java高级特性打下基础。
EOF

# 创建1.1.4.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.3-类与对象内存模型.md" << 'EOF'
---
title: 类与对象内存模型
icon: memory
order: 3
---

# 类与对象内存模型

## JVM内存区域与对象分配

- 方法区(Method Area)与类信息存储
- 堆(Heap)中的对象实例分配
- 栈(Stack)中的引用变量存储
- 对象引用与实际对象的关系
- 不同JDK版本的内存模型变化

## 对象内存结构

- 对象头(Header)：Mark Word与类型指针
- 实例数据(Instance Data)的内存布局
- 对齐填充(Padding)与内存对齐
- 引用类型与基本类型的内存占用
- 对象大小计算与内存分析工具

## 类的内存表示

- 类元数据在方法区的存储结构
- 静态字段与实例字段的内存分配
- 方法表与虚方法表的实现
- 常量池与符号引用
- 类加载对内存的影响

## 内存优化与管理

- 对象内存布局优化技术
- 逃逸分析与栈上分配
- 对象池与享元模式的内存优化
- 内存泄漏的常见原因与排查
- JVM参数对对象内存的影响
EOF

# 创建1.1.4.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.4-对象创建与初始化过程.md" << 'EOF'
---
title: 对象创建与初始化过程
icon: create
order: 4
---

# 对象创建与初始化过程

## 对象创建的完整流程

- 类加载检查与准备
- 分配内存空间的方式与策略
- 内存空间初始化（零值）
- 设置对象头信息
- 执行构造方法的初始化

## 构造器与初始化块

- 静态初始化块的执行时机与顺序
- 实例初始化块的执行时机与顺序
- 构造方法的调用链与执行顺序
- 默认构造器的生成规则
- this()与super()构造器调用机制

## 继承层次中的初始化

- 父类与子类的初始化顺序
- 静态成员的初始化时机
- 实例成员的初始化过程
- 构造方法链中的参数传递
- 初始化过程中的异常处理

## 特殊初始化场景

- 反射创建对象的初始化过程
- 克隆(clone)对象的初始化特点
- 序列化与反序列化中的初始化
- 匿名内部类的初始化机制
- 懒加载与延迟初始化模式
EOF

# 创建1.1.4.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.5-继承机制与方法调用.md" << 'EOF'
---
title: 继承机制与方法调用
icon: inherit
order: 5
---

# 继承机制与方法调用

## Java继承模型

- 单继承与多层继承的实现
- 继承关系的内存表示
- 子类对父类成员的访问规则
- 继承中的可见性与访问控制
- 继承的限制与final关键字

## 方法重写与重载

- 方法重写(Override)的规则与限制
- 方法重载(Overload)的解析机制
- @Override注解的作用与最佳实践
- 协变返回类型的支持
- 桥接方法(Bridge Method)的生成

## 方法调用解析

- 静态绑定vs动态绑定
- 虚方法表(Virtual Method Table)机制
- 方法调用的字节码指令(invokevirtual, invokespecial等)
- 接口方法调用的特殊处理
- JIT编译优化中的内联与去虚拟化

## 继承设计最佳实践

- 组合优于继承的设计原则
- 抽象类vs接口的选择策略
- 模板方法模式在继承中的应用
- 继承层次深度控制与设计考量
- 继承相关的常见反模式与避免方法
EOF

# 创建1.1.4.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.6-多态实现原理.md" << 'EOF'
---
title: 多态实现原理
icon: polymorphism
order: 6
---

# 多态实现原理

## 多态的基本概念

- 编译时多态vs运行时多态
- 多态的三个必要条件
- 向上转型与向下转型
- 多态与类型系统的关系
- 多态在面向对象设计中的重要性

## 动态分派机制

- 方法接收者的动态绑定
- 虚方法表的结构与实现
- 方法分派的流程与算法
- 动态分派的性能考量
- 单分派与多分派的概念

## 静态分派机制

- 重载方法的选择过程
- 编译期类型与运行时类型
- 静态分派的优先级规则
- 自动装箱/拆箱对方法选择的影响
- 可变参数方法的匹配规则

## 多态的高级应用

- 双重分派与访问者模式
- 反射API中的多态机制
- 泛型与多态的交互
- 函数式接口与Lambda表达式中的多态
- 多态在框架设计中的应用案例
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/README.md" << 'EOF'
---
title: 面向对象编程基础
icon: object
order: 4
---

# 面向对象编程基础

本节详细介绍Java面向对象编程的基础概念和核心特性，包括类与对象、封装、继承、多态等内容，帮助读者建立面向对象的思维方式，为进一步学习Java高级特性打下基础。
EOF

# 创建1.1.4.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.2-面向对象编程基础实战篇.md" << 'EOF'
---
title: 面向对象编程基础实战篇
icon: practice
order: 2
---

# 面向对象编程基础实战篇

## 类与对象实战应用

- 类的设计与实现最佳实践
- 构造方法设计与重载技巧
- 方法参数设计与传递机制
- 对象创建与初始化模式
- 对象销毁与资源释放策略

## 封装实战技巧

- 属性封装与访问控制实践
- JavaBean规范与应用
- 不可变对象设计与实现
- 包结构设计与可见性控制
- 接口设计与实现分离

## 继承实战应用

- 继承层次设计与控制
- 方法重写的实用技巧
- 抽象类设计与应用场景
- 模板方法模式实现
- 继承相关的代码重构技术

## 多态实战技巧

- 多态在框架设计中的应用
- 接口多态与实现多态
- 运行时类型识别与安全转换
- 回调机制与事件处理
- 策略模式与多态应用
EOF

# 创建1.1.4.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.3-面向对象设计实践.md" << 'EOF'
---
title: 面向对象设计实践
icon: design
order: 3
---

# 面向对象设计实践

## 面向对象设计原则

- 单一职责原则(SRP)实践
- 开闭原则(OCP)应用案例
- 里氏替换原则(LSP)与继承设计
- 接口隔离原则(ISP)实现技巧
- 依赖倒置原则(DIP)与控制反转

## 常用设计模式应用

- 创建型模式：工厂、单例、建造者
- 结构型模式：适配器、装饰器、代理
- 行为型模式：观察者、策略、模板方法
- 设计模式在Java标准库中的应用
- 设计模式的选择与组合策略

## 领域模型设计

- 实体对象与值对象的区分
- 聚合根与边界设计
- 领域服务与应用服务
- 领域事件与事件驱动设计
- 领域模型与数据模型的映射

## 面向对象重构技术

- 代码异味识别与处理
- 提取方法与提取类重构
- 继承结构优化与重构
- 设计模式导向的重构
- 测试驱动的重构方法
EOF

# 创建1.1.4.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.4-继承与组合选择策略.md" << 'EOF'
---
title: 继承与组合选择策略
icon: strategy
order: 4
---

# 继承与组合选择策略

## 继承与组合对比

- 继承的优势与局限性
- 组合的灵活性与复杂性
- "是一个"关系vs"有一个"关系
- 代码复用的不同方式
- 运行时行为与编译时结构

## 继承的适用场景

- 明确的"是一个"关系
- 需要利用多态机制
- 子类是父类的特例化
- 共享接口与实现
- 框架设计中的继承应用

## 组合的适用场景

- 动态变化的对象关系
- 多重行为组合需求
- 避免继承层次过深
- 跨越类型层次的复用
- 装饰器与代理模式实现

## 实际决策指南

- "组合优于继承"原则的应用边界
- 混合使用继承与组合的策略
- 从继承重构到组合的方法
- 接口继承与实现继承的区分
- 代码可维护性与可扩展性平衡
EOF

# 创建1.1.4.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.5-多态应用场景与技巧.md" << 'EOF'
---
title: 多态应用场景与技巧
icon: technique
order: 5
---

# 多态应用场景与技巧

## 框架设计中的多态应用

- 插件架构与扩展点设计
- 钩子方法与回调机制
- 依赖注入与多态
- 工厂模式与对象创建
- 适配器模式与接口转换

## 业务逻辑中的多态技巧

- 策略模式实现算法切换
- 状态模式处理对象状态变化
- 命令模式封装业务操作
- 访问者模式处理复杂对象结构
- 责任链模式实现请求处理

## 多态与泛型结合

- 泛型接口与多态
- 泛型方法中的类型参数
- 有界类型参数与多态限制
- 通配符类型的使用技巧
- 类型擦除与多态的关系

## 高级多态应用

- 双重分派与多重分派
- 反射API与动态多态
- 动态代理与AOP实现
- 函数式接口与Lambda表达式
- 接口默认方法与多态扩展
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/README.md" << 'EOF'
---
title: 面向对象编程基础
icon: object
order: 4
---

# 面向对象编程基础

本节详细介绍Java面向对象编程的基础概念和核心特性，包括类与对象、封装、继承、多态等内容，帮助读者建立面向对象的思维方式，为进一步学习Java高级特性打下基础。
EOF

# 创建1.1.4.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.6-面向对象代码重构方法.md" << 'EOF'
---
title: 面向对象代码重构方法
icon: refactor
order: 6
---

# 面向对象代码重构方法

## 代码异味识别

- 重复代码(Duplicated Code)的识别与处理
- 过长方法(Long Method)的分解策略
- 过大类(Large Class)的拆分技术
- 过多参数(Long Parameter List)的优化
- 发散式变化(Divergent Change)与集中修改

## 类层次结构重构

- 提取超类(Extract Superclass)与共性抽取
- 提取接口(Extract Interface)与行为分离
- 塌陷继承体系(Collapse Hierarchy)与简化
- 以委托取代继承(Replace Inheritance with Delegation)
- 以继承取代委托(Replace Delegation with Inheritance)

## 方法级重构

- 提取方法(Extract Method)与职责分离
- 内联方法(Inline Method)与简化调用
- 参数对象(Introduce Parameter Object)
- 保持对象完整(Preserve Whole Object)
- 以查询取代临时变量(Replace Temp with Query)

## 面向对象设计改进

- 封装字段(Encapsulate Field)与访问控制
- 封装集合(Encapsulate Collection)
- 以类取代类型码(Replace Type Code with Class)
- 以状态/策略取代条件逻辑
- 引入空对象(Introduce Null Object)模式
EOF

# 创建1.1.4.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.4-面向对象编程基础/1.1.4.7-常见面向对象设计错误.md" << 'EOF'
---
title: 常见面向对象设计错误
icon: warning
order: 7
---

# 常见面向对象设计错误

## 继承滥用问题

- 继承层次过深导致的复杂性
- 为复用实现而继承的错误做法
- LSP违反：子类不能替换父类
- 继承破坏封装的案例分析
- 继承与组合选择失当的后果

## 封装不足问题

- 暴露内部实现细节的危害
- getter/setter滥用与对象贫血
- 可变对象作为公共属性的风险
- 封装级别选择不当的案例
- 包结构与访问控制设计不合理

## 职责分配不当

- 上帝类(God Class)与单一职责违反
- 数据类与行为类分离的反模式
- 特性依恋(Feature Envy)问题
- 过度耦合的模块设计
- 内聚性不足的类设计

## 多态使用不当

- 类型检查与类型转换滥用
- switch/if-else代替多态的反模式
- 接口设计不合理导致的问题
- 多态与单一职责冲突
- 运行时类型操作的过度依赖
EOF

# 创建1.1.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/README.md" << 'EOF'
---
title: 接口与抽象类
icon: interface
order: 5
---

# 接口与抽象类

本节详细介绍Java中接口与抽象类的概念、特性及应用场景，帮助读者理解这两种抽象机制的异同点，以及如何在面向对象设计中合理使用它们来提高代码的灵活性和可维护性。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/README.md" << 'EOF'
---
title: 接口与抽象类
icon: interface
order: 5
---

# 接口与抽象类

本节详细介绍Java中接口与抽象类的概念、特性及应用场景，帮助读者理解这两种抽象机制的异同点，以及如何在面向对象设计中合理使用它们来提高代码的灵活性和可维护性。
EOF

# 创建1.1.5.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.1-接口与抽象类原理篇.md" << 'EOF'
---
title: 接口与抽象类原理篇
icon: principle
order: 1
---

# 接口与抽象类原理篇

## 抽象的本质与意义

- 抽象在面向对象设计中的核心地位
- 抽象与实现分离的设计思想
- 接口与抽象类作为抽象机制的作用
- 抽象层次与抽象粒度的控制
- 抽象对系统可扩展性的影响

## 接口的本质与特性

- 接口作为纯粹的抽象规范
- 接口的多继承特性与类型多重继承
- 接口的默认实现与静态方法
- 接口的演进与向后兼容性
- 接口在Java类型系统中的角色

## 抽象类的本质与特性

- 抽象类作为不完全实现的类
- 抽象方法与具体方法的混合
- 抽象类的构造方法与初始化
- 抽象类的继承限制与单继承特性
- 抽象类在类层次结构中的定位

## 底层实现机制

- 接口与抽象类的字节码表示
- 虚方法表与方法调用解析
- 接口默认方法的实现机制
- 抽象类的实例化限制实现
- JVM对接口与抽象类的优化处理
EOF

# 创建1.1.5.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.2-接口设计原理与演进.md" << 'EOF'
---
title: 接口设计原理与演进
icon: evolution
order: 2
---

# 接口设计原理与演进

## 接口设计基本原则

- 接口隔离原则(ISP)与接口粒度
- 接口的职责单一性与内聚性
- 接口稳定性与演进策略
- 接口命名规范与语义表达
- 接口文档与契约设计

## Java接口的历史演进

- Java早期接口设计(Java 1.0-1.4)
- Java 5中的泛型接口
- Java 8引入的默认方法与静态方法
- Java 9中的私有方法
- 未来接口特性的发展趋势

## 接口默认方法机制

- 默认方法的引入背景与解决的问题
- 默认方法的语法与使用限制
- 默认方法的继承规则与优先级
- 默认方法与多继承的钻石问题
- 默认方法的最佳实践与设计模式

## 函数式接口与Lambda

- 函数式接口的定义与@FunctionalInterface
- 常用函数式接口(Predicate, Function, Consumer等)
- Lambda表达式与接口的关系
- 方法引用与接口实现
- 函数式接口在流式编程中的应用
EOF

# 创建1.1.5.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.3-抽象类实现机制.md" << 'EOF'
---
title: 抽象类实现机制
icon: abstract
order: 3
---

# 抽象类实现机制

## 抽象类的基本语法

- abstract关键字与抽象类声明
- 抽象方法的定义与继承
- 抽象类中的具体方法实现
- 抽象类的构造方法与初始化
- 抽象类的访问控制与可见性

## 抽象类的设计模式

- 模板方法模式中的抽象类应用
- 工厂方法模式与抽象工厂
- 策略模式中的抽象基类
- 适配器模式与抽象适配
- 骨架实现(Skeletal Implementation)模式

## 抽象类的继承机制

- 抽象类的多层继承结构
- 抽象方法的实现与重写规则
- 具体类对抽象类的实现责任
- 抽象类中的final方法与字段
- 抽象类与接口的组合使用

## 抽象类的高级特性

- 抽象类中的静态成员与初始化块
- 抽象类的内部类与嵌套类
- 泛型抽象类的设计与使用
- 抽象类的序列化考量
- 抽象类在框架设计中的应用案例
EOF

# 创建1.1.5.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.4-接口与抽象类的异同.md" << 'EOF'
---
title: 接口与抽象类的异同
icon: compare
order: 4
---

# 接口与抽象类的异同

## 语法层面的区别

- 定义语法与关键字差异
- 方法实现程度的不同
- 字段定义的限制差异
- 继承机制的单继承vs多实现
- 访问控制与可见性规则

## 设计意图的差异

- "是什么"vs"能做什么"的设计思想
- 接口定义行为契约，抽象类提供部分实现
- 接口强调能力，抽象类强调本质
- 接口用于类型定义，抽象类用于代码复用
- 接口适合水平切分，抽象类适合垂直切分

## 使用场景选择指南

- 需要多重继承时选择接口
- 需要默认实现时的选择策略
- API设计中的接口优先原则
- 框架设计中的抽象基类应用
- 演进性考量与向后兼容性选择

## 混合使用的最佳实践

- 接口+抽象类的骨架实现模式
- 抽象类实现接口的设计模式
- 接口继承接口与抽象类继承的组合
- 适配器模式中的接口与抽象类配合
- 实际项目中的选择案例与经验总结
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/README.md" << 'EOF'
---
title: 接口与抽象类
icon: interface
order: 5
---

# 接口与抽象类

本节详细介绍Java中接口与抽象类的概念、特性及应用场景，帮助读者理解这两种抽象机制的异同点，以及如何在面向对象设计中合理使用它们来提高代码的灵活性和可维护性。
EOF

# 创建1.1.5.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.5-默认方法实现原理.md" << 'EOF'
---
title: 默认方法实现原理
icon: default
order: 5
---

# 默认方法实现原理

## 默认方法的引入背景

- Java 8引入默认方法的历史原因
- 接口演进与向后兼容性问题
- 集合框架API增强的需求
- 函数式编程支持的需要
- 多重继承问题的解决方案

## 默认方法的实现机制

- 默认方法在字节码层面的表示
- 默认方法的调用解析过程
- 虚方法表中的默认方法处理
- 默认方法与类方法的区别
- JVM对默认方法的优化处理

## 默认方法的继承规则

- 类方法优先于接口默认方法
- 子接口默认方法优先于父接口
- 多接口冲突时的显式指定
- 抽象类与默认方法的交互
- 继承链中的默认方法覆盖规则

## 默认方法的设计考量

- 默认方法的适用场景与限制
- 默认方法对接口设计的影响
- 默认方法与抽象类的功能对比
- 默认方法的性能影响
- 默认方法设计的最佳实践
EOF

# 创建1.1.5.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.6-接口多继承解决方案.md" << 'EOF'
---
title: 接口多继承解决方案
icon: inheritance
order: 6
---

# 接口多继承解决方案

## 多继承问题概述

- 多继承的概念与挑战
- Java单继承设计的原因
- 菱形继承问题(Diamond Problem)
- 接口多实现与多继承的区别
- 多继承在其他语言中的实现

## 接口多继承的实现机制

- 接口继承多接口的语法与规则
- 方法签名冲突的处理策略
- 默认方法冲突的解决方案
- 常量继承与潜在命名冲突
- 多接口继承的类型转换

## 默认方法冲突解决

- 显式重写冲突的默认方法
- super关键字调用特定接口默认方法
- 继承规则与优先级算法
- 编译期检测与运行时行为
- 实际案例分析与解决方案

## 多继承设计模式

- 接口组合实现功能多继承
- 骨架实现类与多接口实现
- 委托模式替代多继承
- Mixin模式在Java中的实现
- 多继承场景的设计最佳实践
EOF

# 创建1.1.5.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.2-接口与抽象类实战篇.md" << 'EOF'
---
title: 接口与抽象类实战篇
icon: practice
order: 2
---

# 接口与抽象类实战篇

## 框架设计中的应用

- Spring框架中的接口设计模式
- Java集合框架的接口与抽象类结构
- JDBC API的接口抽象与实现分离
- ORM框架中的接口与抽象类应用
- 插件系统的扩展点设计

## 常用设计模式实现

- 策略模式中的接口应用
- 模板方法模式与抽象类
- 适配器模式的接口转换
- 观察者模式的事件监听接口
- 工厂模式中的抽象工厂接口

## 实际业务场景应用

- 支付系统的多渠道接口设计
- 消息中间件的生产者消费者抽象
- 数据访问层的Repository接口
- 缓存系统的抽象与实现分离
- 权限系统的角色与权限抽象

## 测试与可维护性

- 面向接口编程与单元测试
- 模拟对象(Mock)与接口契约
- 接口稳定性与系统演进
- 抽象层次对代码可维护性的影响
- 接口文档与API设计最佳实践
EOF

# 创建1.1.5.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.3-接口设计最佳实践.md" << 'EOF'
---
title: 接口设计最佳实践
icon: bestpractice
order: 3
---

# 接口设计最佳实践

## 接口设计原则

- 接口隔离原则(ISP)的应用
- 接口粒度与内聚性控制
- 接口演进与向后兼容性保障
- 命名规范与语义表达
- 接口文档与契约设计

## 常见接口设计模式

- 标记接口(Marker Interface)的使用场景
- 功能接口与行为抽象
- 回调接口与事件处理
- 适配器接口与兼容性设计
- 工厂接口与对象创建

## 接口版本管理

- 接口版本演进策略
- 向后兼容性设计技巧
- 默认方法添加的最佳实践
- 废弃接口的处理方法
- API文档中的版本说明

## 函数式接口设计

- 函数式接口的定义与规范
- 标准函数式接口的复用
- 自定义函数式接口的设计原则
- Lambda表达式友好的接口设计
- 函数式接口与方法引用的配合
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/README.md" << 'EOF'
---
title: 接口与抽象类
icon: interface
order: 5
---

# 接口与抽象类

本节详细介绍Java中接口与抽象类的概念、特性及应用场景，帮助读者理解这两种抽象机制的异同点，以及如何在面向对象设计中合理使用它们来提高代码的灵活性和可维护性。
EOF

# 创建1.1.5.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.4-抽象类应用场景.md" << 'EOF'
---
title: 抽象类应用场景
icon: scenario
order: 4
---

# 抽象类应用场景

## 代码复用场景

- 提供通用实现的基础类
- 共享字段与状态的抽象基类
- 公共方法实现与抽象方法定义
- 构造方法链与初始化控制
- 受保护成员的封装与继承

## 模板方法模式应用

- 算法骨架定义与步骤抽象
- 钩子方法与可选步骤实现
- 不变部分与可变部分分离
- 子类定制化与扩展点设计
- 实际业务流程中的应用案例

## 层次结构设计

- 类型体系的根类设计
- 多层抽象类的继承体系
- 抽象-具体类的层次划分
- 渐进式实现与细化
- 领域模型中的抽象基类

## 框架与库设计

- 扩展点与插件机制设计
- 适配器基类与兼容性设计
- 骨架实现类(Skeletal Implementation)
- 回调机制与事件处理框架
- 测试支持与模拟对象基类
EOF

# 创建1.1.5.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.5-接口与抽象类选择策略.md" << 'EOF'
---
title: 接口与抽象类选择策略
icon: strategy
order: 5
---

# 接口与抽象类选择策略

## 设计意图分析

- "是什么"vs"能做什么"的设计思考
- 类型定义vs部分实现的需求区分
- 多继承需求vs代码复用需求
- API稳定性vs实现演进的考量
- 抽象程度与粒度的设计决策

## 技术特性对比

- 多实现vs单继承的限制考量
- 默认方法vs抽象方法的选择
- 状态共享与构造器需求分析
- 访问控制与封装级别需求
- 向后兼容性与演进策略

## 实际项目决策指南

- 接口优先原则与应用边界
- 抽象类适用的典型场景
- 混合使用的最佳实践模式
- 重构时的转换策略与技巧
- 团队约定与项目规范制定

## 案例分析与经验总结

- Java标准库中的设计案例分析
- 主流框架中的抉择经验借鉴
- 常见错误选择与反模式警示
- 演进历史中的教训与启示
- 实际项目中的决策流程建议
EOF

# 创建1.1.5.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.6-API设计中的接口应用.md" << 'EOF'
---
title: API设计中的接口应用
icon: api
order: 6
---

# API设计中的接口应用

## 接口作为API契约

- 接口作为服务提供者与消费者的契约
- 接口稳定性与API版本管理
- 接口文档与使用说明
- 接口一致性与语义表达
- 接口粒度与职责划分

## 常见API接口模式

- 服务接口与实现分离模式
- 回调接口与事件监听模式
- 工厂接口与对象创建模式
- 适配器接口与兼容性设计
- 标记接口与类型标识

## 接口演进策略

- 向后兼容的接口扩展方法
- 默认方法添加的最佳实践
- 接口废弃与迁移路径设计
- 接口版本控制与共存策略
- 兼容性测试与验证方法

## 实际案例分析

- Java集合框架的接口设计
- JDBC API的接口抽象层
- Spring框架的核心接口设计
- 微服务API的接口定义
- RESTful API与接口映射
EOF

# 创建1.1.5.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.5-接口与抽象类/1.1.5.7-框架设计中的抽象类应用.md" << 'EOF'
---
title: 框架设计中的抽象类应用
icon: framework
order: 7
---

# 框架设计中的抽象类应用

## 框架核心抽象设计

- 框架骨架与扩展点设计
- 通用功能实现与特定功能抽象
- 生命周期管理与钩子方法
- 默认行为与可覆盖行为
- 错误处理与异常传播机制

## 常见框架抽象模式

- 模板方法模式在框架中的应用
- 骨架实现类与接口实现辅助
- 适配器基类与兼容性设计
- 抽象工厂与对象创建控制
- 责任链基类与请求处理框架

## 实际框架案例分析

- Spring框架中的抽象类设计
- Servlet API的抽象基类
- MyBatis中的抽象映射器
- JUnit测试框架的抽象类
- Android应用框架的抽象组件

## 框架扩展与定制

- 框架扩展点的抽象类设计
- 插件系统与抽象基类
- 配置与策略的抽象实现
- 框架版本升级与抽象层兼容性
- 自定义框架组件的最佳实践
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/README.md" << 'EOF'
---
title: 异常处理机制
icon: error
order: 6
---

# 异常处理机制

本节详细介绍Java的异常处理机制，包括异常的概念、分类、处理方式以及最佳实践，帮助读者理解如何在Java程序中有效地处理各种异常情况，提高程序的健壮性和可维护性。
EOF

# 创建1.1.6.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.1-异常处理机制原理篇.md" << 'EOF'
---
title: 异常处理机制原理篇
icon: principle
order: 1
---

# 异常处理机制原理篇

## 异常处理基本概念

- 异常的定义与作用
- 错误处理的演进历史
- 异常处理vs错误码返回
- Java异常处理的设计哲学
- 异常对程序流程控制的影响

## 异常处理的底层实现

- JVM中的异常表(Exception Table)
- 异常栈帧与调用栈的关系
- 异常对象的创建与传播过程
- try-catch-finally的字节码实现
- 异常处理的性能开销分析

## 异常传播机制

- 异常的抛出与捕获流程
- 调用栈的展开(Stack Unwinding)过程
- 异常链(Exception Chaining)的实现
- 多重catch块的匹配规则
- finally块的执行保证机制

## 资源管理与异常安全

- finally块与资源释放
- try-with-resources的实现原理
- 异常抑制(Suppressed Exceptions)机制
- 异常安全(Exception Safety)的概念
- 资源泄漏防范与最佳实践
EOF

# 创建1.1.6.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.2-Java异常体系结构.md" << 'EOF'
---
title: Java异常体系结构
icon: structure
order: 2
---

# Java异常体系结构

## 异常类层次结构

- Throwable作为异常体系的根类
- Error与Exception的区别
- 受检异常(Checked Exception)与非受检异常(Unchecked Exception)
- RuntimeException及其子类体系
- 常见的标准异常类介绍

## 受检异常与非受检异常

- 受检异常的设计初衷与使用场景
- 非受检异常的适用情况与优势
- 两种异常类型的处理差异
- 编译器对异常处理的强制要求
- 异常设计的最佳实践与争议

## 常见标准异常类

- IOException及其子类体系
- SQLException与数据库异常
- ClassNotFoundException与反射相关异常
- InterruptedException与线程中断
- 集合框架中的常见异常

## 自定义异常设计

- 自定义异常的设计原则
- 异常类的命名与继承选择
- 异常信息的有效构造
- 异常参数与上下文信息传递
- 业务异常体系的分层设计
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/README.md" << 'EOF'
---
title: 异常处理机制
icon: error
order: 6
---

# 异常处理机制

本节详细介绍Java的异常处理机制，包括异常的概念、分类、处理方式以及最佳实践，帮助读者理解如何在Java程序中有效地处理各种异常情况，提高程序的健壮性和可维护性。
EOF

# 创建1.1.6.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.3-异常处理工作流程.md" << 'EOF'
---
title: 异常处理工作流程
icon: workflow
order: 3
---

# 异常处理工作流程

## 异常的捕获与处理

- try-catch-finally语句块结构
- 多重catch块的使用与顺序
- catch块中的异常处理策略
- finally块的必要性与执行保证
- 嵌套try语句的使用场景

## try-with-resources机制

- 自动资源管理的实现原理
- AutoCloseable接口与资源关闭
- 多资源管理与关闭顺序
- 异常抑制机制与getSuppressed方法
- Java 7前后资源管理对比

## 异常的抛出与声明

- throws关键字与方法签名
- throw语句与异常实例创建
- 异常链与cause机制
- 重写方法中的异常声明规则
- 接口方法与实现类的异常兼容性

## 异常处理最佳实践

- 精确捕获与处理异常
- 异常信息的有效记录
- 异常转换与包装策略
- 异常恢复与重试机制
- 全局异常处理器设计
EOF

# 创建1.1.6.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.4-检查型与非检查型异常设计.md" << 'EOF'
---
title: 检查型与非检查型异常设计
icon: design
order: 4
---

# 检查型与非检查型异常设计

## 两种异常类型的本质区别

- 编译期检查vs运行时检查
- 强制处理vs自由处理
- 设计哲学与初衷差异
- 语法要求与使用限制
- 对代码可读性的影响

## 检查型异常的适用场景

- 可恢复的异常情况
- 调用者必须知晓的问题
- 业务逻辑相关的异常
- API契约的一部分
- 标准库中的检查型异常案例

## 非检查型异常的适用场景

- 程序错误与bug表示
- 不可恢复的系统异常
- 编程错误与前置条件违反
- 框架内部异常处理
- 标准库中的非检查型异常案例

## 异常设计的争议与最佳实践

- 检查型异常的过度使用问题
- "异常泛滥"与代码可读性
- 现代Java框架的异常设计趋势
- Spring的异常处理哲学
- 企业级应用的异常设计策略
EOF

# 创建1.1.6.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.5-异常传播机制.md" << 'EOF'
---
title: 异常传播机制
icon: propagation
order: 5
---

# 异常传播机制

## 调用栈与异常传播

- 方法调用栈的结构与作用
- 异常沿调用栈向上传播的过程
- 栈帧展开(Stack Unwinding)机制
- 异常传播过程中的资源释放
- 调用栈跟踪信息的生成与记录

## 异常捕获与传播控制

- 捕获异常后的传播终止
- 重新抛出异常与传播继续
- 异常包装与类型转换
- 部分处理与传播结合
- 多层次异常处理策略

## 异常链与根因分析

- 异常链(Exception Chaining)的实现
- initCause方法与构造器链接
- 根因异常的保存与获取
- 异常链在日志记录中的应用
- 异常链在调试中的价值

## 线程间的异常传播

- 线程边界与异常传播限制
- 线程池中的异常处理
- UncaughtExceptionHandler机制
- Future与CompletableFuture中的异常
- 异步编程中的异常传播策略
EOF

# 创建1.1.6.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.6-异常性能开销分析.md" << 'EOF'
---
title: 异常性能开销分析
icon: performance
order: 6
---

# 异常性能开销分析

## 异常创建的性能开销

- 异常对象创建的内存开销
- 调用栈跟踪信息的生成成本
- 异常实例池化与复用技术
- JVM对异常创建的优化
- 性能测试与基准分析

## 异常处理的运行时开销

- try-catch块的执行开销
- 异常表查找与匹配过程
- 栈帧展开的性能影响
- finally块的执行成本
- JIT编译器对异常处理的优化

## 异常与控制流的性能对比

- 异常控制流vs条件控制流
- 正常路径与异常路径的性能差异
- 异常用于流程控制的反模式
- 预期错误的非异常处理方式
- 返回错误码vs抛出异常的取舍

## 异常使用的性能最佳实践

- 异常的合理使用边界
- 避免过度细粒度的异常捕获
- 异常缓存与复用策略
- 性能关键路径的异常处理优化
- 日志记录对异常性能的影响
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/README.md" << 'EOF'
---
title: 异常处理机制
icon: error
order: 6
---

# 异常处理机制

本节详细介绍Java的异常处理机制，包括异常的概念、分类、处理方式以及最佳实践，帮助读者理解如何在Java程序中有效地处理各种异常情况，提高程序的健壮性和可维护性。
EOF

# 创建1.1.6.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.2-异常处理机制实战篇.md" << 'EOF'
---
title: 异常处理机制实战篇
icon: practice
order: 2
---

# 异常处理机制实战篇

## 常见异常处理模式

- try-catch-finally的标准使用模式
- try-with-resources的资源管理模式
- 异常转换与包装模式
- 异常链与根因分析模式
- 全局异常处理器模式

## 实际业务场景应用

- Web应用中的异常处理策略
- 数据访问层的异常处理模式
- 远程调用中的异常处理机制
- 批处理任务的异常恢复策略
- 多线程环境下的异常处理

## 框架中的异常处理

- Spring框架的异常处理机制
- SpringMVC的@ExceptionHandler应用
- MyBatis的异常处理与转换
- Spring Boot的异常自动配置
- 微服务架构中的异常处理策略

## 异常处理与代码质量

- 异常处理对代码可读性的影响
- 单元测试中的异常验证
- 异常处理的代码覆盖率考量
- 代码审查中的异常处理检查点
- 异常处理与系统可维护性
EOF

# 创建1.1.6.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.3-异常处理最佳实践.md" << 'EOF'
---
title: 异常处理最佳实践
icon: bestpractice
order: 3
---

# 异常处理最佳实践

## 异常设计原则

- 异常粒度与层次结构设计
- 检查型vs非检查型异常的选择策略
- 异常信息的有效构造
- 异常文档与API契约
- 异常的向后兼容性考量

## 异常捕获与处理准则

- 精确捕获原则与避免捕获过广
- 空catch块的危害与替代方案
- 异常恢复与重试策略
- 资源释放与清理保证
- 异常处理中的线程安全考量

## 异常传播与转换策略

- 异常透传vs异常包装的选择
- 低级异常向高级异常的转换
- 保留原始异常信息的技巧
- 异常传播中的性能考量
- 跨层异常处理的协调机制

## 企业级应用最佳实践

- 统一的异常处理框架设计
- 异常监控与告警机制
- 分布式系统中的异常协调
- 异常处理的国际化支持
- 安全敏感信息在异常中的处理
EOF

# 创建1.1.6.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.4-自定义异常设计.md" << 'EOF'
---
title: 自定义异常设计
icon: design
order: 4
---

# 自定义异常设计

## 自定义异常的基本原则

- 何时需要创建自定义异常
- 异常类的命名规范与约定
- 继承体系的选择(检查型vs非检查型)
- 异常的粒度与职责划分
- 异常的可序列化性考量

## 异常信息与上下文

- 有意义的异常消息构造
- 异常参数与上下文信息传递
- 错误码与错误描述的设计
- 国际化支持与本地化消息
- 调试信息与生产环境信息分离

## 业务异常体系设计

- 领域驱动的异常设计
- 分层架构中的异常体系
- 业务规则验证与异常映射
- 异常分类与异常处理策略
- 异常与错误响应的映射关系

## 自定义异常最佳实践

- 异常构造器的设计模式
- 静态工厂方法创建异常实例
- 异常文档与使用说明
- 异常测试与验证方法
- 异常设计的演进与维护
EOF

# 创建1.1.6.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.5-异常日志记录策略.md" << 'EOF'
---
title: 异常日志记录策略
icon: log
order: 5
---

# 异常日志记录策略

## 异常日志的基本原则

- 何时记录异常日志
- 日志级别的选择策略
- 异常堆栈的完整性保证
- 避免重复记录同一异常
- 敏感信息的过滤与脱敏

## 有效的异常日志内容

- 上下文信息的捕获与记录
- 关联ID与请求跟踪
- 时间戳与时序信息
- 用户与操作标识
- 系统状态与环境信息

## 日志框架与异常集成

- SLF4J与Logback的异常处理
- MDC与线程上下文信息
- 异常过滤器与自定义Appender
- 异步日志与性能考量
- 日志聚合与分析系统集成

## 生产环境异常监控

- 基于日志的异常监控策略
- 异常告警阈值与规则设置
- 异常模式识别与分析
- 异常统计与趋势报告
- 异常日志与APM系统集成
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/README.md" << 'EOF'
---
title: 异常处理机制
icon: error
order: 6
---

# 异常处理机制

本节详细介绍Java的异常处理机制，包括异常的概念、分类、处理方式以及最佳实践，帮助读者理解如何在Java程序中有效地处理各种异常情况，提高程序的健壮性和可维护性。
EOF

# 创建1.1.6.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.6-异常链与根因分析.md" << 'EOF'
---
title: 异常链与根因分析
icon: chain
order: 6
---

# 异常链与根因分析

## 异常链的基本概念

- 异常链(Exception Chaining)的定义与作用
- 根因异常(Root Cause)与包装异常的关系
- 异常链在多层架构中的应用
- 异常链与错误诊断的关系
- Java异常链的演进历史

## 异常链的实现机制

- Throwable.initCause()方法的使用
- 带cause参数的构造方法链接
- getCause()方法与根因获取
- 异常链的传递与保存
- 多层异常链的处理策略

## 根因分析技术

- 异常堆栈的解析与分析
- 根因提取与识别方法
- 常见根因模式与特征
- 根因分类与统计分析
- 自动化根因分析工具

## 异常链最佳实践

- 异常转换时保留根因信息
- 异常链在日志记录中的应用
- 异常链在调试中的有效利用
- 分布式系统中的异常链传递
- 异常链与监控系统的集成
EOF

# 创建1.1.6.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.6-异常处理机制/1.1.6.7-异常处理性能优化.md" << 'EOF'
---
title: 异常处理性能优化
icon: performance
order: 7
---

# 异常处理性能优化

## 异常性能开销分析

- 异常创建的内存与CPU开销
- 堆栈跟踪信息生成的成本
- try-catch块的执行性能影响
- 异常处理对JIT编译的影响
- 异常在热点代码中的性能问题

## 异常使用的优化策略

- 避免用异常控制正常流程
- 精确捕获替代过度捕获
- 异常粒度与频率的平衡
- 预检查减少异常抛出
- 异常与返回码的选择权衡

## 异常对象优化技术

- 异常对象池化与复用
- 延迟堆栈跟踪生成
- 自定义轻量级异常
- 堆栈深度控制与裁剪
- JVM参数对异常性能的影响

## 高性能系统的异常处理

- 性能关键路径的异常处理策略
- 批处理操作中的异常累积
- 异步异常处理与性能隔离
- 监控与分析异常性能瓶颈
- 异常处理与系统吞吐量平衡
EOF

# 创建1.1.7目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/README.md" << 'EOF'
---
title: 集合框架详解
icon: collection
order: 7
---

# 集合框架详解

本节详细介绍Java集合框架的核心组件、设计原理及使用技巧，包括各种集合类型的特性、内部实现机制以及性能分析，帮助读者掌握如何在不同场景下选择和使用合适的集合类，提高代码的效率和质量。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.7目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/README.md" << 'EOF'
---
title: 集合框架详解
icon: collection
order: 7
---

# 集合框架详解

本节详细介绍Java集合框架的核心组件、设计原理及使用技巧，包括各种集合类型的特性、内部实现机制以及性能分析，帮助读者掌握如何在不同场景下选择和使用合适的集合类，提高代码的效率和质量。
EOF

# 创建1.1.7.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.1-集合框架详解原理篇.md" << 'EOF'
---
title: 集合框架详解原理篇
icon: principle
order: 1
---

# 集合框架详解原理篇

## 集合框架设计理念

- 集合框架的历史与演进
- 接口与实现分离的设计思想
- 泛型在集合框架中的应用
- 迭代器模式与集合遍历
- 集合框架的一致性设计

## 集合的内存模型

- 集合对象的内存布局
- 引用与实际对象的关系
- 集合容量与扩容机制
- 集合元素的存储方式
- 集合对象的内存占用分析

## 集合的性能特性

- 时间复杂度分析
- 空间复杂度与内存效率
- 并发性能与线程安全性
- 随机访问vs顺序访问性能
- 不同操作的性能对比

## 集合的内部实现机制

- 哈希表实现原理
- 树形结构在集合中的应用
- 链表结构的实现与优化
- 数组作为底层存储的集合
- 混合数据结构的实现策略
EOF

# 创建1.1.7.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.2-集合框架整体架构.md" << 'EOF'
---
title: 集合框架整体架构
icon: architecture
order: 2
---

# 集合框架整体架构

## 核心接口体系

- Collection接口及其子接口
- Map接口及其变种
- Iterator与Iterable接口
- Comparable与Comparator接口
- 接口之间的关系与层次结构

## 抽象类与骨架实现

- AbstractCollection的通用实现
- AbstractList/AbstractSet/AbstractMap
- 骨架实现(Skeletal Implementation)模式
- 抽象类对公共行为的封装
- 继承抽象类vs实现接口的选择

## 实现类分类

- List实现类家族(ArrayList, LinkedList等)
- Set实现类家族(HashSet, TreeSet等)
- Map实现类家族(HashMap, TreeMap等)
- Queue/Deque实现类(ArrayDeque, PriorityQueue等)
- 特殊用途集合类(EnumSet, WeakHashMap等)

## 辅助工具类

- Collections工具类的功能
- Arrays工具类与集合的交互
- 适配器类与视图(Views)
- 不可变集合与包装器
- 同步包装器与线程安全
EOF

# 创建1.1.7.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.3-List-Set-Map实现原理.md" << 'EOF'
---
title: List/Set/Map实现原理
icon: implementation
order: 3
---

# List/Set/Map实现原理

## ArrayList实现原理

- 底层数组存储结构
- 动态扩容机制与因子
- 随机访问的高效实现
- 插入删除操作的性能特性
- 迭代器与fail-fast机制

## LinkedList实现原理

- 双向链表的节点结构
- 头尾节点的特殊处理
- 插入删除操作的实现
- 作为队列和双端队列的应用
- 与ArrayList的性能对比

## HashMap实现原理

- 哈希表的基本原理
- 哈希函数与桶分配
- 链表与红黑树结构
- 负载因子与扩容机制
- Java 8中的优化改进

## HashSet与TreeSet实现

- HashSet基于HashMap的实现
- TreeSet的红黑树结构
- 有序集合的实现机制
- 元素比较与排序规则
- 自定义对象作为元素的要求

## TreeMap实现原理

- 红黑树的基本特性
- 键的比较与排序
- 查找、插入、删除操作
- 范围操作的高效实现
- 与HashMap的性能对比
EOF

# 创建1.1.7.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.4-集合数据结构分析.md" << 'EOF'
---
title: 集合数据结构分析
icon: datastructure
order: 4
---

# 集合数据结构分析

## 数组结构分析

- 数组作为集合底层存储的优势
- 随机访问与索引查找
- 连续内存分配的特性
- 数组扩容的性能影响
- 基于数组的集合类对比

## 链表结构分析

- 单向链表vs双向链表
- 链表的内存分配特性
- 插入删除操作的优势
- 链表遍历的性能特点
- 基于链表的集合类分析

## 哈希表结构分析

- 哈希函数与均匀分布
- 冲突解决策略(链地址法)
- 桶与链表/树的结合
- 负载因子与哈希表性能
- 哈希表的扩容与重哈希

## 树形结构分析

- 二叉搜索树的基本特性
- 平衡树与自平衡机制
- 红黑树的平衡策略
- 树的遍历与操作复杂度
- 树形结构在有序集合中的应用

## 混合数据结构

- LinkedHashMap/LinkedHashSet的实现
- 哈希表与链表的结合优势
- 跳表(SkipList)的应用
- 复合数据结构的性能特点
- 特定场景下的数据结构选择
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.7目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/README.md" << 'EOF'
---
title: 集合框架详解
icon: collection
order: 7
---

# 集合框架详解

本节详细介绍Java集合框架的核心组件、设计原理及使用技巧，包括各种集合类型的特性、内部实现机制以及性能分析，帮助读者掌握如何在不同场景下选择和使用合适的集合类，提高代码的效率和质量。
EOF

# 创建1.1.7.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.5-集合迭代器实现机制.md" << 'EOF'
---
title: 集合迭代器实现机制
icon: iterator
order: 5
---

# 集合迭代器实现机制

## 迭代器设计模式

- Iterator接口与迭代器模式
- 迭代器与集合的解耦设计
- 内部迭代器vs外部迭代器
- 迭代器的职责与边界
- Java集合框架中的迭代器应用

## 迭代器的实现原理

- 迭代器的内部状态管理
- 游标位置与元素访问
- 迭代器与集合的关联方式
- 迭代过程中的元素删除机制
- 不同集合类的迭代器实现差异

## fail-fast机制

- fail-fast机制的设计目的
- 并发修改异常(ConcurrentModificationException)
- 修改计数器(modCount)的实现
- 迭代器的结构一致性检查
- fail-fast的局限性与替代方案

## ListIterator特性

- ListIterator对Iterator的扩展
- 双向遍历的实现机制
- 位置感知与索引访问
- 迭代过程中的元素修改
- ListIterator在LinkedList中的应用

## 迭代器的高级应用

- Spliterator与并行迭代
- 流式操作中的迭代器应用
- 自定义迭代器的实现技巧
- 迭代器与函数式编程结合
- 迭代器模式的最佳实践
EOF

# 创建1.1.7.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.6-并发集合实现原理.md" << 'EOF'
---
title: 并发集合实现原理
icon: concurrent
order: 6
---

# 并发集合实现原理

## 并发集合的设计挑战

- 线程安全与并发访问问题
- 原子性、可见性与有序性保证
- 锁竞争与性能平衡
- 一致性视图与弱一致性
- 并发修改与迭代的处理

## ConcurrentHashMap实现

- 分段锁设计(Java 7)
- 无锁算法与CAS操作(Java 8+)
- 红黑树的并发实现
- 并发扩容机制
- 与同步HashMap的性能对比

## CopyOnWriteArrayList/Set

- 写时复制(Copy-On-Write)策略
- 不变性与线程安全
- 迭代器的快照语义
- 适用场景与性能特性
- 内存开销与使用限制

## 并发队列实现

- ConcurrentLinkedQueue的无锁实现
- ArrayBlockingQueue的有界阻塞队列
- LinkedBlockingQueue的链表阻塞队列
- PriorityBlockingQueue的优先级队列
- DelayQueue与延迟执行机制

## 并发集合的性能考量

- 读写比例对性能的影响
- 并发级别与扩展性
- 内存占用与GC压力
- 适用场景的选择策略
- 并发集合的性能测试方法
EOF

# 创建1.1.7.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.2-集合框架详解实战篇.md" << 'EOF'
---
title: 集合框架详解实战篇
icon: practice
order: 2
---

# 集合框架详解实战篇

## List实战应用

- ArrayList的高效随机访问应用
- LinkedList作为队列和栈的使用
- 大数据量List的性能优化
- 线程安全List的选择与使用
- List排序与查找的最佳实践

## Map实战应用

- HashMap的键设计与哈希碰撞避免
- TreeMap的排序与范围操作
- LinkedHashMap实现LRU缓存
- WeakHashMap与内存敏感缓存
- EnumMap在枚举类应用中的优势

## Set实战应用

- HashSet的元素唯一性保证
- TreeSet的自然排序与比较器
- LinkedHashSet保持插入顺序
- EnumSet对枚举类型的高效存储
- 不可变Set的创建与应用

## 集合操作实战技巧

- 集合的批量操作与性能优化
- 集合视图与包装器的应用
- 集合转换与适配器模式
- 集合的序列化与深拷贝
- 集合操作中的常见陷阱

## 集合与流式处理

- 集合转换为Stream的操作
- 流式处理在集合操作中的应用
- 并行流与并发集合的结合
- Collectors工具类的高效使用
- 函数式接口与集合操作的结合
EOF

# 创建1.1.7.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.3-集合类选择策略.md" << 'EOF'
---
title: 集合类选择策略
icon: strategy
order: 3
---

# 集合类选择策略

## 基于功能需求的选择

- 有序性需求与集合选择
- 唯一性保证与Set家族
- 键值对存储与Map类型
- 随机访问vs顺序访问需求
- 特殊功能需求(优先级、延迟等)

## 基于性能特性的选择

- 时间复杂度与操作频率
- 空间效率与内存占用
- 并发访问与线程安全需求
- 数据规模对集合选择的影响
- 读写比例对性能的影响

## 常见应用场景分析

- 缓存实现的集合选择
- 数据索引的最佳集合
- 消息队列的集合实现
- 数据统计与聚合的集合应用
- 配置管理的集合选择

## 集合组合使用策略

- 复合集合结构的设计
- 集合嵌套与复杂数据结构
- 辅助集合提升主集合性能
- 多集合协同工作模式
- 集合与其他数据结构的结合

## 集合选择决策树

- 集合选择的系统化方法
- 需求分析与特性匹配
- 性能测试与验证方法
- 集合选择的权衡与折中
- 实际项目中的集合选择案例
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.7目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/README.md" << 'EOF'
---
title: 集合框架详解
icon: collection
order: 7
---

# 集合框架详解

本节详细介绍Java集合框架的核心组件、设计原理及使用技巧，包括各种集合类型的特性、内部实现机制以及性能分析，帮助读者掌握如何在不同场景下选择和使用合适的集合类，提高代码的效率和质量。
EOF

# 创建1.1.7.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.4-集合性能优化技巧.md" << 'EOF'
---
title: 集合性能优化技巧
icon: performance
order: 4
---

# 集合性能优化技巧

## 集合初始化优化

- 合理设置初始容量避免频繁扩容
- 批量添加元素的高效方法
- 懒加载与预加载的权衡
- 集合工厂方法的高效使用
- 不可变集合的性能优势

## 访问性能优化

- 随机访问vs顺序访问的选择
- 索引结构提升查找性能
- 缓存友好的数据布局
- 局部性原理与集合性能
- 避免装箱拆箱的性能开销

## 内存占用优化

- 紧凑集合实现的选择
- 对象引用与内存泄漏防范
- 集合缩容与内存释放
- 原始类型集合vs对象集合
- 共享实例减少内存占用

## 并发性能优化

- 读多写少场景的优化策略
- 写多读少场景的集合选择
- 锁分段与细粒度锁定
- 无锁数据结构的应用
- 并发级别与吞吐量平衡

## 算法优化技巧

- 批处理操作减少迭代次数
- 避免不必要的集合转换
- 惰性计算与延迟执行
- 空间换时间的优化策略
- 时间换空间的取舍考量
EOF

# 创建1.1.7.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.5-自定义集合实现.md" << 'EOF'
---
title: 自定义集合实现
icon: custom
order: 5
---

# 自定义集合实现

## 自定义集合设计原则

- 集合接口选择与实现策略
- 抽象类复用与扩展
- 迭代器实现与一致性保证
- 线程安全性设计考量
- 性能与功能的平衡设计

## 特殊用途集合实现

- 固定大小的高性能集合
- 多键索引的复合集合
- 基于位图的紧凑集合
- 缓存感知的数据结构
- 特定领域优化的集合类

## 装饰器模式扩展集合

- 不可修改集合的实现
- 线程安全包装器设计
- 自动扩容的固定集合
- 事件通知的观察者集合
- 统计收集的计数集合

## 适配现有数据结构

- 外部数据源的集合视图
- 数据库结果集的集合适配
- 文件系统的集合表示
- 远程数据的集合抽象
- 异构系统的统一集合接口

## 自定义集合测试与验证

- 集合行为一致性测试
- 性能基准测试方法
- 并发正确性验证
- 内存占用分析技术
- 与标准集合的对比评估
EOF

# 创建1.1.7.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.6-集合操作常见陷阱.md" << 'EOF'
---
title: 集合操作常见陷阱
icon: trap
order: 6
---

# 集合操作常见陷阱

## 并发修改问题

- ConcurrentModificationException的原因与解决
- 迭代过程中修改集合的正确方法
- 快照迭代vs实时迭代的选择
- 并发集合的弱一致性视图
- 并发修改检测的实现机制

## 哈希冲突与相等性

- hashCode与equals不一致的问题
- 可变对象作为键的风险
- 哈希冲突导致的性能下降
- 自定义对象作为键的最佳实践
- 哈希表性能退化的诊断与修复

## 内存泄漏隐患

- 集合引用导致的对象滞留
- 缓存集合的内存泄漏风险
- 监听器集合的注册与注销
- 线程局部变量的清理机制
- 内存泄漏的检测与防范

## 序列化与深拷贝问题

- 集合序列化的特殊处理
- 深拷贝vs浅拷贝的选择
- 循环引用导致的序列化问题
- 自定义序列化控制机制
- 跨JVM版本的序列化兼容性

## 性能误区与陷阱

- 过度优化的常见误区
- 集合选择的性能误判
- 基准测试的常见错误
- JVM预热与即时编译影响
- 微基准测试的正确方法
EOF

# 创建1.1.7.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.7-集合框架详解/1.1.7.7-大数据量集合处理方法.md" << 'EOF'
---
title: 大数据量集合处理方法
icon: bigdata
order: 7
---

# 大数据量集合处理方法

## 内存管理策略

- 大集合的内存占用估算
- 堆内存配置与GC调优
- 对象引用层次的优化
- 数据压缩与紧凑表示
- 内存分配与回收效率

## 分块处理技术

- 数据分片与批量处理
- 滑动窗口处理大集合
- 增量处理与部分加载
- 分页查询与游标技术
- 流式处理避免全量加载

## 外部存储集成

- 磁盘支持的集合实现
- 内存映射文件的应用
- 数据库作为集合后端
- 分布式存储的集合抽象
- 混合存储策略的设计

## 并行处理方法

- 并行流处理大集合
- Fork/Join框架的应用
- 数据分区与并行计算
- 线程池配置与任务调度
- 并行处理的性能监控

## 大数据集合框架选择

- 标准集合框架的局限性
- 第三方大数据集合库对比
- 专用大数据处理框架
- 内存数据网格技术
- 选择策略与迁移路径
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.8目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/README.md" << 'EOF'
---
title: 泛型机制
icon: generic
order: 8
---

# 泛型机制

本节详细介绍Java泛型的概念、原理及应用，包括泛型的类型参数、类型擦除、通配符等核心内容，帮助读者理解泛型的设计目的和使用方法，以编写更加类型安全和可复用的代码。
EOF

# 创建1.1.8.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.1-泛型机制原理篇.md" << 'EOF'
---
title: 泛型机制原理篇
icon: principle
order: 1
---

# 泛型机制原理篇

## 泛型的基本概念

- 泛型的定义与作用
- 类型参数与类型实参
- 泛型类、泛型接口与泛型方法
- 类型安全与编译期检查
- 泛型与面向对象编程的结合

## 类型擦除机制

- Java泛型的类型擦除原理
- 编译期类型检查与运行时实现
- 原始类型(Raw Type)与类型擦除后的表示
- 桥接方法(Bridge Method)的生成与作用
- 类型擦除的局限性与影响

## 泛型的边界限定

- 上界通配符(extends)的实现机制
- 下界通配符(super)的实现机制
- 无界通配符(?)的使用场景
- 多重边界限定的实现方式
- 边界限定与类型擦除的交互

## 泛型的内部实现

- 泛型在字节码层面的表示
- 泛型与JVM类型系统的关系
- 泛型参数的运行时信息获取
- 泛型与反射API的交互
- 泛型在Java虚拟机中的执行模型

## 泛型的设计权衡

- 泛型与重载的交互问题
- 泛型与异常处理的限制
- 泛型数组创建的限制原因
- 类型擦除vs运行时类型信息
- Java泛型与C#泛型的对比分析
EOF

# 创建1.1.8.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.2-泛型设计目标与原理.md" << 'EOF'
---
title: 泛型设计目标与原理
icon: design
order: 2
---

# 泛型设计目标与原理

## 泛型的设计目标

- 类型安全的代码复用
- 编译期类型检查的增强
- 消除显式类型转换
- API设计的灵活性提升
- 与现有代码的兼容性保证

## 泛型的演进历史

- Java 5之前的集合框架问题
- 泛型引入的历史背景
- 类型擦除的设计决策原因
- 泛型在Java语言演进中的地位
- 未来Java泛型可能的发展方向

## 泛型与类型系统

- Java类型系统的基础
- 参数化类型的本质
- 类型变量与类型替换
- 子类型关系与型变(Variance)
- 泛型与Java类型系统的整合

## 泛型的实现策略

- 编译期检查与代码生成
- 类型擦除的实现细节
- 泛型信息在类文件中的保存
- 运行时类型信息的处理
- 泛型实现的性能考量

## 泛型的设计权衡

- 运行时类型安全vs兼容性
- 表达能力vs实现复杂性
- 类型擦除的优缺点分析
- 泛型重载与类型推断的限制
- 不同语言泛型实现的比较
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.8目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/README.md" << 'EOF'
---
title: 泛型机制
icon: generic
order: 8
---

# 泛型机制

本节详细介绍Java泛型的概念、原理及应用，包括泛型的类型参数、类型擦除、通配符等核心内容，帮助读者理解泛型的设计目的和使用方法，以编写更加类型安全和可复用的代码。
EOF

# 创建1.1.8.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.3-类型擦除机制.md" << 'EOF'
---
title: 类型擦除机制
icon: erasure
order: 3
---

# 类型擦除机制

## 类型擦除的基本概念

- 类型擦除的定义与目的
- Java泛型的编译时与运行时表示
- 原始类型(Raw Type)的概念
- 类型参数替换为边界类型或Object
- 类型擦除与向后兼容性的关系

## 类型擦除的实现过程

- 编译器的类型擦除处理流程
- 泛型类的字节码表示
- 泛型方法的字节码表示
- 类型参数在字节码中的消除
- 类型信息在元数据中的保留

## 桥接方法的生成

- 桥接方法(Bridge Method)的概念
- 桥接方法的生成条件与规则
- 泛型类继承中的方法签名冲突
- 桥接方法的调用机制
- 桥接方法在反射中的识别

## 类型擦除的影响

- 运行时类型信息的丢失
- instanceof操作符与泛型类型
- 泛型数组创建的限制
- 异常处理中的泛型限制
- 方法重载与类型擦除的交互

## 类型擦除的实际案例

- 集合框架中的类型擦除
- 泛型类继承层次中的类型擦除
- 泛型方法重写中的类型擦除
- 反射API中的泛型类型处理
- 类型擦除导致的常见问题与解决方案
EOF

# 创建1.1.8.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.4-泛型边界与通配符.md" << 'EOF'
---
title: 泛型边界与通配符
icon: wildcard
order: 4
---

# 泛型边界与通配符

## 泛型边界的基本概念

- 泛型边界的作用与必要性
- 上界限定(extends)的语法与语义
- 多重边界限定的实现与限制
- 类型参数的隐式边界Object
- 边界类型在类型擦除中的作用

## 通配符的类型系统

- 通配符(?)的概念与引入原因
- 上界通配符(? extends T)的使用场景
- 下界通配符(? super T)的使用场景
- 无界通配符(?)的适用情况
- 通配符捕获与辅助方法

## PECS原则

- 生产者使用extends(Producer Extends)
- 消费者使用super(Consumer Super)
- PECS原则的理论基础
- 集合框架中的PECS应用
- 实际编程中的PECS决策

## 型变(Variance)机制

- 协变(Covariance)与逆变(Contravariance)
- Java数组的协变特性
- 泛型的不变性(Invariance)
- 通配符实现的使用点型变
- 型变对类型安全的影响

## 通配符的高级应用

- 通配符与泛型方法的选择
- 递归类型边界的实现
- 通配符捕获的高级用法
- 复杂泛型签名的解读技巧
- 通配符在API设计中的最佳实践
EOF

# 创建1.1.8.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.5-泛型与多态交互.md" << 'EOF'
---
title: 泛型与多态交互
icon: polymorphism
order: 5
---

# 泛型与多态交互

## 泛型与继承的关系

- 泛型类型的继承规则
- 参数化类型之间的继承关系
- 原始类型与参数化类型的兼容性
- 泛型接口的实现与继承
- 泛型类的子类型关系

## 泛型方法的多态性

- 泛型方法的重写规则
- 桥接方法与方法重写的实现
- 类型参数的协变与逆变
- 泛型方法的动态分派
- 泛型方法重载的类型推断

## 泛型与动态绑定

- 泛型类型的运行时表示
- 动态方法调用与泛型
- 泛型参数对虚方法调用的影响
- 泛型与多态性能开销
- 泛型在多态场景中的类型安全

## 泛型与设计模式

- 工厂模式中的泛型应用
- 访问者模式与泛型的结合
- 命令模式的泛型实现
- 观察者模式中的泛型类型
- 适配器模式与泛型转换

## 泛型多态的实际案例

- 集合框架中的泛型多态
- 泛型容器与元素类型的关系
- 函数式接口中的泛型参数
- 泛型委托与代理模式
- 泛型递归与自引用类型
EOF

# 创建1.1.8.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.6-泛型局限性分析.md" << 'EOF'
---
title: 泛型局限性分析
icon: limitation
order: 6
---

# 泛型局限性分析

## 基本类型的泛型限制

- 泛型不支持基本类型的原因
- 自动装箱拆箱的性能开销
- 基本类型数组与泛型数组
- 专用集合类(如IntList)的替代方案
- 未来Java对基本类型泛型的改进方向

## 运行时类型信息缺失

- 类型擦除导致的运行时信息丢失
- 泛型类型的instanceof检查限制
- 泛型类的Class对象问题
- 反射API中的泛型类型处理
- 运行时类型信息的替代方案

## 泛型数组创建的限制

- 泛型数组创建的编译错误原因
- 类型安全与数组协变性的冲突
- 泛型数组的替代实现方法
- 集合类作为数组的替代品
- 泛型数组创建的变通方法与风险

## 异常处理的泛型限制

- 泛型类型不能用于异常捕获
- 泛型类不能继承Throwable
- 泛型方法不能声明throws T
- 异常处理中的类型安全问题
- 泛型异常处理的设计模式

## 重载与类型擦除的冲突

- 类型擦除导致的方法签名冲突
- 泛型方法重载的限制
- 桥接方法与方法重载的交互
- 编译器对重载泛型方法的处理
- 泛型重载设计中的最佳实践
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.8目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/README.md" << 'EOF'
---
title: 泛型机制
icon: generic
order: 8
---

# 泛型机制

本节详细介绍Java泛型的概念、原理及应用，包括泛型的类型参数、类型擦除、通配符等核心内容，帮助读者理解泛型的设计目的和使用方法，以编写更加类型安全和可复用的代码。
EOF

# 创建1.1.8.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.2-泛型机制实战篇.md" << 'EOF'
---
title: 泛型机制实战篇
icon: practice
order: 2
---

# 泛型机制实战篇

## 泛型在集合框架中的应用

- 类型安全的集合操作
- 泛型集合的遍历与操作
- 集合转换与类型保持
- 嵌套泛型集合的处理
- 集合框架API设计中的泛型应用

## 泛型在设计模式中的应用

- 工厂模式的泛型实现
- 单例模式与泛型的结合
- 构建器模式中的泛型链式调用
- 适配器模式的泛型转换
- 观察者模式的泛型事件处理

## 泛型与函数式编程

- 泛型函数式接口的设计
- Lambda表达式与类型推断
- 方法引用中的泛型处理
- Stream API中的泛型应用
- 函数组合与泛型类型安全

## 泛型在框架设计中的应用

- Spring框架中的泛型应用
- ORM框架中的泛型实体映射
- 依赖注入容器的泛型支持
- RESTful API中的泛型响应处理
- 测试框架中的泛型断言

## 泛型实战最佳实践

- 泛型命名约定与可读性
- 泛型API的文档编写技巧
- 泛型代码的单元测试策略
- 泛型重构与代码优化
- 泛型相关的性能考量
EOF

# 创建1.1.8.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.3-泛型类与方法设计.md" << 'EOF'
---
title: 泛型类与方法设计
icon: design
order: 3
---

# 泛型类与方法设计

## 泛型类设计原则

- 泛型类的基本结构与语法
- 类型参数命名约定与含义
- 静态成员与泛型类型参数
- 泛型类的继承与实现
- 嵌套泛型类的设计考量

## 泛型方法设计技巧

- 泛型方法的声明与语法
- 类型参数推断机制
- 静态泛型方法的实现
- 泛型构造器的应用
- 泛型方法与泛型类的结合

## 泛型接口设计模式

- 泛型接口的定义与实现
- 接口中的类型参数约束
- 多个泛型接口的组合
- 泛型接口的默认方法
- 函数式接口中的泛型应用

## 类型参数约束设计

- 有界类型参数的使用场景
- 多重边界约束的实现
- 递归类型约束的应用
- 类型参数间的依赖关系
- 约束设计中的常见陷阱

## 泛型组件的API设计

- 泛型API的易用性设计
- 类型参数的数量与位置
- 泛型方法重载的设计考量
- 泛型与非泛型代码的互操作
- 向后兼容性的泛型设计
EOF

# 创建1.1.8.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.4-泛型边界实际应用.md" << 'EOF'
---
title: 泛型边界实际应用
icon: boundary
order: 4
---

# 泛型边界实际应用

## 上界通配符应用场景

- 只读数据结构的设计
- 生产者模式中的类型安全
- 集合框架中的上界应用
- 类型协变的实现方式
- 上界通配符的性能考量

## 下界通配符应用场景

- 数据写入操作的类型安全
- 消费者模式中的类型保证
- 集合添加操作的类型控制
- 类型逆变的实现技术
- 下界通配符的使用限制

## 无界通配符实用技巧

- 类型无关操作的实现
- 未知类型的集合处理
- Object方法调用的安全性
- 泛型擦除后的等价形式
- 无界通配符与原始类型的区别

## 多重边界约束实例

- 组合多个接口约束
- 类与接口组合约束
- 递归类型约束的实际应用
- 自引用泛型类型的设计
- 复杂约束下的类型推断

## 边界设计实战案例

- 数值计算库中的类型约束
- 树形结构中的节点类型控制
- 事件处理系统的类型安全
- 插件框架中的类型边界
- 数据转换器的边界设计
EOF

# 创建1.1.8.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.5-泛型通配符使用技巧.md" << 'EOF'
---
title: 泛型通配符使用技巧
icon: technique
order: 5
---

# 泛型通配符使用技巧

## PECS原则实战应用

- 生产者使用extends的实际案例
- 消费者使用super的代码示例
- 混合读写操作的通配符选择
- 集合框架API中的PECS应用
- PECS原则的例外情况与处理

## 通配符捕获技术

- 通配符捕获的基本概念
- 辅助方法设计与实现
- 捕获转换为具体类型参数
- 多个通配符的协同捕获
- 捕获避免的常见错误

## 复杂泛型签名解析

- 嵌套通配符的理解方法
- 多层泛型结构的类型分析
- 复杂泛型签名的简化技巧
- 泛型方法与通配符的选择
- 类型推断与显式类型参数

## 通配符与集合操作

- 异构集合的安全处理
- 集合复制与转换操作
- 集合过滤与映射技术
- 集合视图与包装器实现
- 不可变集合的类型保证

## 通配符常见陷阱与解决

- 通配符类型不能用作返回类型
- 通配符与泛型方法的取舍
- 过度使用通配符的可读性问题
- 通配符嵌套的复杂性控制
- 通配符相关编译错误的解读
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.8目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/README.md" << 'EOF'
---
title: 泛型机制
icon: generic
order: 8
---

# 泛型机制

本节详细介绍Java泛型的概念、原理及应用，包括泛型的类型参数、类型擦除、通配符等核心内容，帮助读者理解泛型的设计目的和使用方法，以编写更加类型安全和可复用的代码。
EOF

# 创建1.1.8.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.6-常见泛型错误分析.md" << 'EOF'
---
title: 常见泛型错误分析
icon: error
order: 6
---

# 常见泛型错误分析

## 类型擦除相关错误

- 泛型类型不能用于instanceof检查
- 泛型类不能直接继承Throwable
- 不能创建泛型类型的数组
- 静态上下文中引用类型参数
- 类型擦除导致的方法冲突

## 通配符使用错误

- 通配符类型作为返回类型
- 通配符类型参数的修改限制
- 过度嵌套的通配符类型
- 通配符捕获转换错误
- PECS原则应用不当

## 类型参数约束错误

- 类型参数自引用约束问题
- 多重边界中的冲突方法
- 类型参数与原始类型混用
- 边界类型的继承关系错误
- 类型参数约束过于复杂

## 泛型与反射交互错误

- 泛型类型在反射中的处理
- 泛型数组创建的反射方式
- 泛型类的Class对象问题
- 泛型方法的反射调用
- 反射API中的类型安全问题

## 常见错误的修复方法

- 类型安全的泛型数组替代方案
- 通配符类型的正确使用模式
- 泛型与非泛型代码的安全交互
- 复杂泛型签名的简化技巧
- 泛型错误的调试与诊断方法
EOF

# 创建1.1.8.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.8-泛型机制/1.1.8.7-框架设计中的泛型应用.md" << 'EOF'
---
title: 框架设计中的泛型应用
icon: framework
order: 7
---

# 框架设计中的泛型应用

## Spring框架中的泛型

- Spring的ResolvableType机制
- 泛型依赖注入的实现
- 泛型Repository的设计
- 泛型事件处理系统
- Spring中的泛型类型解析

## ORM框架中的泛型

- JPA中的泛型实体映射
- Hibernate的泛型DAO模式
- MyBatis的泛型Mapper接口
- 泛型与数据库类型转换
- ORM框架中的泛型查询构建

## Web框架中的泛型

- RESTful API的泛型响应封装
- 泛型控制器的设计模式
- 请求参数的泛型绑定
- 泛型视图与模板渲染
- 泛型异常处理机制

## 函数式框架中的泛型

- 函数式接口的泛型设计
- 响应式编程中的泛型流
- CompletableFuture的泛型链式调用
- 函数组合中的类型安全
- 泛型与函数式编程的结合点

## 自定义框架的泛型设计

- API设计中的泛型最佳实践
- 泛型工厂与构建器模式
- 插件系统的泛型扩展点
- 类型安全的配置系统
- 泛型在框架演进中的兼容性
EOF

# 创建1.1.9目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/README.md" << 'EOF'
---
title: IO与NIO
icon: io
order: 9
---

# IO与NIO

本节详细介绍Java的输入输出(I/O)系统，包括传统的阻塞式I/O和新I/O(NIO)，涵盖文件操作、网络通信、缓冲区管理等内容，帮助读者理解Java I/O的工作原理和使用方法，以实现高效的数据处理和传输。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.9目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/README.md" << 'EOF'
---
title: IO与NIO
icon: io
order: 9
---

# IO与NIO

本节详细介绍Java的输入输出(I/O)系统，包括传统的阻塞式I/O和新I/O(NIO)，涵盖文件操作、网络通信、缓冲区管理等内容，帮助读者理解Java I/O的工作原理和使用方法，以实现高效的数据处理和传输。
EOF

# 创建1.1.9.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.1-IO与NIO原理篇.md" << 'EOF'
---
title: IO与NIO原理篇
icon: principle
order: 1
---

# IO与NIO原理篇

## I/O基础概念

- 输入输出的基本定义
- 流(Stream)的概念与特性
- 字节流与字符流的区别
- 同步I/O与异步I/O的概念
- 阻塞I/O与非阻塞I/O的区别

## Java I/O演进历史

- Java 1.0的基础I/O API
- Java 1.1的Reader/Writer体系
- Java 1.4引入的NIO
- Java 7的NIO.2增强
- Java各版本I/O能力的演进

## I/O模型分类

- 阻塞I/O模型(BIO)
- 非阻塞I/O模型(NIO)
- I/O多路复用模型
- 信号驱动I/O模型
- 异步I/O模型(AIO)

## 操作系统I/O实现

- 用户空间与内核空间
- 系统调用与I/O操作
- 缓冲区与数据复制
- 零拷贝技术原理
- 操作系统I/O调度

## Java I/O与操作系统交互

- JVM对系统I/O的封装
- 本地方法与系统调用
- JNI在I/O实现中的角色
- 文件描述符与Java对象的映射
- I/O性能与系统资源管理
EOF

# 创建1.1.9.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.2-JavaIO模型设计.md" << 'EOF'
---
title: JavaIO模型设计
icon: design
order: 2
---

# JavaIO模型设计

## 流式I/O设计模式

- 装饰器模式在I/O流中的应用
- 适配器模式与流转换
- 组合模式与流嵌套
- 工厂方法与流创建
- 模板方法在流操作中的应用

## 字节流体系结构

- InputStream抽象类设计
- OutputStream抽象类设计
- 字节流的层次结构
- 基础字节流实现类分析
- 过滤器流与功能扩展

## 字符流体系结构

- Reader抽象类设计
- Writer抽象类设计
- 字符流的层次结构
- 字符编码与解码机制
- 桥接模式在字节流转字符流中的应用

## 缓冲策略设计

- 缓冲区的设计原理
- 缓冲流的实现机制
- 缓冲区大小与性能关系
- 刷新策略与数据一致性
- 自定义缓冲策略的实现

## I/O异常处理设计

- I/O异常体系结构
- 检查型异常的设计考量
- 资源关闭与异常处理
- try-with-resources机制
- I/O操作的错误恢复策略
EOF

# 创建1.1.9.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.3-阻塞与非阻塞IO原理.md" << 'EOF'
---
title: 阻塞与非阻塞IO原理
icon: blocking
order: 3
---

# 阻塞与非阻塞IO原理

## 阻塞I/O工作原理

- 阻塞I/O的定义与特性
- 线程阻塞的内部机制
- 阻塞I/O的系统调用过程
- 阻塞读写操作的实现
- 阻塞I/O的优缺点分析

## 非阻塞I/O工作原理

- 非阻塞I/O的定义与特性
- 非阻塞模式的设置方法
- 轮询机制与就绪状态检查
- 非阻塞读写操作的实现
- 非阻塞I/O的优缺点分析

## I/O多路复用技术

- 多路复用的基本概念
- select/poll/epoll机制对比
- Java中的Selector实现
- 事件驱动模型与回调机制
- 多路复用的性能优势

## 阻塞与非阻塞的选择

- 应用场景的特性分析
- 连接数量对I/O模型的影响
- 响应时间与吞吐量的权衡
- 开发复杂度与维护成本
- 混合使用不同I/O模型的策略

## 异步I/O与非阻塞的区别

- 异步I/O的定义与特性
- 异步I/O的完成通知机制
- Java AIO的实现原理
- 异步I/O与非阻塞I/O的对比
- 操作系统对异步I/O的支持情况
EOF

# 创建1.1.9.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.4-NIOBuffer实现机制.md" << 'EOF'
---
title: NIOBuffer实现机制
icon: buffer
order: 4
---

# NIOBuffer实现机制

## Buffer基础设计

- Buffer类的核心属性
- 容量、位置、限制、标记的概念
- Buffer的类型体系结构
- 直接缓冲区与非直接缓冲区
- Buffer操作的状态转换

## Buffer内存模型

- 堆内存与堆外内存的区别
- 直接内存的分配与释放
- 内存映射的实现机制
- 字节序(ByteOrder)处理
- 内存对齐与访问效率

## Buffer操作原理

- flip()、clear()、rewind()的实现
- 相对操作与绝对操作的区别
- 批量传输的实现机制
- 视图缓冲区的工作原理
- 只读缓冲区的实现方式

## Channel与Buffer交互

- Channel的基本概念与类型
- 读写操作的数据流向
- scatter/gather操作的实现
- 文件锁定与共享访问
- 异步通道操作的缓冲区管理

## Buffer性能优化

- 缓冲区大小的选择策略
- 直接缓冲区的使用时机
- 缓冲区复用与池化技术
- 避免缓冲区碎片化
- 大数据量传输的优化方法
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.9目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/README.md" << 'EOF'
---
title: IO与NIO
icon: io
order: 9
---

# IO与NIO

本节详细介绍Java的输入输出(I/O)系统，包括传统的阻塞式I/O和新I/O(NIO)，涵盖文件操作、网络通信、缓冲区管理等内容，帮助读者理解Java I/O的工作原理和使用方法，以实现高效的数据处理和传输。
EOF

# 创建1.1.9.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.5-Channel与Selector工作原理.md" << 'EOF'
---
title: Channel与Selector工作原理
icon: channel
order: 5
---

# Channel与Selector工作原理

## Channel基本概念

- Channel的定义与特性
- Channel与Stream的区别
- 双向传输与非阻塞特性
- Channel的主要类型与层次结构
- Channel的生命周期管理

## Channel实现机制

- FileChannel的实现原理
- SocketChannel的实现原理
- DatagramChannel的实现原理
- ServerSocketChannel的实现原理
- 管道(Pipe)通道的内部机制

## Selector核心原理

- 多路复用器的基本概念
- Selector的内部数据结构
- 事件注册与兴趣集(Interest Set)
- 就绪集(Ready Set)与事件检测
- 操作系统多路复用实现差异

## 选择过程详解

- select()方法的阻塞机制
- selectNow()的非阻塞实现
- 唤醒机制与wakeup()方法
- 选择键(SelectionKey)的状态管理
- 事件循环的实现模式

## Channel与Selector协作

- 通道注册与选择键创建
- 事件处理的完整流程
- 取消注册与资源释放
- 并发访问的同步处理
- 高效协作的最佳实践
EOF

# 创建1.1.9.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.6-零拷贝技术实现.md" << 'EOF'
---
title: 零拷贝技术实现
icon: zerocopy
order: 6
---

# 零拷贝技术实现

## 传统I/O的拷贝过程

- 用户空间与内核空间
- 传统I/O的四次拷贝
- 上下文切换的开销
- DMA传输与CPU拷贝
- 传统I/O的性能瓶颈

## 零拷贝的基本原理

- 零拷贝的定义与目标
- 减少数据拷贝次数的策略
- 减少上下文切换的方法
- 零拷贝的实现方式概述
- 零拷贝对性能的提升

## mmap+write实现

- 内存映射的工作原理
- mmap系统调用的功能
- 减少拷贝次数的实现机制
- Java中的MappedByteBuffer
- mmap方式的适用场景

## sendfile实现方式

- sendfile系统调用的原理
- 数据传输的直接路径
- Java中的transferTo方法
- 操作系统对sendfile的支持
- sendfile方式的性能特点

## 直接内存访问

- DirectBuffer的实现机制
- 堆外内存的分配与管理
- JNI与本地内存操作
- 垃圾回收对直接内存的影响
- 直接内存使用的最佳实践
EOF

# 创建1.1.9.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.2-IO与NIO实战篇.md" << 'EOF'
---
title: IO与NIO实战篇
icon: practice
order: 2
---

# IO与NIO实战篇

## 文件操作实战

- 文件读写的高效实现
- 大文件处理的优化策略
- 随机访问文件的应用场景
- 文件锁定与并发访问控制
- 临时文件的创建与管理

## 网络通信实战

- 基于NIO的TCP服务器实现
- 非阻塞客户端的设计模式
- UDP数据报的高效处理
- 多路复用服务器的线程模型
- 网络超时与连接管理

## 序列化与对象传输

- 对象序列化的实现方式
- 自定义序列化的性能优化
- 跨平台数据交换格式
- 大对象序列化的内存考量
- 版本兼容性的处理策略

## 字符编码处理

- 国际化应用的编码设计
- 字符集转换的正确实现
- 乱码问题的诊断与解决
- BOM标记的处理方法
- 多语言环境的I/O设计

## 高性能I/O设计模式

- Reactor模式的实现与应用
- Proactor模式的异步I/O处理
- 生产者-消费者模式的缓冲区设计
- 线程池与I/O操作的结合
- 背压(Backpressure)机制的实现
EOF

# 创建1.1.9.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.3-IO模型选择策略.md" << 'EOF'
---
title: IO模型选择策略
icon: strategy
order: 3
---

# IO模型选择策略

## 应用场景分析

- 连接数量对I/O模型的影响
- 数据传输特性的考量
- 响应时间与吞吐量需求
- 资源消耗与系统限制
- 开发复杂度与维护成本

## BIO适用场景

- 连接数少的简单应用
- 每连接数据量大的传输
- 实时性要求不高的服务
- 开发周期短的原型系统
- 与传统代码兼容的场景

## NIO适用场景

- 高并发连接的服务器
- 非阻塞操作的实时应用
- 需要精细控制资源的系统
- I/O多路复用的事件驱动模型
- 需要高吞吐量的网络应用

## AIO适用场景

- 读写操作耗时长的应用
- 需要真正异步通知的系统
- 大文件处理的后台任务
- 操作系统支持良好的环境
- 复杂业务逻辑的并行处理

## 混合I/O模型策略

- 不同I/O模型的组合使用
- 主从Reactor的混合架构
- 阻塞与非阻塞操作的协调
- 同步与异步处理的平衡
- 性能瓶颈的识别与优化
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.9目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/README.md" << 'EOF'
---
title: IO与NIO
icon: io
order: 9
---

# IO与NIO

本节详细介绍Java的输入输出(I/O)系统，包括传统的阻塞式I/O和新I/O(NIO)，涵盖文件操作、网络通信、缓冲区管理等内容，帮助读者理解Java I/O的工作原理和使用方法，以实现高效的数据处理和传输。
EOF

# 创建1.1.9.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.4-文件处理最佳实践.md" << 'EOF'
---
title: 文件处理最佳实践
icon: file
order: 4
---

# 文件处理最佳实践

## 文件读写策略

- 小文件vs大文件的处理方式
- 缓冲区大小的优化选择
- 顺序读写vs随机访问
- 字节流vs字符流的选择
- 同步写入vs延迟写入

## 文件操作模式

- 传统IO的文件处理模式
- NIO的内存映射文件技术
- 随机访问文件的应用场景
- 临时文件的创建与管理
- 文件锁定与并发访问控制

## 文件格式处理

- 文本文件的编码处理
- 二进制文件的结构设计
- CSV/JSON/XML文件的高效处理
- 自定义文件格式的实现
- 跨平台文件格式的兼容性

## 文件系统交互

- 文件元数据的获取与修改
- 目录操作与文件遍历
- 文件监控与变更通知
- 符号链接与硬链接处理
- 文件权限与安全控制

## 文件IO异常处理

- 常见文件IO异常的分类
- 异常恢复与重试策略
- 资源释放的保证机制
- 文件损坏的检测与修复
- 分布式环境的文件异常处理
EOF

# 创建1.1.9.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.5-NIO高性能实现技巧.md" << 'EOF'
---
title: NIO高性能实现技巧
icon: performance
order: 5
---

# NIO高性能实现技巧

## Buffer优化技术

- 直接缓冲区的高效使用
- 缓冲区容量的合理设置
- 缓冲区复用与池化管理
- 视图缓冲区的应用场景
- 避免缓冲区碎片化

## Channel高效应用

- 批量数据传输的实现
- Scatter/Gather操作的优势
- 文件通道的位置控制
- 通道间直接传输的应用
- 异步通道操作的实现

## Selector性能调优

- 选择器的高效配置
- 事件处理的优化策略
- 避免空轮询的技术
- 多选择器的负载均衡
- 选择器的并发访问控制

## 内存管理优化

- 堆外内存的合理使用
- 内存分配与回收的控制
- 避免频繁的GC干扰
- 内存映射的大小控制
- 内存泄漏的检测与防范

## 并发处理模型

- Reactor模式的实现优化
- 工作线程池的合理配置
- 任务分发的高效策略
- 避免线程竞争的设计
- 非阻塞算法的应用
EOF

# 创建1.1.9.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.6-网络编程中的NIO应用.md" << 'EOF'
---
title: 网络编程中的NIO应用
icon: network
order: 6
---

# 网络编程中的NIO应用

## NIO网络服务器架构

- 单线程Reactor模式
- 多线程Reactor模式
- 主从Reactor模式
- 事件驱动的服务器设计
- 可扩展的服务器架构

## TCP连接管理

- 非阻塞连接的建立
- 连接状态的监控与管理
- 空闲连接的检测与清理
- 连接超时的处理机制
- 优雅关闭的实现方法

## 数据传输优化

- 粘包与拆包问题的解决
- 消息边界的确定策略
- 数据压缩与解压缩
- 批量数据的高效传输
- 流量控制与背压机制

## 协议实现技巧

- 基于NIO的协议设计
- 协议解析的状态机实现
- 协议版本兼容性处理
- 二进制协议vs文本协议
- 自定义协议的性能优化

## 安全性考量

- SSL/TLS在NIO中的实现
- 加密通道的性能优化
- 认证与授权的处理
- 防止拒绝服务攻击
- 数据完整性的保证
EOF

# 创建1.1.9.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.9-IO与NIO/1.1.9.7-IO性能优化方法.md" << 'EOF'
---
title: IO性能优化方法
icon: optimize
order: 7
---

# IO性能优化方法

## 性能瓶颈分析

- IO操作的性能指标
- 系统资源使用监控
- IO栈的性能分析工具
- 常见IO瓶颈的识别
- 性能测试与基准比较

## 系统层面优化

- 操作系统IO参数调优
- 文件系统选择与配置
- 磁盘与存储设备优化
- 网络协议栈的调优
- JVM对IO性能的影响

## 代码层面优化

- 避免频繁的小数据IO
- 减少系统调用的次数
- 异步操作与并行处理
- 预读取与延迟写入策略
- 资源复用与池化技术

## 缓存策略应用

- 多级缓存的设计与实现
- 缓存一致性的保证
- 缓存失效与更新策略
- 分布式缓存的应用
- 写入缓存与写回策略

## 高级IO优化技术

- 零拷贝技术的应用场景
- 内存映射的最佳实践
- 异步IO的实现与优化
- NUMA架构下的IO优化
- IO调度与优先级控制
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.10目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/README.md" << 'EOF'
---
title: 反射与注解
icon: reflection
order: 10
---

# 反射与注解

本节详细介绍Java的反射机制和注解技术，包括动态获取类信息、调用方法、访问字段，以及自定义注解的创建和处理等内容，帮助读者理解这些强大特性的工作原理和应用场景，为框架开发和元编程打下基础。
EOF

# 创建1.1.10.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.1-反射与注解原理篇.md" << 'EOF'
---
title: 反射与注解原理篇
icon: principle
order: 1
---

# 反射与注解原理篇

## 反射基础概念

- 反射的定义与作用
- Class对象与类加载
- 类型信息的运行时表示
- 反射与静态类型系统的关系
- Java反射API的整体架构

## 注解基础概念

- 注解的定义与本质
- 元注解与注解类型
- 注解的保留策略
- 注解的目标元素
- 注解与反射的关联

## 反射的内部实现

- JVM中的类型信息存储
- 反射调用的内部机制
- 方法句柄与方法调用
- 反射访问控制的实现
- 反射性能开销的原因

## 注解的处理机制

- 编译时注解处理器
- 运行时注解的获取与解析
- 注解信息的缓存策略
- 注解继承的实现原理
- 注解在字节码中的表示

## 反射与注解的安全性

- 反射破坏封装的风险
- 访问控制与安全管理器
- 反射攻击的防范措施
- 注解数据的验证机制
- 反射与注解在安全环境中的限制
EOF

# 创建1.1.10.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.2-反射机制实现原理.md" << 'EOF'
---
title: 反射机制实现原理
icon: implementation
order: 2
---

# 反射机制实现原理

## Class对象的生命周期

- Class对象的创建时机
- 类加载器与Class对象的关系
- Class对象的缓存机制
- Class对象的内存布局
- Class对象的垃圾回收特性

## 类型信息的内部表示

- 类型描述符的格式
- 字段信息的存储结构
- 方法信息的表示方式
- 构造器的特殊处理
- 泛型信息的擦除与保留

## 反射调用的执行流程

- 方法查找与解析过程
- 参数匹配与类型转换
- 访问权限的检查机制
- 反射调用的分派实现
- JIT编译器对反射的优化

## 反射缓存与性能优化

- JDK内部的反射缓存
- 反射数据的软引用管理
- 方法句柄与invokedynamic
- Lookup类的快速反射实现
- 反射调用的性能优化技术

## 反射的底层实现差异

- HotSpot VM的反射实现
- 不同JDK版本的实现变化
- 反射实现的平台差异
- 反射在Android中的特殊处理
- 反射实现的未来发展趋势
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.10目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/README.md" << 'EOF'
---
title: 反射与注解
icon: reflection
order: 10
---

# 反射与注解

本节详细介绍Java的反射机制和注解技术，包括动态获取类信息、调用方法、访问字段，以及自定义注解的创建和处理等内容，帮助读者理解这些强大特性的工作原理和应用场景，为框架开发和元编程打下基础。
EOF

# 创建1.1.10.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.3-类加载与反射关系.md" << 'EOF'
---
title: 类加载与反射关系
icon: classloader
order: 3
---

# 类加载与反射关系

## 类加载机制概述

- 类加载的生命周期阶段
- 加载、链接与初始化过程
- 类加载器的层次结构
- 双亲委派模型的工作原理
- 类加载器与命名空间隔离

## Class对象的创建时机

- 类加载过程中的Class对象创建
- Class.forName与ClassLoader.loadClass的区别
- 显式加载与隐式加载
- 类初始化触发条件
- Class对象与类元数据的关系

## 反射与类加载的交互

- 反射API触发的类加载行为
- 反射获取类信息的内部机制
- 类加载器在反射中的角色
- 反射访问非公开成员的加载要求
- 反射与类加载安全性考量

## 动态类加载与反射应用

- 运行时动态加载类的技术
- 插件系统的类加载设计
- 热部署与类加载隔离
- OSGi等模块系统的类加载机制
- 自定义类加载器与反射的结合

## 类加载与反射的性能影响

- 类加载对应用启动性能的影响
- 反射操作触发的类加载开销
- 类加载缓存与反射缓存
- 预加载策略与懒加载权衡
- 类加载与反射性能优化方法
EOF

# 创建1.1.10.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.4-注解设计与实现机制.md" << 'EOF'
---
title: 注解设计与实现机制
icon: annotation
order: 4
---

# 注解设计与实现机制

## 注解类型定义

- 注解类型的声明语法
- 注解元素的类型限制
- 元素默认值的设定
- 注解的继承与组合
- 注解设计的最佳实践

## 元注解详解

- @Retention的保留策略
- @Target的应用范围限定
- @Documented的文档生成
- @Inherited的继承特性
- @Repeatable的重复注解机制

## 注解的内部表示

- 注解在字节码中的存储
- 注解属性的编码方式
- 注解与接口的关系
- 注解信息的类文件结构
- 注解在JVM中的表示形式

## 注解的编译时处理

- 注解处理器的工作机制
- JSR 269 API的使用方法
- 代码生成与元数据处理
- 编译时验证与错误报告
- 注解处理器的开发流程

## 自定义注解设计模式

- 标记注解的使用场景
- 配置注解的设计原则
- 元数据注解的信息提取
- 行为注解的处理策略
- 组合注解的复杂设计
EOF

# 创建1.1.10.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.5-运行时注解处理流程.md" << 'EOF'
---
title: 运行时注解处理流程
icon: runtime
order: 5
---

# 运行时注解处理流程

## 运行时注解获取

- 反射API获取注解的方法
- getAnnotation与getAnnotations的区别
- 获取继承的注解信息
- 重复注解的访问方式
- 注解存在性的检查机制

## 注解信息解析

- 注解属性的访问方法
- 注解值的类型转换
- 默认值的处理机制
- 注解数据的验证策略
- 复杂注解结构的解析

## 注解处理器设计模式

- 注解处理器的职责划分
- 处理器注册与发现机制
- 链式处理器的实现
- 注解处理的上下文管理
- 处理结果的收集与聚合

## 注解缓存策略

- 注解信息的缓存必要性
- 缓存粒度与失效策略
- 弱引用与软引用缓存
- 并发环境下的缓存同步
- 缓存对性能的影响评估

## 框架中的注解处理

- Spring框架的注解处理机制
- JPA中的注解解析流程
- 测试框架的注解处理
- 依赖注入容器的注解支持
- Web框架中的注解处理模式
EOF

# 创建1.1.10.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.6-反射性能开销分析.md" << 'EOF'
---
title: 反射性能开销分析
icon: performance
order: 6
---

# 反射性能开销分析

## 反射性能开销来源

- 类型信息的查找开销
- 访问检查的性能影响
- 装箱拆箱的额外开销
- 动态分派的间接性
- 即时编译优化的限制

## 反射调用的性能测试

- 反射与直接调用的性能对比
- 不同反射操作的性能差异
- JDK版本对反射性能的影响
- 反射调用频率与性能关系
- 基准测试的正确方法

## 反射性能优化技术

- 缓存反射对象的策略
- setAccessible的性能提升
- 方法句柄的高效调用
- 反射调用的批处理优化
- JIT编译器对反射的优化

## 反射替代方案

- 代码生成替代运行时反射
- 接口与多态替代反射调用
- 注解处理器的静态生成
- 动态代理的性能特性
- 方法引用与Lambda表达式

## 实际应用中的性能权衡

- 反射使用的场景评估
- 开发效率与运行效率的平衡
- 反射在热点代码中的处理
- 性能关键应用的反射策略
- 反射性能问题的诊断方法
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.10目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/README.md" << 'EOF'
---
title: 反射与注解
icon: reflection
order: 10
---

# 反射与注解

本节详细介绍Java的反射机制和注解技术，包括动态获取类信息、调用方法、访问字段，以及自定义注解的创建和处理等内容，帮助读者理解这些强大特性的工作原理和应用场景，为框架开发和元编程打下基础。
EOF

# 创建1.1.10.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.2-反射与注解实战篇.md" << 'EOF'
---
title: 反射与注解实战篇
icon: practice
order: 2
---

# 反射与注解实战篇

## 反射在框架中的应用

- Spring框架中的反射应用
- ORM框架的对象映射实现
- 依赖注入容器的反射机制
- 序列化框架的反射技术
- AOP实现中的反射应用

## 注解驱动的开发模式

- 声明式编程与注解
- 配置简化与代码减少
- 元数据驱动的代码执行
- 注解与约定优于配置
- 注解在DSL中的应用

## 反射与动态代理

- JDK动态代理的实现原理
- CGLIB等字节码生成技术
- 代理模式的反射实现
- 动态代理的性能考量
- AOP切面的动态织入

## 注解在测试中的应用

- JUnit中的注解使用
- 测试用例的参数化
- 测试环境的配置与管理
- 断言增强与验证
- 测试报告的自动生成

## 反射与注解的实战案例

- 自定义ORM框架的实现
- 基于注解的验证框架
- 配置系统的反射实现
- 插件系统的动态加载
- 元编程技术在实际项目中的应用
EOF

# 创建1.1.10.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.3-反射API使用技巧.md" << 'EOF'
---
title: 反射API使用技巧
icon: api
order: 3
---

# 反射API使用技巧

## 获取类信息的技巧

- 多种获取Class对象的方法
- 类型信息的完整获取
- 泛型类型的反射处理
- 内部类与匿名类的反射
- 数组与原始类型的反射特殊性

## 成员访问的最佳实践

- 字段的获取与操作技巧
- 方法的查找与调用策略
- 构造器的反射创建对象
- 私有成员的访问控制
- 反射访问的异常处理

## 反射性能优化

- 反射对象的缓存策略
- setAccessible的正确使用
- 批量操作的性能提升
- 避免不必要的反射调用
- 反射与直接调用的平衡

## 反射安全处理

- 反射操作的权限控制
- 安全管理器的配置与使用
- 防止反射攻击的措施
- 敏感数据的保护策略
- 反射在受限环境中的应用

## 反射调试与排错

- 反射错误的常见原因
- 类型不匹配问题的诊断
- 访问权限异常的处理
- 反射操作的日志记录
- 反射代码的单元测试
EOF

# 创建1.1.10.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.4-自定义注解设计.md" << 'EOF'
---
title: 自定义注解设计
icon: design
order: 4
---

# 自定义注解设计

## 注解类型设计原则

- 注解的职责单一原则
- 注解元素的命名规范
- 默认值的合理设置
- 注解的组合与复用
- 注解文档的编写要点

## 常见注解类型模式

- 标记注解的使用场景
- 单值注解的简化设计
- 配置型注解的属性设计
- 元数据注解的信息结构
- 组合注解的模块化设计

## 注解的保留策略选择

- SOURCE级别的编译时注解
- CLASS级别的字节码注解
- RUNTIME级别的运行时注解
- 不同保留策略的应用场景
- 保留策略对性能的影响

## 注解目标元素限定

- 类型注解的应用
- 方法注解的设计考量
- 字段注解的访问控制
- 参数注解的处理特点
- 局部变量注解的限制

## 注解继承与组合策略

- @Inherited元注解的使用
- 注解继承的限制与规则
- 注解组合的实现方式
- 元注解的复合应用
- 注解继承在框架中的应用
EOF

# 创建1.1.10.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.5-注解处理器实现.md" << 'EOF'
---
title: 注解处理器实现
icon: processor
order: 5
---

# 注解处理器实现

## 编译时注解处理

- JSR 269 API的基本使用
- 注解处理器的注册机制
- 处理轮次与增量编译
- 代码生成的实现方法
- 编译错误与警告的报告

## 运行时注解处理

- 反射获取注解的方法
- 注解处理器的设计模式
- 注解信息的解析与验证
- 注解处理的上下文管理
- 处理结果的收集与应用

## 注解处理器框架设计

- 处理器的职责划分
- 处理器链的实现
- 处理器的注册与发现
- 处理结果的传递机制
- 异常处理与错误恢复

## 代码生成技术

- 源代码生成的API使用
- 模板引擎在代码生成中的应用
- 生成代码的格式化与优化
- 增量代码生成的实现
- 生成代码的调试与测试

## 注解处理器实战案例

- 自动生成Builder模式
- DAO层代码的自动生成
- REST接口的注解处理
- 配置文件的自动生成
- 样板代码的消除技术
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/README.md" << 'EOF'
---
title: Java语言基础
icon: java
order: 1
---

# Java语言基础

本节介绍Java编程语言的基础知识，包括Java的历史、特性、基本语法结构和开发环境搭建等内容，为学习Java打下坚实基础。
EOF

# 创建1.1.10目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/README.md" << 'EOF'
---
title: 反射与注解
icon: reflection
order: 10
---

# 反射与注解

本节详细介绍Java的反射机制和注解技术，包括动态获取类信息、调用方法、访问字段，以及自定义注解的创建和处理等内容，帮助读者理解这些强大特性的工作原理和应用场景，为框架开发和元编程打下基础。
EOF

# 创建1.1.10.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.6-框架中的反射应用.md" << 'EOF'
---
title: 框架中的反射应用
icon: framework
order: 6
---

# 框架中的反射应用

## Spring框架中的反射

- 依赖注入的反射实现
- Bean容器的反射机制
- 属性注入与方法注入
- AOP的动态代理实现
- Spring中的类型转换系统

## ORM框架的反射应用

- 对象关系映射的实现原理
- 实体类与数据表的映射
- 属性与字段的自动映射
- 延迟加载的动态代理
- 查询结果的对象转换

## Web框架中的反射

- MVC控制器的参数绑定
- 请求映射的注解处理
- 视图解析与模型绑定
- REST接口的参数解析
- 拦截器与过滤器的动态应用

## 序列化框架的反射技术

- JSON序列化的字段访问
- XML绑定的对象映射
- 自定义序列化的实现
- 类型适配器的动态注册
- 循环引用的处理机制

## 测试框架的反射应用

- 单元测试的自动发现
- 测试用例的动态执行
- Mock对象的动态创建
- 测试数据的自动注入
- 断言机制的实现原理
EOF

# 创建1.1.10.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.1-Java语言基础/1.1.10-反射与注解/1.1.10.7-反射性能优化方法.md" << 'EOF'
---
title: 反射性能优化方法
icon: optimize
order: 7
---

# 反射性能优化方法

## 反射缓存策略

- 类信息的缓存实现
- 方法与字段的缓存机制
- 构造器缓存的应用
- 缓存粒度与内存占用
- 缓存失效与更新策略

## 访问控制优化

- setAccessible的正确使用
- 访问检查的性能影响
- 批量设置访问权限
- 安全性与性能的平衡
- JDK版本对访问控制的影响

## 方法句柄技术

- MethodHandle的基本使用
- 方法句柄与反射的性能对比
- Lookup类的高效查找
- 方法句柄的绑定与调用
- invokedynamic指令的应用

## 代码生成替代反射

- 运行时代码生成技术
- 字节码操作库的使用
- 动态类生成的实现
- 静态代理的自动生成
- 编译时注解处理的代码生成

## 反射调用的JIT优化

- 热点检测与内联优化
- 反射调用的去虚拟化
- 逃逸分析对反射的影响
- 反射调用的分层编译
- JVM参数对反射性能的影响
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/README.md" << 'EOF'
---
title: 函数式编程与Lambda表达式
icon: function
order: 1
---

# 函数式编程与Lambda表达式

本节详细介绍Java 8引入的函数式编程特性和Lambda表达式，包括函数式接口、方法引用、流式操作等内容，帮助读者理解函数式编程的思想和实践，以编写更简洁、更具表达力的代码。
EOF

# 创建1.2.1.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.1-函数式编程与Lambda表达式原理篇.md" << 'EOF'
---
title: 函数式编程与Lambda表达式原理篇
icon: principle
order: 1
---

# 函数式编程与Lambda表达式原理篇

## 函数式编程基本概念

- 函数式编程的定义与特点
- 命令式编程与声明式编程的对比
- 纯函数与副作用的概念
- 不可变性与引用透明性
- 高阶函数的概念与应用

## Lambda表达式的本质

- Lambda表达式的语法结构
- Lambda表达式的类型推断
- Lambda表达式的作用域规则
- Lambda表达式的底层实现
- Lambda表达式与匿名内部类的区别

## 函数式接口机制

- 函数式接口的定义与要求
- @FunctionalInterface注解的作用
- Java标准库中的函数式接口
- 自定义函数式接口的设计原则
- 函数式接口的类型推断机制

## 方法引用的工作原理

- 方法引用的四种形式
- 方法引用的类型推断
- 方法引用与Lambda表达式的等价性
- 构造器引用的特殊处理
- 方法引用的底层实现机制

## Lambda表达式的实现原理

- invokedynamic指令的作用
- Lambda表达式的字节码表示
- Lambda表达式的性能特性
- Lambda表达式的内存模型
- Lambda表达式的优化技术
EOF

# 创建1.2.1.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.2-函数式编程范式基础.md" << 'EOF'
---
title: 函数式编程范式基础
icon: paradigm
order: 2
---

# 函数式编程范式基础

## 函数作为一等公民

- 函数作为值的概念
- 函数的传递与返回
- 闭包在Java中的实现
- 函数组合的基本技术
- 柯里化与部分应用

## 不变性与副作用控制

- 不可变对象的设计原则
- 状态共享的风险与控制
- 副作用的识别与隔离
- 引用透明性的保证方法
- 函数式数据结构的特点

## 函数式设计模式

- 函数式工厂模式
- 策略模式的函数式实现
- 装饰器模式的函数式表达
- 观察者模式的函数式变体
- 命令模式的函数式替代

## 递归与尾递归优化

- 递归思想在函数式编程中的应用
- 尾递归的概念与实现
- Java中的递归限制与处理
- 递归转迭代的技术
- 使用Stream API替代递归

## 函数式错误处理

- 传统异常处理的问题
- Optional类的正确使用
- Either模式的实现
- Try-Success-Failure模式
- 函数式异常处理的最佳实践
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/README.md" << 'EOF'
---
title: 函数式编程与Lambda表达式
icon: function
order: 1
---

# 函数式编程与Lambda表达式

本节详细介绍Java 8引入的函数式编程特性和Lambda表达式，包括函数式接口、方法引用、流式操作等内容，帮助读者理解函数式编程的思想和实践，以编写更简洁、更具表达力的代码。
EOF

# 创建1.2.1.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.3-Lambda表达式实现原理.md" << 'EOF'
---
title: Lambda表达式实现原理
icon: implementation
order: 3
---

# Lambda表达式实现原理

## Lambda表达式的字节码表示

- Lambda表达式的编译过程
- 字节码层面的表示形式
- 静态方法与实例方法的区别
- 桥接方法的生成机制
- 类文件结构中的Lambda信息

## invokedynamic指令的作用

- invokedynamic指令的基本概念
- 动态方法调用的实现机制
- 调用点(CallSite)的创建与缓存
- 方法句柄(MethodHandle)的角色
- 启动引导方法(Bootstrap Method)的工作流程

## Lambda表达式的性能特性

- Lambda表达式与匿名类的性能对比
- 自动装箱与拆箱的性能影响
- 捕获变量对性能的影响
- JIT编译器对Lambda的优化
- Lambda表达式的内联优化

## Lambda表达式的内存模型

- Lambda表达式的对象表示
- 实例捕获与静态方法的内存差异
- Lambda表达式的垃圾回收特性
- 闭包对象的生命周期
- 内存泄漏的风险与防范

## Lambda表达式的实现演进

- Java 8中的初始实现
- 后续JDK版本的优化改进
- 不同JVM实现的差异
- 未来可能的优化方向
- Lambda实现的性能基准测试
EOF

# 创建1.2.1.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.4-函数式接口设计原则.md" << 'EOF'
---
title: 函数式接口设计原则
icon: design
order: 4
---

# 函数式接口设计原则

## 函数式接口的定义规范

- 单一抽象方法(SAM)原则
- @FunctionalInterface注解的作用
- 默认方法与静态方法的使用
- 接口继承的处理规则
- 泛型参数的设计考量

## 标准函数式接口体系

- java.util.function包概述
- 基础函数式接口的设计
- 特化接口的性能优势
- 复合函数式接口的应用
- 标准接口的选择策略

## 自定义函数式接口设计

- 设计自定义接口的必要性
- 接口命名与方法命名规范
- 参数类型与返回类型的选择
- 异常处理的设计策略
- 与标准接口的互操作性

## 函数式接口的组合模式

- 接口组合的实现技术
- 函数组合的设计模式
- 链式调用的接口设计
- 装饰器模式的函数式实现
- 高阶函数的接口表达

## 函数式接口的文档编写

- 接口文档的重要性
- 方法签名的清晰描述
- 参数与返回值的文档说明
- 异常条件的明确说明
- 使用示例的编写技巧
EOF

# 创建1.2.1.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.5-方法引用机制.md" << 'EOF'
---
title: 方法引用机制
icon: reference
order: 5
---

# 方法引用机制

## 方法引用的四种形式

- 静态方法引用(Class::staticMethod)
- 特定对象的实例方法引用(instance::method)
- 特定类型的任意对象方法引用(Class::instanceMethod)
- 构造器引用(Class::new)
- 数组构造器引用(Type[]::new)

## 方法引用的类型推断

- 目标类型上下文的作用
- 参数类型的匹配规则
- 返回类型的兼容性要求
- 泛型方法引用的类型推断
- 重载方法的引用解析

## 方法引用与Lambda表达式的等价性

- 方法引用的Lambda等价形式
- 参数传递的隐式映射
- this引用的处理差异
- 编译器优化的区别
- 选择方法引用还是Lambda的准则

## 方法引用的底层实现

- 方法引用的字节码表示
- invokedynamic在方法引用中的应用
- 方法句柄的创建与缓存
- 静态绑定与动态绑定的处理
- 方法引用的性能特性

## 方法引用的实际应用模式

- 集合操作中的方法引用
- 流处理中的方法引用应用
- 事件处理的方法引用模式
- 工厂方法的构造器引用
- 方法引用在框架中的应用
EOF

# 创建1.2.1.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.6-闭包与变量捕获原理.md" << 'EOF'
---
title: 闭包与变量捕获原理
icon: closure
order: 6
---

# 闭包与变量捕获原理

## 闭包的基本概念

- 闭包的定义与特性
- Java中闭包的实现形式
- 闭包与Lambda表达式的关系
- 闭包与匿名内部类的对比
- 闭包在函数式编程中的作用

## 变量捕获的实现机制

- 局部变量捕获的要求
- final与effectively final变量
- 变量捕获的内部表示
- 值捕获与引用捕获的区别
- 基本类型与引用类型的捕获差异

## 变量捕获的限制原因

- final要求的历史原因
- 并发安全性的考量
- 栈帧与堆内存的关系
- 变量生命周期的延长
- JVM内存模型的限制

## 闭包的内存模型

- 闭包对象的内存布局
- 捕获变量的存储位置
- 闭包对象的生命周期
- 闭包与垃圾回收的关系
- 内存泄漏的风险与防范

## 闭包的高级应用模式

- 函数工厂的闭包实现
- 延迟计算与惰性求值
- 状态封装与信息隐藏
- 回调函数中的闭包应用
- 闭包在并发编程中的应用
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/README.md" << 'EOF'
---
title: 函数式编程与Lambda表达式
icon: function
order: 1
---

# 函数式编程与Lambda表达式

本节详细介绍Java 8引入的函数式编程特性和Lambda表达式，包括函数式接口、方法引用、流式操作等内容，帮助读者理解函数式编程的思想和实践，以编写更简洁、更具表达力的代码。
EOF

# 创建1.2.1.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.2-函数式编程与Lambda表达式实战篇.md" << 'EOF'
---
title: 函数式编程与Lambda表达式实战篇
icon: practice
order: 2
---

# 函数式编程与Lambda表达式实战篇

## 基础Lambda表达式应用

- 事件处理中的Lambda表达式
- 线程创建的Lambda简化
- 比较器的Lambda实现
- 过滤与映射操作
- 资源管理的Lambda模式

## 函数式接口实战

- Predicate在条件判断中的应用
- Function在数据转换中的使用
- Consumer在遍历操作中的角色
- Supplier在延迟计算中的价值
- BiFunction等多参数函数接口的应用

## 方法引用实战技巧

- 构造器引用创建对象
- 静态方法引用的常见场景
- 实例方法引用的使用模式
- 数组构造器引用的应用
- 方法引用与Lambda的选择策略

## 函数组合与链式调用

- Predicate的逻辑组合
- Function的函数组合
- Consumer的链式调用
- 复合函数的构建技术
- 函数式管道的设计模式

## 实际业务场景应用

- 数据验证与过滤
- 业务规则的函数式表达
- 异步任务的Lambda实现
- 缓存与记忆化技术
- 领域特定语言(DSL)的构建
EOF

# 创建1.2.1.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.3-Lambda表达式最佳实践.md" << 'EOF'
---
title: Lambda表达式最佳实践
icon: bestpractice
order: 3
---

# Lambda表达式最佳实践

## Lambda表达式的可读性优化

- 合理的参数命名
- 适当的代码格式化
- 表达式长度的控制
- 复杂逻辑的提取与重构
- 注释与文档的编写策略

## 异常处理策略

- 受检异常的处理方法
- 函数式接口中的异常声明
- 异常包装与转换技术
- 自定义函数式接口的异常设计
- 错误恢复与降级处理

## 变量捕获的最佳实践

- 有效final变量的使用规范
- 避免捕获可变状态
- 共享可变状态的风险控制
- 线程安全的变量捕获
- 闭包中的状态管理

## 性能优化技巧

- 避免装箱拆箱的性能开销
- 使用基本类型特化接口
- Lambda表达式的缓存策略
- 并行操作的适用场景
- 惰性求值的性能优势

## 测试与调试技术

- Lambda表达式的单元测试
- 调试Lambda表达式的方法
- 日志记录的函数式实现
- 性能分析与基准测试
- 常见Lambda错误的诊断
EOF

# 创建1.2.1.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.4-函数式接口应用场景.md" << 'EOF'
---
title: 函数式接口应用场景
icon: application
order: 4
---

# 函数式接口应用场景

## 核心函数式接口应用

- Predicate在过滤中的应用
- Function在转换中的应用
- Consumer在遍历中的应用
- Supplier在延迟计算中的应用
- Comparator在排序中的应用

## 特化函数式接口的使用

- IntPredicate等基本类型接口的性能优势
- ToIntFunction等转换接口的应用
- ObjIntConsumer等混合接口的使用场景
- BinaryOperator在聚合操作中的应用
- UnaryOperator在原位操作中的应用

## 复合函数式接口

- BiFunction在多参数操作中的应用
- BiConsumer在键值对处理中的应用
- BiPredicate在关系判断中的应用
- 多参数函数的组合与分解
- 高阶函数的实现与应用

## 自定义函数式接口场景

- 特定业务逻辑的接口设计
- 异常处理的自定义接口
- 资源管理的函数式接口
- 回调机制的函数式实现
- 领域特定语言的接口设计

## 框架与库中的应用

- Spring框架中的函数式接口
- JPA中的函数式查询
- 响应式编程中的函数式接口
- 并发编程中的函数式任务
- 测试框架中的函数式断言
EOF

# 创建1.2.1.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.5-集合操作中的Lambda应用.md" << 'EOF'
---
title: 集合操作中的Lambda应用
icon: collection
order: 5
---

# 集合操作中的Lambda应用

## 集合遍历与操作

- forEach方法的Lambda应用
- removeIf的条件删除
- replaceAll的元素替换
- sort方法的比较器Lambda
- compute方法族的映射操作

## Map集合的Lambda增强

- computeIfAbsent的惰性初始化
- computeIfPresent的条件更新
- merge方法的值合并操作
- forEach的键值对处理
- Map.Entry流的处理技巧

## 集合转换与过滤

- 使用Lambda进行集合类型转换
- 条件过滤的函数式实现
- 分组与分区的Lambda表达式
- 集合映射的函数式方法
- 集合聚合的Lambda实现

## 集合排序技巧

- 自然排序与自定义排序
- 多字段排序的Lambda实现
- 可逆排序的函数式表达
- 稳定排序与不稳定排序
- 并行排序的性能考量

## 集合操作的最佳实践

- 链式操作的可读性优化
- 副作用控制与不可变集合
- 并发修改的安全处理
- 大集合的性能优化策略
- 集合操作的单元测试方法
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/README.md" << 'EOF'
---
title: 函数式编程与Lambda表达式
icon: function
order: 1
---

# 函数式编程与Lambda表达式

本节详细介绍Java 8引入的函数式编程特性和Lambda表达式，包括函数式接口、方法引用、流式操作等内容，帮助读者理解函数式编程的思想和实践，以编写更简洁、更具表达力的代码。
EOF

# 创建1.2.1.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.6-并行处理与Lambda结合.md" << 'EOF'
---
title: 并行处理与Lambda结合
icon: parallel
order: 6
---

# 并行处理与Lambda结合

## 并行计算基础

- 并行与并发的概念区分
- Java中的并行处理机制
- Fork/Join框架的基本原理
- 工作窃取算法的实现
- 并行度与CPU核心数的关系

## 并行流的使用方法

- 串行流与并行流的转换
- parallel()与parallelStream()的区别
- 并行流的内部实现机制
- 并行流的线程池管理
- 并行流的执行顺序特性

## 并行操作的适用场景

- 数据量大小的考量
- 计算密集型vs IO密集型任务
- 操作独立性的要求
- 合并开销的评估
- 状态共享的安全性问题

## 并行性能优化策略

- 避免装箱和拆箱操作
- 减少中间操作的数量
- 合理使用无状态操作
- 避免共享可变状态
- 分解与合并策略的优化

## 并行处理的陷阱与解决方案

- 线程安全的数据结构选择
- 避免并行流中的副作用
- 非确定性结果的处理
- 死锁与活锁的预防
- 性能测试与基准比较
EOF

# 创建1.2.1.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.1-函数式编程与Lambda表达式/1.2.1.7-函数式编程性能优化.md" << 'EOF'
---
title: 函数式编程性能优化
icon: performance
order: 7
---

# 函数式编程性能优化

## 性能开销来源分析

- 自动装箱与拆箱的开销
- 函数对象创建的成本
- 方法调用的间接性
- 内存分配与垃圾回收
- JIT编译优化的限制

## 基本类型特化优化

- 基本类型特化的函数式接口
- IntStream等特化流的使用
- 避免不必要的装箱操作
- 基本类型数组的高效处理
- 性能关键代码的特化处理

## 惰性求值与短路优化

- 惰性求值的性能优势
- 短路操作的合理利用
- 操作顺序对性能的影响
- 中间结果缓存的策略
- 避免不必要的计算

## 内存使用优化

- 减少临时对象的创建
- 对象重用与对象池
- 避免过度使用闭包捕获
- 大数据集的分块处理
- 内存占用与GC压力的平衡

## 函数式代码的性能测试

- 微基准测试的正确方法
- JMH工具的使用技巧
- 常见性能陷阱的识别
- 性能与可读性的权衡
- 性能优化的实际案例分析
EOF

# 创建1.2.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/README.md" << 'EOF'
---
title: StreamAPI应用
icon: stream
order: 2
---

# StreamAPI应用

本节详细介绍Java 8引入的Stream API，包括流的创建、转换、聚合等操作，以及并行流的使用和性能优化，帮助读者掌握现代Java编程中处理集合数据的高效方式。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/README.md" << 'EOF'
---
title: StreamAPI应用
icon: stream
order: 2
---

# StreamAPI应用

本节详细介绍Java 8引入的Stream API，包括流的创建、转换、聚合等操作，以及并行流的使用和性能优化，帮助读者掌握现代Java编程中处理集合数据的高效方式。
EOF

# 创建1.2.2.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.1-StreamAPI原理篇.md" << 'EOF'
---
title: StreamAPI原理篇
icon: principle
order: 1
---

# StreamAPI原理篇

## Stream基本概念

- Stream的定义与特性
- 集合与流的区别
- 流的生命周期阶段
- 流的内部迭代机制
- 流的不可重用性

## Stream的数据源

- 从集合创建流
- 从数组创建流
- 从函数生成流
- 从I/O通道创建流
- 其他数据源的流创建

## Stream操作分类

- 中间操作与终端操作
- 有状态操作与无状态操作
- 短路操作的特性
- 操作的组合与顺序
- 操作的延迟执行机制

## Stream的内部实现

- Spliterator的分割迭代机制
- 管道(Pipeline)的实现原理
- Sink接口的责任链模式
- 流的懒加载与优化
- 流操作的内部状态管理

## Stream的设计模式

- 建造者模式在流创建中的应用
- 访问者模式在流操作中的应用
- 策略模式在流处理中的应用
- 装饰器模式在流转换中的应用
- 责任链模式在流水线中的应用
EOF

# 创建1.2.2.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.2-Stream流水线架构设计.md" << 'EOF'
---
title: Stream流水线架构设计
icon: architecture
order: 2
---

# Stream流水线架构设计

## 流水线的基本结构

- 流水线的组成部分
- 头部源(Head)的特性
- 中间阶段(StatelessOp/StatefulOp)的设计
- 终端阶段(TerminalOp)的职责
- 流水线的构建过程

## 阶段连接机制

- 阶段之间的链接方式
- 操作的组合与复合
- 阶段间数据传递机制
- 类型参数的传递与转换
- 操作链的动态构建

## Sink接口的设计

- Sink接口的核心方法
- 不同操作类型的Sink实现
- Sink链的构建与执行
- 短路操作的Sink处理
- Sink的状态管理

## 流的执行模型

- 拉取(Pull)模式的实现
- 推送(Push)模式的实现
- 执行过程中的优化机会
- 操作融合(Operation Fusion)
- 执行计划的生成与优化

## 流水线的扩展性

- 自定义中间操作的实现
- 自定义终端操作的实现
- 流水线架构的扩展点
- 与其他API的集成机制
- 流水线架构的演进与改进
EOF

# 创建1.2.2.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.3-惰性求值与终端操作原理.md" << 'EOF'
---
title: 惰性求值与终端操作原理
icon: lazy
order: 3
---

# 惰性求值与终端操作原理

## 惰性求值的基本概念

- 惰性求值的定义与优势
- 及早求值与惰性求值的对比
- Java中惰性求值的实现方式
- 惰性求值的性能优势
- 惰性求值的内存效率

## 中间操作的惰性特性

- 中间操作的延迟执行机制
- 操作链的构建过程
- 中间结果的传递方式
- 操作状态的保存策略
- 短路中间操作的特殊处理

## 终端操作的触发机制

- 终端操作的执行时机
- 终端操作对流水线的遍历
- 结果收集与聚合过程
- 终端操作的类型与特性
- 终端操作的内部实现差异

## 短路评估机制

- 短路终端操作的工作原理
- findFirst/findAny的实现机制
- anyMatch/allMatch/noneMatch的短路逻辑
- 短路操作的性能优势
- 短路操作在并行流中的行为

## 惰性求值的优化技术

- 操作融合(Operation Fusion)
- 循环展开(Loop Unrolling)
- 中间结果缓存策略
- 计算复杂度的优化
- JIT编译器对流操作的优化
EOF

# 创建1.2.2.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.4-并行流实现机制.md" << 'EOF'
---
title: 并行流实现机制
icon: parallel
order: 4
---

# 并行流实现机制

## 并行流的基础架构

- 并行流与串行流的区别
- Fork/Join框架的基本原理
- 工作窃取算法的实现
- 并行流的线程池管理
- 并行度的控制机制

## Spliterator的分割机制

- Spliterator接口的设计
- 分割策略与平衡性
- 特化Spliterator的实现
- 分割停止条件的设定
- 分割效率与并行性能

## 并行操作的执行流程

- 任务的分解与分配
- 子任务的并行执行
- 结果的合并策略
- 同步点与协调机制
- 异常处理与取消操作

## 并行流的性能特性

- 数据大小对性能的影响
- 操作复杂度对性能的影响
- 合并开销的评估
- 线程调度与上下文切换
- 内存局部性与缓存效应

## 并行流的最佳实践

- 适合并行的操作类型
- 数据结构对并行性能的影响
- 避免并行流中的副作用
- 有状态操作的并行处理策略
- 并行流的性能监控与调优
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/README.md" << 'EOF'
---
title: StreamAPI应用
icon: stream
order: 2
---

# StreamAPI应用

本节详细介绍Java 8引入的Stream API，包括流的创建、转换、聚合等操作，以及并行流的使用和性能优化，帮助读者掌握现代Java编程中处理集合数据的高效方式。
EOF

# 创建1.2.2.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.5-Spliterator分割迭代器.md" << 'EOF'
---
title: Spliterator分割迭代器
icon: iterator
order: 5
---

# Spliterator分割迭代器

## Spliterator基本概念

- Spliterator的定义与作用
- Iterator与Spliterator的区别
- Spliterator的核心方法
- 特征值(Characteristics)的含义
- Spliterator在Stream中的角色

## 分割机制设计

- tryAdvance与trySplit方法
- 分割策略与平衡性
- 分割停止条件
- 分割效率与并行性能
- 分割的粒度控制

## 特化Spliterator实现

- 基本类型的特化Spliterator
- 数组的Spliterator实现
- 集合的Spliterator实现
- 特殊数据结构的Spliterator
- 自定义Spliterator的设计

## 特征值与优化

- ORDERED特征的影响
- DISTINCT特征的应用
- SORTED特征的优化
- SIZED特征的性能提升
- SUBSIZED特征的并行优化

## Spliterator的实际应用

- 自定义数据源的Spliterator
- 并行流中的Spliterator应用
- Spliterator的性能调优
- 复杂数据结构的分割策略
- Spliterator在框架中的应用
EOF

# 创建1.2.2.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.6-Stream源码分析.md" << 'EOF'
---
title: Stream源码分析
icon: sourcecode
order: 6
---

# Stream源码分析

## Stream接口层次结构

- BaseStream接口的设计
- Stream接口的核心方法
- IntStream等特化接口的实现
- Stream接口的扩展机制
- 接口设计的演进历史

## AbstractPipeline的实现

- AbstractPipeline的核心结构
- 阶段链接的内部机制
- 操作状态的管理方式
- 执行控制的实现细节
- 类型参数的传递机制

## ReferencePipeline的设计

- Head/StatelessOp/StatefulOp的区别
- 中间操作的实现方式
- 操作融合的源码实现
- 短路操作的处理逻辑
- 终端操作的执行过程

## TerminalOp的实现分析

- ReduceOps的实现原理
- FindOps的短路机制
- ForEachOps的遍历策略
- MatchOps的判断逻辑
- 收集操作的内部实现

## 并行流的源码解析

- 并行流的创建与转换
- ForkJoinTask的应用方式
- 任务分解的源码实现
- 结果合并的处理机制
- 并行执行的控制流程
EOF

# 创建1.2.2.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.2-StreamAPI实战篇.md" << 'EOF'
---
title: StreamAPI实战篇
icon: practice
order: 2
---

# StreamAPI实战篇

## 流的创建与转换

- 集合转流的多种方式
- 数组转流的技巧
- 使用Stream.of创建流
- 无限流的创建与限制
- 流的连接与扁平化

## 中间操作实战

- 筛选与切片操作(filter/distinct/limit/skip)
- 映射操作(map/flatMap)
- 排序操作(sorted)
- 窥视操作(peek)
- 中间操作的链式调用

## 终端操作应用

- 聚合操作(reduce/count/sum/max)
- 收集操作(collect/toList/toSet/toMap)
- 匹配操作(anyMatch/allMatch/noneMatch)
- 查找操作(findFirst/findAny)
- 遍历操作(forEach/forEachOrdered)

## Collectors工具类应用

- 转换为集合(toList/toSet/toCollection)
- 转换为Map(toMap/toConcurrentMap)
- 分组操作(groupingBy)
- 分区操作(partitioningBy)
- 统计操作(summarizingInt/averagingDouble)

## 实际业务场景应用

- 数据过滤与转换
- 复杂分组与统计
- 多级排序与分页
- 数据聚合与报表生成
- 并行处理大数据集
EOF

# 创建1.2.2.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.3-常用Stream操作实践.md" << 'EOF'
---
title: 常用Stream操作实践
icon: operation
order: 3
---

# 常用Stream操作实践

## 过滤与查找操作

- 条件过滤的多种实现
- 复合条件的构建技巧
- 唯一元素的获取方法
- 首个匹配元素的查找
- 存在性检查的最佳实践

## 转换与映射技巧

- 一对一映射的实现
- 一对多映射与扁平化
- 条件映射的处理方法
- 类型转换的安全实现
- 复杂对象的属性提取

## 排序与比较器应用

- 自然顺序排序的实现
- 自定义比较器的构建
- 多字段排序的链式实现
- 空值处理的排序策略
- 逆序与混合排序的实现

## 聚合与归约操作

- 数值聚合的实现方法
- 自定义归约操作的设计
- 带初始值的归约处理
- 复杂对象的聚合策略
- 并行聚合的注意事项

## 分组与分区实践

- 单字段分组的实现
- 多级分组的嵌套结构
- 分组后的下游收集器
- 分区与条件分组的区别
- 分组结果的后处理技巧
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/README.md" << 'EOF'
---
title: StreamAPI应用
icon: stream
order: 2
---

# StreamAPI应用

本节详细介绍Java 8引入的Stream API，包括流的创建、转换、聚合等操作，以及并行流的使用和性能优化，帮助读者掌握现代Java编程中处理集合数据的高效方式。
EOF

# 创建1.2.2.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.4-复杂数据处理案例.md" << 'EOF'
---
title: 复杂数据处理案例
icon: case
order: 4
---

# 复杂数据处理案例

## 多级分组与统计

- 按多个属性分组的实现
- 分组后的统计计算
- 分组结果的二次处理
- 复杂分组条件的构建
- 分组与排序的结合应用

## 关联数据处理

- 多表数据的流式关联
- 内连接与外连接的实现
- 数据合并与聚合
- 关联结果的转换与过滤
- 高性能关联操作的设计

## 树形结构处理

- 扁平数据转树形结构
- 树形结构的遍历与搜索
- 树节点的过滤与转换
- 树形数据的统计计算
- 复杂树形操作的实现

## 时间序列数据分析

- 时间序列数据的分组
- 时间窗口的滑动计算
- 趋势分析与异常检测
- 时间序列的聚合统计
- 实时数据流的处理模式

## 业务报表生成

- 多维数据的透视分析
- 复杂指标的计算逻辑
- 结果格式化与转换
- 大数据集的高效处理
- 报表数据的缓存策略
EOF

# 创建1.2.2.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.5-并行流使用策略.md" << 'EOF'
---
title: 并行流使用策略
icon: parallel
order: 5
---

# 并行流使用策略

## 并行流的适用场景

- 数据量大小的评估标准
- 计算密集型vs IO密集型任务
- 操作复杂度的考量
- 独立性操作的识别
- 合并成本的评估方法

## 并行流的创建与控制

- 并行流的多种创建方式
- 串行流与并行流的切换
- 并行度的设置与影响
- ForkJoinPool的配置选项
- 自定义线程池的使用方法

## 数据结构对并行性能的影响

- ArrayList vs LinkedList
- HashSet vs TreeSet
- 数组与原始类型数组
- 分割友好的数据结构
- 自定义集合的并行特性

## 操作类型的并行考量

- 无状态操作的并行优势
- 有状态操作的并行挑战
- 短路操作的并行行为
- 顺序敏感操作的处理
- 副作用操作的并行风险

## 并行流的最佳实践

- 避免并行流中的副作用
- 使用线程安全的累加器
- 合理设置批处理大小
- 监控并行性能的方法
- 并行与串行的混合策略
EOF

# 创建1.2.2.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.6-Stream性能优化技巧.md" << 'EOF'
---
title: Stream性能优化技巧
icon: performance
order: 6
---

# Stream性能优化技巧

## 操作顺序优化

- 提前过滤的性能优势
- 限制操作的提前执行
- 避免不必要的排序
- 减少中间操作的数量
- 操作融合的手动实现

## 数据结构选择

- 针对操作选择合适的集合类型
- 避免装箱拆箱的开销
- 使用基本类型流的优势
- 预分配集合的容量
- 惰性数据结构的应用

## 并行流优化策略

- 并行阈值的确定方法
- 避免线程竞争的技巧
- 减少同步点的策略
- 任务粒度的优化
- 避免并行中的合并开销

## 内存使用优化

- 减少中间对象的创建
- 使用对象池减少GC压力
- 大数据集的分块处理
- 避免不必要的终端操作
- 流资源的及时关闭

## 性能测试与分析

- 微基准测试的正确方法
- JMH工具的使用技巧
- 常见性能瓶颈的识别
- 性能与可读性的权衡
- 实际应用中的性能监控
EOF

# 创建1.2.2.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.2-StreamAPI应用/1.2.2.7-常见Stream操作陷阱.md" << 'EOF'
---
title: 常见Stream操作陷阱
icon: trap
order: 7
---

# 常见Stream操作陷阱

## 流重用的问题

- 流已关闭异常的原因
- 流重用的检测方法
- 安全重用流的模式
- 流操作的结果缓存
- 流工厂方法的设计

## 无限流的处理陷阱

- 无限流的终止条件
- limit操作的正确使用
- 短路操作的必要性
- 无限流的内存风险
- 超时机制的实现

## 副作用操作的风险

- 可变状态的线程安全问题
- forEach中的副作用控制
- peek操作的正确用途
- 收集器中的副作用
- 函数纯度的保持策略

## 并行流的常见陷阱

- 非线程安全收集的问题
- 顺序依赖操作的并行风险
- 并行中的死锁与活锁
- 并行性能下降的原因分析
- 并行流异常处理的挑战

## 性能相关陷阱

- 过度使用流的性能问题
- 不必要的装箱拆箱开销
- 中间操作过多的性能影响
- 不当的并行化决策
- 大型流水线的内存压力
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/README.md" << 'EOF'
---
title: Optional类使用
icon: optional
order: 3
---

# Optional类使用

本节详细介绍Java 8引入的Optional类，包括其设计初衷、基本用法和最佳实践，帮助读者有效地处理空值问题，提高代码的健壮性和可读性，减少NullPointerException异常的发生。
EOF

# 创建1.2.3.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.1-Optional类原理篇.md" << 'EOF'
---
title: Optional类原理篇
icon: principle
order: 1
---

# Optional类原理篇

## Optional类的基本结构

- Optional类的内部实现
- 值的包装与存储机制
- 空值的表示方式
- Optional的不可变性
- Optional类的内存布局

## Optional的创建方法

- of()方法与空值检查
- ofNullable()方法的安全创建
- empty()方法的静态工厂
- 三种创建方法的区别
- 创建方法的性能比较

## 值的访问机制

- get()方法与异常处理
- isPresent()的检查机制
- orElse()的默认值提供
- orElseGet()的延迟计算
- orElseThrow()的异常定制

## Optional的函数式方法

- map()方法的转换机制
- flatMap()方法的扁平化处理
- filter()方法的条件过滤
- ifPresent()的条件执行
- 函数式方法的组合使用

## Optional的实现原理

- Optional与null的区别
- 值存在性的内部表示
- 方法链的实现机制
- 异常处理的内部逻辑
- Optional的序列化问题
EOF

# 创建1.2.3.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.2-Optional设计初衷与原理.md" << 'EOF'
---
title: Optional设计初衷与原理
icon: design
order: 2
---

# Optional设计初衷与原理

## 空指针问题的历史

- 空引用的概念起源
- 空指针异常的危害
- 传统空值处理的缺陷
- 空值检查的代码膨胀
- 空值语义的模糊性

## Optional的设计哲学

- 显式表达可能的空值
- 强制开发者处理空值情况
- 函数式风格的空值处理
- 类型系统中的空值表示
- 与其他语言空值处理的比较

## Optional与函数式编程

- 函数式编程中的Maybe模式
- Optional作为容器类型的角色
- 函数组合中的空值传播
- 声明式空值处理的优势
- 副作用控制与纯函数

## Optional的设计权衡

- 包装对象的性能开销
- API设计的复杂性增加
- 与现有代码的兼容性
- 序列化与持久化的问题
- 滥用Optional的风险

## 其他语言的空值处理比较

- Kotlin的可空类型系统
- Scala的Option类型
- Haskell的Maybe类型
- Swift的可选类型
- C#的可空值类型与Nullable<T>
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/README.md" << 'EOF'
---
title: Optional类使用
icon: optional
order: 3
---

# Optional类使用

本节详细介绍Java 8引入的Optional类，包括其设计初衷、基本用法和最佳实践，帮助读者有效地处理空值问题，提高代码的健壮性和可读性，减少NullPointerException异常的发生。
EOF

# 创建1.2.3.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.3-空指针异常问题分析.md" << 'EOF'
---
title: 空指针异常问题分析
icon: bug
order: 3
---

# 空指针异常问题分析

## 空指针异常的根源

- 空引用的概念与本质
- 类型系统的缺陷表现
- 空值的二义性问题
- 隐式空值传播的危害
- 空指针异常的成本分析

## 常见的空指针场景

- 未初始化对象的访问
- 方法返回null的处理
- 集合操作中的空值
- 级联调用中的空值传播
- 外部数据源的空值问题

## 传统空值处理方式

- 防御式编程的空值检查
- null对象模式的应用
- 异常捕获的处理方式
- 特殊值的返回策略
- 断言机制的使用

## 空指针异常的预防策略

- 契约式设计的前置条件
- 静态代码分析工具的应用
- 注解辅助的空值检查
- 代码审查中的空值关注点
- 单元测试对空值的覆盖

## 空指针异常的调试技巧

- 异常堆栈的解读方法
- 空指针来源的追踪
- 条件断点的设置技巧
- 日志策略的优化
- 空指针异常的根因分析
EOF

# 创建1.2.3.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.4-Optional内部实现机制.md" << 'EOF'
---
title: Optional内部实现机制
icon: implementation
order: 4
---

# Optional内部实现机制

## Optional的内部结构

- Optional类的字段设计
- 值的存储与表示方式
- EMPTY单例的实现
- 内部状态的不可变性
- Optional的内存布局分析

## Optional的实例创建

- 工厂方法的实现细节
- of方法的空值检查机制
- ofNullable方法的条件逻辑
- empty方法的单例返回
- 创建方法的性能比较

## 值访问的实现原理

- get方法的异常处理
- isPresent方法的状态检查
- orElse方法的默认值机制
- orElseGet方法的延迟计算
- orElseThrow方法的异常构造

## 函数式方法的实现

- map方法的转换实现
- flatMap方法的扁平化处理
- filter方法的条件过滤
- ifPresent方法的条件执行
- 方法链的执行流程分析

## Optional的性能考量

- 包装对象的内存开销
- 方法调用的性能影响
- 惰性求值的实现效果
- 与直接null检查的性能对比
- 优化Optional使用的策略
EOF

# 创建1.2.3.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.5-Optional与StreamAPI关系.md" << 'EOF'
---
title: Optional与StreamAPI关系
icon: relationship
order: 5
---

# Optional与StreamAPI关系

## 设计理念的共通性

- 函数式编程的容器概念
- 惰性求值的设计思想
- 方法链的流式处理
- 不可变性的设计原则
- 声明式编程的表达方式

## Optional与Stream的互操作

- Optional.stream()方法的应用
- Stream.findFirst/findAny的返回值
- flatMap在两者间的应用
- 集合操作中的Optional处理
- 从Stream到Optional的转换

## 空值处理的统一模式

- 流水线中的空值传播
- 条件过滤的一致性
- 转换操作的类似性
- 终端操作的设计模式
- 异常处理的共同策略

## 组合使用的最佳实践

- 集合元素的安全访问
- 多级Optional的扁平化
- 条件流处理的简化
- 可能为空的流处理
- 复杂对象图的导航

## 性能优化考量

- 避免不必要的包装
- 减少中间操作的数量
- 合理使用终端操作
- 惰性求值的利用
- 并行处理的适用场景
EOF

# 创建1.2.3.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.6-函数式错误处理思想.md" << 'EOF'
---
title: 函数式错误处理思想
icon: errorhandling
order: 6
---

# 函数式错误处理思想

## 传统错误处理的局限

- 异常机制的设计缺陷
- 检查型异常的使用问题
- 错误代码返回的缺点
- 特殊值返回的二义性
- 错误处理与业务逻辑的混淆

## 函数式错误处理的核心理念

- 错误作为值的处理
- 类型系统中的错误表示
- 错误的组合与传播
- 声明式错误处理
- 副作用的隔离与控制

## Optional作为错误处理机制

- 表示可能缺失的值
- 与null的语义区别
- 链式处理中的错误传播
- Optional的适用边界
- Optional与其他错误处理的结合

## 其他函数式错误处理模式

- Either类型的实现与应用
- Try-Success-Failure模式
- Result/Outcome类型的设计
- 函数式异常包装器
- 铁路编程(Railway Oriented Programming)

## 实际应用中的最佳实践

- 领域错误的类型化表示
- 错误恢复与降级策略
- 错误日志与监控
- 错误处理的单元测试
- 与现有代码的集成方式
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/README.md" << 'EOF'
---
title: Optional类使用
icon: optional
order: 3
---

# Optional类使用

本节详细介绍Java 8引入的Optional类，包括其设计初衷、基本用法和最佳实践，帮助读者有效地处理空值问题，提高代码的健壮性和可读性，减少NullPointerException异常的发生。
EOF

# 创建1.2.3.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.2-Optional类实战篇.md" << 'EOF'
---
title: Optional类实战篇
icon: practice
order: 2
---

# Optional类实战篇

## Optional的创建方式

- Optional.of的安全使用
- Optional.ofNullable的应用场景
- Optional.empty的使用时机
- 从集合元素创建Optional
- 从方法返回值创建Optional

## 值的安全获取

- isPresent与isEmpty的使用
- get方法与异常处理
- orElse提供默认值
- orElseGet实现延迟计算
- orElseThrow自定义异常

## 条件处理与转换

- filter进行条件过滤
- map转换Optional值
- flatMap处理嵌套Optional
- ifPresent执行条件操作
- ifPresentOrElse处理两种情况

## 实际业务场景应用

- 数据库查询结果处理
- 外部API返回值处理
- 配置参数的安全读取
- 用户输入的验证与转换
- 多级对象导航的安全实现

## 与其他API的结合使用

- 与Stream API的协作
- 在集合操作中使用Optional
- 结合CompletableFuture处理异步结果
- 在方法链中使用Optional
- 与第三方库的集成模式
EOF

# 创建1.2.3.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.3-Optional基本使用模式.md" << 'EOF'
---
title: Optional基本使用模式
icon: pattern
order: 3
---

# Optional基本使用模式

## 创建与检查模式

- 确定非空值的包装模式
- 可能为空值的包装模式
- 空Optional的创建模式
- 存在性检查的模式
- 类型安全的检查模式

## 默认值处理模式

- 静态默认值提供模式
- 动态计算默认值模式
- 条件默认值选择模式
- 类型转换的默认值模式
- 异常作为默认行为模式

## 转换与映射模式

- 值转换的map模式
- 条件转换的模式
- 类型转换的安全模式
- 多值组合的转换模式
- 可空结果的flatMap模式

## 条件执行模式

- 值存在时的执行模式
- 值不存在时的执行模式
- 两种情况的处理模式
- 条件过滤后的执行模式
- 多条件组合的执行模式

## 异常处理模式

- 受检异常的包装模式
- 异常转换的模式
- 异常恢复的模式
- 异常日志记录模式
- 异常上下文增强模式
EOF

# 创建1.2.3.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.4-链式调用最佳实践.md" << 'EOF'
---
title: 链式调用最佳实践
icon: chain
order: 4
---

# 链式调用最佳实践

## 链式调用的基本原则

- 方法链的可读性原则
- 单一职责的链式方法
- 链式调用的异常处理
- 链式调用的调试技巧
- 链式调用的性能考量

## 常见链式调用模式

- 过滤-转换-默认值模式
- 多级对象导航模式
- 条件分支处理模式
- 数据收集与聚合模式
- 异常处理与恢复模式

## 复杂对象图导航

- 安全访问嵌套属性
- 处理集合中的可选元素
- 多级Optional的扁平化
- 条件路径的导航
- 循环引用的处理

## 与其他API的链式组合

- 与Stream API的链式组合
- 与CompletableFuture的组合
- 与自定义函数式接口的组合
- 与第三方库的链式集成
- 链式调用的扩展模式

## 链式调用的重构技巧

- 提取复用的链式逻辑
- 简化复杂的链式调用
- 增强链式调用的可测试性
- 链式调用的性能优化
- 链式调用的日志与监控
EOF

# 创建1.2.3.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.5-与传统null检查对比.md" << 'EOF'
---
title: 与传统null检查对比
icon: compare
order: 5
---

# 与传统null检查对比

## 代码可读性对比

- 传统null检查的嵌套问题
- Optional的扁平化表达
- 意图表达的清晰度
- 异常处理的显式性
- 代码结构的组织方式

## 安全性对比

- 编译时检查的差异
- 运行时安全保障的对比
- 空值传播的控制能力
- 异常处理的完备性
- 边界情况的处理能力

## 灵活性对比

- 条件处理的表达能力
- 转换操作的便捷性
- 默认值提供的灵活性
- 组合操作的能力
- 与其他API的集成性

## 性能对比

- 对象创建的开销比较
- 方法调用的性能影响
- 内存使用的差异
- 垃圾回收的影响
- 优化机会的对比

## 迁移策略与混合使用

- 渐进式采用的策略
- 识别适合Optional的场景
- 保留必要的null检查
- API设计中的选择考量
- 新旧代码的互操作性
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/README.md" << 'EOF'
---
title: Optional类使用
icon: optional
order: 3
---

# Optional类使用

本节详细介绍Java 8引入的Optional类，包括其设计初衷、基本用法和最佳实践，帮助读者有效地处理空值问题，提高代码的健壮性和可读性，减少NullPointerException异常的发生。
EOF

# 创建1.2.3.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.6-API设计中的Optional应用.md" << 'EOF'
---
title: API设计中的Optional应用
icon: api
order: 6
---

# API设计中的Optional应用

## 返回值设计原则

- 何时使用Optional作为返回类型
- 何时不应使用Optional返回
- 集合类型与Optional的关系
- 基本类型的Optional处理
- 返回类型的一致性设计

## 参数设计考量

- Optional作为方法参数的利弊
- 必选参数与可选参数的区分
- 参数验证与Optional的关系
- 构造器参数中的Optional
- 函数式接口中的Optional参数

## 领域模型中的应用

- 实体类属性中的Optional使用
- 值对象中的Optional设计
- 领域服务中的Optional应用
- 仓储接口的Optional返回
- 领域事件中的Optional数据

## 公共API与内部API的区别

- 公共API中的Optional使用准则
- 内部API的灵活性考量
- API版本演进中的Optional
- 向后兼容性的保障
- API文档中的Optional说明

## 框架与库的设计模式

- Spring框架中的Optional应用
- JPA中的Optional查询结果
- 响应式编程中的Optional
- 测试框架中的Optional断言
- 自定义框架的Optional设计
EOF

# 创建1.2.3.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.3-Optional类使用/1.2.3.7-Optional使用注意事项.md" << 'EOF'
---
title: Optional使用注意事项
icon: warning
order: 7
---

# Optional使用注意事项

## 常见误用模式

- 将Optional作为字段类型
- Optional的序列化问题
- 不必要的Optional包装
- orElse与orElseGet的混淆
- 忽略isPresent检查的后果

## 性能考量

- Optional创建的开销
- 链式调用的性能影响
- 基本类型的装箱拆箱成本
- 大量Optional使用的内存影响
- 性能关键代码中的使用策略

## 与其他特性的冲突

- 与反射机制的交互问题
- 在泛型中使用Optional的限制
- 与序列化框架的兼容性
- 在并发环境中的使用注意
- 与遗留代码的集成挑战

## 测试与调试

- Optional代码的单元测试策略
- 测试覆盖的关键路径
- 调试Optional链的技巧
- 日志记录的最佳实践
- 异常情况的诊断方法

## 最佳实践总结

- 何时使用Optional
- 何时避免使用Optional
- 代码可读性的平衡
- 团队编码规范的制定
- 持续优化的方法论
EOF

# 创建1.2.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/README.md" << 'EOF'
---
title: CompletableFuture异步编程
icon: async
order: 4
---

# CompletableFuture异步编程

本节详细介绍Java 8引入的CompletableFuture类，包括异步编程的基本概念、CompletableFuture的核心API、异步任务的组合与编排、异常处理机制以及实际应用场景，帮助读者掌握现代Java中的异步编程模型，提高系统的响应性和吞吐量。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/README.md" << 'EOF'
---
title: CompletableFuture异步编程
icon: async
order: 4
---

# CompletableFuture异步编程

本节详细介绍Java 8引入的CompletableFuture类，包括异步编程的基本概念、CompletableFuture的核心API、异步任务的组合与编排、异常处理机制以及实际应用场景，帮助读者掌握现代Java中的异步编程模型，提高系统的响应性和吞吐量。
EOF

# 创建1.2.4.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.1-CompletableFuture异步编程原理篇.md" << 'EOF'
---
title: CompletableFuture异步编程原理篇
icon: principle
order: 1
---

# CompletableFuture异步编程原理篇

## 异步编程基础概念

- 同步与异步的本质区别
- 阻塞与非阻塞的概念辨析
- 并发与并行的关系
- 异步编程的核心优势
- 异步编程的适用场景

## Future接口的局限性

- Future接口的基本功能
- 手动检查完成状态的问题
- 缺乏任务组合能力的限制
- 异常处理机制的不足
- 回调机制的缺失

## CompletableFuture的核心特性

- Future接口的增强实现
- CompletionStage接口的能力
- 声明式的API设计
- 函数式编程的支持
- 丰富的组合操作

## 内部实现机制

- 状态管理的实现方式
- 线程模型与执行器
- 任务链的构建原理
- 回调注册与触发机制
- 异常传播的内部处理

## 与其他异步框架的比较

- 与RxJava的设计理念对比
- 与Project Reactor的异同
- 与Java 9 Flow API的关系
- 与Guava ListenableFuture的比较
- 与Kotlin协程的功能对照
EOF

# 创建1.2.4.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.2-Java异步编程模型演进.md" << 'EOF'
---
title: Java异步编程模型演进
icon: evolution
order: 2
---

# Java异步编程模型演进

## 传统线程模型

- Thread类的基本使用
- Runnable接口的应用
- 线程池的引入与优势
- 线程同步的复杂性
- 线程模型的局限性

## Callable与Future模式

- Callable接口的设计
- Future接口的基本功能
- ExecutorService的任务提交
- 获取异步结果的方式
- Future模式的使用限制

## FutureTask的增强

- FutureTask的实现原理
- Runnable与Callable的桥接
- 状态管理与线程安全
- 取消任务的机制
- FutureTask的应用场景

## CompletableFuture的革新

- 声明式API的引入
- 函数式编程的融合
- 任务组合能力的提升
- 异常处理的改进
- 回调机制的完善

## 响应式编程的发展

- Java 9 Flow API的引入
- 背压机制的重要性
- 发布-订阅模型的应用
- 响应式流规范的实现
- 异步编程的未来趋势
EOF

# 创建1.2.4.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.3-CompletableFuture设计原理.md" << 'EOF'
---
title: CompletableFuture设计原理
icon: design
order: 3
---

# CompletableFuture设计原理

## 核心接口设计

- CompletionStage接口的角色
- Future接口的扩展方式
- 函数式接口的集成
- 方法命名的设计模式
- 接口层次结构的设计

## 状态管理机制

- 内部状态的表示方式
- 原子性更新的实现
- 完成状态的传播
- 取消操作的处理
- 异常状态的管理

## 执行器与线程模型

- 默认执行器的选择
- 自定义执行器的使用
- 异步方法的线程调度
- 同步方法的执行方式
- 线程上下文的传递

## 回调系统的实现

- 回调注册的内部机制
- 回调触发的时机控制
- 回调链的构建方式
- 回调执行的线程模型
- 回调异常的处理策略

## 内存模型与性能考量

- 对象引用的管理
- 内存屏障的使用
- 锁优化与无锁设计
- 资源释放的保障
- 性能瓶颈的识别与优化
EOF

# 创建1.2.4.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.4-异步任务编排机制.md" << 'EOF'
---
title: 异步任务编排机制
icon: orchestration
order: 4
---

# 异步任务编排机制

## 单任务操作

- 创建异步任务的方法
- 任务完成的触发机制
- 获取任务结果的方式
- 任务状态的检查
- 任务取消的实现

## 顺序任务编排

- thenApply的转换操作
- thenAccept的消费操作
- thenRun的执行操作
- thenCompose的扁平化组合
- 链式调用的执行顺序

## 并行任务编排

- runAsync与supplyAsync的区别
- allOf的并行等待机制
- anyOf的竞争完成模式
- 并行任务的结果收集
- 并行度的控制策略

## 条件任务编排

- 基于结果的条件执行
- 异常情况的条件处理
- 超时控制的实现
- 重试机制的设计
- 降级策略的应用

## 复杂工作流构建

- 有向无环图的任务依赖
- 动态任务创建与编排
- 大规模任务的管理
- 资源限制下的调度
- 工作流的监控与可视化
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/README.md" << 'EOF'
---
title: CompletableFuture异步编程
icon: async
order: 4
---

# CompletableFuture异步编程

本节详细介绍Java 8引入的CompletableFuture类，包括异步编程的基本概念、CompletableFuture的核心API、异步任务的组合与编排、异常处理机制以及实际应用场景，帮助读者掌握现代Java中的异步编程模型，提高系统的响应性和吞吐量。
EOF

# 创建1.2.4.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.5-线程池与执行器关系.md" << 'EOF'
---
title: 线程池与执行器关系
icon: threadpool
order: 5
---

# 线程池与执行器关系

## 执行器框架基础

- Executor接口的设计理念
- ExecutorService的扩展功能
- 线程池的核心概念
- 执行器与线程池的关系
- JDK中的执行器类型

## CompletableFuture的执行器使用

- 默认执行器的选择机制
- ForkJoinPool.commonPool的特性
- 自定义执行器的指定方法
- 异步方法中的执行器参数
- 执行器的生命周期管理

## 线程池配置策略

- 核心线程数的确定方法
- 最大线程数的设置原则
- 队列类型的选择考量
- 拒绝策略的应用场景
- 线程工厂的自定义

## 常见线程池类型分析

- FixedThreadPool的特性与适用场景
- CachedThreadPool的动态扩展机制
- ScheduledThreadPool的定时任务能力
- SingleThreadExecutor的顺序执行保证
- ForkJoinPool的工作窃取算法

## 线程池监控与调优

- 线程池状态的监控方法
- 任务队列的监控指标
- 线程池参数的动态调整
- 性能瓶颈的识别
- 常见线程池问题的诊断与解决
EOF

# 创建1.2.4.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.6-异步编程模式分析.md" << 'EOF'
---
title: 异步编程模式分析
icon: pattern
order: 6
---

# 异步编程模式分析

## 回调模式

- 回调函数的基本概念
- 同步回调与异步回调的区别
- 回调地狱的问题
- 回调上下文的传递
- CompletableFuture中的回调实现

## Promise模式

- Promise的设计理念
- CompletableFuture作为Promise
- 状态转换与结果传递
- 链式调用的实现机制
- 错误处理的Promise模式

## 反应式模式

- 数据流的概念
- 推送与拉取模型
- 背压机制的重要性
- CompletableFuture与反应式编程
- 事件驱动的异步处理

## Actor模式

- Actor模型的核心思想
- 消息传递与状态隔离
- Java中的Actor实现
- CompletableFuture与Actor的结合
- 分布式Actor系统

## 协程与纤程

- 协程的轻量级特性
- 虚拟线程与Project Loom
- 阻塞与非阻塞的协程
- 协程上下文与调度器
- 与CompletableFuture的比较
EOF

# 创建1.2.4.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.2-CompletableFuture异步编程实战篇.md" << 'EOF'
---
title: CompletableFuture异步编程实战篇
icon: practice
order: 2
---

# CompletableFuture异步编程实战篇

## 基本使用模式

- 创建完成的Future
- 创建异步执行的Future
- 手动完成Future
- 获取结果的多种方式
- 超时处理的实现

## 转换与消费操作

- thenApply转换结果
- thenAccept消费结果
- thenRun执行后续操作
- thenCompose组合Future
- 同步方法与异步方法的选择

## 组合多个Future

- thenCombine合并两个结果
- allOf等待多个完成
- anyOf等待任一完成
- 多Future结果的收集
- 批量操作的并行处理

## 异常处理策略

- exceptionally处理异常
- handle处理结果和异常
- whenComplete的完成回调
- 异常传播的控制
- 异常恢复与重试机制

## 实际应用场景

- 并行API调用的实现
- 异步数据库操作
- 复杂业务流程的异步处理
- 超时与熔断的实现
- 异步任务的取消与中断
EOF

# 创建1.2.4.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.3-异步任务创建与执行.md" << 'EOF'
---
title: 异步任务创建与执行
icon: task
order: 3
---

# 异步任务创建与执行

## 创建异步任务的方法

- runAsync创建无返回值任务
- supplyAsync创建有返回值任务
- 自定义执行器的指定
- 任务优先级的控制
- 任务上下文的传递

## 任务执行状态管理

- 检查任务完成状态
- 等待任务完成的方式
- 超时控制的实现
- 取消任务的机制
- 任务完成的回调注册

## 获取任务结果的策略

- 阻塞等待结果
- 超时等待结果
- 异步获取结果
- 默认值的提供
- 结果转换与处理

## 异步任务的执行控制

- 任务执行顺序的保证
- 任务并行度的控制
- 任务分组与批处理
- 任务优先级的实现
- 资源限制下的任务调度

## 异步任务的监控与管理

- 任务执行状态的监控
- 任务执行时间的统计
- 任务失败率的跟踪
- 任务吞吐量的度量
- 异步任务的日志记录
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/README.md" << 'EOF'
---
title: CompletableFuture异步编程
icon: async
order: 4
---

# CompletableFuture异步编程

本节详细介绍Java 8引入的CompletableFuture类，包括异步编程的基本概念、CompletableFuture的核心API、异步任务的组合与编排、异常处理机制以及实际应用场景，帮助读者掌握现代Java中的异步编程模型，提高系统的响应性和吞吐量。
EOF

# 创建1.2.4.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.4-任务组合与编排技巧.md" << 'EOF'
---
title: 任务组合与编排技巧
icon: compose
order: 4
---

# 任务组合与编排技巧

## 顺序执行模式

- thenApply实现结果转换
- thenAccept消费结果
- thenRun执行后续操作
- thenCompose实现任务链接
- 同步与异步方法的选择

## 并行执行模式

- 并行任务的创建方式
- allOf等待所有任务完成
- anyOf等待任一任务完成
- 结果收集与合并策略
- 并行度的控制方法

## 条件执行模式

- 基于结果的条件执行
- 异常情况的条件处理
- 动态任务链的构建
- 任务取消的条件判断
- 降级策略的实现

## 复杂工作流构建

- 有向无环图的任务依赖
- 多阶段任务的编排
- 分支与合并的实现
- 循环与迭代的处理
- 大规模任务的管理

## 高级编排技巧

- 任务优先级的控制
- 资源限制下的调度
- 任务分组与批处理
- 动态任务创建与编排
- 编排模式的性能优化
EOF

# 创建1.2.4.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.5-异常处理最佳实践.md" << 'EOF'
---
title: 异常处理最佳实践
icon: exception
order: 5
---

# 异常处理最佳实践

## 异常处理基础

- CompletableFuture中的异常模型
- 异常传播的机制
- 未捕获异常的默认处理
- 异常与完成状态的关系
- 异常处理的重要性

## 异常处理方法

- exceptionally处理异常
- handle同时处理结果和异常
- whenComplete的完成回调
- 多级异常处理的组合
- 异常处理方法的选择

## 异常恢复策略

- 提供默认值的恢复
- 重试机制的实现
- 降级服务的应用
- 异常转换与包装
- 恢复策略的选择原则

## 异常日志与监控

- 异常信息的有效记录
- 异常上下文的捕获
- 异常统计与分析
- 异常告警的实现
- 分布式追踪中的异常处理

## 实际应用中的最佳实践

- 异常粒度的控制
- 业务异常与系统异常的区分
- 异常处理的代码组织
- 异常处理的测试策略
- 异常处理的性能考量
EOF

# 创建1.2.4.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.6-超时控制实现方法.md" << 'EOF'
---
title: 超时控制实现方法
icon: timeout
order: 6
---

# 超时控制实现方法

## 超时控制的重要性

- 系统稳定性与超时控制
- 资源利用与超时设置
- 用户体验与响应时间
- 级联失败的预防
- 超时控制的设计原则

## 基本超时实现

- get方法的超时参数
- orTimeout方法的应用
- completeOnTimeout的默认值
- 超时单位的选择
- 超时异常的处理

## 高级超时策略

- 分阶段超时控制
- 动态超时时间的计算
- 基于负载的超时调整
- 超时与重试的结合
- 部分结果的超时处理

## 超时监控与统计

- 超时事件的记录
- 超时率的统计分析
- 超时趋势的监控
- 超时原因的诊断
- 超时告警的实现

## 实际应用场景

- 外部API调用的超时控制
- 数据库操作的超时设置
- 微服务间调用的超时
- 批处理任务的超时管理
- 用户交互中的超时处理
EOF

# 创建1.2.4.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.4-CompletableFuture异步编程/1.2.4.7-实际业务场景应用案例.md" << 'EOF'
---
title: 实际业务场景应用案例
icon: case
order: 7
---

# 实际业务场景应用案例

## 并行API调用

- 多服务并行调用的实现
- 结果聚合与转换
- 部分失败的处理策略
- 超时与熔断的应用
- 性能优化与监控

## 异步数据处理流水线

- ETL流程的异步实现
- 数据转换的并行处理
- 大数据集的分片处理
- 处理进度的监控
- 错误恢复与重试

## 实时计算与聚合

- 实时数据流的处理
- 并行计算的实现
- 结果聚合与更新
- 定时刷新与推送
- 资源使用的优化

## 复杂业务流程编排

- 订单处理流程的实现
- 支付与库存的并行处理
- 条件分支与业务规则
- 事务一致性的保障
- 流程监控与可视化

## 高性能Web应用

- 异步请求处理模型
- 非阻塞I/O的应用
- 长轮询与服务器推送
- 请求限流与负载均衡
- 性能测试与调优
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/README.md" << 'EOF'
---
title: Java模块化系统
icon: module
order: 5
---

# Java模块化系统

本节详细介绍Java 9引入的模块系统(JPMS)，包括其设计目标、核心概念、模块声明与依赖管理、服务加载机制以及迁移策略，帮助读者理解和应用Java平台的模块化架构，构建更加可靠、安全和可维护的应用程序。
EOF

# 创建1.2.5.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.1-Java模块化系统原理篇.md" << 'EOF'
---
title: Java模块化系统原理篇
icon: principle
order: 1
---

# Java模块化系统原理篇

## 模块化系统的基础概念

- 模块的定义与特性
- 强封装与信息隐藏
- 显式依赖的重要性
- 模块化与面向对象的关系
- 模块系统的层次结构

## Java平台模块系统架构

- 模块描述符的结构
- 模块图的构建过程
- 模块解析与验证机制
- 模块层与类加载器的关系
- 运行时模块系统的工作原理

## 模块系统的内部实现

- 模块系统在JVM中的实现
- 模块描述符的解析过程
- 模块依赖的解析算法
- 可读性图的构建与维护
- 模块导出与开放的实现区别

## 类加载机制的变化

- 模块路径与类路径的区别
- 模块类加载器的工作原理
- 层次化类加载器的设计
- 封装性在类加载中的实现
- 反射API的访问控制变化

## 兼容性与迁移考量

- 未命名模块的实现机制
- 自动模块的工作原理
- 多版本JAR的支持机制
- 强封装对反射的影响
- 迁移路径的技术实现
EOF

# 创建1.2.5.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.2-模块化系统设计目标.md" << 'EOF'
---
title: 模块化系统设计目标
icon: goal
order: 2
---

# 模块化系统设计目标

## 可靠性与安全性

- 强封装的安全保障
- 平台完整性的保护
- 减少内部API的暴露
- 明确的依赖声明
- 运行时完整性检查

## 可维护性与可扩展性

- 显式依赖的清晰性
- 模块边界的明确定义
- 组件化设计的促进
- API与实现的分离
- 版本演进的支持

## 性能优化

- 启动时间的优化
- 内存占用的减少
- 类加载的优化
- 编译时检查的增强
- 运行时优化的机会

## 可伸缩性

- 平台模块化的实现
- 定制运行时的能力
- 最小化部署的支持
- 按需加载的机制
- 微服务架构的适配

## 兼容性与迁移路径

- 向后兼容的设计
- 渐进式采用的支持
- 自动模块的过渡机制
- 类路径的持续支持
- 迁移工具的提供
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/README.md" << 'EOF'
---
title: Java模块化系统
icon: module
order: 5
---

# Java模块化系统

本节详细介绍Java 9引入的模块系统(JPMS)，包括其设计目标、核心概念、模块声明与依赖管理、服务加载机制以及迁移策略，帮助读者理解和应用Java平台的模块化架构，构建更加可靠、安全和可维护的应用程序。
EOF

# 创建1.2.5.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.3-模块描述符详解.md" << 'EOF'
---
title: 模块描述符详解
icon: descriptor
order: 3
---

# 模块描述符详解

## module-info.java的基本结构

- 模块声明的语法
- 模块名称的命名规范
- 模块描述符的位置要求
- 编译期与运行时的表示
- 模块描述符的版本管理

## 导出与开放指令

- exports指令的语法与用途
- opens指令的语法与用途
- 限定导出与开放的机制
- 导出与开放的区别
- 反射访问权限的控制

## 依赖管理指令

- requires指令的语法与用途
- requires static的条件依赖
- requires transitive的传递依赖
- 依赖解析的优先级规则
- 循环依赖的处理机制

## 服务相关指令

- provides...with的服务提供
- uses的服务消费声明
- 服务加载器的工作原理
- 服务接口与实现的分离
- 多服务提供者的处理

## 高级模块描述符特性

- 模块属性的定义与访问
- 注解在模块描述符中的应用
- 多版本模块的声明方式
- 模块描述符的动态生成
- 自定义模块系统的扩展
EOF

# 创建1.2.5.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.4-模块解析与加载机制.md" << 'EOF'
---
title: 模块解析与加载机制
icon: loading
order: 4
---

# 模块解析与加载机制

## 模块解析过程

- 模块图的构建步骤
- 根模块的确定方式
- 依赖解析的算法
- 模块版本的选择策略
- 解析错误的处理机制

## 模块路径与查找

- 模块路径的组成部分
- 模块查找的优先级规则
- 系统模块与应用模块的区别
- 模块格式的识别机制
- 多版本模块的查找策略

## 模块加载过程

- 模块加载的生命周期
- 模块初始化的顺序
- 模块层的构建过程
- 模块配置阶段的处理
- 运行时模块系统的启动

## 可读性图的管理

- 可读性关系的建立
- 隐式可读性的传递
- 动态添加可读性的API
- 可读性检查的实现
- 运行时可读性的调整

## 高级加载特性

- 自定义模块查找器
- 层次化模块加载
- 模块内容的动态发现
- 运行时模块定义
- 模块系统的扩展点
EOF

# 创建1.2.5.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.5-类加载器与模块关系.md" << 'EOF'
---
title: 类加载器与模块关系
icon: classloader
order: 5
---

# 类加载器与模块关系

## 类加载器层次结构的变化

- Java 9前的类加载器模型
- 模块化后的类加载器架构
- 平台类加载器的角色
- 应用类加载器的职责
- 自定义类加载器的适配

## 模块类加载器的工作原理

- 模块类加载器的实现
- 类加载请求的委派规则
- 模块边界的强制执行
- 包的封装性检查
- 类加载器与模块的映射关系

## 类路径与模块路径的交互

- 类路径加载的未命名模块
- 模块路径的命名模块
- 混合使用的兼容策略
- 类查找的优先级规则
- 资源访问的路径处理

## 反射与访问控制

- 模块系统对反射的影响
- 深度反射的访问控制
- 开放模块的反射权限
- 运行时添加开放的API
- 反射访问的最佳实践

## 高级类加载场景

- 多版本JAR的类加载
- OSGi与JPMS的集成
- 动态模块的类加载
- 类隔离与上下文切换
- 类加载性能的优化
EOF

# 创建1.2.5.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.6-向后兼容性设计.md" << 'EOF'
---
title: 向后兼容性设计
icon: compatibility
order: 6
---

# 向后兼容性设计

## 未命名模块机制

- 未命名模块的概念
- 类路径代码的模块表示
- 未命名模块的特殊权限
- 未命名模块的局限性
- 从未命名模块迁移的策略

## 自动模块的支持

- 自动模块的定义与创建
- 模块名称的自动推导
- 自动模块的特殊权限
- 自动模块的依赖处理
- 自动模块的过渡使用

## 多版本JAR支持

- 多版本JAR的文件结构
- 版本选择的机制
- 构建多版本JAR的工具
- 多版本资源的处理
- 多版本JAR的限制

## 迁移工具与API

- jdeps工具的使用
- jlink工具的应用
- jmod格式的处理
- 模块化迁移的辅助API
- 渐进式迁移的最佳实践

## 大型应用的迁移策略

- 自顶向下的迁移方法
- 自底向上的迁移方法
- 混合模式的过渡期运行
- 第三方库依赖的处理
- 持续集成中的兼容性测试
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/README.md" << 'EOF'
---
title: Java模块化系统
icon: module
order: 5
---

# Java模块化系统

本节详细介绍Java 9引入的模块系统(JPMS)，包括其设计目标、核心概念、模块声明与依赖管理、服务加载机制以及迁移策略，帮助读者理解和应用Java平台的模块化架构，构建更加可靠、安全和可维护的应用程序。
EOF

# 创建1.2.5.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.2-Java模块化系统实战篇.md" << 'EOF'
---
title: Java模块化系统实战篇
icon: practice
order: 2
---

# Java模块化系统实战篇

## 创建模块化项目

- 模块化项目的目录结构
- module-info.java的编写
- 模块命名的最佳实践
- 多模块项目的组织
- 模块化项目的构建配置

## 模块导出与依赖

- 导出包的策略与实践
- 限定导出的应用场景
- 模块依赖的声明方式
- 传递依赖的使用技巧
- 可选依赖的实现方法

## 服务提供与消费

- 服务接口的设计原则
- 服务提供者的实现
- 服务消费者的编写
- ServiceLoader的使用方法
- 多服务提供者的管理

## 反射与开放模块

- 反射访问的权限控制
- 开放模块的使用场景
- 运行时开放的API使用
- 框架集成的反射处理
- 反射访问的安全考量

## 工具链与命令行

- javac的模块化编译选项
- java的模块化运行参数
- jlink创建自定义运行时
- jdeps分析模块依赖
- jmod创建模块文件
EOF

# 创建1.2.5.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.3-模块化项目结构设计.md" << 'EOF'
---
title: 模块化项目结构设计
icon: structure
order: 3
---

# 模块化项目结构设计

## 模块粒度的确定

- 模块划分的原则
- 过大与过小模块的权衡
- 功能内聚性的考量
- 演进性的模块设计
- 领域驱动的模块划分

## 模块间依赖设计

- 依赖关系的梳理
- 避免循环依赖的策略
- 依赖倒置原则的应用
- 接口模块与实现模块的分离
- 依赖图的可视化与管理

## 多层架构的模块化

- 表现层模块的设计
- 业务逻辑层的模块化
- 数据访问层的模块划分
- 跨层通信的接口设计
- 层间依赖的控制

## 微服务架构的模块化

- 服务边界与模块边界
- 服务接口模块的设计
- 服务实现模块的组织
- 共享库的模块化策略
- 服务间通信的模块设计

## 大型项目的模块组织

- 多级模块的层次结构
- 模块组的概念与应用
- 模块版本管理策略
- 模块发布与部署计划
- 模块责任团队的划分
EOF

# 创建1.2.5.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.4-模块依赖管理实践.md" << 'EOF'
---
title: 模块依赖管理实践
icon: dependency
order: 4
---

# 模块依赖管理实践

## 显式依赖原则

- 显式声明所有依赖
- 最小依赖原则的应用
- 依赖范围的精确控制
- 避免隐式依赖的技巧
- 依赖审查的实施

## 传递依赖管理

- requires transitive的使用场景
- API依赖与实现依赖的区分
- 传递依赖的可见性控制
- 避免传递依赖污染
- 传递依赖的版本冲突处理

## 可选依赖处理

- requires static的应用
- 编译时依赖的管理
- 可选功能的模块化设计
- 运行时依赖检查的实现
- 优雅降级的依赖策略

## 构建工具集成

- Maven的模块化支持
- Gradle的模块化配置
- 多模块项目的构建脚本
- 依赖解析的自定义规则
- 模块路径与类路径的管理

## 依赖冲突与解决

- 版本冲突的检测方法
- 依赖替换的实现技术
- 强制版本的应用策略
- 排除传递依赖的方法
- 依赖分析与可视化工具
EOF

# 创建1.2.5.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.5-迁移传统项目到模块化.md" << 'EOF'
---
title: 迁移传统项目到模块化
icon: migration
order: 5
---

# 迁移传统项目到模块化

## 迁移前的准备工作

- 依赖关系的分析与梳理
- 包结构的审查与重组
- 内部API的识别与处理
- 反射使用点的排查
- 迁移计划的制定

## 渐进式迁移策略

- 自底向上的迁移方法
- 自顶向下的迁移方法
- 混合模式的过渡运行
- 增量迁移的里程碑设定
- 兼容性测试的实施

## 常见迁移问题与解决

- 类路径扫描的替代方案
- 反射访问的权限调整
- 内部API依赖的处理
- 第三方库兼容性问题
- 资源访问的路径调整

## 自动模块的使用策略

- 自动模块的临时应用
- 自动模块名称的规范化
- 从自动模块到显式模块的转换
- 处理无模块声明的依赖
- 自动模块的风险控制

## 迁移后的优化与维护

- 模块边界的持续优化
- 依赖关系的定期审查
- 模块接口的演进管理
- 性能指标的对比监控
- 模块化架构的文档维护
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/README.md" << 'EOF'
---
title: Java模块化系统
icon: module
order: 5
---

# Java模块化系统

本节详细介绍Java 9引入的模块系统(JPMS)，包括其设计目标、核心概念、模块声明与依赖管理、服务加载机制以及迁移策略，帮助读者理解和应用Java平台的模块化架构，构建更加可靠、安全和可维护的应用程序。
EOF

# 创建1.2.5.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.6-模块化应用打包与部署.md" << 'EOF'
---
title: 模块化应用打包与部署
icon: package
order: 6
---

# 模块化应用打包与部署

## 模块化打包格式

- JAR格式的模块化支持
- JMOD格式的特性与用途
- 多版本JAR的打包方法
- 模块描述符的打包位置
- 资源文件的模块化打包

## 自定义运行时映像

- jlink工具的基本使用
- 创建最小运行时映像
- 插件机制与优化选项
- 运行时映像的目录结构
- 运行时映像的启动配置

## 模块化应用的部署策略

- 传统部署与模块化部署的区别
- 容器环境中的模块化应用
- 微服务架构下的模块部署
- 云原生环境的模块化考量
- 持续部署流程的适配

## 运行时性能优化

- 模块系统的启动性能
- 类加载优化的实现
- 内存占用的减少策略
- AOT编译与模块系统
- 运行时性能监控与调优

## 企业级部署最佳实践

- 大规模应用的模块化部署
- 版本管理与灰度发布
- 模块化应用的监控策略
- 故障排除与诊断方法
- 部署自动化与DevOps集成
EOF

# 创建1.2.5.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.5-Java模块化系统/1.2.5.7-常见模块化问题解决.md" << 'EOF'
---
title: 常见模块化问题解决
icon: solution
order: 7
---

# 常见模块化问题解决

## 模块解析与加载问题

- 模块未找到的排查步骤
- 模块版本冲突的解决方法
- 循环依赖的检测与处理
- 模块路径配置错误的修正
- 类加载异常的诊断技巧

## 封装与访问控制问题

- 非法访问警告的处理
- 反射访问被拒绝的解决
- 深度反射的权限配置
- 动态添加读取权限的方法
- 第三方库的封装突破技术

## 服务加载与发现问题

- 服务提供者未找到的排查
- 多服务提供者的优先级控制
- 服务加载性能问题的优化
- 服务接口演进的兼容性处理
- 动态服务注册与发现的实现

## 构建与工具链问题

- Maven模块化构建的问题解决
- Gradle模块化支持的配置
- IDE模块化项目的设置
- 多模块项目的构建优化
- 持续集成环境的模块化适配

## 迁移与兼容性问题

- 传统代码与模块化代码的混合运行
- 类路径与模块路径的交互问题
- 自动模块命名冲突的解决
- 第三方库兼容性的处理策略
- 渐进式迁移中的常见陷阱
EOF

# 创建1.2.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/README.md" << 'EOF'
---
title: JDK新特性解析(9-21)
icon: feature
order: 6
---

# JDK新特性解析(9-21)

本节系统地介绍Java 9到Java 21各个版本引入的重要新特性，包括语言特性、API增强、性能优化和工具改进等方面，帮助读者了解Java平台的演进历程，掌握最新的Java技术，提升开发效率和代码质量。
EOF

BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/README.md" << 'EOF'
---
title: JDK新特性解析(9-21)
icon: feature
order: 6
---

# JDK新特性解析(9-21)

本节系统地介绍Java 9到Java 21各个版本引入的重要新特性，包括语言特性、API增强、性能优化和工具改进等方面，帮助读者了解Java平台的演进历程，掌握最新的Java技术，提升开发效率和代码质量。
EOF

# 创建1.2.6.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.1-JDK新特性原理篇.md" << 'EOF'
---
title: JDK新特性原理篇
icon: principle
order: 1
---

# JDK新特性原理篇

## JDK演进的技术驱动力

- 硬件架构的变革影响
- 编程范式的演进趋势
- 企业应用需求的变化
- 开源社区的推动作用
- 竞争语言的技术压力

## 特性设计与决策过程

- JEP流程的工作机制
- OpenJDK的治理模式
- 特性提案的生命周期
- 社区反馈的收集与处理
- 向后兼容性的权衡决策

## 语言特性的实现机制

- 编译器前端的演进
- 语法糖的实现原理
- 类型系统的增强机制
- 字节码指令的扩展
- 运行时支持的实现

## 性能优化的技术原理

- JIT编译器的优化策略
- 垃圾收集器的演进原理
- 内存管理的技术创新
- 并发性能的提升机制
- 启动性能的优化技术

## 平台整合与生态系统

- 原生系统集成的技术
- 容器环境的适配机制
- 云原生支持的实现
- 开发工具链的协同演进
- 第三方库的适配策略
EOF

# 创建1.2.6.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.2-JDK版本演进策略分析.md" << 'EOF'
---
title: JDK版本演进策略分析
icon: strategy
order: 2
---

# JDK版本演进策略分析

## 版本发布模型的变革

- 从传统发布到时间驱动发布
- 六个月快速迭代的优势
- LTS版本的选择策略
- 版本号命名规则的变化
- 发布节奏对开发者的影响

## 特性孵化与预览机制

- 孵化器模块的设计目的
- 预览特性的引入机制
- 实验性特性的管理方式
- 从预览到正式的演进路径
- 开发者参与反馈的渠道

## 向后兼容性策略

- 二进制兼容性的保障机制
- 源代码兼容性的维护策略
- API废弃与移除的流程
- 兼容性风险的评估方法
- 迁移工具的支持策略

## 长期支持与维护政策

- LTS版本的选择标准
- 安全更新的提供周期
- 商业支持与社区支持的区别
- 企业采用策略的考量因素
- 版本升级路径的规划

## 社区参与与开放治理

- OpenJDK的治理结构
- 贡献者角色与权限
- 决策过程的透明度
- 社区驱动的特性开发
- 商业利益与开源协作的平衡
EOF

# 创建1.2.6.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.3-语言特性增强原理.md" << 'EOF'
---
title: 语言特性增强原理
icon: language
order: 3
---

# 语言特性增强原理

## 类型系统的演进

- 类型推断的增强机制
- 泛型系统的改进原理
- 密封类的实现机制
- 模式匹配的类型检查
- 类型系统与编译器的交互

## 语法糖的实现技术

- 记录类的内部实现
- Switch表达式的编译转换
- 文本块的处理机制
- 增强型for循环的演进
- 语法糖的性能考量

## 函数式编程的深化

- Lambda表达式的优化
- 方法引用的实现机制
- Stream API的内部架构
- 函数接口的设计原理
- 闭包捕获的实现细节

## 并发编程模型的革新

- 结构化并发的实现原理
- 虚拟线程的技术基础
- 并发API的演进路径
- 内存模型的优化调整
- 无锁编程的支持机制

## 元编程能力的增强

- 注解处理的改进机制
- 反射API的性能优化
- 动态代理的实现演进
- 代码生成的技术支持
- 编译时元编程的探索
EOF

# 创建1.2.6.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.4-核心库优化机制.md" << 'EOF'
---
title: 核心库优化机制
icon: library
order: 4
---

# 核心库优化机制

## 集合框架的演进

- 不可变集合的实现原理
- 集合工厂方法的设计
- 专用集合类的优化
- 并发集合的改进机制
- 集合流操作的性能优化

## 字符串处理的增强

- 字符串内部表示的演变
- 字符串连接的优化技术
- 字符串比较的算法改进
- Unicode支持的增强
- 字符串池的管理优化

## IO与NIO的改进

- 文件API的现代化改造
- 异步IO的实现机制
- 内存映射的优化技术
- IO缓冲区的管理策略
- 文件系统接口的增强

## 并发工具的优化

- 并发数据结构的改进
- 锁实现的性能优化
- 原子操作的硬件支持
- 线程池的管理增强
- 并发控制的新模式

## 国际化与本地化支持

- Unicode的版本更新
- 日期时间API的改进
- 区域设置的增强支持
- 文本格式化的新功能
- 多语言处理的优化
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/README.md" << 'EOF'
---
title: JDK新特性解析(9-21)
icon: feature
order: 6
---

# JDK新特性解析(9-21)

本节系统地介绍Java 9到Java 21各个版本引入的重要新特性，包括语言特性、API增强、性能优化和工具改进等方面，帮助读者了解Java平台的演进历程，掌握最新的Java技术，提升开发效率和代码质量。
EOF

# 创建1.2.6.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.5-性能提升关键技术.md" << 'EOF'
---
title: 性能提升关键技术
icon: performance
order: 5
---

# 性能提升关键技术

## 编译器优化技术

- 即时编译器的演进历程
- 分层编译策略的优化
- 内联优化的改进机制
- 逃逸分析的增强
- 代码缓存的管理优化

## 垃圾收集器革新

- ZGC的设计原理与优势
- Shenandoah GC的工作机制
- G1收集器的持续改进
- 低延迟收集器的关键技术
- 垃圾收集器的选择策略

## 内存管理优化

- 堆内存布局的优化
- 对象分配的快速路径
- 内存屏障的优化技术
- 指针压缩的实现机制
- 内存泄漏检测的改进

## 启动性能提升

- 应用类数据共享(AppCDS)
- 静态编译(AOT)的应用
- 类加载优化技术
- 启动预热的实现机制
- 容器环境的启动优化

## 并发性能增强

- 虚拟线程的实现原理
- 线程调度的优化策略
- 锁实现的性能改进
- 无锁数据结构的应用
- 并发控制的硬件支持
EOF

# 创建1.2.6.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.6-JVM改进设计思想.md" << 'EOF'
---
title: JVM改进设计思想
icon: jvm
order: 6
---

# JVM改进设计思想

## 运行时架构演进

- JVM架构的历史变迁
- 解释器与编译器的协作模式
- 运行时数据区的优化设计
- 指令集的扩展与优化
- 平台无关性的实现策略

## 内存模型的改进

- Java内存模型的演进
- 原子性保证的实现机制
- 可见性控制的技术手段
- 有序性保障的设计思想
- 内存屏障的优化策略

## 类加载机制的优化

- 类加载器架构的演进
- 动态类加载的改进
- 类验证过程的优化
- 类初始化的触发控制
- 运行时常量池的管理

## 诊断与监控能力

- JFR(Java Flight Recorder)的设计
- JMX架构的现代化改造
- JVMTI接口的增强
- 诊断命令的统一框架
- 远程监控的安全机制

## 安全架构的强化

- 安全管理器的演进
- 类加载安全的增强
- 内存访问的保护机制
- 权限模型的改进
- 加密算法的平台支持
EOF

# 创建1.2.6.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.2-JDK新特性实战篇.md" << 'EOF'
---
title: JDK新特性实战篇
icon: practice
order: 2
---

# JDK新特性实战篇

## 语言特性实战应用

- 记录类的最佳实践
- 密封类的应用模式
- 模式匹配的实战技巧
- Switch表达式的有效使用
- 文本块的格式化技术

## 集合与流API实战

- 集合工厂方法的应用
- 不可变集合的使用场景
- Stream API的高级操作
- 并行流的性能优化
- 集合处理的最佳实践

## 并发编程新特性应用

- 虚拟线程的实战应用
- 结构化并发的编程模式
- CompletableFuture的高级用法
- 并发集合的选择策略
- 线程安全的代码设计

## 模块化系统实战

- 模块化应用的设计模式
- 多模块项目的构建管理
- 服务加载机制的应用
- 模块化与微服务的结合
- 传统应用的模块化迁移

## 工具链与诊断技术

- JShell的交互式开发
- jlink的自定义运行时创建
- jpackage的应用打包
- JFR的性能分析应用
- 容器环境的JVM优化
EOF

# 创建1.2.6.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.3-JDK9-11关键特性应用.md" << 'EOF'
---
title: JDK9-11关键特性应用
icon: version
order: 3
---

# JDK9-11关键特性应用

## Java 9核心特性应用

- 模块系统的实际应用
- 集合工厂方法的使用
- 接口私有方法的场景
- 改进的Stream API应用
- 响应式流的编程模型

## Java 10实用特性

- 局部变量类型推断的应用
- 不可变集合的增强用法
- 并行全垃圾回收器G1
- 应用类数据共享的配置
- 线程本地握手的性能提升

## Java 11企业级特性

- HTTP客户端API的应用
- 字符串处理新方法的使用
- Lambda参数的局部变量语法
- ZGC的低延迟应用场景
- 飞行记录器的性能分析

## 版本迁移与兼容性

- 从Java 8迁移的策略
- 处理移除的API和模块
- 第三方库的兼容性问题
- 构建工具的版本适配
- 性能对比与调优方法

## 企业实践案例分析

- 金融行业的Java 11应用
- 电商平台的版本升级经验
- 微服务架构中的新特性应用
- 大数据处理的性能提升
- 云原生环境的JDK优化
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/README.md" << 'EOF'
---
title: Java高级特性
icon: advanced
order: 2
---

# Java高级特性

本节深入探讨Java的高级特性和机制，包括并发编程、函数式编程、模块化系统等内容，帮助读者掌握Java的高级用法和设计思想，提升代码质量和系统性能。
EOF

# 创建1.2.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/README.md" << 'EOF'
---
title: JDK新特性解析(9-21)
icon: feature
order: 6
---

# JDK新特性解析(9-21)

本节系统地介绍Java 9到Java 21各个版本引入的重要新特性，包括语言特性、API增强、性能优化和工具改进等方面，帮助读者了解Java平台的演进历程，掌握最新的Java技术，提升开发效率和代码质量。
EOF

# 创建1.2.6.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.4-JDK12-17实用新功能.md" << 'EOF'
---
title: JDK12-17实用新功能
icon: function
order: 4
---

# JDK12-17实用新功能

## Java 12-13实用特性

- Switch表达式的增强
- 文本块的引入与使用
- 紧凑数字格式的应用
- 字符串新方法的实用性
- 微基准测试套件的应用

## Java 14-15关键功能

- Records类型的简化数据传输
- instanceof模式匹配的简化
- 空指针异常的精确定位
- 外部内存访问API的应用
- ZGC生产环境的实践经验

## Java 16-17企业级特性

- 密封类的封装控制
- Vector API的并行计算
- 强封装JDK内部API
- 外部函数与内存API
- 增强型伪随机数生成器

## 语言特性的生产应用

- 记录类在DTO中的应用
- 密封类在领域模型中的使用
- 模式匹配简化条件逻辑
- 文本块改进SQL和JSON处理
- Switch表达式重构策略模式

## 性能与监控增强

- JFR事件流的实时监控
- 弹性元空间的内存管理
- 增强ZGC的并发能力
- 容器感知的资源限制
- 启动性能的持续优化
EOF

# 创建1.2.6.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.5-JDK18-21前沿特性探索.md" << 'EOF'
---
title: JDK18-21前沿特性探索
icon: explore
order: 5
---

# JDK18-21前沿特性探索

## Java 18-19创新特性

- 简单Web服务器的应用
- 向量API的增强与优化
- 外部函数与内存API进展
- 结构化并发的初步支持
- 模式匹配的持续改进

## Java 20-21突破性特性

- 虚拟线程的革命性变化
- 结构化并发的完整支持
- 记录模式的高级应用
- 字符串模板的表达能力
- 外部函数与内存API成熟

## 并发编程的范式转变

- 虚拟线程的最佳实践
- 结构化并发的编程模型
- 传统线程模型的迁移策略
- 高吞吐量应用的架构调整
- 并发性能的量化对比

## 语言表达力的提升

- 模式匹配的组合应用
- 记录模式的数据处理
- 字符串模板的多场景使用
- Switch模式匹配的代码简化
- 未来语言特性的展望

## 前沿特性的实验应用

- 预览特性的安全使用
- 孵化器模块的探索
- 实验性API的评估方法
- 前沿特性的性能基准
- 社区反馈的参与渠道
EOF

# 创建1.2.6.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.6-版本迁移策略与实践.md" << 'EOF'
---
title: 版本迁移策略与实践
icon: migration
order: 6
---

# 版本迁移策略与实践

## 版本选择与规划

- LTS版本的选择标准
- 版本升级的成本评估
- 技术债务与升级时机
- 渐进式升级的路径规划
- 风险管理与回退策略

## Java 8到Java 11迁移

- 模块化系统的适配
- 移除的API的替代方案
- 废弃特性的处理策略
- 第三方库兼容性问题
- 性能调优与监控调整

## Java 11到Java 17迁移

- 强封装JDK内部API的影响
- 新语言特性的采纳策略
- 垃圾收集器的选择与配置
- 安全性增强的适配
- 构建与部署流程的调整

## Java 17到Java 21迁移

- 虚拟线程的采纳策略
- 结构化并发的迁移方法
- 新模式匹配特性的应用
- 字符串模板的代码重构
- 性能优化的最佳实践

## 企业级迁移案例分析

- 大型金融系统的版本升级
- 电商平台的分阶段迁移
- 微服务架构的升级策略
- 遗留系统的现代化路径
- 迁移过程中的经验教训
EOF

# 创建1.2.6.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.2-Java高级特性/1.2.6-JDK新特性解析(9-21)/1.2.6.7-新特性性能对比测试.md" << 'EOF'
---
title: 新特性性能对比测试
icon: benchmark
order: 7
---

# 新特性性能对比测试

## 测试方法与环境

- 基准测试的科学方法
- JMH工具的有效使用
- 测试环境的标准化
- 性能指标的选择
- 结果分析的统计方法

## 语言特性性能对比

- 记录类与传统POJO的对比
- 模式匹配与传统条件判断
- Switch表达式的性能评估
- 文本块与字符串连接
- 密封类的运行时开销

## 并发特性性能测试

- 虚拟线程与平台线程的对比
- 结构化并发与CompletableFuture
- 并行流与虚拟线程集合处理
- 锁实现的性能演进
- 不同并发模型的吞吐量测试

## 集合与API性能分析

- 不可变集合的性能特性
- 集合工厂方法的效率
- Stream API的优化进展
- 字符串处理API的性能
- 新旧API的内存占用对比

## 实际应用场景测试

- Web应用的吞吐量对比
- 微服务调用链的延迟测试
- 数据处理任务的性能
- 启动时间的版本对比
- 内存占用的演进分析
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/README.md" << 'EOF'
---
title: 设计模式基础概念
icon: concept
order: 1
---

# 设计模式基础概念

本节介绍设计模式的基础概念、分类方法和设计原则，帮助读者建立对设计模式的整体认识，为后续学习具体的设计模式奠定基础。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/README.md" << 'EOF'
---
title: 设计模式基础概念
icon: concept
order: 1
---

# 设计模式基础概念

本节介绍设计模式的基础概念、分类方法和设计原则，帮助读者建立对设计模式的整体认识，为后续学习具体的设计模式奠定基础。
EOF

# 创建1.3.1.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.1-设计模式基础概念原理篇.md" << 'EOF'
---
title: 设计模式基础概念原理篇
icon: theory
order: 1
---

# 设计模式基础概念原理篇

## 设计模式的定义与本质

- 设计模式的正式定义
- 模式与算法的区别
- 设计模式的抽象层次
- 模式作为解决方案的特性
- 设计模式的表达形式

## 设计模式的构成要素

- 模式名称的重要性
- 问题描述的表达方式
- 解决方案的核心结构
- 效果与权衡的分析
- 模式上下文的界定

## 设计模式的理论基础

- 面向对象设计的核心思想
- 抽象与封装的作用
- 继承与组合的选择
- 多态性在模式中的应用
- 接口与实现分离原则

## 设计模式的认知模型

- 模式思维的形成过程
- 模式语言的构建方法
- 模式之间的关联关系
- 模式应用的决策过程
- 反模式与模式的对比

## 设计模式的价值与局限

- 设计模式的主要价值
- 过度使用模式的风险
- 模式应用的适当时机
- 模式演化的动态性
- 评估模式应用的方法
EOF

# 创建1.3.1.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.2-设计模式起源与发展.md" << 'EOF'
---
title: 设计模式起源与发展
icon: history
order: 2
---

# 设计模式起源与发展

## 设计模式的历史起源

- 克里斯托弗·亚历山大的建筑模式
- 肯特·贝克与沃德·坎宁安的贡献
- GoF(四人帮)的开创性工作
- 《设计模式》经典著作的影响
- 早期模式社区的形成

## 设计模式在软件工程中的演进

- 面向对象设计方法的成熟
- 模式在软件架构中的应用
- 模式语言的扩展与发展
- 企业级应用中的模式应用
- 模式目录与知识库的建立

## 设计模式的学术研究

- 模式形式化的研究方向
- 模式挖掘与识别的方法
- 模式评估与验证的技术
- 模式语言的理论基础
- 跨领域模式研究的进展

## 设计模式在不同编程范式中的体现

- 面向对象语言中的模式实现
- 函数式编程中的模式思想
- 响应式编程的模式应用
- 并发编程模式的特点
- 跨范式模式的统一视角

## 设计模式的未来趋势

- 领域特定模式的兴起
- 微服务与云原生架构中的模式
- 人工智能对模式识别的影响
- 模式自动化应用的可能性
- 新兴技术领域的模式探索
EOF

# 创建1.3.1.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.3-面向对象设计原则.md" << 'EOF'
---
title: 面向对象设计原则
icon: principle
order: 3
---

# 面向对象设计原则

## SOLID原则概述

- 单一职责原则(SRP)的核心思想
- 开闭原则(OCP)的实现策略
- 里氏替换原则(LSP)的继承约束
- 接口隔离原则(ISP)的界面设计
- 依赖倒置原则(DIP)的抽象依赖

## 单一职责原则详解

- 职责的定义与边界
- 类的内聚性评估
- 职责分配的决策方法
- 过度分解的风险
- 实际应用中的平衡策略

## 开闭原则实践

- 抽象化的关键作用
- 扩展点的设计方法
- 行为参数化的技术
- 插件架构的实现
- 框架设计中的应用

## 里氏替换原则应用

- 继承关系的正确使用
- 契约式设计的实践
- 前置条件与后置条件
- 继承陷阱的识别
- 组合优于继承的案例

## 接口隔离与依赖倒置

- 客户端特定接口的设计
- 接口粒度的确定方法
- 高层模块与低层模块的关系
- 依赖注入的实现技术
- 控制反转容器的应用
EOF

# 创建1.3.1.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.4-设计模式分类体系.md" << 'EOF'
---
title: 设计模式分类体系
icon: category
order: 4
---

# 设计模式分类体系

## GoF设计模式分类

- 创建型模式的特点与目的
- 结构型模式的组织方式
- 行为型模式的交互机制
- 分类标准的理论基础
- 模式间的关联与区别

## 创建型模式概览

- 单例模式的使用场景
- 工厂方法与抽象工厂的区别
- 建造者模式的复杂对象构建
- 原型模式的对象复制机制
- 创建型模式的选择依据

## 结构型模式概览

- 适配器模式的接口转换
- 桥接模式的维度分离
- 组合模式的整体部分结构
- 装饰器模式的动态扩展
- 外观、享元与代理模式的应用

## 行为型模式概览

- 责任链模式的请求处理
- 命令模式的操作封装
- 解释器与迭代器的实现
- 观察者模式的事件通知
- 策略、模板方法与访问者模式

## 扩展分类方法

- 并发设计模式的特点
- 架构模式与设计模式的关系
- 企业集成模式的应用
- 领域特定模式的价值
- 反模式的识别与避免
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/README.md" << 'EOF'
---
title: 设计模式基础概念
icon: concept
order: 1
---

# 设计模式基础概念

本节介绍设计模式的基础概念、分类方法和设计原则，帮助读者建立对设计模式的整体认识，为后续学习具体的设计模式奠定基础。
EOF

# 创建1.3.1.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.5-模式之间的关系与区别.md" << 'EOF'
---
title: 模式之间的关系与区别
icon: relationship
order: 5
---

# 模式之间的关系与区别

## 模式间的组合使用

- 模式组合的常见形式
- 复合模式的构成方式
- 模式序列的应用流程
- 模式组合的设计考量
- 模式协作的接口设计

## 相似模式的比较

- 工厂方法与抽象工厂的区别
- 策略模式与状态模式的对比
- 装饰器与代理模式的异同
- 组合模式与责任链的比较
- 观察者与发布订阅的差异

## 模式变体与演化

- 经典模式的现代变体
- 模式在不同语言中的适应
- 模式随技术发展的演变
- 模式简化与轻量化趋势
- 模式扩展的创新方向

## 模式关系图谱

- 创建型模式间的关联
- 结构型模式的互补性
- 行为型模式的交互方式
- 跨类别模式的组合关系
- 模式语言的网络结构

## 模式选择的决策框架

- 问题特征与模式匹配
- 模式间权衡的考量因素
- 替代模式的评估方法
- 模式组合的决策过程
- 上下文对模式选择的影响
EOF

# 创建1.3.1.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.6-反模式与模式滥用分析.md" << 'EOF'
---
title: 反模式与模式滥用分析
icon: antipattern
order: 6
---

# 反模式与模式滥用分析

## 反模式的基本概念

- 反模式的定义与特征
- 反模式与不良实践的区别
- 反模式的识别方法
- 反模式的分类体系
- 反模式文档的表达形式

## 常见开发反模式

- 硬编码的危害与替代方案
- 重复代码的管理策略
- 过度工程化的表现与控制
- 魔术数字与字符串的处理
- 全局状态的风险与替代

## 架构层面的反模式

- 单体应用的演化困境
- 分布式系统中的反模式
- 数据访问层的常见问题
- 安全设计中的错误模式
- 可扩展性设计的误区

## 设计模式的滥用形式

- 模式驱动设计的风险
- 过早抽象的危害
- 不必要的复杂性引入
- 模式使用的形式主义
- 忽视上下文的模式应用

## 反模式的改进策略

- 反模式识别的团队实践
- 代码审查中的反模式检查
- 渐进式重构的方法
- 技术债务的管理策略
- 预防反模式的设计实践
EOF

# 创建1.3.1.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.2-设计模式基础概念实战篇.md" << 'EOF'
---
title: 设计模式基础概念实战篇
icon: practice
order: 2
---

# 设计模式基础概念实战篇

## 模式识别与应用

- 现有代码中的模式识别
- 模式应用的决策过程
- 渐进式引入模式的方法
- 模式应用的验证技术
- 模式文档化的最佳实践

## 模式在项目中的实施

- 团队模式知识的建立
- 模式在代码审查中的角色
- 模式库与代码模板的建立
- 模式应用的一致性保障
- 模式演进的管理策略

## 模式与重构

- 识别重构机会的模式线索
- 向模式重构的步骤方法
- 模式导向的代码改进
- 重构过程中的风险控制
- 重构成果的评估方式

## 模式与测试

- 不同模式的测试策略
- 模式实现的单元测试
- 模式交互的集成测试
- 测试驱动开发与模式应用
- 测试替身在模式测试中的应用

## 模式在现代开发中的应用

- 模式在敏捷开发中的角色
- 微服务架构中的模式应用
- 函数式编程对模式的影响
- 模式在前端框架中的体现
- 云原生应用中的模式创新
EOF

# 创建1.3.1.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.3-设计模式选择方法论.md" << 'EOF'
---
title: 设计模式选择方法论
icon: methodology
order: 3
---

# 设计模式选择方法论

## 问题分析与模式匹配

- 问题特征的提取方法
- 问题上下文的界定
- 模式适用条件的评估
- 问题与模式的映射技术
- 多模式候选的比较框架

## 模式选择的决策因素

- 系统质量属性的优先级
- 团队经验与技术栈考量
- 未来变化的预期分析
- 性能与资源约束的影响
- 开发与维护成本的平衡

## 模式组合的策略

- 互补模式的识别方法
- 模式链与模式序列的设计
- 复合模式的构建原则
- 模式组合的接口协调
- 组合模式的复杂度管理

## 上下文敏感的模式应用

- 业务领域对模式选择的影响
- 技术环境的约束与机会
- 组织因素在模式决策中的作用
- 项目生命周期阶段的考量
- 渐进式与革命式变革的选择

## 模式选择的实践工具

- 模式决策树的构建与应用
- 模式评估矩阵的使用方法
- 模式选择的团队协作技术
- 原型验证在模式选择中的作用
- 模式决策的文档化与回顾
EOF

BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.1目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/README.md" << 'EOF'
---
title: 设计模式基础概念
icon: concept
order: 1
---

# 设计模式基础概念

本节介绍设计模式的基础概念、分类方法和设计原则，帮助读者建立对设计模式的整体认识，为后续学习具体的设计模式奠定基础。
EOF

# 创建1.3.1.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.4-模式在架构设计中的应用.md" << 'EOF'
---
title: 模式在架构设计中的应用
icon: architecture
order: 4
---

# 模式在架构设计中的应用

## 架构模式与设计模式的关系

- 架构模式与设计模式的层次区别
- 设计模式在架构决策中的作用
- 从设计模式到架构模式的演进
- 架构风格与设计模式的协同
- 模式在不同架构视图中的体现

## 分层架构中的模式应用

- 表现层中的MVC/MVP/MVVM模式
- 业务层中的领域模型模式
- 数据访问层中的DAO与Repository模式
- 跨层通信中的Facade与Adapter模式
- 层间依赖管理的模式策略

## 微服务架构中的模式实践

- 服务发现与注册的模式实现
- 服务通信中的模式应用
- 服务容错的模式策略
- API网关中的设计模式
- 微服务数据管理的模式方案

## 云原生架构的模式创新

- 容器化环境中的模式应用
- 不可变基础设施的模式支持
- 弹性伸缩的设计模式
- 分布式配置的模式方案
- 云原生监控与可观测性模式

## 企业架构中的模式集成

- 企业集成模式的应用场景
- 消息中间件中的模式实现
- 分布式事务的模式解决方案
- 身份认证与授权的模式架构
- 大规模系统的模式组合策略
EOF

# 创建1.3.1.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.5-重构到设计模式的技巧.md" << 'EOF'
---
title: 重构到设计模式的技巧
icon: refactor
order: 5
---

# 重构到设计模式的技巧

## 识别重构机会

- 代码异味与设计模式的对应关系
- 复杂条件逻辑的模式重构线索
- 类职责过多的分解方向
- 紧耦合代码的模式化解决方案
- 重复代码的模式抽象机会

## 创建型模式的重构路径

- 从硬编码构造到工厂模式
- 构造函数复杂化到建造者模式
- 对象创建与管理到单例模式
- 对象复制逻辑到原型模式
- 产品族创建到抽象工厂模式

## 结构型模式的重构技术

- 接口不兼容到适配器模式
- 类层次结构膨胀到桥接模式
- 树形结构处理到组合模式
- 功能增强需求到装饰器模式
- 复杂子系统访问到外观模式

## 行为型模式的重构方法

- 条件分支到策略模式
- 请求处理链到责任链模式
- 算法步骤固定到模板方法
- 对象状态变化到状态模式
- 对象间通知到观察者模式

## 重构过程的实施策略

- 增量式重构的安全实践
- 测试驱动的重构方法
- 重构的团队协作技术
- 重构过程中的风险控制
- 重构成果的评估与验证
EOF

# 创建1.3.1.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.6-模式在开源框架中的应用.md" << 'EOF'
---
title: 模式在开源框架中的应用
icon: framework
order: 6
---

# 模式在开源框架中的应用

## Spring框架中的设计模式

- IoC容器中的工厂模式应用
- AOP实现中的代理与装饰器模式
- Spring MVC中的前端控制器模式
- 事务管理中的模板方法模式
- Bean生命周期中的观察者模式

## MyBatis中的模式实践

- SQL映射中的建造者模式
- 数据源管理中的工厂与适配器模式
- 插件机制中的责任链模式
- 缓存实现中的装饰器模式
- 会话管理中的代理模式

## Netty网络框架的模式应用

- 事件处理中的观察者模式
- 责任链模式在ChannelPipeline中的应用
- 适配器模式在协议转换中的使用
- 单例模式在资源管理中的应用
- 工厂方法在Channel创建中的实现

## Dubbo服务框架的模式解析

- SPI机制中的工厂模式变体
- 服务代理中的代理模式应用
- 集群容错中的策略模式
- 服务注册与发现中的观察者模式
- 过滤器链中的责任链模式

## 模式在框架设计中的启示

- 框架设计中的模式选择策略
- 模式组合在框架中的应用技巧
- 框架扩展点设计中的模式应用
- 从框架源码学习模式实现
- 设计自己的框架时的模式应用
EOF

# 创建1.3.1.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.1-设计模式基础概念/1.3.1.7-设计模式演进案例分析.md" << 'EOF'
---
title: 设计模式演进案例分析
icon: case
order: 7
---

# 设计模式演进案例分析

## 从命令式到函数式的模式演进

- 策略模式向函数式接口的转变
- 命令模式在函数式编程中的简化
- 观察者模式与响应式编程的关系
- 装饰器模式与高阶函数的对比
- 函数式编程对传统模式的影响

## 从单体到微服务的模式变革

- 模块化模式在微服务中的应用
- 服务发现取代硬编码依赖
- 断路器模式的兴起与应用
- 数据一致性模式的演进
- 微服务通信中的新模式

## 从同步到异步的模式转型

- 回调模式到Promise/Future的演进
- 观察者模式到响应式流的发展
- 同步适配器到异步适配器的转变
- 命令队列到消息队列的演化
- 异步编程中的新模式出现

## 从本地到分布式的模式扩展

- 单例模式在分布式环境的挑战
- 分布式锁取代本地锁机制
- 分布式事务模式的发展
- 缓存模式在分布式系统中的应用
- 分布式系统特有的模式创新

## 从传统到云原生的模式创新

- 不可变基础设施的设计模式
- 容器化环境中的配置模式
- 服务网格中的流量控制模式
- 云原生存储的访问模式
- DevOps实践中的自动化模式
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/README.md" << 'EOF'
---
title: 创建型模式在Java中的应用
icon: create
order: 2
---

# 创建型模式在Java中的应用

本节详细介绍创建型设计模式在Java中的实现方式和应用场景，包括单例模式、工厂方法模式、抽象工厂模式、建造者模式和原型模式，帮助读者掌握对象创建的各种设计技巧，灵活应对不同的创建需求。
EOF

# 创建1.3.2.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.1-创建型模式原理篇.md" << 'EOF'
---
title: 创建型模式原理篇
icon: theory
order: 1
---

# 创建型模式原理篇

## 创建型模式的核心思想

- 创建型模式的设计目标
- 对象创建与使用的分离原则
- 创建知识的封装机制
- 创建型模式的共同特征
- 创建型模式的演进历史

## 创建型模式的分类与关系

- 五种主要创建型模式的概述
- 创建型模式之间的关联与区别
- 创建型模式的选择依据
- 模式组合的常见形式
- 创建型模式的变体与扩展

## 创建型模式的设计原则

- 依赖倒置原则在创建型模式中的应用
- 开闭原则对创建过程的指导
- 单一职责原则与创建逻辑的分离
- 接口隔离原则在创建接口设计中的体现
- 最少知识原则对创建者的约束

## 创建型模式的实现策略

- 静态与动态创建的选择
- 延迟初始化的实现技术
- 线程安全创建的保障机制
- 参数化创建的灵活性
- 创建过程的性能优化

## 创建型模式的应用场景

- 复杂对象创建的简化
- 对象族的一致创建
- 对象创建的控制与约束
- 创建过程与表示分离
- 系统资源的统一管理
EOF

# 创建1.3.2.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.2-单例模式实现原理与变体.md" << 'EOF'
---
title: 单例模式实现原理与变体
icon: singleton
order: 2
---

# 单例模式实现原理与变体

## 单例模式的基本原理

- 单例模式的定义与意图
- 单例的核心特性与约束
- 全局访问点的设计
- 私有构造函数的控制
- 单例与静态类的区别

## 饿汉式与懒汉式单例

- 饿汉式单例的实现方式
- 懒汉式单例的延迟加载
- 两种方式的性能对比
- 资源占用的权衡考量
- 适用场景的选择依据

## 线程安全的单例实现

- 双重检查锁定的实现与原理
- volatile关键字的必要性
- 静态内部类的线程安全机制
- 枚举类型实现的优势
- 不同实现的性能比较

## 单例模式的高级变体

- 有限多例模式的实现
- 线程单例的设计与应用
- 可销毁单例的生命周期
- 参数化单例的灵活性
- 分布式环境中的单例挑战

## 单例模式的最佳实践

- 单例对象的延迟初始化策略
- 序列化与反序列化的处理
- 反射攻击的防御措施
- 单例的测试技巧
- 单例模式的重构方法
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/README.md" << 'EOF'
---
title: 创建型模式在Java中的应用
icon: create
order: 2
---

# 创建型模式在Java中的应用

本节详细介绍创建型设计模式在Java中的实现方式和应用场景，包括单例模式、工厂方法模式、抽象工厂模式、建造者模式和原型模式，帮助读者掌握对象创建的各种设计技巧，灵活应对不同的创建需求。
EOF

# 创建1.3.2.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.3-工厂方法与抽象工厂原理.md" << 'EOF'
---
title: 工厂方法与抽象工厂原理
icon: factory
order: 3
---

# 工厂方法与抽象工厂原理

## 工厂方法模式基本原理

- 工厂方法模式的定义与意图
- 简单工厂与工厂方法的区别
- 创建者与产品的关系设计
- 工厂方法的核心结构
- 工厂方法的扩展机制

## 工厂方法模式的Java实现

- 工厂接口与具体工厂类
- 产品接口与具体产品类
- 参数化工厂方法的实现
- 工厂方法的异常处理
- 工厂方法的注册机制

## 抽象工厂模式的设计思想

- 抽象工厂模式的定义与目标
- 产品族与产品等级结构
- 抽象工厂与工厂方法的关系
- 抽象工厂的核心结构
- 抽象工厂的扩展性设计

## 抽象工厂的Java实现技术

- 抽象工厂接口设计
- 具体工厂的实现策略
- 产品族的一致性保障
- 新产品族的添加方法
- 新产品类型的扩展挑战

## 工厂模式的高级应用

- 反射技术在工厂中的应用
- 泛型工厂的实现方式
- 工厂模式与IoC容器的关系
- 工厂模式在框架设计中的应用
- 工厂模式的性能优化策略
EOF

# 创建1.3.2.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.4-建造者模式设计思想.md" << 'EOF'
---
title: 建造者模式设计思想
icon: builder
order: 4
---

# 建造者模式设计思想

## 建造者模式的基本原理

- 建造者模式的定义与目标
- 复杂对象构建的挑战
- 构建过程与表示分离的思想
- 建造者模式的核心角色
- 建造者与其他创建型模式的区别

## 传统建造者模式的实现

- 抽象建造者接口设计
- 具体建造者的实现策略
- 指挥者的职责与实现
- 产品类的设计考量
- 构建步骤的组织与控制

## 流式建造者模式的Java实现

- 方法链式调用的实现技术
- 返回this的链式API设计
- 不变性对象的构建策略
- 可选参数的灵活处理
- 构建过程的验证机制

## 建造者模式的变体与扩展

- 无指挥者的建造者模式
- 递归建造者的实现方式
- 建造者与工厂的结合使用
- 多级建造者的嵌套设计
- 动态建造过程的实现

## 建造者模式的最佳实践

- 何时选择建造者模式
- 建造者命名与API设计规范
- 构建过程的异常处理
- 建造者模式的性能考量
- 建造者模式在框架中的应用
EOF

# 创建1.3.2.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.5-原型模式实现机制.md" << 'EOF'
---
title: 原型模式实现机制
icon: prototype
order: 5
---

# 原型模式实现机制

## 原型模式的基本原理

- 原型模式的定义与目标
- 对象复制与创建的区别
- 原型注册表的概念
- 原型模式的核心结构
- 原型模式的应用场景

## Java中的对象克隆技术

- Object.clone()方法的机制
- Cloneable接口的作用
- 浅克隆的实现与局限
- 深克隆的实现策略
- 克隆过程中的异常处理

## 深克隆的实现技术

- 递归克隆的实现方法
- 序列化实现深克隆的技术
- JSON转换实现克隆的方式
- 第三方库的克隆支持
- 不同深克隆方式的性能对比

## 原型模式的高级应用

- 原型管理器的设计与实现
- 克隆钩子方法的应用
- 原型模式与工厂模式的结合
- 原型模式在对象池中的应用
- 原型模式与缓存的结合

## 原型模式的最佳实践

- 何时选择原型模式
- 克隆接口的设计原则
- 克隆过程中的安全考量
- 克隆性能的优化策略
- 原型模式在框架中的应用
EOF

# 创建1.3.2.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.6-创建型模式对比分析.md" << 'EOF'
---
title: 创建型模式对比分析
icon: compare
order: 6
---

# 创建型模式对比分析

## 创建型模式的共性与差异

- 五种创建型模式的核心特点
- 创建型模式的共同目标
- 各模式的独特价值与侧重点
- 模式间的结构差异比较
- 创建控制程度的对比

## 单例与工厂模式的对比

- 创建对象数量的控制差异
- 创建过程的封装程度
- 客户端代码的耦合方式
- 扩展性设计的不同策略
- 适用场景的区分标准

## 工厂方法与抽象工厂的比较

- 抽象层次的差异分析
- 产品族与产品等级的关系
- 扩展维度的不同侧重
- 实现复杂度的对比
- 适用场景的选择依据

## 建造者与工厂的对比

- 对象创建过程的控制差异
- 参数传递方式的不同
- 创建复杂度的适用范围
- 客户端使用的便捷性比较
- 灵活性与可读性的权衡

## 创建型模式的选择策略

- 对象创建复杂度的评估
- 系统扩展方向的预判
- 性能与资源消耗的考量
- 代码可维护性的权衡
- 混合使用模式的设计策略
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/README.md" << 'EOF'
---
title: 创建型模式在Java中的应用
icon: create
order: 2
---

# 创建型模式在Java中的应用

本节详细介绍创建型设计模式在Java中的实现方式和应用场景，包括单例模式、工厂方法模式、抽象工厂模式、建造者模式和原型模式，帮助读者掌握对象创建的各种设计技巧，灵活应对不同的创建需求。
EOF

# 创建1.3.2.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.2-创建型模式实战篇.md" << 'EOF'
---
title: 创建型模式实战篇
icon: practice
order: 2
---

# 创建型模式实战篇

## 创建型模式的实际应用场景

- 企业应用中的创建型模式选择
- 微服务架构中的对象创建策略
- 高并发环境下的创建模式应用
- 云原生应用中的创建模式实践
- 移动应用开发中的创建模式

## 创建型模式的代码实现技巧

- 创建型模式的接口设计原则
- 异常处理在创建过程中的应用
- 创建过程的日志与监控实现
- 创建型模式的单元测试策略
- 创建模式的性能优化技术

## 创建型模式与依赖注入

- Spring IoC容器与创建型模式的关系
- 依赖注入框架中的工厂应用
- 注解驱动的对象创建机制
- 容器管理与手动创建的选择
- 依赖注入与创建模式的协同

## 创建型模式在开源项目中的应用

- Spring框架中的创建型模式分析
- MyBatis中的对象工厂实现
- Dubbo框架中的创建模式应用
- Netty中的创建型模式案例
- Jackson库中的建造者模式实现

## 创建型模式的实战案例解析

- 配置系统中的抽象工厂应用
- 连接池实现中的单例与工厂
- ORM框架中的对象创建策略
- 插件系统中的工厂方法应用
- 消息中间件中的创建模式实践
EOF

# 创建1.3.2.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.3-单例模式最佳实践.md" << 'EOF'
---
title: 单例模式最佳实践
icon: singleton
order: 3
---

# 单例模式最佳实践

## 单例模式的实现方式对比

- 饿汉式单例的实现与应用场景
- 懒汉式单例的线程安全实现
- 静态内部类单例的延迟加载机制
- 枚举单例的优势与局限性
- 双重检查锁定的正确实现

## 单例模式的安全防护

- 防止反射攻击的实现策略
- 序列化与反序列化的安全处理
- 克隆操作的防护措施
- 多类加载器环境的单例保障
- 单例对象的安全发布

## 单例模式的高级应用

- 注册表单例的实现与应用
- 线程单例的设计与实现
- 参数化单例的灵活应用
- 有限多例模式的实现技术
- 单例与对象池的结合应用

## 单例模式的测试技巧

- 单例类的单元测试策略
- 依赖单例的代码测试方法
- 测试替身在单例测试中的应用
- 单例重置的测试辅助方法
- 并发环境下的单例测试

## 单例模式的实战案例

- 数据库连接池的单例实现
- 配置管理器的单例设计
- 线程池的单例封装
- 缓存管理器的单例应用
- 日志系统的单例实现
EOF

# 创建1.3.2.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.4-工厂模式在框架中的应用.md" << 'EOF'
---
title: 工厂模式在框架中的应用
icon: framework
order: 4
---

# 工厂模式在框架中的应用

## Spring框架中的工厂模式

- BeanFactory的设计与实现
- FactoryBean接口的应用机制
- ApplicationContext的工厂角色
- Spring中的抽象工厂应用
- 自定义工厂Bean的实现方法

## MyBatis中的工厂应用

- SqlSessionFactory的设计与应用
- ObjectFactory的定制与扩展
- MapperProxyFactory的动态代理创建
- TypeHandlerFactory的类型处理器创建
- 自定义工厂在MyBatis中的集成

## Dubbo框架的工厂机制

- ExtensionLoader的SPI工厂实现
- ProxyFactory的服务代理创建
- AdaptiveExtensionFactory的组合工厂
- ProtocolFactory的协议适配
- Dubbo工厂体系的扩展机制

## Netty中的工厂模式应用

- ChannelFactory的设计与实现
- EventExecutorFactory的线程创建
- ReflectiveChannelFactory的反射工厂
- SocketChannelFactory的通道创建
- Netty中工厂模式的性能优化

## 自定义框架中的工厂设计

- 插件系统的工厂设计模式
- ORM框架中的实体工厂
- 缓存框架的缓存工厂设计
- 消息系统的消息工厂实现
- 工厂模式在框架扩展点中的应用
EOF

# 创建1.3.2.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.5-建造者模式实现流式API.md" << 'EOF'
---
title: 建造者模式实现流式API
icon: builder
order: 5
---

# 建造者模式实现流式API

## 流式API的设计原则

- 流式API的核心特性与优势
- 方法链式调用的设计思想
- 流式API的可读性设计
- 接口命名的一致性原则
- 流式API的文档化策略

## 建造者模式实现流式API的技术

- 返回this的链式方法设计
- 泛型在建造者模式中的应用
- 接口分离原则在API设计中的体现
- 不可变对象的构建技术
- 流式API的异常处理策略

## Java中流式API的经典案例

- StringBuilder的流式设计分析
- Stream API的建造者模式应用
- Lombok @Builder的实现机制
- HttpClient的请求构建器设计
- JUnit 5的测试构建器API

## 自定义流式API的实现技巧

- 领域特定语言(DSL)的流式设计
- 多级建造者的嵌套实现
- 条件性构建步骤的实现方法
- 构建过程验证的集成策略
- 流式API的性能优化技术

## 流式API的实战应用案例

- 配置构建器的流式API设计
- SQL查询构建器的链式实现
- REST客户端的请求构建器
- UI组件的流式构建API
- 测试数据构建器的流式设计
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.2目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/README.md" << 'EOF'
---
title: 创建型模式在Java中的应用
icon: create
order: 2
---

# 创建型模式在Java中的应用

本节详细介绍创建型设计模式在Java中的实现方式和应用场景，包括单例模式、工厂方法模式、抽象工厂模式、建造者模式和原型模式，帮助读者掌握对象创建的各种设计技巧，灵活应对不同的创建需求。
EOF

# 创建1.3.2.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.6-原型模式与对象克隆技巧.md" << 'EOF'
---
title: 原型模式与对象克隆技巧
icon: clone
order: 6
---

# 原型模式与对象克隆技巧

## Java中的对象克隆基础

- Cloneable接口的作用与机制
- Object.clone()方法的实现原理
- 浅克隆与深克隆的概念区分
- 克隆过程中的异常处理
- 克隆与构造函数的性能对比

## 深克隆的实现技术

- 递归克隆的手动实现方法
- 序列化实现深克隆的完整方案
- JSON转换实现克隆的技术
- 反射机制实现的通用克隆工具
- 第三方库的克隆支持对比

## 原型模式的高级应用

- 原型管理器的设计与实现
- 原型注册表的动态管理
- 克隆钩子方法的应用场景
- 原型模式与工厂模式的结合
- 原型模式在缓存中的应用

## 克隆的安全性与性能优化

- 可变对象克隆的安全处理
- 防止克隆攻击的安全措施
- 克隆过程的性能优化策略
- 大对象克隆的内存考量
- 克隆操作的并发安全保障

## 原型模式的实战案例

- 复杂对象树的克隆实现
- 原型模式在对象池中的应用
- 配置对象的原型克隆
- 图形编辑器中的原型应用
- 测试数据生成中的原型模式
EOF

# 创建1.3.2.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.2-创建型模式在Java中的应用/1.3.2.7-创建型模式实际案例解析.md" << 'EOF'
---
title: 创建型模式实际案例解析
icon: case
order: 7
---

# 创建型模式实际案例解析

## 电商系统中的创建型模式

- 商品对象的工厂方法实现
- 订单创建的建造者模式应用
- 购物车单例的设计与实现
- 商品族创建的抽象工厂应用
- 促销策略的原型模式实现

## 金融系统的创建型模式案例

- 交易对象的工厂模式设计
- 复杂金融产品的建造者模式
- 账户管理的单例模式应用
- 报表生成的原型模式实现
- 支付处理链的工厂方法应用

## 企业应用中的创建型模式

- 用户认证系统的单例实现
- 报表引擎的抽象工厂设计
- 文档生成的建造者模式应用
- 配置管理的原型模式实现
- 插件系统的工厂方法设计

## 微服务架构中的创建型模式

- 服务发现的工厂模式应用
- 微服务配置的建造者模式
- 连接池管理的单例模式
- 服务代理的工厂方法实现
- 消息对象的原型模式应用

## 开源框架中的创建型模式分析

- Spring框架中的创建型模式解析
- MyBatis中的工厂模式应用
- Dubbo框架的创建型模式实现
- Netty中的对象创建模式
- Guava库中的创建型模式案例
EOF

# 创建1.3.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/README.md" << 'EOF'
---
title: 结构型模式在Java中的应用
icon: structure
order: 3
---

# 结构型模式在Java中的应用

本节详细介绍结构型设计模式在Java中的实现方式和应用场景，包括适配器模式、桥接模式、组合模式、装饰器模式、外观模式、享元模式和代理模式，帮助读者掌握对象结构组织的各种设计技巧，提高代码的灵活性和可维护性。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/README.md" << 'EOF'
---
title: 结构型模式在Java中的应用
icon: structure
order: 3
---

# 结构型模式在Java中的应用

本节详细介绍结构型设计模式在Java中的实现方式和应用场景，包括适配器模式、桥接模式、组合模式、装饰器模式、外观模式、享元模式和代理模式，帮助读者掌握对象结构组织的各种设计技巧，提高代码的灵活性和可维护性。
EOF

# 创建1.3.3.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.1-结构型模式原理篇.md" << 'EOF'
---
title: 结构型模式原理篇
icon: theory
order: 1
---

# 结构型模式原理篇

## 结构型模式的核心思想

- 结构型模式的设计目标
- 对象组合与类继承的权衡
- 接口与实现分离的原则
- 结构型模式的共同特征
- 结构型模式的演进历史

## 结构型模式的分类与关系

- 七种主要结构型模式的概述
- 结构型模式之间的关联与区别
- 结构型模式的选择依据
- 模式组合的常见形式
- 结构型模式的变体与扩展

## 结构型模式的设计原则

- 组合优于继承原则的应用
- 接口隔离原则在结构设计中的体现
- 依赖倒置原则对结构的影响
- 最少知识原则的结构实现
- 开闭原则在结构扩展中的应用

## 结构型模式的实现策略

- 静态结构与动态组合的选择
- 透明性与安全性的权衡
- 性能与灵活性的平衡
- 复杂度管理的结构技术
- 结构型模式的重构方法

## 结构型模式的应用场景

- 接口不兼容问题的解决
- 复杂系统的简化访问
- 对象职责的动态扩展
- 对象结构的统一处理
- 系统资源的高效共享
EOF

# 创建1.3.3.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.2-适配器模式设计原理.md" << 'EOF'
---
title: 适配器模式设计原理
icon: adapter
order: 2
---

# 适配器模式设计原理

## 适配器模式的基本概念

- 适配器模式的定义与意图
- 现实世界中的适配器类比
- 适配器的核心角色与结构
- 适配器模式解决的问题类型
- 适配器与其他结构型模式的区别

## 类适配器与对象适配器

- 类适配器的实现机制
- 对象适配器的组合方式
- 两种适配器的优缺点比较
- 适用场景的选择依据
- Java中的实现限制与解决方案

## 双向适配器与缺省适配器

- 双向适配器的设计与应用
- 缺省适配器的实现技术
- 接口适配器的简化方法
- 适配器的扩展机制
- 适配器变体的选择标准

## 适配器模式的实现技巧

- 适配器接口设计的原则
- 异常处理与转换策略
- 适配过程中的性能考量
- 适配器的测试方法
- 适配器链的实现技术

## 适配器模式在Java中的应用

- Java I/O流中的适配器应用
- 集合框架中的适配器模式
- JDBC API的适配器设计
- AWT与Swing中的适配器类
- Spring框架中的适配器实现
EOF

# 创建1.3.3.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.3-装饰器模式实现机制.md" << 'EOF'
---
title: 装饰器模式实现机制
icon: decorator
order: 3
---

# 装饰器模式实现机制

## 装饰器模式的基本原理

- 装饰器模式的定义与目标
- 继承与组合的权衡考量
- 装饰器的核心结构与角色
- 装饰链的形成机制
- 装饰器与代理模式的区别

## 透明装饰器与半透明装饰器

- 透明装饰器的接口一致性
- 半透明装饰器的扩展方法
- 两种方式的优缺点比较
- 适用场景的选择依据
- 装饰器设计的灵活性考量

## 装饰器模式的实现技巧

- 抽象装饰器类的设计
- 具体装饰器的实现方法
- 装饰顺序的控制策略
- 装饰器的状态管理
- 装饰器的性能优化

## 动态装饰与静态装饰

- 运行时动态装饰的实现
- 编译时静态装饰的方法
- 动态代理实现装饰器的技术
- 注解驱动的装饰器应用
- 函数式接口与装饰器模式

## 装饰器模式在Java中的应用

- Java I/O流中的装饰器设计
- Servlet API中的请求装饰器
- 集合框架中的装饰器应用
- Spring框架中的装饰器模式
- Guava库中的装饰器实现
EOF

# 创建1.3.3.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.4-代理模式原理与分类.md" << 'EOF'
---
title: 代理模式原理与分类
icon: proxy
order: 4
---

# 代理模式原理与分类

## 代理模式的基本概念

- 代理模式的定义与意图
- 代理的核心角色与结构
- 代理与被代理对象的关系
- 代理模式解决的问题类型
- 代理与其他结构型模式的区别

## 静态代理的实现机制

- 静态代理的设计方法
- 接口一致性的保障
- 静态代理的优缺点
- 代理类的职责划分
- 静态代理的应用场景

## 动态代理的实现技术

- JDK动态代理的实现原理
- InvocationHandler的设计与应用
- Proxy类的核心方法
- 动态代理的限制与优势
- 动态代理的性能考量

## CGLIB代理与字节码增强

- CGLIB代理的工作机制
- MethodInterceptor的实现方法
- CGLIB与JDK代理的比较
- 字节码增强的技术原理
- CGLIB代理的应用场景

## 代理模式的高级应用

- 远程代理的实现技术
- 虚拟代理的延迟加载
- 保护代理的访问控制
- 缓存代理的性能优化
- 智能引用代理的资源管理
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/README.md" << 'EOF'
---
title: 结构型模式在Java中的应用
icon: structure
order: 3
---

# 结构型模式在Java中的应用

本节详细介绍结构型设计模式在Java中的实现方式和应用场景，包括适配器模式、桥接模式、组合模式、装饰器模式、外观模式、享元模式和代理模式，帮助读者掌握对象结构组织的各种设计技巧，提高代码的灵活性和可维护性。
EOF

# 创建1.3.3.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.5-组合模式树形结构设计.md" << 'EOF'
---
title: 组合模式树形结构设计
icon: tree
order: 5
---

# 组合模式树形结构设计

## 组合模式的基本原理

- 组合模式的定义与意图
- 部分-整体层次结构的表示
- 组合模式的核心角色与结构
- 统一接口的设计原则
- 组合模式解决的问题类型

## 透明式与安全式组合模式

- 透明式组合的接口一致性
- 安全式组合的类型安全性
- 两种方式的优缺点比较
- 适用场景的选择依据
- 设计权衡的考量因素

## 组合模式的实现技巧

- 组件接口的设计原则
- 复合组件的实现方法
- 叶子节点的简化处理
- 父节点引用的管理策略
- 遍历算法的实现技术

## 组合模式的高级特性

- 组合模式中的访问者应用
- 组合与责任链的结合使用
- 组合模式的缓存优化
- 懒加载技术在树结构中的应用
- 并发访问的安全控制

## 组合模式在Java中的应用

- Swing组件层次结构的设计
- 文件系统的树形表示
- XML/HTML文档对象模型
- 企业组织架构的建模
- 菜单系统的层次化设计
EOF

# 创建1.3.3.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.6-外观、桥接与享元模式分析.md" << 'EOF'
---
title: 外观、桥接与享元模式分析
icon: multiple
order: 6
---

# 外观、桥接与享元模式分析

## 外观模式的设计原理

- 外观模式的定义与目标
- 子系统封装的实现方法
- 外观接口的设计原则
- 多层外观的应用场景
- 外观模式与单一职责原则

## 桥接模式的核心思想

- 桥接模式的定义与意图
- 抽象与实现分离的机制
- 桥接模式的结构组成
- 维度分离的设计技术
- 桥接模式与继承体系的关系

## 享元模式的共享机制

- 享元模式的定义与目标
- 内部状态与外部状态的区分
- 享元工厂的设计与实现
- 共享池的管理策略
- 享元模式的性能优化

## 三种模式的比较与组合

- 外观与桥接的设计目标对比
- 桥接与享元的状态管理差异
- 外观与享元的客户端交互比较
- 模式组合的常见形式
- 选择合适模式的决策依据

## 实际应用案例分析

- JDBC API中的外观模式
- Java AWT中的桥接模式
- String常量池的享元实现
- 数据库连接池的设计模式
- 图形界面框架的模式应用
EOF

# 创建1.3.3.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.2-结构型模式实战篇.md" << 'EOF'
---
title: 结构型模式实战篇
icon: practice
order: 2
---

# 结构型模式实战篇

## 结构型模式的实际应用场景

- 企业应用中的结构型模式选择
- 微服务架构中的结构设计策略
- 高并发系统中的结构优化
- 云原生应用中的结构模式实践
- 移动应用开发中的结构设计

## 结构型模式的代码实现技巧

- 结构型模式的接口设计原则
- 组合关系的管理技术
- 结构型模式的性能优化方法
- 结构模式的单元测试策略
- 结构设计的重构技术

## 结构型模式与依赖注入

- Spring框架中的结构型模式应用
- 依赖注入对结构设计的影响
- 注解驱动的结构组织方式
- AOP与结构型模式的关系
- 容器管理的结构优势

## 结构型模式在开源项目中的应用

- Spring框架中的结构型模式分析
- MyBatis中的代理与装饰器应用
- Dubbo框架中的适配器模式
- Netty中的组合与装饰器模式
- Jackson库中的结构型模式实现

## 结构型模式的实战案例解析

- API网关的外观模式应用
- ORM框架的代理模式实现
- UI组件库的组合模式设计
- 缓存系统的装饰器模式应用
- 日志框架的桥接模式实现
EOF

# 创建1.3.3.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.3-适配器模式整合第三方库.md" << 'EOF'
---
title: 适配器模式整合第三方库
icon: integrate
order: 3
---

# 适配器模式整合第三方库

## 第三方库整合的挑战

- 接口不兼容的常见问题
- 版本变更带来的适配需求
- 多库协同的接口统一
- 第三方依赖的解耦策略
- 适配层设计的核心原则

## 适配器模式在库整合中的应用

- 日志框架适配的实现方案
- 数据访问层的适配器设计
- HTTP客户端库的统一接口
- 消息中间件的适配器模式
- 支付网关的适配器应用

## 适配器设计的最佳实践

- 适配层的位置与职责划分
- 接口粒度的合理设计
- 异常转换与处理策略
- 适配器的测试方法
- 文档化与维护策略

## 适配器模式与其他模式的组合

- 适配器与工厂模式的结合
- 适配器与策略模式的协作
- 装饰器增强适配器功能
- 外观模式简化适配器使用
- 代理模式与适配器的区别应用

## 实际案例分析

- Spring框架的JdbcTemplate适配
- SLF4J日志门面的适配机制
- Apache Commons IO的适配器
- JSON处理库的统一接口
- 云服务SDK的适配层设计
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/README.md" << 'EOF'
---
title: 结构型模式在Java中的应用
icon: structure
order: 3
---

# 结构型模式在Java中的应用

本节详细介绍结构型设计模式在Java中的实现方式和应用场景，包括适配器模式、桥接模式、组合模式、装饰器模式、外观模式、享元模式和代理模式，帮助读者掌握对象结构组织的各种设计技巧，提高代码的灵活性和可维护性。
EOF

# 创建1.3.3.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.4-装饰器模式实现功能增强.md" << 'EOF'
---
title: 装饰器模式实现功能增强
icon: decorator
order: 4
---

# 装饰器模式实现功能增强

## 装饰器模式的功能增强原理

- 装饰器模式的核心增强机制
- 透明性增强与职责分离
- 动态组合的灵活性优势
- 装饰链的构建与管理
- 与继承方式增强的对比

## Java I/O流中的装饰器应用

- InputStream/OutputStream的装饰体系
- BufferedInputStream的缓冲增强
- DataInputStream的数据类型增强
- GZIPInputStream的压缩功能增强
- 自定义I/O装饰器的实现方法

## 功能横切关注点的装饰实现

- 日志记录装饰器的设计
- 性能监控的装饰器实现
- 事务管理的装饰器应用
- 缓存功能的装饰器封装
- 权限验证的装饰器设计

## 装饰器模式的高级应用技巧

- 条件装饰的实现策略
- 装饰器组合顺序的控制
- 装饰器状态管理的方法
- 装饰器的异常处理机制
- 装饰器的线程安全保障

## 实际案例分析与最佳实践

- Spring框架中的TransactionProxyFactoryBean
- Servlet API中的HttpServletRequestWrapper
- Java集合框架中的Collections.synchronized方法
- Guava库中的装饰器模式应用
- 自定义Web过滤器链的装饰实现
EOF

# 创建1.3.3.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.5-动态代理实现AOP.md" << 'EOF'
---
title: 动态代理实现AOP
icon: proxy
order: 5
---

# 动态代理实现AOP

## AOP的基本概念与原理

- 面向切面编程的核心思想
- 横切关注点的分离机制
- 切面、通知与连接点的概念
- AOP与OOP的关系与互补
- 代理模式在AOP中的核心作用

## JDK动态代理实现AOP

- InvocationHandler接口的设计
- Proxy类的动态代理创建
- 方法拦截与增强的实现
- JDK动态代理的限制条件
- 接口代理的应用场景

## CGLIB代理实现AOP

- CGLIB的字节码增强原理
- MethodInterceptor的实现方法
- 子类代理的创建过程
- CGLIB与JDK代理的性能对比
- 类代理的应用场景与限制

## Spring AOP的代理机制

- Spring AOP的设计架构
- ProxyFactoryBean的工作原理
- Advisor、Advice与Pointcut
- JDK与CGLIB代理的自动选择
- @AspectJ注解驱动的AOP配置

## 自定义AOP框架的实现

- 切面定义与管理的设计
- 代理创建工厂的实现
- 方法拦截链的构建
- 通知执行顺序的控制
- AOP框架的性能优化策略
EOF

# 创建1.3.3.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.6-组合模式处理复杂结构.md" << 'EOF'
---
title: 组合模式处理复杂结构
icon: composite
order: 6
---

# 组合模式处理复杂结构

## 组合模式与树形结构

- 树形结构的表示挑战
- 组合模式的统一接口设计
- 复合对象与叶子对象的关系
- 递归组合的实现机制
- 组合模式的核心优势

## 组合模式的Java实现技术

- 组件接口的设计原则
- 复合组件的实现策略
- 叶子节点的简化处理
- 父节点引用的管理方法
- 安全式与透明式实现的选择

## 树形结构的操作与遍历

- 深度优先遍历的实现
- 广度优先遍历的实现
- 访问者模式与组合的结合
- 树形结构的过滤操作
- 组合结构的查找算法

## 组合模式的高级应用

- 组合模式在UI组件中的应用
- 文件系统的组合模式表示
- XML/HTML文档的树形处理
- 企业组织架构的建模
- 复杂规则引擎的组合实现

## 组合模式的最佳实践

- 组合接口的粒度控制
- 组件操作的一致性保障
- 组合结构的性能优化
- 组合模式的并发访问控制
- 组合与其他模式的协同使用
EOF

# 创建1.3.3.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.3-结构型模式在Java中的应用/1.3.3.7-轻量级模式优化性能.md" << 'EOF'
---
title: 轻量级模式优化性能
icon: performance
order: 7
---

# 轻量级模式优化性能

## 享元模式的性能优化原理

- 享元模式的共享机制
- 内部状态与外部状态的分离
- 对象池化与资源复用
- 享元工厂的缓存管理
- 享元模式的内存优化效果

## Java中的享元模式应用

- Integer缓存的享元实现
- String常量池的内存优化
- 线程池的资源复用机制
- 连接池的享元设计
- 字体渲染的享元应用

## 桥接模式的解耦与性能

- 维度分离的性能影响
- 桥接模式减少类爆炸
- 动态组合的灵活性
- 桥接模式的延迟加载
- 桥接与享元的结合应用

## 外观模式的简化与性能

- 接口聚合的调用优化
- 外观模式的缓存策略
- 批处理操作的性能提升
- 外观模式减少网络交互
- 外观与享元的协同使用

## 轻量级模式的实战案例

- 图形渲染引擎的享元优化
- 数据库连接池的设计实现
- 缓存系统的享元与代理结合
- 消息处理的桥接模式应用
- 大型应用的外观模式重构
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/README.md" << 'EOF'
---
title: 行为型模式在Java中的应用
icon: behavior
order: 4
---

# 行为型模式在Java中的应用

本节详细介绍行为型设计模式在Java中的实现方式和应用场景，包括策略模式、观察者模式、命令模式、模板方法模式、迭代器模式、状态模式、责任链模式等，帮助读者掌握对象间交互与职责分配的各种设计技巧，提高代码的灵活性和可维护性。
EOF

# 创建1.3.4.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.1-行为型模式原理篇.md" << 'EOF'
---
title: 行为型模式原理篇
icon: theory
order: 1
---

# 行为型模式原理篇

## 行为型模式的核心思想

- 行为型模式的设计目标
- 对象间通信与协作机制
- 职责分配与算法封装
- 行为型模式的共同特征
- 行为型模式的演进历史

## 行为型模式的分类与关系

- 十一种主要行为型模式的概述
- 行为型模式之间的关联与区别
- 行为型模式的选择依据
- 模式组合的常见形式
- 行为型模式的变体与扩展

## 行为型模式的设计原则

- 单一职责原则在行为设计中的应用
- 开闭原则对行为扩展的指导
- 依赖倒置原则与行为抽象
- 接口隔离原则在行为接口设计中的体现
- 最少知识原则对对象交互的约束

## 行为型模式的实现策略

- 继承与组合在行为模式中的应用
- 接口与抽象类的选择考量
- 回调机制的设计与实现
- 事件驱动的行为设计
- 状态转换的管理策略

## 行为型模式的应用场景

- 算法封装与策略选择
- 对象状态与行为变化
- 请求的处理与传递
- 对象间的通知机制
- 复杂流程的步骤控制
EOF

# 创建1.3.4.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.2-策略模式设计原理.md" << 'EOF'
---
title: 策略模式设计原理
icon: strategy
order: 2
---

# 策略模式设计原理

## 策略模式的基本概念

- 策略模式的定义与意图
- 算法族与上下文的关系
- 策略模式的核心结构
- 策略模式解决的问题类型
- 策略与其他行为型模式的区别

## 策略模式的Java实现

- 策略接口的设计原则
- 具体策略类的实现方法
- 上下文类的职责与实现
- 策略的选择与切换机制
- 策略模式的扩展技术

## 策略模式的高级应用

- 策略的动态选择机制
- 策略的组合与复合应用
- 策略与工厂模式的结合
- 策略的参数化配置
- 策略的注册与管理

## 函数式编程中的策略模式

- Lambda表达式实现策略
- 函数接口作为策略类型
- 方法引用的策略应用
- 策略组合的函数式实现
- 函数式策略的优势与局限

## 策略模式在Java中的应用

- Collections.sort()的比较器策略
- ThreadPoolExecutor的拒绝策略
- Spring中的资源加载策略
- 验证框架的校验策略
- 缓存系统的淘汰策略
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/README.md" << 'EOF'
---
title: 行为型模式在Java中的应用
icon: behavior
order: 4
---

# 行为型模式在Java中的应用

本节详细介绍行为型设计模式在Java中的实现方式和应用场景，包括策略模式、观察者模式、命令模式、模板方法模式、迭代器模式、状态模式、责任链模式等，帮助读者掌握对象间交互与职责分配的各种设计技巧，提高代码的灵活性和可维护性。
EOF

# 创建1.3.4.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.3-观察者模式事件机制.md" << 'EOF'
---
title: 观察者模式事件机制
icon: observer
order: 3
---

# 观察者模式事件机制

## 观察者模式的基本原理

- 观察者模式的定义与意图
- 发布-订阅模型的核心概念
- 主题与观察者的关系设计
- 观察者模式的核心结构
- 观察者模式解决的问题类型

## Java中的观察者模式实现

- Observable类与Observer接口
- 自定义观察者模式的实现
- 事件对象的设计与传递
- 观察者的注册与注销机制
- 通知策略与顺序控制

## 事件驱动编程模型

- 事件驱动架构的基本原理
- 事件源、事件对象与监听器
- 同步事件与异步事件的处理
- 事件过滤与分发机制
- 事件总线的设计与实现

## Java事件模型的应用

- AWT/Swing的事件处理机制
- JavaBeans的属性变更通知
- Spring的ApplicationEvent体系
- JMS消息的发布订阅模型
- RxJava的响应式编程模型

## 观察者模式的高级应用

- 弱引用观察者的内存管理
- 多播委托的实现技术
- 分层次的观察者结构
- 观察者模式与MVC架构
- 分布式环境中的观察者模式
EOF

# 创建1.3.4.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.4-命令模式与责任链原理.md" << 'EOF'
---
title: 命令模式与责任链原理
icon: command
order: 4
---

# 命令模式与责任链原理

## 命令模式的基本概念

- 命令模式的定义与意图
- 命令、接收者与调用者的关系
- 命令模式的核心结构
- 命令模式解决的问题类型
- 命令与其他行为型模式的区别

## 命令模式的Java实现

- 命令接口的设计原则
- 具体命令类的实现方法
- 命令调用者的职责
- 命令接收者的角色
- 命令对象的参数化配置

## 命令模式的高级应用

- 命令队列与批处理
- 命令的撤销与重做机制
- 宏命令的组合实现
- 命令模式与事务处理
- 命令日志与系统恢复

## 责任链模式的基本原理

- 责任链模式的定义与目标
- 处理者链的构建方式
- 请求在链中的传递机制
- 责任链模式的核心结构
- 责任链与命令模式的关系

## 责任链模式的实际应用

- Servlet过滤器链的设计
- Spring Security的过滤器链
- 日志框架的日志级别处理
- 异常处理链的实现
- 工作流引擎的责任链应用
EOF

# 创建1.3.4.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.5-模板方法与访问者模式.md" << 'EOF'
---
title: 模板方法与访问者模式
icon: template
order: 5
---

# 模板方法与访问者模式

## 模板方法模式的基本原理

- 模板方法模式的定义与意图
- 算法骨架与步骤实现的分离
- 模板方法的核心结构
- 钩子方法的设计与应用
- 模板方法解决的问题类型

## 模板方法的Java实现

- 抽象类的设计原则
- 模板方法的定义与保护
- 抽象方法的声明与实现
- 钩子方法的默认行为
- 具体子类的扩展方式

## 模板方法的实际应用

- JdbcTemplate的设计分析
- ServletAPI的service方法
- Spring中的各种Template类
- Collections.sort()的实现
- InputStream的read方法设计

## 访问者模式的基本概念

- 访问者模式的定义与意图
- 元素与访问者的关系
- 双分派机制的实现原理
- 访问者模式的核心结构
- 访问者模式解决的问题类型

## 访问者模式的高级应用

- 复杂对象结构的操作封装
- 访问者与组合模式的结合
- 访问者模式在编译器设计中的应用
- 数据结构遍历与操作分离
- 访问者模式的扩展性与局限性
EOF

# 创建1.3.4.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.6-状态、备忘录与解释器模式.md" << 'EOF'
---
title: 状态、备忘录与解释器模式
icon: multiple
order: 6
---

# 状态、备忘录与解释器模式

## 状态模式的基本原理

- 状态模式的定义与意图
- 状态驱动的行为变化机制
- 状态模式的核心结构
- 状态转换的管理策略
- 状态模式与策略模式的区别

## 状态模式的Java实现

- 状态接口的设计原则
- 具体状态类的实现方法
- 上下文对象的职责
- 状态转换的触发机制
- 状态模式的扩展技术

## 备忘录模式的设计思想

- 备忘录模式的定义与目标
- 发起人、备忘录与管理者的关系
- 备忘录模式的核心结构
- 状态捕获与恢复的机制
- 备忘录模式的封装策略

## 解释器模式的基本概念

- 解释器模式的定义与意图
- 文法规则与抽象语法树
- 解释器模式的核心结构
- 终结符与非终结符表达式
- 解释器模式的应用场景

## 三种模式的实际应用

- 工作流引擎中的状态模式
- 编辑器的撤销重做机制
- 规则引擎的解释器实现
- 游戏开发中的状态管理
- 表达式计算器的解释器设计
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/README.md" << 'EOF'
---
title: 行为型模式在Java中的应用
icon: behavior
order: 4
---

# 行为型模式在Java中的应用

本节详细介绍行为型设计模式在Java中的实现方式和应用场景，包括策略模式、观察者模式、命令模式、模板方法模式、迭代器模式、状态模式、责任链模式等，帮助读者掌握对象间交互与职责分配的各种设计技巧，提高代码的灵活性和可维护性。
EOF

# 创建1.3.4.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.2-行为型模式实战篇.md" << 'EOF'
---
title: 行为型模式实战篇
icon: practice
order: 2
---

# 行为型模式实战篇

## 行为型模式的实际应用场景

- 企业应用中的行为型模式选择
- 微服务架构中的行为设计策略
- 高并发系统中的行为优化
- 云原生应用中的行为模式实践
- 移动应用开发中的行为设计

## 行为型模式的代码实现技巧

- 行为型模式的接口设计原则
- 对象通信的管理技术
- 行为型模式的性能优化方法
- 行为模式的单元测试策略
- 行为设计的重构技术

## 行为型模式与函数式编程

- Lambda表达式实现行为模式
- 函数式接口在行为模式中的应用
- 方法引用简化行为实现
- Stream API与行为模式的结合
- 函数组合实现复杂行为

## 行为型模式在开源项目中的应用

- Spring框架中的行为型模式分析
- MyBatis中的模板方法与策略模式
- Dubbo框架中的观察者模式
- Netty中的责任链与命令模式
- Jackson库中的访问者模式实现

## 行为型模式的实战案例解析

- 工作流引擎的状态模式应用
- 消息中间件的观察者模式实现
- 规则引擎的策略与解释器模式
- 日志框架的责任链模式设计
- 缓存系统的访问者模式应用
EOF

# 创建1.3.4.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.3-策略模式消除条件判断.md" << 'EOF'
---
title: 策略模式消除条件判断
icon: strategy
order: 3
---

# 策略模式消除条件判断

## 条件判断代码的问题

- 复杂条件判断的维护挑战
- if-else与switch语句的局限性
- 条件逻辑的扩展困难
- 代码重复与职责分散
- 测试覆盖的复杂性

## 策略模式重构条件判断

- 识别变化算法的抽取方法
- 策略接口的设计原则
- 具体策略类的实现技巧
- 上下文类的职责定义
- 策略选择机制的设计

## 策略注册与查找机制

- 策略工厂的实现方法
- 策略注册表的设计
- 枚举类型的策略映射
- 注解驱动的策略选择
- 策略缓存的性能优化

## 函数式实现策略模式

- Lambda表达式简化策略定义
- 函数接口作为策略类型
- 方法引用的策略应用
- 策略组合的函数式实现
- 函数式策略的优势与局限

## 实际案例分析

- 支付系统的支付策略实现
- 折扣计算的策略模式应用
- 排序算法的策略封装
- 校验规则的策略设计
- 导出格式的策略模式实现
EOF

# 创建1.3.4.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.4-观察者模式实现事件驱动.md" << 'EOF'
---
title: 观察者模式实现事件驱动
icon: observer
order: 4
---

# 观察者模式实现事件驱动

## 事件驱动架构基础

- 事件驱动编程的核心概念
- 同步事件与异步事件的区别
- 事件驱动架构的优势与挑战
- 观察者模式在事件驱动中的角色
- 事件驱动系统的设计原则

## 观察者模式实现事件通知

- 事件源与事件监听器的设计
- 事件对象的数据封装
- 监听器的注册与注销机制
- 事件的触发与分发流程
- 事件过滤与优先级控制

## 异步事件处理机制

- 事件队列的设计与实现
- 线程池处理事件的策略
- 事件的顺序保证机制
- 异步事件的错误处理
- 事件处理的性能优化

## 分布式事件系统

- 分布式事件的传递机制
- 消息中间件的事件模型
- 事件的持久化与重放
- 分布式事件的一致性保障
- 跨系统事件的追踪与监控

## 实际应用案例

- Spring的ApplicationEvent体系
- GUI框架的事件处理机制
- 消息中间件的发布订阅模型
- 微服务架构中的事件驱动通信
- 领域驱动设计中的领域事件
EOF

# 创建1.3.4.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.5-责任链模式处理复杂流程.md" << 'EOF'
---
title: 责任链模式处理复杂流程
icon: chain
order: 5
---

# 责任链模式处理复杂流程

## 复杂业务流程的挑战

- 业务流程的复杂性与变化性
- 流程步骤的解耦需求
- 条件分支的灵活处理
- 流程可配置与可扩展性
- 流程执行的可追踪性

## 责任链模式设计流程处理器

- 处理器接口的设计原则
- 具体处理器的实现方法
- 处理器链的构建策略
- 请求对象的设计与传递
- 处理结果的收集与返回

## 责任链的高级实现技术

- 纯责任链与非纯责任链的选择
- 动态责任链的构建机制
- 责任链的中断与恢复
- 责任链的并行处理策略
- 责任链的监控与日志记录

## 责任链与其他模式的结合

- 责任链与命令模式的协作
- 责任链与策略模式的结合
- 责任链与装饰器模式的比较
- 责任链与状态模式的应用
- 责任链在管道-过滤器架构中的应用

## 实际应用案例分析

- Servlet过滤器链的设计与实现
- Spring Security的过滤器链机制
- 审批流程的责任链模式应用
- 日志框架的日志级别处理
- 支付处理流程的责任链设计
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.4目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/README.md" << 'EOF'
---
title: 行为型模式在Java中的应用
icon: behavior
order: 4
---

# 行为型模式在Java中的应用

本节详细介绍行为型设计模式在Java中的实现方式和应用场景，包括策略模式、观察者模式、命令模式、模板方法模式、迭代器模式、状态模式、责任链模式等，帮助读者掌握对象间交互与职责分配的各种设计技巧，提高代码的灵活性和可维护性。
EOF

# 创建1.3.4.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.6-模板方法实现框架设计.md" << 'EOF'
---
title: 模板方法实现框架设计
icon: template
order: 6
---

# 模板方法实现框架设计

## 框架设计中的模板方法模式

- 框架与应用程序的关系
- 控制反转与好莱坞原则
- 模板方法在框架中的核心作用
- 框架扩展点的设计策略
- 模板方法与插件架构的关系

## 模板方法的框架实现技术

- 抽象类设计的最佳实践
- 钩子方法的设计与应用
- 默认实现与必须实现的区分
- 模板方法的保护机制
- 框架约束与灵活性的平衡

## Java框架中的模板方法应用

- Spring框架中的模板方法模式
- JdbcTemplate的设计分析
- Servlet API的service方法
- MyBatis的SQL执行模板
- Hibernate的Session操作模板

## 自定义框架的模板方法设计

- 业务流程框架的模板设计
- 数据处理框架的步骤抽象
- 插件系统的扩展点设计
- 批处理框架的处理流程
- 测试框架的执行模板

## 模板方法的最佳实践

- 模板粒度的控制原则
- 扩展点的合理设计
- 文档化与示例代码
- 框架版本演进的兼容性
- 模板方法的性能考量
EOF

# 创建1.3.4.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.4-行为型模式在Java中的应用/1.3.4.7-状态模式管理复杂状态转换.md" << 'EOF'
---
title: 状态模式管理复杂状态转换
icon: state
order: 7
---

# 状态模式管理复杂状态转换

## 复杂状态管理的挑战

- 状态逻辑分散的维护困难
- 条件语句的复杂性与可读性
- 状态转换规则的一致性保障
- 新状态添加的扩展性问题
- 状态相关行为的内聚性

## 状态模式的设计原理

- 状态对象化的核心思想
- 上下文与状态的关系设计
- 状态转换的触发机制
- 状态模式的结构组成
- 状态模式与策略模式的区别

## 状态转换的实现策略

- 状态驱动的转换机制
- 事件驱动的状态变化
- 状态转换表的实现
- 状态机DSL的设计
- 状态历史的管理方法

## 状态模式的高级应用

- 分层状态机的实现
- 并发状态处理的同步控制
- 状态持久化与恢复机制
- 状态超时与定时转换
- 状态监听与观察者结合

## 实际应用案例分析

- 工作流引擎的状态管理
- 订单处理的状态转换
- 游戏角色的状态设计
- 网络连接的状态控制
- UI交互的状态响应
EOF

# 创建1.3.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/README.md" << 'EOF'
---
title: J2EE设计模式
icon: enterprise
order: 5
---

# J2EE设计模式

本节详细介绍Java企业级应用中常用的设计模式，包括MVC模式、前端控制器模式、业务代表模式、数据访问对象模式、传输对象模式等，帮助读者掌握企业级应用开发的架构设计技巧，提高系统的可维护性、可扩展性和可重用性。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/README.md" << 'EOF'
---
title: J2EE设计模式
icon: enterprise
order: 5
---

# J2EE设计模式

本节详细介绍Java企业级应用中常用的设计模式，包括MVC模式、前端控制器模式、业务代表模式、数据访问对象模式、传输对象模式等，帮助读者掌握企业级应用开发的架构设计技巧，提高系统的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.5.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.1-J2EE设计模式原理篇.md" << 'EOF'
---
title: J2EE设计模式原理篇
icon: theory
order: 1
---

# J2EE设计模式原理篇

## J2EE设计模式的核心思想

- J2EE设计模式的产生背景
- 企业级应用的架构挑战
- 分层架构的设计原则
- J2EE设计模式的共同特征
- 模式在企业应用中的价值

## J2EE设计模式的分类与关系

- 表现层设计模式概述
- 业务层设计模式概述
- 集成层设计模式概述
- 模式之间的组合与协作
- 设计模式的选择依据

## J2EE设计模式的设计原则

- 关注点分离原则的应用
- 松耦合与高内聚的实现
- 可测试性设计的考量
- 可伸缩性的架构设计
- 安全性与性能的平衡

## J2EE设计模式的实现策略

- 接口设计与依赖注入
- 异步处理与消息通信
- 缓存策略与数据访问
- 事务管理与并发控制
- 安全机制与身份认证

## J2EE设计模式的应用场景

- Web应用架构设计
- 微服务架构中的模式应用
- 分布式系统的模式选择
- 大型企业应用的架构模式
- 云原生应用的设计模式
EOF

# 创建1.3.5.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.2-MVC架构模式原理.md" << 'EOF'
---
title: MVC架构模式原理
icon: mvc
order: 2
---

# MVC架构模式原理

## MVC模式的基本概念

- MVC模式的定义与起源
- 模型、视图、控制器的职责
- MVC的交互流程与数据流
- MVC解决的核心问题
- MVC与其他架构模式的比较

## MVC模式的变体与演进

- Model 2架构的特点
- MVP模式的改进与应用
- MVVM模式的数据绑定机制
- 前后端分离的MVC实现
- 微服务架构下的MVC应用

## MVC在Java Web中的实现

- Servlet/JSP的MVC实现
- Spring MVC的核心组件
- Struts 2的MVC架构
- JSF的组件化MVC模型
- MVC框架的选择考量

## MVC模式的设计技巧

- 控制器的职责界定
- 模型设计的最佳实践
- 视图技术的选择策略
- 数据传输对象的应用
- MVC组件间通信机制

## MVC模式的实际应用案例

- 企业级Web应用的MVC架构
- RESTful API的MVC设计
- 单页应用的前端MVC
- 移动应用的MVC实现
- 微服务中的MVC模式应用
EOF

# 创建1.3.5.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.3-前端控制器设计思想.md" << 'EOF'
---
title: 前端控制器设计思想
icon: controller
order: 3
---

# 前端控制器设计思想

## 前端控制器模式的基本原理

- 前端控制器模式的定义与目标
- 集中式请求处理的优势
- 前端控制器的核心职责
- 分发器与视图解析器的作用
- 前端控制器与MVC的关系

## 前端控制器的实现机制

- 请求拦截与预处理
- 请求分发的策略设计
- 控制器映射的实现方法
- 视图选择与渲染机制
- 结果处理与响应生成

## Java Web框架中的前端控制器

- Spring MVC的DispatcherServlet
- Struts 2的FilterDispatcher
- JSF的FacesServlet
- 自定义前端控制器的实现
- 框架前端控制器的对比

## 前端控制器的高级应用

- 请求拦截与过滤链
- 安全控制与认证授权
- 国际化与本地化支持
- 异常处理与错误页面
- 性能优化与缓存策略

## 前端控制器的最佳实践

- 控制器设计的粒度控制
- 请求映射的命名规范
- 参数绑定与验证机制
- 响应格式的统一处理
- 前端控制器的测试策略
EOF

# 创建1.3.5.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.4-数据访问对象模式.md" << 'EOF'
---
title: 数据访问对象模式
icon: dao
order: 4
---

# 数据访问对象模式

## DAO模式的基本概念

- DAO模式的定义与目标
- 数据访问层的职责划分
- DAO接口与实现的分离
- DAO模式解决的核心问题
- DAO与领域模型的关系

## DAO模式的设计原则

- 接口设计的抽象级别
- 数据源封装的策略
- 异常处理与转换机制
- 事务管理的集成方式
- DAO测试的最佳实践

## DAO模式的实现技术

- JDBC实现DAO的基本方法
- ORM框架中的DAO模式
- Spring Data的Repository模式
- MyBatis的Mapper接口设计
- NoSQL数据库的DAO实现

## DAO模式的高级应用

- 泛型DAO的设计与实现
- 缓存策略在DAO中的应用
- 批处理操作的优化技术
- 分页查询的标准实现
- 多数据源的DAO设计

## DAO模式的实际案例分析

- 企业应用中的DAO层设计
- 微服务架构中的数据访问
- 读写分离的DAO实现
- 分库分表环境下的DAO
- 混合持久化的DAO策略
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/README.md" << 'EOF'
---
title: J2EE设计模式
icon: enterprise
order: 5
---

# J2EE设计模式

本节详细介绍Java企业级应用中常用的设计模式，包括MVC模式、前端控制器模式、业务代表模式、数据访问对象模式、传输对象模式等，帮助读者掌握企业级应用开发的架构设计技巧，提高系统的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.5.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.5-业务代表与传输对象模式.md" << 'EOF'
---
title: 业务代表与传输对象模式
icon: business
order: 5
---

# 业务代表与传输对象模式

## 业务代表模式的基本原理

- 业务代表模式的定义与目标
- 表现层与业务层的解耦机制
- 业务代表的核心职责
- 业务服务定位与缓存策略
- 业务代表模式解决的问题

## 业务代表模式的实现技术

- 业务代表接口的设计原则
- 业务服务查找的实现方法
- 远程服务代理的封装
- 异常处理与转换机制
- 业务代表的缓存优化

## 传输对象模式的基本概念

- 传输对象模式的定义与意图
- 数据传输的封装原则
- 传输对象与领域对象的关系
- 序列化与反序列化机制
- 传输对象模式解决的问题

## 传输对象模式的实现策略

- 传输对象的设计原则
- 对象转换器的实现方法
- 批量传输对象的优化
- 版本控制与兼容性处理
- 传输对象的验证机制

## 两种模式的实际应用

- 远程服务调用中的应用
- 微服务架构中的数据传输
- RESTful API的数据封装
- 分布式系统的业务代表
- 大型企业应用的层次隔离
EOF

# 创建1.3.5.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.6-依赖注入与服务定位器.md" << 'EOF'
---
title: 依赖注入与服务定位器
icon: injection
order: 6
---

# 依赖注入与服务定位器

## 依赖注入模式的基本原理

- 依赖注入的定义与目标
- 控制反转的核心思想
- 依赖注入的类型与方式
- 依赖注入容器的职责
- 依赖注入解决的设计问题

## 依赖注入的实现技术

- 构造函数注入的实现
- 属性注入的设计方法
- 方法注入的应用场景
- 注解驱动的依赖注入
- 依赖注入的生命周期管理

## 服务定位器模式的基本概念

- 服务定位器的定义与意图
- 服务注册与查找机制
- 服务缓存的实现策略
- 服务定位器的核心结构
- 服务定位器与依赖注入的比较

## 服务定位器的实现方法

- 服务定位器的设计原则
- 服务注册表的实现
- 服务工厂的设计模式
- 懒加载与预加载策略
- 线程安全的服务定位器

## 两种模式的实际应用

- Spring框架的依赖注入机制
- JNDI的服务定位器模式
- OSGi的服务注册与发现
- 微服务架构中的服务发现
- 模式选择的最佳实践
EOF

# 创建1.3.5.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.2-J2EE设计模式实战篇.md" << 'EOF'
---
title: J2EE设计模式实战篇
icon: practice
order: 2
---

# J2EE设计模式实战篇

## J2EE设计模式的实际应用场景

- 企业级Web应用的架构设计
- 微服务架构中的模式应用
- 分布式系统的模式选择
- 高并发系统的架构模式
- 大型企业应用的设计策略

## J2EE设计模式的代码实现技巧

- 分层架构的实现方法
- 组件间通信的设计策略
- 事务管理的模式应用
- 安全控制的架构设计
- 性能优化的模式选择

## J2EE设计模式与框架集成

- Spring框架中的设计模式应用
- Hibernate的ORM模式实现
- MyBatis的数据访问模式
- SpringMVC的Web层模式
- SpringBoot的自动配置模式

## J2EE设计模式在开源项目中的应用

- Apache Tomcat的架构模式
- Spring框架的核心设计模式
- Dubbo的RPC模式实现
- Elasticsearch的分布式模式
- Kafka的消息模式设计

## J2EE设计模式的实战案例解析

- 电商系统的架构设计
- 支付系统的模式应用
- CRM系统的分层架构
- 内容管理系统的模式实现
- 企业门户的架构模式
EOF

# 创建1.3.5.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.3-SpringMVC中的模式应用.md" << 'EOF'
---
title: SpringMVC中的模式应用
icon: spring
order: 3
---

# SpringMVC中的模式应用

## SpringMVC的架构设计

- SpringMVC的整体架构
- 核心组件与职责划分
- 请求处理的生命周期
- 设计模式在架构中的应用
- SpringMVC与传统MVC的区别

## 前端控制器模式在SpringMVC中的应用

- DispatcherServlet的设计与实现
- 请求映射的处理机制
- 视图解析与渲染流程
- 异常处理的统一管理
- 拦截器链的设计模式

## 依赖注入在SpringMVC中的应用

- 控制器的依赖注入
- 服务组件的自动装配
- 配置驱动的依赖管理
- 注解驱动的依赖注入
- Bean生命周期的管理

## 适配器模式在SpringMVC中的应用

- HandlerAdapter的设计与实现
- 多种控制器类型的支持
- 请求参数的绑定机制
- 返回值的处理策略
- 适配器的扩展机制

## 其他设计模式在SpringMVC中的应用

- 模板方法模式在视图渲染中的应用
- 策略模式在参数解析中的应用
- 组合模式在拦截器中的应用
- 观察者模式在事件处理中的应用
- 装饰器模式在请求响应包装中的应用
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.5目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/README.md" << 'EOF'
---
title: J2EE设计模式
icon: enterprise
order: 5
---

# J2EE设计模式

本节详细介绍Java企业级应用中常用的设计模式，包括MVC模式、前端控制器模式、业务代表模式、数据访问对象模式、传输对象模式等，帮助读者掌握企业级应用开发的架构设计技巧，提高系统的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.5.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.4-ORM框架中的设计模式.md" << 'EOF'
---
title: ORM框架中的设计模式
icon: database
order: 4
---

# ORM框架中的设计模式

## ORM框架的核心设计思想

- 对象关系映射的基本原理
- ORM框架解决的核心问题
- 领域模型与数据库模型的映射
- ORM框架的架构层次
- 设计模式在ORM中的重要性

## 数据映射器模式

- 数据映射器的定义与职责
- 实体对象与数据库表的映射
- 映射元数据的管理方式
- 映射器的缓存策略
- 数据映射器的实现技术

## 单元工作模式

- 单元工作的定义与目标
- 事务边界的管理机制
- 变更跟踪的实现方法
- 并发控制与锁定策略
- 单元工作与仓储的协作

## 仓储模式

- 仓储模式的定义与意图
- 领域对象的持久化封装
- 查询对象的设计与实现
- 仓储接口的设计原则
- 仓储与数据访问层的关系

## ORM框架中的其他设计模式

- 延迟加载的代理模式
- 标识映射的工厂模式
- 查询构建的建造者模式
- 会话管理的单例模式
- 继承映射的策略模式
EOF

# 创建1.3.5.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.5-企业级应用架构模式实践.md" << 'EOF'
---
title: 企业级应用架构模式实践
icon: architecture
order: 5
---

# 企业级应用架构模式实践

## 领域逻辑模式

- 事务脚本模式的应用场景
- 领域模型的设计原则
- 表模块的实现技术
- 服务层的职责划分
- 领域逻辑模式的选择依据

## 数据源架构模式

- 表数据网关的设计与实现
- 行数据网关的应用场景
- 活动记录模式的优缺点
- 数据映射器的实现技术
- 数据源模式的选择策略

## 对象关系行为模式

- 延迟加载的实现机制
- 标识映射的管理策略
- 外键映射的设计方法
- 查询对象的构建技术
- 元数据映射的实现方案

## 对象关系结构模式

- 单表继承的映射策略
- 类表继承的实现技术
- 具体表继承的应用场景
- 嵌入值的设计方法
- 序列化LOB的使用策略

## 企业级应用架构的最佳实践

- 分层架构的设计原则
- 领域驱动设计的应用
- 事件驱动架构的实现
- 微服务架构的模式应用
- 企业级应用的性能优化
EOF

# 创建1.3.5.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.6-微服务架构中的模式应用.md" << 'EOF'
---
title: 微服务架构中的模式应用
icon: microservice
order: 6
---

# 微服务架构中的模式应用

## 微服务架构的核心模式

- 服务拆分的领域驱动设计
- 服务通信的模式选择
- API网关的设计模式
- 服务发现的实现机制
- 配置中心的架构设计

## 微服务通信模式

- 同步通信的REST设计
- 异步消息的发布订阅模式
- 请求-响应模式的实现
- 事件驱动的通信机制
- 服务间通信的最佳实践

## 微服务数据管理模式

- 数据库per服务模式
- CQRS模式的实现技术
- 事件溯源的设计与应用
- 分布式事务的处理策略
- 数据一致性的保障机制

## 微服务可靠性模式

- 断路器模式的实现
- 舱壁隔离的设计方法
- 超时与重试的策略
- 限流与降级的机制
- 健康检查的实现技术

## 微服务部署与运维模式

- 服务注册与发现模式
- 配置管理的设计模式
- 日志聚合的实现方案
- 监控与告警的架构设计
- 持续集成与部署的最佳实践
EOF

# 创建1.3.5.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.5-J2EE设计模式/1.3.5.7-分布式系统模式案例.md" << 'EOF'
---
title: 分布式系统模式案例
icon: distributed
order: 7
---

# 分布式系统模式案例

## 分布式系统的核心挑战

- 分布式系统的复杂性来源
- CAP理论与系统设计权衡
- 分布式一致性的保障机制
- 可用性与分区容错性的平衡
- 分布式系统的设计原则

## 分布式事务模式

- 两阶段提交协议的实现
- 补偿事务的设计模式
- SAGA模式的应用场景
- TCC事务的实现技术
- 最终一致性的保障策略

## 分布式缓存模式

- 缓存策略的设计模式
- 缓存一致性的保障机制
- 分布式缓存的架构设计
- 缓存穿透与雪崩的防护
- 热点数据的处理策略

## 分布式锁模式

- 基于数据库的分布式锁
- 基于Redis的锁实现
- 基于ZooKeeper的锁机制
- 分布式锁的可靠性保障
- 死锁预防与检测策略

## 实际案例分析

- 电商系统的分布式设计
- 支付系统的一致性保障
- 社交网络的数据分区策略
- 实时推荐系统的架构模式
- 大规模日志处理的设计模式
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/README.md" << 'EOF'
---
title: 常用并发设计模式精讲
icon: concurrent
order: 6
---

# 常用并发设计模式精讲

本节详细介绍Java并发编程中常用的设计模式，包括不变模式、监视器模式、线程池模式、生产者-消费者模式等，帮助读者掌握多线程环境下的设计技巧，提高系统的并发性能和可靠性，避免常见的并发问题。
EOF

# 创建1.3.6.1文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.1-并发设计模式原理篇.md" << 'EOF'
---
title: 并发设计模式原理篇
icon: theory
order: 1
---

# 并发设计模式原理篇

## 并发编程的核心挑战

- 线程安全性的本质与挑战
- 原子性、可见性与有序性
- 死锁、活锁与饥饿问题
- 线程协作的复杂性
- 性能与安全性的平衡

## 并发设计模式的分类与关系

- 线程安全对象创建模式
- 线程协作模式
- 线程控制模式
- 并发容器模式
- 同步工具模式

## 并发设计的基本原则

- 不可变性优先原则
- 最小化共享原则
- 细粒度锁定原则
- 非阻塞算法优先原则
- 线程封闭与线程本地存储

## Java并发工具的设计模式

- 锁机制的设计模式
- 同步器的设计模式
- 并发集合的实现模式
- 线程池的设计模式
- 原子变量的实现机制

## 并发模式的性能考量

- 锁竞争与锁粒度
- 上下文切换的开销
- 内存同步的性能影响
- 伸缩性与并行度
- 并发性能的测试与调优
EOF

# 创建1.3.6.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.2-不变模式与线程安全设计.md" << 'EOF'
---
title: 不变模式与线程安全设计
icon: immutable
order: 2
---

# 不变模式与线程安全设计

## 不变模式的基本原理

- 不变对象的定义与特性
- 不变性与线程安全的关系
- 不变对象的设计原则
- 不变对象的性能优势
- 不变模式解决的并发问题

## 不变对象的实现技术

- final关键字的正确使用
- 私有构造函数与工厂方法
- 防御性复制的实现
- 不可变集合的设计
- 延迟初始化的线程安全实现

## 不变模式的实际应用

- String类的不变设计分析
- BigInteger与BigDecimal的实现
- 不变集合的应用场景
- 函数式编程中的不变性
- 配置对象的不变设计

## 线程安全的其他设计技术

- 线程封闭的实现方法
- 线程本地存储的应用
- 同步容器与并发容器
- 原子变量的使用策略
- 锁分段技术的实现

## 不变模式的最佳实践

- 不变对象的性能优化
- 可变与不变的平衡设计
- 不变对象的构建器模式
- 部分不变性的实现技术
- 不变模式在框架设计中的应用
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/README.md" << 'EOF'
---
title: 常用并发设计模式精讲
icon: concurrent
order: 6
---

# 常用并发设计模式精讲

本节详细介绍Java并发编程中常用的设计模式，包括不变模式、监视器模式、线程池模式、生产者-消费者模式等，帮助读者掌握多线程环境下的设计技巧，提高系统的并发性能和可靠性，避免常见的并发问题。
EOF

# 创建1.3.6.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.3-生产者-消费者模式原理.md" << 'EOF'
---
title: 生产者-消费者模式原理
icon: producer
order: 3
---

# 生产者-消费者模式原理

## 生产者-消费者模式的基本概念

- 生产者-消费者模式的定义与目标
- 解耦生产与消费的核心思想
- 缓冲区在模式中的关键作用
- 生产者-消费者模式的结构组成
- 模式解决的并发问题类型

## 生产者-消费者模式的实现机制

- 阻塞队列的设计与实现
- 线程协作的同步控制
- 生产者线程的设计模式
- 消费者线程的处理策略
- 缓冲区的容量管理

## Java中的阻塞队列实现

- BlockingQueue接口的设计
- ArrayBlockingQueue的实现原理
- LinkedBlockingQueue的特性
- PriorityBlockingQueue的应用
- DelayQueue的延迟处理机制

## 生产者-消费者模式的高级应用

- 多生产者-多消费者的协调
- 优先级生产消费的实现
- 批量处理的性能优化
- 背压机制的设计与实现
- 异常处理与恢复策略

## 实际应用案例分析

- 线程池的任务队列设计
- 日志处理系统的异步模式
- 消息中间件的生产消费模型
- 批处理系统的数据流控制
- Web服务器的请求处理模型
EOF

# 创建1.3.6.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.4-线程池模式实现机制.md" << 'EOF'
---
title: 线程池模式实现机制
icon: threadpool
order: 4
---

# 线程池模式实现机制

## 线程池模式的基本原理

- 线程池模式的定义与目标
- 线程复用的核心思想
- 任务队列与工作线程的关系
- 线程池的生命周期管理
- 线程池解决的并发问题

## 线程池的核心组件设计

- 工作线程的实现机制
- 任务队列的设计策略
- 线程工厂的定制方法
- 拒绝策略的处理机制
- 线程池监控的实现

## Java线程池框架分析

- ThreadPoolExecutor的设计原理
- 核心参数的配置策略
- 线程池状态的转换机制
- 任务提交与执行流程
- 线程池的动态调整

## 线程池的高级应用

- 定时任务线程池的实现
- 可缓存线程池的应用场景
- 固定大小线程池的使用
- 单线程池的特殊用途
- 自定义线程池的实现方法

## 线程池的最佳实践

- 线程池大小的确定策略
- 任务类型与线程池匹配
- 线程池监控与调优
- 线程池异常处理机制
- 线程池在框架中的应用
EOF

# 创建1.3.6.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.5-读写锁模式设计思想.md" << 'EOF'
---
title: 读写锁模式设计思想
icon: readwrite
order: 5
---

# 读写锁模式设计思想

## 读写锁模式的基本原理

- 读写锁模式的定义与目标
- 读共享写互斥的核心思想
- 读写锁的状态管理
- 读写锁解决的并发问题
- 读写锁与互斥锁的比较

## 读写锁的实现机制

- 读锁的获取与释放
- 写锁的获取与释放
- 锁升级与降级的处理
- 公平性与非公平性策略
- 读写锁的可重入设计

## Java中的读写锁实现

- ReentrantReadWriteLock的设计
- ReadLock与WriteLock的实现
- 读写锁的状态位设计
- StampedLock的乐观读机制
- 读写锁的性能特性

## 读写锁的高级应用

- 缓存实现中的读写锁应用
- 数据库连接池的读写控制
- 配置管理的读写分离
- 文件系统的并发访问控制
- 读多写少场景的优化策略

## 读写锁的最佳实践

- 读写锁的选择依据
- 避免死锁的设计策略
- 锁粒度的控制原则
- 读写锁的性能调优
- 与其他并发工具的组合使用
EOF

# 创建1.3.6.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.6-Future模式与异步计算.md" << 'EOF'
---
title: Future模式与异步计算
icon: future
order: 6
---

# Future模式与异步计算

## Future模式的基本原理

- Future模式的定义与目标
- 异步计算的核心思想
- Future与Promise的关系
- Future模式的结构组成
- Future模式解决的并发问题

## Future模式的实现机制

- Future接口的设计原则
- 任务提交与执行分离
- 结果获取与等待策略
- 取消操作的实现机制
- 异常处理与传播方式

## Java中的Future实现

- Future接口的设计
- FutureTask的实现原理
- CompletableFuture的增强特性
- CompletionStage的组合操作
- ScheduledFuture的定时功能

## Future模式的高级应用

- 任务编排与流水线处理
- 异步回调的实现方法
- 超时控制与取消机制
- 异常处理与恢复策略
- 并行计算的性能优化

## 实际应用案例分析

- 并行计算框架的Future应用
- 异步HTTP客户端的实现
- 微服务调用的异步处理
- 大数据处理的并行计算
- 响应式编程中的Future模式
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/README.md" << 'EOF'
---
title: 常用并发设计模式精讲
icon: concurrent
order: 6
---

# 常用并发设计模式精讲

本节详细介绍Java并发编程中常用的设计模式，包括不变模式、监视器模式、线程池模式、生产者-消费者模式等，帮助读者掌握多线程环境下的设计技巧，提高系统的并发性能和可靠性，避免常见的并发问题。
EOF

# 创建1.3.6.2文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.2-并发设计模式实战篇.md" << 'EOF'
---
title: 并发设计模式实战篇
icon: practice
order: 2
---

# 并发设计模式实战篇

## 并发设计模式的实际应用场景

- 高并发Web应用的线程模型
- 微服务架构中的并发控制
- 大数据处理的并行计算模式
- 实时系统的并发设计策略
- 游戏服务器的并发架构

## 并发设计模式的代码实现技巧

- 线程安全对象的设计原则
- 锁的选择与使用策略
- 无锁算法的实现方法
- 线程协作的同步技术
- 并发性能的优化技巧

## 并发设计模式与Java并发工具

- Java并发包的设计模式分析
- 原子变量的实际应用
- 并发集合的使用场景
- 同步器的实战应用
- 线程池的调优技术

## 并发设计模式在开源项目中的应用

- Netty的并发设计模式
- Tomcat的线程模型分析
- Spring框架的并发控制
- Dubbo的并发处理机制
- Kafka的生产消费模型

## 并发设计模式的实战案例解析

- 高性能缓存的并发设计
- 异步日志系统的实现
- 并行计算框架的设计
- 高并发消息队列的实现
- 分布式锁的设计与应用
EOF

# 创建1.3.6.3文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.3-不变对象实现与应用.md" << 'EOF'
---
title: 不变对象实现与应用
icon: immutable
order: 3
---

# 不变对象实现与应用

## 不变对象的设计原则

- 所有字段设为final和private
- 不提供修改对象状态的方法
- 确保子类不能重写方法
- 防御性复制可变组件
- 安全发布对象引用

## Java中的不变对象实现

- 使用final类防止继承
- 深度不可变的实现技术
- 不可变集合的创建方法
- 不可变对象的构建器模式
- 懒加载与不可变性的结合

## 不变对象在并发环境中的优势

- 天然线程安全的特性
- 无需同步的性能优势
- 安全共享的简化设计
- 缓存友好的内存访问
- 防止并发修改异常

## 不变对象的实际应用案例

- String类的不变设计分析
- 货币金额的不变表示
- 日期时间API的不变设计
- 配置对象的不变实现
- 领域对象的不变部分设计

## 不变对象的最佳实践与优化

- 部分不变性的实现技术
- 不变对象的内存优化
- 不变对象的工厂方法设计
- 不变集合的高效实现
- 函数式编程中的不变对象
EOF

# 创建1.3.6.4文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.4-生产者-消费者队列实现.md" << 'EOF'
---
title: 生产者-消费者队列实现
icon: queue
order: 4
---

# 生产者-消费者队列实现

## 生产者-消费者模式的实现基础

- 阻塞队列的核心原理
- 线程安全的队列设计
- 生产者线程的实现模式
- 消费者线程的处理策略
- 协调机制的设计要点

## Java阻塞队列的实现与选择

- ArrayBlockingQueue的实现与应用
- LinkedBlockingQueue的特性分析
- SynchronousQueue的直接交付机制
- PriorityBlockingQueue的优先级处理
- DelayQueue的延迟处理功能

## 自定义阻塞队列的实现技术

- 基于ReentrantLock的队列实现
- 使用Condition实现线程等待通知
- 有界队列的容量控制策略
- 队列性能的优化技术
- 特殊需求的定制队列设计

## 生产者-消费者模式的高级应用

- 多级生产者-消费者链
- 优先级生产消费的实现
- 批量处理的性能优化
- 背压机制的设计与实现
- 动态调整生产消费速率

## 实际应用案例分析

- 异步日志系统的队列设计
- 任务调度系统的工作队列
- 消息中间件的生产消费模型
- 线程池的任务队列实现
- Web服务器的请求处理队列
EOF

# 创建1.3.6.5文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.5-自定义线程池设计.md" << 'EOF'
---
title: 自定义线程池设计
icon: threadpool
order: 5
---

# 自定义线程池设计

## 线程池的核心设计原理

- 线程池的基本组件结构
- 工作线程的生命周期管理
- 任务队列的设计与选择
- 线程池状态的转换机制
- 任务执行的流程控制

## 自定义线程池的实现技术

- 线程工厂的定制实现
- 任务队列的选择策略
- 拒绝策略的设计模式
- 线程池参数的动态调整
- 线程池监控的实现方法

## 线程池的高级特性实现

- 优先级任务的处理机制
- 定时任务的调度实现
- 线程池隔离的设计模式
- 线程池链的串联处理
- 资源限制的控制策略

## 线程池的性能优化技术

- 线程池大小的确定方法
- 任务预热与缓存机制
- 线程本地缓存的应用
- 批量任务的处理优化
- 避免线程竞争的设计

## 自定义线程池的实际应用

- 业务隔离的线程池设计
- 弹性伸缩的线程池实现
- 监控统计的线程池封装
- 特定场景的线程池定制
- 分布式环境的线程池管理
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第1章目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶"
cat > "$BASE_DIR/第1章-Java基础与进阶/README.md" << 'EOF'
---
title: Java基础与进阶
icon: code
order: 1
---

# Java基础与进阶

本章节涵盖Java编程语言的基础知识和进阶特性，帮助读者从零开始掌握Java编程，并逐步深入理解Java的核心机制和高级特性。
EOF

# 创建1.3目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/README.md" << 'EOF'
---
title: 设计模式
icon: pattern
order: 3
---

# 设计模式

本节详细介绍软件设计中常用的设计模式，包括创建型模式、结构型模式和行为型模式，以及在Java中的实现方式和应用场景，帮助读者掌握设计模式的核心思想和实践技巧，提高代码的可维护性、可扩展性和可重用性。
EOF

# 创建1.3.6目录
mkdir -p "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲"
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/README.md" << 'EOF'
---
title: 常用并发设计模式精讲
icon: concurrent
order: 6
---

# 常用并发设计模式精讲

本节详细介绍Java并发编程中常用的设计模式，包括不变模式、监视器模式、线程池模式、生产者-消费者模式等，帮助读者掌握多线程环境下的设计技巧，提高系统的并发性能和可靠性，避免常见的并发问题。
EOF

# 创建1.3.6.6文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.6-读写锁优化并发访问.md" << 'EOF'
---
title: 读写锁优化并发访问
icon: readwrite
order: 6
---

# 读写锁优化并发访问

## 读写锁的应用场景分析

- 读多写少的业务特性
- 读写分离的并发控制
- 缓存系统的并发访问
- 数据库连接池的读写控制
- 配置管理的并发访问

## Java读写锁的实现与使用

- ReentrantReadWriteLock的核心API
- 读锁与写锁的获取方式
- 锁降级的正确实现
- 公平性与非公平性选择
- 读写锁的性能特性

## 读写锁的高级应用技巧

- 缓存实现中的读写锁应用
- 读写锁与CopyOnWrite的结合
- 读写锁的细粒度控制
- 超时获取锁的实现
- 可中断锁的应用场景

## StampedLock的乐观读机制

- StampedLock的设计原理
- 乐观读与悲观读的区别
- 乐观读的验证机制
- 锁模式的转换策略
- StampedLock的性能优势

## 读写锁的实战案例

- 高性能缓存的读写锁实现
- 数据库连接池的并发控制
- 配置系统的动态更新机制
- 文件系统的并发访问控制
- 读写锁在微服务中的应用
EOF

# 创建1.3.6.7文件
cat > "$BASE_DIR/第1章-Java基础与进阶/1.3-设计模式/1.3.6-常用并发设计模式精讲/1.3.6.7-异步计算模式实战案例.md" << 'EOF'
---
title: 异步计算模式实战案例
icon: async
order: 7
---

# 异步计算模式实战案例

## 异步计算模式的核心原理

- 异步编程的基本概念
- Future模式的设计思想
- Promise模式的实现机制
- 回调机制与异步通知
- 异步计算的并发控制

## CompletableFuture的高级应用

- 异步任务的创建与执行
- 任务组合与编排技术
- 异常处理与恢复策略
- 超时控制与取消机制
- 异步回调的实现方法

## 异步计算在微服务中的应用

- 服务调用的异步处理
- 请求聚合的并行执行
- 服务降级与熔断机制
- 异步消息的处理流程
- 分布式事务的异步实现

## 异步IO与事件驱动模型

- NIO的异步处理机制
- 事件驱动的编程模型
- Reactor模式的实现
- Proactor模式的应用
- 异步IO框架的设计

## 实战案例分析

- 高性能Web服务器的异步模型
- 大数据处理的并行计算框架
- 实时推荐系统的异步计算
- 金融交易系统的异步处理
- 社交网络的消息推送机制
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/README.md" << 'EOF'
---
title: 线程基础与生命周期
icon: lifecycle
order: 1
---

# 线程基础与生命周期

本节详细介绍Java线程的基本概念、创建方式、生命周期状态以及状态转换机制，帮助读者深入理解线程的本质和运行机制，为掌握复杂的并发编程技术奠定基础。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/README.md" << 'EOF'
---
title: 线程基础与生命周期
icon: lifecycle
order: 1
---

# 线程基础与生命周期

本节详细介绍Java线程的基本概念、创建方式、生命周期状态以及状态转换机制，帮助读者深入理解线程的本质和运行机制，为掌握复杂的并发编程技术奠定基础。
EOF

# 创建2.1.1.1文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.1-线程基础与生命周期原理篇.md" << 'EOF'
---
title: 线程基础与生命周期原理篇
icon: theory
order: 1
---

# 线程基础与生命周期原理篇

## 线程的基本概念

- 线程的定义与特性
- 操作系统中的线程实现
- Java线程模型的演进历史
- 用户线程与守护线程的区别
- 线程与应用性能的关系

## 线程的创建方式

- 继承Thread类的实现方法
- 实现Runnable接口的方式
- 实现Callable接口与Future
- 使用线程池创建线程
- 各种创建方式的对比与选择

## 线程的生命周期模型

- Java线程状态的定义
- 线程状态转换的触发条件
- JVM线程模型与操作系统线程的映射
- 线程状态监控与分析
- 线程生命周期管理的最佳实践

## 线程的基本操作

- 线程的启动与运行
- 线程的中断机制
- 线程的暂停与恢复
- 线程的等待与通知
- 线程的终止与资源释放

## 线程的底层实现原理

- JVM中的线程实现机制
- 线程与操作系统调度的关系
- 线程上下文切换的开销
- 线程栈与栈帧的结构
- 线程本地存储的实现原理
EOF

# 创建2.1.1.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.2-线程与进程的区别与联系.md" << 'EOF'
---
title: 线程与进程的区别与联系
icon: compare
order: 2
---

# 线程与进程的区别与联系

## 进程的基本概念

- 进程的定义与特性
- 进程的组成部分
- 进程的地址空间
- 进程的隔离性
- 进程的创建与销毁开销

## 线程的基本概念

- 线程的定义与特性
- 线程的组成部分
- 线程的资源共享机制
- 线程的轻量级特性
- 线程的创建与销毁开销

## 进程与线程的区别

- 资源占用的差异
- 调度单位的不同
- 通信方式的区别
- 上下文切换的开销比较
- 并发粒度的差异

## 进程与线程的联系

- 线程作为进程的执行单元
- 进程作为资源分配的基本单位
- 线程对进程资源的共享机制
- 多线程与多进程的协作
- 进程内线程的管理机制

## Java中的进程与线程

- JVM作为进程的运行环境
- Java线程与操作系统线程的映射
- Java进程间通信的实现
- Java多进程应用的设计
- 进程与线程选择的最佳实践
EOF

# 创建2.1.1.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.3-线程状态转换模型详解.md" << 'EOF'
---
title: 线程状态转换模型详解
icon: state
order: 3
---

# 线程状态转换模型详解

## Java线程的六种状态

- NEW（新建）状态的特点
- RUNNABLE（可运行）状态的含义
- BLOCKED（阻塞）状态的触发条件
- WAITING（等待）状态的进入方式
- TIMED_WAITING（计时等待）的特性
- TERMINATED（终止）状态的标志

## 线程状态转换的触发条件

- 从NEW到RUNNABLE的转换
- RUNNABLE与BLOCKED之间的切换
- RUNNABLE与WAITING的状态转换
- RUNNABLE与TIMED_WAITING的转换
- 进入TERMINATED状态的条件
- 不可能的状态转换分析

## 线程状态转换的底层实现

- JVM中线程状态的实现机制
- 操作系统线程状态与Java线程状态的映射
- 线程状态转换的内部流程
- 线程调度器的工作原理
- 线程状态转换的性能影响

## 线程状态监控与分析

- Thread.getState()方法的使用
- JStack工具的线程状态分析
- JVisualVM的线程状态可视化
- 线程转储（Thread Dump）的解读
- 线程死锁的检测方法

## 线程状态管理的最佳实践

- 避免线程长时间BLOCKED的策略
- WAITING状态的合理使用
- 减少不必要的状态转换
- 线程池中的状态管理
- 线程状态监控的实现方法
EOF

# 创建2.1.1.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.4-线程调度算法与优先级.md" << 'EOF'
---
title: 线程调度算法与优先级
icon: schedule
order: 4
---

# 线程调度算法与优先级

## 线程调度的基本概念

- 线程调度的定义与目标
- 抢占式调度与协作式调度
- 时间片轮转的基本原理
- 调度算法的评价指标
- Java线程调度模型概述

## 常见的线程调度算法

- 先来先服务（FCFS）调度
- 短作业优先（SJF）调度
- 优先级调度算法
- 多级反馈队列调度
- 实时调度算法

## Java线程优先级机制

- Thread.setPriority()方法的使用
- Java线程优先级的范围与默认值
- 优先级继承与优先级反转
- 优先级与操作系统的映射关系
- 优先级在不同操作系统上的差异

## 线程调度的影响因素

- 操作系统的调度策略
- 处理器资源的分配机制
- I/O操作对线程调度的影响
- 锁竞争对线程调度的影响
- JVM参数对线程调度的影响

## 线程调度与优先级的最佳实践

- 合理设置线程优先级的原则
- 避免优先级反转的策略
- 提高线程响应性的技巧
- 线程调度与系统性能的平衡
- 线程优先级在实际应用中的限制
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/README.md" << 'EOF'
---
title: 线程基础与生命周期
icon: lifecycle
order: 1
---

# 线程基础与生命周期

本节详细介绍Java线程的基本概念、创建方式、生命周期状态以及状态转换机制，帮助读者深入理解线程的本质和运行机制，为掌握复杂的并发编程技术奠定基础。
EOF

# 创建2.1.1.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.5-线程上下文切换原理.md" << 'EOF'
---
title: 线程上下文切换原理
icon: context
order: 5
---

# 线程上下文切换原理

## 上下文切换的基本概念

- 上下文切换的定义与目的
- 线程上下文的组成部分
- 上下文切换的触发条件
- 上下文切换与线程调度的关系
- 上下文切换对性能的影响

## 上下文切换的底层实现

- CPU寄存器状态的保存与恢复
- 程序计数器的切换机制
- 线程栈的切换过程
- 缓存一致性与上下文切换
- TLB刷新与内存访问性能

## 操作系统中的上下文切换

- 内核级线程的上下文切换
- 用户级线程的上下文切换
- 中断处理与上下文切换
- 系统调用引发的上下文切换
- 不同操作系统的实现差异

## 上下文切换的性能开销

- 直接开销：寄存器保存与恢复
- 间接开销：缓存失效与TLB刷新
- 上下文切换频率的测量方法
- 上下文切换开销的量化分析
- 减少上下文切换的策略

## Java中的上下文切换优化

- JVM对线程上下文的管理
- 减少锁竞争降低上下文切换
- 合理设置线程优先级
- 使用无锁数据结构的优势
- 线程池对上下文切换的影响
EOF

# 创建2.1.1.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.6-JVM线程实现机制.md" << 'EOF'
---
title: JVM线程实现机制
icon: jvm
order: 6
---

# JVM线程实现机制

## JVM线程模型的演进

- 绿色线程模型的历史
- 一对一线程模型的特点
- 多对多线程模型的优缺点
- Java线程模型的发展历程
- 现代JVM的线程实现策略

## JVM线程与操作系统线程的映射

- 一对一映射模型的实现
- JNI与本地线程的交互
- 线程创建与销毁的底层过程
- 线程状态映射的机制
- 不同JVM实现的差异比较

## JVM线程的内存结构

- 线程栈的大小与配置
- 栈帧的组成与作用
- 线程本地内存的实现
- 线程与堆内存的交互
- 线程内存模型与可见性

## JVM线程调度与管理

- JVM线程调度器的工作原理
- 线程优先级的内部处理
- 线程同步的底层实现
- 线程监控与诊断机制
- GC线程与应用线程的协作

## JVM线程优化与调优

- 线程栈大小的优化策略
- 减少线程数量的方法
- JVM线程参数的调整
- 线程转储的分析技术
- 常见线程问题的诊断与解决
EOF

# 创建2.1.1.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.2-线程基础与生命周期实战篇.md" << 'EOF'
---
title: 线程基础与生命周期实战篇
icon: practice
order: 2
---

# 线程基础与生命周期实战篇

## 线程创建的实战技巧

- Thread子类实现的最佳实践
- Runnable接口的灵活应用
- Callable与Future的实战用法
- 线程工厂的定制与应用
- 线程创建方式的选择依据

## 线程控制的实用方法

- 线程启动与执行的控制技巧
- 线程中断的正确实现方式
- 线程等待与唤醒的实战应用
- 线程连接(join)的使用场景
- 线程让步(yield)的实际效果

## 线程状态管理的实战案例

- 线程状态监控的实现方法
- 避免线程阻塞的设计策略
- 线程超时处理的实现技术
- 线程优雅终止的最佳实践
- 线程状态转换的常见问题

## 线程安全的实战技术

- 线程封闭的实现方法
- 不可变对象的设计技巧
- 线程同步的实战应用
- 线程本地存储的使用场景
- 避免死锁的实战策略

## 线程应用的实战案例

- Web服务器的线程模型实现
- 异步处理框架的线程设计
- 定时任务系统的线程管理
- 批处理应用的线程控制
- 高并发系统的线程优化
EOF

# 创建2.1.1.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.3-线程状态监控与分析.md" << 'EOF'
---
title: 线程状态监控与分析
icon: monitor
order: 3
---

# 线程状态监控与分析

## 线程状态监控的基本方法

- Thread.getState()方法的应用
- 线程组的状态监控
- ThreadMXBean的使用技巧
- 自定义线程状态监控器
- 线程状态变化的事件通知

## 线程转储(Thread Dump)分析

- 生成线程转储的多种方法
- 线程转储文件的结构解析
- 线程状态信息的解读技巧
- 锁信息与等待关系的分析
- 常见线程问题的识别模式

## JVM线程监控工具的使用

- jstack工具的高级用法
- jconsole的线程监控功能
- VisualVM的线程分析视图
- JMC(Java Mission Control)的线程分析
- Arthas等第三方工具的线程监控

## 线程死锁的检测与分析

- 死锁的识别特征
- 线程转储中的死锁信息
- 编程方式检测死锁
- 死锁分析与解决方案
- 死锁预防的最佳实践

## 线程性能问题的诊断

- 线程CPU使用率的监控
- 线程阻塞与等待的分析
- 线程竞争热点的识别
- 线程池性能的监控指标
- 基于线程状态的性能优化
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/README.md" << 'EOF'
---
title: 线程基础与生命周期
icon: lifecycle
order: 1
---

# 线程基础与生命周期

本节详细介绍Java线程的基本概念、创建方式、生命周期状态以及状态转换机制，帮助读者深入理解线程的本质和运行机制，为掌握复杂的并发编程技术奠定基础。
EOF

# 创建2.1.1.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.4-线程优先级实际应用.md" << 'EOF'
---
title: 线程优先级实际应用
icon: priority
order: 4
---

# 线程优先级实际应用

## 线程优先级的基本概念

- Java线程优先级的范围与默认值
- Thread.setPriority()方法的使用
- 线程优先级的继承关系
- 优先级与线程调度的关系
- 不同操作系统对优先级的支持差异

## 线程优先级在实际环境中的表现

- Windows系统中的优先级映射
- Linux系统中的优先级实现
- macOS中的优先级处理
- 优先级在不同JVM实现中的差异
- 实际测试中的优先级效果分析

## 线程优先级的应用场景

- 用户界面响应线程的优先级设置
- 后台任务处理的优先级降低
- 实时处理任务的优先级提升
- 定时任务的优先级管理
- 资源密集型任务的优先级控制

## 线程优先级的常见问题

- 优先级反转的产生原因与解决
- 优先级饥饿的识别与预防
- 过度依赖优先级的风险
- 优先级设置不当导致的性能问题
- 跨平台应用中的优先级兼容性

## 线程优先级的最佳实践

- 合理使用优先级的原则
- 优先级设置的推荐策略
- 避免优先级滥用的方法
- 优先级与其他线程控制机制的结合
- 优先级在高并发系统中的应用技巧
EOF

# 创建2.1.1.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.5-守护线程应用场景.md" << 'EOF'
---
title: 守护线程应用场景
icon: daemon
order: 5
---

# 守护线程应用场景

## 守护线程的基本概念

- 守护线程的定义与特性
- 用户线程与守护线程的区别
- setDaemon()方法的使用
- 守护线程的生命周期特点
- JVM退出与守护线程的关系

## 守护线程的实现机制

- 守护线程的内部标记
- 守护线程的创建时机
- 守护线程的继承规则
- 守护线程的终止过程
- 守护线程的资源释放特性

## 常见的守护线程应用场景

- 垃圾回收器线程的实现
- 监控与统计数据收集
- 定时任务与后台调度
- 缓存维护与失效处理
- 日志异步处理与刷新

## 自定义守护线程的实现技巧

- 守护线程的设计原则
- 守护线程的异常处理策略
- 守护线程的资源管理
- 守护线程的优雅退出机制
- 守护线程与线程池的结合

## 守护线程的最佳实践

- 何时选择守护线程
- 守护线程的安全使用方法
- 避免在守护线程中执行关键任务
- 守护线程的监控与管理
- 守护线程在框架设计中的应用
EOF

# 创建2.1.1.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.6-线程生命周期管理最佳实践.md" << 'EOF'
---
title: 线程生命周期管理最佳实践
icon: bestpractice
order: 6
---

# 线程生命周期管理最佳实践

## 线程创建的最佳实践

- 线程创建方式的选择策略
- 线程命名的规范与重要性
- 线程组的合理使用
- 线程工厂的定制化实现
- 避免过度创建线程的方法

## 线程启动与执行的最佳实践

- 线程启动时机的选择
- 避免在构造函数中启动线程
- 线程参数传递的安全方式
- 线程执行任务的合理划分
- 避免线程执行时间过长

## 线程状态转换的最佳实践

- 避免不必要的阻塞状态
- 等待与通知的正确使用
- 合理使用线程休眠
- 避免频繁的状态切换
- 线程中断的标准处理流程

## 线程终止的最佳实践

- 线程优雅终止的实现方法
- 避免使用Thread.stop()
- 中断标志的正确处理
- 资源释放的确保机制
- 线程终止状态的验证

## 线程生命周期监控的最佳实践

- 线程状态的定期检查机制
- 长时间运行线程的监控策略
- 线程泄漏的检测方法
- 线程健康状况的度量指标
- 线程生命周期事件的记录与分析
EOF

# 创建2.1.1.7文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.1-线程基础与生命周期/2.1.1.7-线程问题排查技巧.md" << 'EOF'
---
title: 线程问题排查技巧
icon: troubleshoot
order: 7
---

# 线程问题排查技巧

## 常见线程问题类型

- 线程死锁的表现与特征
- 线程饥饿的识别方法
- 线程泄漏的症状与影响
- 线程竞争导致的性能问题
- 线程安全问题的表现形式

## 线程转储分析技巧

- 获取线程转储的多种方法
- 线程转储文件的结构解析
- 识别线程转储中的异常状态
- 分析线程间的依赖与等待关系
- 使用线程转储定位死锁问题

## 线程监控工具的使用

- JVisualVM的线程分析功能
- JMC(Java Mission Control)的线程监控
- Arthas的线程诊断命令
- VisualGC的线程状态可视化
- 自定义线程监控工具的实现

## 线程性能问题的诊断

- CPU使用率过高的线程定位
- 线程阻塞热点的识别
- 锁竞争的检测与分析
- 线程池配置不当的诊断
- I/O等待线程的识别

## 线程问题的解决策略

- 死锁问题的预防与解决
- 减少线程竞争的方法
- 优化线程等待与唤醒机制
- 线程池参数的调优技巧
- 使用并发工具类解决常见问题
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/README.md" << 'EOF'
---
title: 线程创建与使用
icon: create
order: 2
---

# 线程创建与使用

本节详细介绍Java中创建和使用线程的各种方式，包括继承Thread类、实现Runnable接口、使用Callable和Future、线程池等方法，帮助读者掌握线程的基本操作和控制技术，为开发多线程应用打下基础。
EOF

# 创建2.1.2.1文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.1-线程创建与使用原理篇.md" << 'EOF'
---
title: 线程创建与使用原理篇
icon: theory
order: 1
---

# 线程创建与使用原理篇

## 线程创建的基本方式

- Thread类的继承与使用
- Runnable接口的实现机制
- Callable接口与Future模式
- 线程工厂的设计原理
- 线程池的创建原理

## Thread类的核心原理

- Thread类的内部结构
- Thread与Runnable的关系
- 线程ID与名称的管理
- 线程优先级的内部实现
- Thread类的本地方法调用

## Runnable接口的设计思想

- Runnable接口的职责定位
- 将任务与执行分离的优势
- Runnable的函数式接口特性
- Runnable与Thread的协作机制
- Runnable在并发框架中的应用

## Callable与Future的工作原理

- Callable接口的设计目的
- Future接口的核心功能
- FutureTask的实现机制
- 异步计算结果的获取原理
- 取消任务的内部实现

## 线程创建的底层机制

- JVM中线程的表示方式
- 本地线程的创建过程
- 线程栈的分配机制
- 线程初始化的内部步骤
- 线程创建的性能考量
EOF

# 创建2.1.2.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.2-线程创建的底层实现.md" << 'EOF'
---
title: 线程创建的底层实现
icon: implementation
order: 2
---

# 线程创建的底层实现

## JVM线程模型的实现

- HotSpot JVM的线程实现方式
- JVM线程与操作系统线程的映射
- 线程创建的本地方法调用链
- JNI层的线程创建接口
- 不同JVM实现的线程模型比较

## 操作系统层的线程创建

- Windows系统的线程创建机制
- Linux系统的线程实现方式
- POSIX线程标准的实现
- 线程创建的系统调用过程
- 线程资源的分配策略

## 线程栈的分配与管理

- 线程栈的大小设置
- 栈内存的分配机制
- 栈溢出的检测与处理
- 线程本地存储的实现
- 栈与堆的交互方式

## 线程初始化的内部流程

- 线程对象的构造过程
- 线程属性的初始化
- 线程上下文的准备
- 线程调度器的注册
- 线程启动前的准备工作

## 线程创建的性能优化

- 线程创建的开销分析
- 减少线程创建成本的方法
- 线程池对创建性能的优化
- 线程复用的实现机制
- 轻量级线程的探索与实践
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/README.md" << 'EOF'
---
title: 线程创建与使用
icon: create
order: 2
---

# 线程创建与使用

本节详细介绍Java中创建和使用线程的各种方式，包括继承Thread类、实现Runnable接口、使用Callable和Future、线程池等方法，帮助读者掌握线程的基本操作和控制技术，为开发多线程应用打下基础。
EOF

# 创建2.1.2.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.3-Thread类源码分析.md" << 'EOF'
---
title: Thread类源码分析
icon: source
order: 3
---

# Thread类源码分析

## Thread类的核心结构

- Thread类的继承体系
- 重要字段的定义与作用
- 核心方法的功能分类
- 内部类与嵌套类的设计
- Thread与ThreadLocal的关系

## Thread构造方法分析

- 默认构造器的实现
- 指定Runnable的构造方法
- 线程名称与线程组参数
- 线程栈大小的设置机制
- 构造方法的继承关系

## 线程启动与运行机制

- start()方法的实现分析
- run()方法的执行流程
- 本地方法start0的作用
- 线程状态的转换过程
- 线程启动的异常处理

## 线程控制方法分析

- sleep()方法的实现机制
- join()方法的内部逻辑
- interrupt()的工作原理
- yield()方法的调度影响
- isAlive()的状态判断

## Thread类的静态方法与工具方法

- currentThread()的实现原理
- holdsLock()的检查机制
- dumpStack()的调试功能
- getStackTrace()的实现
- 线程状态枚举的定义与使用
EOF

# 创建2.1.2.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.4-Runnable接口设计原理.md" << 'EOF'
---
title: Runnable接口设计原理
icon: interface
order: 4
---

# Runnable接口设计原理

## Runnable接口的设计思想

- 任务与执行分离的原则
- 接口设计的简洁性
- 函数式接口的特性
- 与Thread类的协作关系
- 设计模式中的角色定位

## Runnable在Java中的演进

- 早期Java版本中的Runnable
- Java 8中的函数式增强
- Lambda表达式与Runnable
- 方法引用作为Runnable
- 函数组合与Runnable转换

## Runnable的实现技巧

- 匿名内部类实现方式
- Lambda表达式简化语法
- 状态捕获与线程安全
- 参数传递的最佳实践
- 异常处理的设计策略

## Runnable与其他任务接口的比较

- Runnable与Callable的区别
- Runnable与Supplier的对比
- Runnable与Consumer的关系
- Runnable在Stream API中的应用
- Runnable在CompletableFuture中的使用

## Runnable在并发框架中的应用

- 线程池中的Runnable处理
- Executor框架对Runnable的支持
- 定时任务中的Runnable应用
- 事件驱动模型中的Runnable
- 自定义线程模型中的Runnable扩展
EOF

# 创建2.1.2.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.5-Callable与Future机制.md" << 'EOF'
---
title: Callable与Future机制
icon: future
order: 5
---

# Callable与Future机制

## Callable接口的设计原理

- Callable接口的定义与特性
- 泛型参数的设计意义
- 与Runnable的核心区别
- 返回值与异常处理机制
- Callable在Java并发中的定位

## Future接口的核心功能

- Future接口的方法设计
- 获取计算结果的机制
- 任务取消的实现原理
- 完成状态的检查方法
- 超时控制的设计思想

## FutureTask的实现分析

- FutureTask的类层次结构
- 状态管理的内部机制
- 结果存储与获取的实现
- 任务执行与回调的流程
- 异常处理与传播方式

## CompletableFuture的增强特性

- CompletableFuture的设计理念
- 异步计算的链式编程
- 组合与编排多个Future
- 异常处理的改进机制
- 回调与通知的实现方式

## Callable与Future的实际应用

- 异步计算任务的实现
- 并行任务的结果收集
- 超时控制的实现技巧
- 取消长时间运行的任务
- 异步任务的异常处理策略
EOF

# 创建2.1.2.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.6-线程组与线程工厂.md" << 'EOF'
---
title: 线程组与线程工厂
icon: factory
order: 6
---

# 线程组与线程工厂

## 线程组的设计与功能

- ThreadGroup类的设计目的
- 线程组的层次结构
- 线程组的安全管理功能
- 线程组的批量操作能力
- 线程组在现代Java中的定位

## 线程组的API分析

- 创建与管理线程组
- 向线程组添加线程
- 线程组的遍历与统计
- 线程组的中断操作
- 线程组的异常处理机制

## 线程工厂的设计模式

- ThreadFactory接口的设计
- 工厂模式在线程创建中的应用
- 默认线程工厂的实现
- 自定义线程工厂的优势
- 线程工厂与线程池的关系

## 自定义线程工厂的实现技巧

- 命名策略的实现方法
- 优先级设置的定制化
- 守护线程属性的控制
- 异常处理器的配置
- 线程上下文的预设置

## 线程组与线程工厂的最佳实践

- 何时使用线程组
- 线程工厂的应用场景
- 线程命名的规范与重要性
- 线程分组的管理策略
- 在框架设计中的应用模式
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/README.md" << 'EOF'
---
title: 线程创建与使用
icon: create
order: 2
---

# 线程创建与使用

本节详细介绍Java中创建和使用线程的各种方式，包括继承Thread类、实现Runnable接口、使用Callable和Future、线程池等方法，帮助读者掌握线程的基本操作和控制技术，为开发多线程应用打下基础。
EOF

# 创建2.1.2.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.2-线程创建与使用实战篇.md" << 'EOF'
---
title: 线程创建与使用实战篇
icon: practice
order: 2
---

# 线程创建与使用实战篇

## 继承Thread类的实战应用

- Thread子类的设计模式
- 线程状态管理的实现
- 线程间通信的实现方法
- 线程优先级的实际应用
- 守护线程的使用场景

## Runnable接口的实战技巧

- 匿名内部类实现Runnable
- Lambda表达式简化线程创建
- 状态共享的线程安全实现
- 任务分解与组合模式
- Runnable在框架中的应用

## Callable与Future的实战应用

- 异步计算任务的实现
- 获取线程执行结果的方法
- 超时控制的实现技巧
- 异常处理与结果传递
- 多任务协作的实现方式

## 线程池的实战应用

- 常用线程池的选择策略
- 自定义线程池的实现
- 线程池参数的调优方法
- 任务提交与执行控制
- 线程池监控与管理

## 线程控制的实战技术

- 线程启动与终止的最佳实践
- 线程中断的正确使用方式
- 线程等待与唤醒的应用
- 线程同步的实现技巧
- 线程本地存储的应用场景
EOF

# 创建2.1.2.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.3-四种线程创建方式对比.md" << 'EOF'
---
title: 四种线程创建方式对比
icon: compare
order: 3
---

# 四种线程创建方式对比

## 继承Thread类的优缺点

- 直接访问线程方法的便利性
- 单继承限制的设计约束
- 任务与执行耦合的问题
- 资源共享的实现复杂性
- 适用场景与最佳实践

## 实现Runnable接口的优缺点

- 分离任务与执行的优势
- 避免单继承限制的灵活性
- 状态共享的实现方式
- 无返回值的局限性
- 适用场景与最佳实践

## 实现Callable接口的优缺点

- 支持返回结果的能力
- 异常处理的改进机制
- 与Future结合的复杂性
- 任务取消与超时控制
- 适用场景与最佳实践

## 使用线程池的优缺点

- 线程复用的性能优势
- 资源管理的便捷性
- 任务调度的灵活性
- 配置复杂性与学习成本
- 适用场景与最佳实践

## 创建方式选择的决策因素

- 任务特性与需求分析
- 性能与资源考量
- 代码复用与维护性
- 异常处理的需求
- 与现有架构的兼容性
EOF

# 创建2.1.2.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.4-线程参数配置最佳实践.md" << 'EOF'
---
title: 线程参数配置最佳实践
icon: config
order: 4
---

# 线程参数配置最佳实践

## 线程命名的规范与实践

- 线程命名的重要性
- 命名规范与约定
- 线程名称的调试价值
- 动态命名策略的实现
- 线程命名的监控应用

## 线程优先级的合理设置

- 优先级范围与默认值
- 优先级设置的实际效果
- 不同操作系统的差异
- 优先级反转的预防
- 优先级设置的最佳实践

## 线程栈大小的优化配置

- 栈大小的默认值与范围
- 栈大小对性能的影响
- 栈溢出的预防措施
- 栈大小的测试与调优
- 不同应用场景的配置建议

## 守护线程的配置策略

- 守护线程的应用场景
- 设置守护线程的时机
- 守护线程的资源释放
- 守护线程的生命周期管理
- 守护线程的最佳实践

## 线程上下文类加载器的配置

- 上下文类加载器的作用
- 设置方法与使用场景
- 服务提供者机制中的应用
- 跨模块加载的实现
- 上下文类加载器的最佳实践
EOF

# 创建2.1.2.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.5-线程异常处理策略.md" << 'EOF'
---
title: 线程异常处理策略
icon: exception
order: 5
---

# 线程异常处理策略

## 线程异常的传播机制

- 线程异常的特殊性
- 主线程与子线程的异常隔离
- 未捕获异常的默认处理
- 线程组的异常处理机制
- 线程池中的异常传播

## 线程异常处理器的实现

- UncaughtExceptionHandler接口
- 全局异常处理器的设置
- 线程级异常处理器的配置
- 线程组异常处理的优先级
- 自定义异常处理器的实现

## Runnable中的异常处理

- try-catch块的正确使用
- 异常信息的传递方法
- 异常对线程状态的影响
- 资源清理与释放策略
- 日志记录的最佳实践

## Callable与Future的异常处理

- ExecutionException的处理机制
- 获取原始异常的方法
- 超时异常的处理策略
- 取消操作的异常处理
- 异步计算中的异常传播

## 线程池的异常处理策略

- 提交任务时的异常处理
- 执行任务时的异常捕获
- 线程池关闭时的异常处理
- 周期性任务的异常恢复
- 线程池异常监控与报警
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/README.md" << 'EOF'
---
title: 线程创建与使用
icon: create
order: 2
---

# 线程创建与使用

本节详细介绍Java中创建和使用线程的各种方式，包括继承Thread类、实现Runnable接口、使用Callable和Future、线程池等方法，帮助读者掌握线程的基本操作和控制技术，为开发多线程应用打下基础。
EOF

# 创建2.1.2.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.6-线程命名与分组管理.md" << 'EOF'
---
title: 线程命名与分组管理
icon: manage
order: 6
---

# 线程命名与分组管理

## 线程命名的重要性与规范

- 线程命名的目的与价值
- 命名规范与最佳实践
- 线程名称在调试中的作用
- 线程命名对监控的影响
- 自动化命名策略的实现

## 线程命名的实现方法

- 构造函数中设置线程名称
- setName方法动态修改名称
- 线程工厂中的命名策略
- 线程池中的命名机制
- 继承Thread时的命名技巧

## 线程组的基本概念

- ThreadGroup的设计目的
- 线程组的层次结构
- 线程组的安全管理功能
- 线程组的批量操作能力
- 线程组在现代Java中的定位

## 线程组的实际应用

- 创建与管理线程组
- 向线程组添加线程
- 线程组的遍历与统计
- 线程组的中断操作
- 线程组的异常处理机制

## 线程分类与管理的最佳实践

- 业务线程的分组策略
- 系统线程的命名规范
- 线程分类的监控实现
- 线程生命周期的分组管理
- 大型应用中的线程组织结构
EOF

# 创建2.1.2.7文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.2-线程创建与使用/2.1.2.7-线程创建性能优化.md" << 'EOF'
---
title: 线程创建性能优化
icon: performance
order: 7
---

# 线程创建性能优化

## 线程创建的性能开销分析

- 线程创建的资源消耗
- 线程栈内存的分配开销
- 线程初始化的CPU开销
- 线程调度的系统负担
- 频繁创建线程的性能问题

## 线程池优化线程创建性能

- 线程池的核心优化原理
- 预创建线程的性能优势
- 线程复用的实现机制
- 线程池参数对性能的影响
- 不同线程池的性能特性

## 线程创建的延迟优化

- 懒加载线程的实现方法
- 按需创建的触发机制
- 线程预热的实现技术
- 启动时间的优化策略
- 首次创建延迟的处理

## 线程资源参数的优化

- 线程栈大小的优化配置
- 线程优先级的性能影响
- 线程亲和性的设置方法
- 线程本地缓存的优化
- 减少线程上下文切换

## 线程创建的最佳实践

- 避免频繁创建线程的策略
- 线程池配置的优化原则
- 线程创建监控的实现
- 大规模线程应用的优化
- 不同场景下的线程创建策略
EOF

# 创建2.1.3目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/README.md" << 'EOF'
---
title: 线程安全问题分析
icon: safety
order: 3
---

# 线程安全问题分析

本节深入分析多线程环境下的线程安全问题，包括竞态条件、原子性、可见性、有序性等核心概念，帮助读者理解并发问题的本质，掌握识别和解决线程安全问题的方法，为构建可靠的并发应用奠定基础。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.3目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/README.md" << 'EOF'
---
title: 线程安全问题分析
icon: safety
order: 3
---

# 线程安全问题分析

本节深入分析多线程环境下的线程安全问题，包括竞态条件、原子性、可见性、有序性等核心概念，帮助读者理解并发问题的本质，掌握识别和解决线程安全问题的方法，为构建可靠的并发应用奠定基础。
EOF

# 创建2.1.3.1文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.1-线程安全问题分析原理篇.md" << 'EOF'
---
title: 线程安全问题分析原理篇
icon: theory
order: 1
---

# 线程安全问题分析原理篇

## 线程安全的基本概念

- 线程安全的定义与特性
- 线程安全的级别划分
- 线程安全与并发模型
- 线程安全问题的本质
- 线程安全性评估方法

## 并发问题的三大核心要素

- 原子性问题的本质与表现
- 可见性问题的成因与影响
- 有序性问题的机制与后果
- 三大问题的相互关系
- 并发问题的识别方法

## Java内存模型与线程安全

- JMM的基本结构与设计
- 主内存与工作内存的交互
- 内存屏障的作用机制
- happens-before原则解析
- JMM对线程安全的保障

## 线程安全问题的底层原理

- CPU缓存一致性问题
- 指令重排序的影响
- 共享变量的内存可见性
- 线程上下文切换的影响
- 硬件架构对线程安全的影响

## 线程安全问题的分析方法

- 代码审查的关注点
- 并发问题的复现技术
- 线程转储的分析方法
- 并发测试的设计策略
- 线程安全问题的分类与诊断
EOF

# 创建2.1.3.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.2-并发安全性定义与挑战.md" << 'EOF'
---
title: 并发安全性定义与挑战
icon: challenge
order: 2
---

# 并发安全性定义与挑战

## 并发安全性的定义

- 线程安全的正式定义
- 不变性条件与后置条件
- 状态一致性的概念
- 线程安全的边界条件
- 安全性与活跃性的区别

## 线程安全性的级别划分

- 不可变性的线程安全
- 绝对线程安全的特性
- 相对线程安全的范围
- 线程兼容的处理方式
- 线程对立的特征与处理

## 并发编程面临的主要挑战

- 共享资源的并发访问
- 线程调度的不确定性
- 复合操作的原子性保证
- 可见性与缓存一致性
- 死锁、活锁与饥饿问题

## 并发安全性的评估方法

- 代码审查的安全性检查
- 并发测试的设计策略
- 性能与安全性的平衡
- 并发安全性的度量指标
- 安全性评估的自动化工具

## 并发安全性的实际影响

- 数据损坏与不一致
- 系统崩溃与资源泄漏
- 性能下降与响应延迟
- 难以复现的间歇性问题
- 并发安全问题的经济影响
EOF

# 创建2.1.3.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.3-竞态条件形成原因.md" << 'EOF'
---
title: 竞态条件形成原因
icon: race
order: 3
---

# 竞态条件形成原因

## 竞态条件的基本概念

- 竞态条件的定义与特征
- 检查再执行的竞态模式
- 读取-修改-写入的竞态模式
- 竞态窗口的概念
- 竞态条件与临界区的关系

## 竞态条件的形成机制

- 线程调度的不确定性
- 操作的非原子性本质
- 共享变量的并发访问
- 中断与抢占的影响
- 时序依赖的代码结构

## 常见的竞态条件场景

- 计数器的并发递增
- 延迟初始化的竞态问题
- 集合遍历时的修改操作
- 复合条件的检查与执行
- 资源分配与释放的竞态

## 竞态条件的识别方法

- 代码审查中的竞态识别
- 静态分析工具的应用
- 动态测试的设计策略
- 日志分析与问题复现
- 竞态条件的模式识别

## 竞态条件的预防策略

- 原子操作的应用
- 锁机制的正确使用
- 不可变对象的设计
- 线程封闭的实现
- 非阻塞算法的应用
EOF

# 创建2.1.3.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.4-原子性问题分析.md" << 'EOF'
---
title: 原子性问题分析
icon: atomic
order: 4
---

# 原子性问题分析

## 原子性的基本概念

- 原子操作的定义与特性
- 原子性与不可分割性
- 操作系统对原子性的支持
- Java中的原子操作类型
- 原子性与线程安全的关系

## 非原子操作的问题分析

- 复合操作的原子性缺失
- 读-改-写操作的竞态风险
- 64位变量操作的特殊性
- 非原子操作的执行过程
- 非原子操作导致的数据不一致

## Java中的原子性保证机制

- synchronized关键字的原子性
- volatile关键字的局限性
- java.util.concurrent.atomic包
- 锁机制提供的原子性保证
- CAS操作的原子性实现

## 原子性问题的识别与诊断

- 原子性问题的代码特征
- 并发测试中的原子性验证
- 原子性问题的性能影响
- 原子性与可见性问题的区分
- 原子性问题的复现技术

## 原子性问题的解决策略

- 使用原子类的最佳实践
- 锁的粒度与原子性平衡
- 避免复合操作的设计模式
- 不可变对象消除原子性问题
- 非阻塞算法的原子性保证
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.3目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/README.md" << 'EOF'
---
title: 线程安全问题分析
icon: safety
order: 3
---

# 线程安全问题分析

本节深入分析多线程环境下的线程安全问题，包括竞态条件、原子性、可见性、有序性等核心概念，帮助读者理解并发问题的本质，掌握识别和解决线程安全问题的方法，为构建可靠的并发应用奠定基础。
EOF

# 创建2.1.3.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.5-可见性问题分析.md" << 'EOF'
---
title: 可见性问题分析
icon: visibility
order: 5
---

# 可见性问题分析

## 可见性的基本概念

- 可见性的定义与特性
- 可见性问题的本质
- 缓存与可见性的关系
- 可见性与原子性的区别
- 可见性问题的影响范围

## 可见性问题的形成机制

- CPU缓存架构与工作原理
- 线程工作内存与主内存
- 缓存一致性协议的作用
- 编译器优化对可见性的影响
- 指令重排与可见性的关系

## Java内存模型中的可见性

- JMM对可见性的规定
- 主内存与工作内存的交互
- 内存屏障的可见性保证
- happens-before原则与可见性
- JMM对可见性的最小保证

## 可见性问题的识别与诊断

- 可见性问题的代码特征
- 可见性问题的表现形式
- 可见性与死循环的关系
- 可见性问题的复现技术
- 可见性问题的调试方法

## 可见性问题的解决策略

- volatile关键字的正确使用
- synchronized的可见性保证
- final字段的可见性特性
- 原子类的可见性保证
- 显式锁的可见性机制
EOF

# 创建2.1.3.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.6-有序性问题分析.md" << 'EOF'
---
title: 有序性问题分析
icon: order
order: 6
---

# 有序性问题分析

## 有序性的基本概念

- 有序性的定义与特性
- 程序顺序与执行顺序
- 指令重排序的类型
- 有序性与线程安全的关系
- 有序性问题的影响范围

## 指令重排序的形成机制

- 编译器优化的重排序
- 处理器指令并行的重排序
- 内存系统的重排序
- 多级缓存的影响
- 指令重排的优化目标

## Java内存模型中的有序性

- JMM对有序性的规定
- as-if-serial语义
- happens-before原则与有序性
- 内存屏障的有序性保证
- 重排序对多线程的影响

## 有序性问题的识别与诊断

- 有序性问题的代码特征
- 双重检查锁定的问题分析
- 无锁算法中的有序性问题
- 有序性问题的复现难点
- 有序性问题的调试技术

## 有序性问题的解决策略

- volatile的内存屏障作用
- synchronized的有序性保证
- final字段的初始化保证
- 显式内存屏障的使用
- 线程间通信的有序性控制
EOF

# 创建2.1.3.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.2-线程安全问题分析实战篇.md" << 'EOF'
---
title: 线程安全问题分析实战篇
icon: practice
order: 2
---

# 线程安全问题分析实战篇

## 线程安全问题的实际案例分析

- 计数器的线程安全问题
- 集合类的并发修改异常
- 单例模式的线程安全实现
- 延迟初始化的安全问题
- 状态依赖操作的线程安全

## 线程安全问题的诊断技术

- 日志分析的诊断方法
- 线程转储的分析技巧
- 并发测试的设计策略
- 代码审查的关注点
- 性能分析工具的应用

## 线程安全问题的复现方法

- 并发压力测试的设计
- 线程调度干预技术
- 时序依赖问题的复现
- 边界条件的测试设计
- 故障注入的应用

## 线程安全问题的修复策略

- 锁机制的正确应用
- 原子类的使用技巧
- 不可变对象的设计
- 线程封闭的实现方法
- 并发容器的选择

## 线程安全问题的预防措施

- 线程安全的设计原则
- 代码审查的最佳实践
- 并发测试的自动化
- 线程安全文档的重要性
- 线程安全问题的教育培训
EOF

# 创建2.1.3.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.3-常见线程安全问题识别.md" << 'EOF'
---
title: 常见线程安全问题识别
icon: identify
order: 3
---

# 常见线程安全问题识别

## 竞态条件的识别

- 读取-修改-写入模式的识别
- 检查再执行模式的识别
- 延迟初始化中的竞态条件
- 资源分配中的竞态问题
- 复合操作的竞态风险

## 原子性问题的识别

- 非原子操作的代码特征
- 复合操作的原子性缺失
- 64位变量的特殊原子性问题
- 原子性与锁范围的关系
- 原子性问题的性能表现

## 可见性问题的识别

- 长时间循环的可见性风险
- 标志位更新的可见性问题
- 跨线程的状态依赖操作
- 无同步的共享变量访问
- 可见性问题的间歇性特征

## 有序性问题的识别

- 双重检查锁定的隐患
- 无锁算法中的有序性风险
- 复杂依赖关系的有序性问题
- 延迟初始化中的有序性问题
- 有序性与可见性的交叉问题

## 线程安全问题的代码模式

- 单例模式的线程安全问题
- 懒加载初始化的安全隐患
- 集合遍历时的修改操作
- 状态依赖方法的线程安全
- 资源池的线程安全问题
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.3目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/README.md" << 'EOF'
---
title: 线程安全问题分析
icon: safety
order: 3
---

# 线程安全问题分析

本节深入分析多线程环境下的线程安全问题，包括竞态条件、原子性、可见性、有序性等核心概念，帮助读者理解并发问题的本质，掌握识别和解决线程安全问题的方法，为构建可靠的并发应用奠定基础。
EOF

# 创建2.1.3.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.4-多线程调试与问题定位.md" << 'EOF'
---
title: 多线程调试与问题定位
icon: debug
order: 4
---

# 多线程调试与问题定位

## 多线程调试的挑战

- 多线程问题的不确定性
- 调试过程对线程行为的影响
- 线程交互的复杂性
- 重现并发问题的难度
- 调试工具的局限性

## 线程转储分析技术

- 获取线程转储的方法
- 线程状态与栈信息解读
- 锁信息与等待分析
- 死锁检测与分析
- 线程转储的自动化分析工具

## IDE多线程调试技术

- IntelliJ IDEA的线程调试功能
- Eclipse的多线程调试工具
- 条件断点与线程断点
- 线程暂停与恢复技术
- 线程调试视图的使用

## 日志与监控的问题定位

- 多线程日志记录的最佳实践
- 线程上下文信息的记录
- 分布式追踪技术
- 性能监控与线程分析
- 异常捕获与问题定位

## 高级调试与分析工具

- JVisualVM的线程分析功能
- Java Mission Control的线程监控
- Arthas的线程诊断命令
- Async-profiler的线程分析
- 自定义线程分析工具的开发
EOF

# 创建2.1.3.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.5-线程安全代码审查方法.md" << 'EOF'
---
title: 线程安全代码审查方法
icon: review
order: 5
---

# 线程安全代码审查方法

## 线程安全代码审查的目标

- 线程安全审查的范围确定
- 审查的优先级划分
- 线程安全问题的分类
- 审查的深度与广度平衡
- 审查结果的评估标准

## 线程安全问题的代码模式

- 共享变量访问模式
- 复合操作的线程安全性
- 状态依赖操作的安全性
- 资源管理的线程安全
- 线程交互的安全模式

## 代码审查的关注点

- 同步机制的正确使用
- 锁的粒度与范围
- 死锁风险的识别
- 可见性保证的检查
- 线程安全类的使用方式

## 代码审查的实施方法

- 自动化静态分析工具
- 手动代码审查的流程
- 结对审查的实施技巧
- 审查清单的制定与使用
- 审查发现问题的分类与记录

## 代码审查的最佳实践

- 建立线程安全编码规范
- 审查与测试的结合
- 持续集成中的安全检查
- 审查结果的反馈与改进
- 线程安全知识的团队共享
EOF

# 创建2.1.3.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.6-线程安全测试策略.md" << 'EOF'
---
title: 线程安全测试策略
icon: test
order: 6
---

# 线程安全测试策略

## 线程安全测试的挑战

- 并发问题的不确定性
- 测试环境对结果的影响
- 线程调度的不可控性
- 问题重现的困难
- 测试覆盖率的评估

## 并发测试的设计方法

- 基于场景的测试设计
- 边界条件的测试用例
- 压力测试的设计策略
- 长时间运行测试
- 故障注入测试

## 并发测试框架与工具

- JUnit并发测试支持
- TestNG的并发测试功能
- jcstress并发测试框架
- 自定义并发测试工具
- 线程调度干预工具

## 测试执行与结果分析

- 测试环境的配置
- 测试参数的调整策略
- 测试结果的收集方法
- 失败案例的分析技术
- 测试报告的生成与解读

## 线程安全测试的最佳实践

- 测试与开发的协作模式
- 自动化测试的实施
- 持续集成中的并发测试
- 测试驱动的并发开发
- 测试结果的反馈与改进
EOF

# 创建2.1.3.7文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.3-线程安全问题分析/2.1.3.7-线程安全重构技巧.md" << 'EOF'
---
title: 线程安全重构技巧
icon: refactor
order: 7
---

# 线程安全重构技巧

## 线程安全重构的目标与原则

- 重构的目标定义
- 风险评估与控制
- 增量式重构策略
- 保持功能等价性
- 性能与安全性的平衡

## 常见的线程安全重构模式

- 不可变对象转换
- 线程封闭实现
- 同步机制优化
- 锁粒度调整
- 并发容器替换

## 重构为线程安全类的技术

- 状态变量的封装
- 操作原子性的保证
- 状态一致性的维护
- 安全发布的实现
- 文档与注释的完善

## 并发性能优化重构

- 锁竞争的减少策略
- 锁分段技术的应用
- 非阻塞算法的引入
- 读写分离的实现
- 延迟初始化的优化

## 线程安全重构的验证与测试

- 功能等价性测试
- 并发正确性验证
- 性能基准测试
- 压力测试与稳定性
- 代码审查与评估
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.4目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/README.md" << 'EOF'
---
title: synchronized关键字
icon: lock
order: 4
---

# synchronized关键字

本节深入讲解Java中最基础的同步机制——synchronized关键字，包括其语法、使用方式、底层实现原理、性能特性以及最佳实践，帮助读者全面理解这一核心同步工具，正确应用于并发程序设计中。
EOF

# 创建2.1.4.1文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.1-synchronized关键字原理篇.md" << 'EOF'
---
title: synchronized关键字原理篇
icon: theory
order: 1
---

# synchronized关键字原理篇

## synchronized的基本概念

- synchronized关键字的定义与作用
- Java内置锁(监视器锁)的概念
- 互斥性与可见性保证
- 原子性与有序性保证
- synchronized与Java内存模型的关系

## synchronized的使用方式

- 对实例方法的同步
- 对静态方法的同步
- 对代码块的同步
- 不同同步方式的锁对象区别
- 同步范围的选择原则

## synchronized的锁获取与释放机制

- 锁的自动获取与释放
- monitorenter与monitorexit指令
- 锁的重入性原理
- 异常情况下的锁释放
- 锁状态的内部表示

## synchronized的锁升级过程

- 偏向锁的工作原理
- 轻量级锁的获取与释放
- 重量级锁的特性与实现
- 锁升级的触发条件
- 各级锁的性能特点

## synchronized的底层实现

- 对象头与Mark Word结构
- 锁记录与锁膨胀
- 操作系统互斥量的使用
- 线程阻塞与唤醒的实现
- JVM对synchronized的优化
EOF

# 创建2.1.4.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.2-synchronized实现原理.md" << 'EOF'
---
title: synchronized实现原理
icon: implementation
order: 2
---

# synchronized实现原理

## Java对象头与锁的关系

- 对象头的内存布局
- Mark Word的结构与变化
- 对象头中的锁标志位
- 对象头与GC的关系
- 32位与64位JVM的对象头差异

## 偏向锁的实现机制

- 偏向锁的设计目的
- 偏向锁的获取过程
- 偏向锁的撤销机制
- 批量重偏向与批量撤销
- 偏向锁的启用与禁用

## 轻量级锁的实现机制

- 轻量级锁的设计思想
- 锁记录的创建与使用
- CAS操作在轻量级锁中的应用
- 轻量级锁的释放过程
- 轻量级锁膨胀的条件

## 重量级锁的实现机制

- 操作系统互斥量的使用
- 线程阻塞与唤醒的实现
- 等待队列的管理
- 锁竞争的处理策略
- 重量级锁的性能特性

## synchronized的优化技术

- 锁消除的原理与应用
- 锁粗化的优化策略
- 自适应自旋的实现
- 锁优化的JVM参数
- 逃逸分析与锁优化的关系
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.4目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/README.md" << 'EOF'
---
title: synchronized关键字
icon: lock
order: 4
---

# synchronized关键字

本节深入讲解Java中最基础的同步机制——synchronized关键字，包括其语法、使用方式、底层实现原理、性能特性以及最佳实践，帮助读者全面理解这一核心同步工具，正确应用于并发程序设计中。
EOF

# 创建2.1.4.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.3-对象头与锁标志位.md" << 'EOF'
---
title: 对象头与锁标志位
icon: header
order: 3
---

# 对象头与锁标志位

## Java对象内存布局

- 对象头的组成部分
- 实例数据的存储结构
- 对齐填充的作用
- 32位与64位JVM的对象布局差异
- 对象内存布局的查看工具

## Mark Word的结构与功能

- Mark Word的内存布局
- 不同状态下的Mark Word内容
- 锁标志位的位置与含义
- 年龄计数器的作用
- 哈希码的存储位置

## 锁标志位的状态转换

- 无锁状态的标志位
- 偏向锁状态的标志位
- 轻量级锁状态的标志位
- 重量级锁状态的标志位
- GC标记状态的标志位

## 对象头与锁的关系

- 对象头中锁信息的存储
- 锁记录的指针存储
- 重量级锁的Monitor指针
- 锁状态变化对对象头的影响
- 对象头修改的原子性保证

## 实践中的对象头分析

- JOL工具的使用方法
- 对象头在不同锁状态下的变化
- 对象头分析的调试技巧
- 对象头与性能优化的关系
- 对象头分析的实际案例
EOF

# 创建2.1.4.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.4-锁升级与锁膨胀过程.md" << 'EOF'
---
title: 锁升级与锁膨胀过程
icon: upgrade
order: 4
---

# 锁升级与锁膨胀过程

## 锁升级的基本概念

- 锁升级的定义与目的
- 锁升级的单向性特点
- 锁状态的演进路径
- 锁升级与JVM优化的关系
- 锁升级的性能影响

## 偏向锁升级为轻量级锁

- 偏向锁的撤销条件
- 偏向锁撤销的过程
- 线程ID的清除与替换
- 锁记录的创建与填充
- CAS操作的应用

## 轻量级锁升级为重量级锁

- 轻量级锁膨胀的触发条件
- 自旋等待与锁膨胀的关系
- 互斥量的创建过程
- 线程阻塞的实现机制
- 等待队列的建立

## 锁降级的可能性与限制

- 锁降级的概念澄清
- JVM中的锁降级实例
- 锁降级的条件与限制
- 锁降级与GC的关系
- 实际应用中的锁降级考量

## 锁升级的性能优化

- 减少锁升级的策略
- 偏向锁的延迟启用
- 自适应自旋的调优
- 锁升级相关的JVM参数
- 锁升级过程的监控方法
EOF

# 创建2.1.4.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.5-偏向锁轻量级锁重量级锁.md" << 'EOF'
---
title: 偏向锁/轻量级锁/重量级锁
icon: locks
order: 5
---

# 偏向锁/轻量级锁/重量级锁

## 偏向锁的工作机制

- 偏向锁的设计目的
- 偏向锁的获取过程
- 偏向锁的撤销机制
- 偏向锁的延迟启动
- 偏向锁的性能特性

## 轻量级锁的工作机制

- 轻量级锁的设计思想
- 轻量级锁的获取过程
- 轻量级锁的释放过程
- 轻量级锁的自旋等待
- 轻量级锁的性能特性

## 重量级锁的工作机制

- 重量级锁的实现基础
- Monitor对象的结构
- 线程阻塞与唤醒的过程
- 等待队列的管理机制
- 重量级锁的性能特性

## 三种锁的对比分析

- 适用场景的差异
- 性能特性的比较
- 资源消耗的对比
- 并发度的影响因素
- 选择策略与最佳实践

## 锁机制的实际应用

- 不同锁机制的应用场景
- 锁机制选择的决策因素
- 锁优化的实际案例
- 锁机制与并发模式的结合
- 锁机制的性能监控与调优
EOF

# 创建2.1.4.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.6-锁消除与锁粗化优化.md" << 'EOF'
---
title: 锁消除与锁粗化优化
icon: optimize
order: 6
---

# 锁消除与锁粗化优化

## 锁消除的基本原理

- 锁消除的定义与目的
- 逃逸分析与锁消除的关系
- JIT编译器中的锁消除实现
- 锁消除的触发条件
- 锁消除的性能影响

## 锁消除的实际应用

- 局部变量的线程安全性
- StringBuffer/StringBuilder的锁消除
- 容器类的锁消除优化
- 自动装箱/拆箱的锁消除
- 锁消除的代码示例分析

## 锁粗化的基本原理

- 锁粗化的定义与目的
- 循环中的锁粗化优化
- 连续加锁操作的合并
- 锁粗化的触发条件
- 锁粗化的性能影响

## 锁粗化的实际应用

- 循环内同步块的优化
- 连续同步方法调用的优化
- 字符串拼接操作的锁粗化
- 集合操作的锁粗化
- 锁粗化的代码示例分析

## 锁优化的最佳实践

- 锁优化的JVM参数设置
- 代码层面的锁优化策略
- 锁优化的性能测试方法
- 锁优化与其他并发优化的结合
- 实际项目中的锁优化案例
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.4目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/README.md" << 'EOF'
---
title: synchronized关键字
icon: lock
order: 4
---

# synchronized关键字

本节深入讲解Java中最基础的同步机制——synchronized关键字，包括其语法、使用方式、底层实现原理、性能特性以及最佳实践，帮助读者全面理解这一核心同步工具，正确应用于并发程序设计中。
EOF

# 创建2.1.4.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.2-synchronized关键字实战篇.md" << 'EOF'
---
title: synchronized关键字实战篇
icon: practice
order: 2
---

# synchronized关键字实战篇

## synchronized的基本用法

- 同步实例方法的实现方式
- 同步静态方法的实现方式
- 同步代码块的实现方式
- 不同同步方式的锁对象选择
- 同步范围的控制技巧

## synchronized在集合类中的应用

- 集合遍历时的同步处理
- 集合修改操作的同步控制
- 同步包装器的使用方法
- 并发集合与synchronized的对比
- 集合同步的性能考量

## synchronized在单例模式中的应用

- 懒汉式单例的线程安全实现
- 双重检查锁定的正确实现
- 静态内部类的单例实现
- 枚举单例与synchronized
- 单例模式的线程安全测试

## synchronized与线程通信

- wait/notify机制的使用
- 生产者-消费者模式实现
- 条件等待的正确姿势
- 虚假唤醒的处理方法
- 超时等待的实现技巧

## synchronized的性能优化实践

- 减少锁持有时间的技巧
- 减小锁粒度的方法
- 锁分离与锁分段技术
- 读写分离的实现方式
- 锁竞争的监控与优化
EOF

# 创建2.1.4.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.3-synchronized使用场景与模式.md" << 'EOF'
---
title: synchronized使用场景与模式
icon: scenario
order: 3
---

# synchronized使用场景与模式

## 对象级别的同步控制

- 实例方法同步的应用场景
- 实例变量的线程安全保护
- 对象状态一致性的维护
- 对象生命周期的同步控制
- 实例锁与对象身份的关系

## 类级别的同步控制

- 静态方法同步的应用场景
- 静态变量的线程安全保护
- 类初始化的同步控制
- 单例模式中的类锁应用
- 类锁与实例锁的交互

## 复合操作的原子性保证

- 检查-执行模式的同步
- 读取-修改-写入操作的同步
- 迭代-修改操作的同步
- 延迟初始化的同步控制
- 状态依赖操作的同步

## 线程协作模式中的应用

- 生产者-消费者模式实现
- 读写锁模式的实现
- 信号量模式的实现
- 屏障模式的实现
- 资源池的同步控制

## 特殊场景下的synchronized应用

- 递归调用中的synchronized
- 异常处理与synchronized
- 嵌套锁与死锁预防
- 超时控制与synchronized
- 动态锁定对象的处理
EOF

# 创建2.1.4.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.4-同步方法与同步代码块选择.md" << 'EOF'
---
title: 同步方法与同步代码块选择
icon: choice
order: 4
---

# 同步方法与同步代码块选择

## 同步方法的特点与适用场景

- 同步方法的实现机制
- 同步方法的锁范围
- 同步方法的简洁性优势
- 同步方法的性能特性
- 同步方法的适用场景

## 同步代码块的特点与适用场景

- 同步代码块的实现机制
- 同步代码块的灵活性
- 锁对象选择的自由度
- 同步范围的精确控制
- 同步代码块的适用场景

## 同步方法与同步代码块的性能对比

- 锁持有时间的差异
- 锁粒度控制的差异
- JVM优化效果的差异
- 实际应用中的性能测试
- 性能优化的选择策略

## 选择的决策因素

- 代码复杂度与可维护性
- 同步范围的精确需求
- 锁对象的选择需求
- 性能敏感度考量
- 与现有代码的一致性

## 实际应用中的最佳实践

- 方法级同步的适用场景
- 代码块同步的适用场景
- 混合使用的策略
- 重构同步代码的技巧
- 代码审查中的同步检查
EOF

# 创建2.1.4.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.5-锁粒度控制策略.md" << 'EOF'
---
title: 锁粒度控制策略
icon: granularity
order: 5
---

# 锁粒度控制策略

## 锁粒度的基本概念

- 锁粒度的定义与影响
- 粗粒度锁与细粒度锁的特点
- 锁粒度与并发性能的关系
- 锁粒度与代码复杂度的权衡
- 锁粒度选择的基本原则

## 粗粒度锁的应用策略

- 粗粒度锁的适用场景
- 整体加锁的实现方式
- 粗粒度锁的性能特性
- 粗粒度锁的优缺点分析
- 粗粒度锁的最佳实践

## 细粒度锁的应用策略

- 细粒度锁的适用场景
- 分离锁的实现技术
- 锁分段的设计模式
- 细粒度锁的性能特性
- 细粒度锁的优缺点分析

## 锁粒度优化的常用技术

- 锁分离技术的实现
- 读写锁的应用
- 锁分段技术的实现
- 无锁数据结构的应用
- 局部变量与ThreadLocal的使用

## 实际应用中的锁粒度控制

- 集合类的锁粒度控制
- 缓存系统的锁粒度设计
- 数据库连接池的锁粒度
- 文件操作的锁粒度控制
- 锁粒度优化的案例分析
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.4目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/README.md" << 'EOF'
---
title: synchronized关键字
icon: lock
order: 4
---

# synchronized关键字

本节深入讲解Java中最基础的同步机制——synchronized关键字，包括其语法、使用方式、底层实现原理、性能特性以及最佳实践，帮助读者全面理解这一核心同步工具，正确应用于并发程序设计中。
EOF

# 创建2.1.4.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.6-synchronized性能优化.md" << 'EOF'
---
title: synchronized性能优化
icon: performance
order: 6
---

# synchronized性能优化

## synchronized的性能问题

- 重量级锁的性能开销
- 线程阻塞与唤醒的成本
- 锁竞争对性能的影响
- 上下文切换的开销
- 死锁与活锁的性能影响

## JVM对synchronized的优化

- 锁消除优化的原理与应用
- 锁粗化优化的原理与应用
- 偏向锁的性能提升机制
- 轻量级锁的性能优势
- 自适应自旋的优化效果

## 减少锁竞争的策略

- 减小锁持有时间的方法
- 减小锁粒度的技术
- 锁分离与锁分段的实现
- 读写分离的优化策略
- 避免热点锁的设计模式

## 锁优化的代码实践

- 局部变量的线程安全优势
- 不可变对象的线程安全性
- ThreadLocal的适当使用
- CAS操作替代锁的场景
- 并发容器替代同步容器

## 性能监控与调优

- 锁竞争的监控方法
- 线程阻塞的检测技术
- 锁优化的性能测试
- JVM锁相关参数的调优
- 实际项目中的性能优化案例
EOF

# 创建2.1.4.7文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.4-synchronized关键字/2.1.4.7-死锁问题分析与预防.md" << 'EOF'
---
title: 死锁问题分析与预防
icon: deadlock
order: 7
---

# 死锁问题分析与预防

## 死锁的基本概念

- 死锁的定义与特征
- 死锁产生的必要条件
- 死锁与活锁的区别
- 死锁与饥饿的区别
- 死锁对系统的影响

## 常见的死锁场景

- 嵌套锁导致的死锁
- 资源分配顺序不一致
- 动态锁顺序死锁
- 协作对象间的死锁
- 数据库事务中的死锁

## 死锁的检测与分析

- 线程转储的死锁检测
- JConsole的死锁检测功能
- VisualVM的死锁分析
- 死锁日志的分析方法
- 死锁复现的技术

## 死锁的预防策略

- 锁顺序一致性原则
- 锁超时与重试机制
- 使用显式锁的tryLock方法
- 避免在持有锁时调用外部方法
- 使用开放调用设计模式

## 死锁的实际案例与解决方案

- Web应用中的死锁案例
- 数据库访问中的死锁处理
- 复杂业务逻辑中的死锁预防
- 框架集成导致的死锁解决
- 死锁问题的重构方案
EOF

# 创建2.1.5目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/README.md" << 'EOF'
---
title: volatile关键字
icon: volatile
order: 5
---

# volatile关键字

本节详细介绍Java中的volatile关键字，包括其内存语义、可见性保证、有序性保证以及适用场景，帮助读者理解这一轻量级同步机制的特性与局限，正确应用于并发程序设计中。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.5目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/README.md" << 'EOF'
---
title: volatile关键字
icon: volatile
order: 5
---

# volatile关键字

本节详细介绍Java中的volatile关键字，包括其内存语义、可见性保证、有序性保证以及适用场景，帮助读者理解这一轻量级同步机制的特性与局限，正确应用于并发程序设计中。
EOF

# 创建2.1.5.1文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.1-volatile关键字原理篇.md" << 'EOF'
---
title: volatile关键字原理篇
icon: theory
order: 1
---

# volatile关键字原理篇

## volatile的基本概念

- volatile关键字的定义与作用
- volatile与Java内存模型的关系
- volatile的可见性保证机制
- volatile的有序性保证机制
- volatile不保证原子性的原因

## volatile的内存语义

- 写volatile变量的内存语义
- 读volatile变量的内存语义
- volatile内存语义的实现
- volatile与happens-before关系
- volatile内存语义的强弱程度

## volatile的适用场景

- 状态标志的使用场景
- 一次性安全发布的实现
- 独立观察的应用模式
- volatile数组的特殊性
- volatile引用的注意事项

## volatile的局限性

- 复合操作的非原子性问题
- 依赖当前值的操作限制
- 多状态依赖的操作限制
- 性能影响与考量
- 与其他同步机制的对比

## volatile的底层实现

- 内存屏障的插入规则
- 禁止指令重排序的机制
- 缓存一致性协议的作用
- JVM对volatile的实现差异
- 不同硬件平台的实现差异
EOF

# 创建2.1.5.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.2-volatile内存语义.md" << 'EOF'
---
title: volatile内存语义
icon: memory
order: 2
---

# volatile内存语义

## 内存语义的基本概念

- 内存语义的定义与作用
- Java内存模型中的内存语义
- 内存语义与线程可见性
- 内存语义与指令重排序
- 内存语义的强弱程度划分

## volatile写操作的内存语义

- volatile写的可见性保证
- 写操作的内存屏障插入
- 写操作对后续指令的影响
- 写操作的缓存刷新机制
- 写操作的实际执行过程

## volatile读操作的内存语义

- volatile读的可见性保证
- 读操作的内存屏障插入
- 读操作对前序指令的影响
- 读操作的缓存失效机制
- 读操作的实际执行过程

## volatile内存语义的实现机制

- 内存屏障的类型与作用
- 缓存一致性协议的配合
- JMM对volatile的规范要求
- 不同JVM实现的差异
- 不同硬件架构的实现差异

## volatile内存语义的应用

- 正确使用volatile的模式
- 内存语义在并发设计中的应用
- 内存语义与其他同步机制的配合
- 内存语义的性能影响
- 内存语义理解的常见误区
EOF

# 创建2.1.5.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.3-内存屏障实现机制.md" << 'EOF'
---
title: 内存屏障实现机制
icon: barrier
order: 3
---

# 内存屏障实现机制

## 内存屏障的基本概念

- 内存屏障的定义与作用
- 内存屏障的类型划分
- 内存屏障与指令重排序
- 内存屏障与缓存同步
- 内存屏障的性能影响

## 内存屏障的分类与功能

- 读屏障(Load Barrier)的作用
- 写屏障(Store Barrier)的作用
- 全屏障(Full Barrier)的作用
- 获取屏障(Acquire Barrier)的特性
- 释放屏障(Release Barrier)的特性

## volatile与内存屏障的关系

- volatile写操作的屏障插入
- volatile读操作的屏障插入
- 内存屏障的插入位置
- 内存屏障的组合使用
- JMM对内存屏障的规范

## 不同硬件架构的内存屏障

- x86架构的内存屏障指令
- ARM架构的内存屏障指令
- PowerPC架构的内存屏障指令
- 不同架构的内存模型差异
- JVM对不同架构的适配

## 内存屏障的实际应用

- JUC中的内存屏障应用
- 无锁算法中的内存屏障
- 内存屏障的性能优化
- 内存屏障使用的最佳实践
- 内存屏障相关的调试技术
EOF

# 创建2.1.5.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.4-可见性保证原理.md" << 'EOF'
---
title: 可见性保证原理
icon: visibility
order: 4
---

# 可见性保证原理

## 可见性问题的本质

- 可见性的定义与特性
- 缓存导致的可见性问题
- 指令重排导致的可见性问题
- 编译器优化导致的可见性问题
- 可见性问题的实际表现

## volatile的可见性保证机制

- volatile写的可见性保证
- volatile读的可见性保证
- 内存屏障在可见性中的作用
- 缓存一致性协议的配合
- 可见性保证的实现过程

## 硬件层面的可见性支持

- CPU缓存架构与可见性
- MESI协议的工作原理
- 缓存一致性的实现机制
- 内存屏障指令的硬件实现
- 不同硬件架构的可见性差异

## JMM对可见性的规范

- JMM的可见性保证规则
- happens-before原则与可见性
- volatile变量规则的定义
- 传递性保证的实现
- JMM对可见性的最小保证

## 可见性保证的实际应用

- 可见性在并发设计中的重要性
- 正确利用volatile的可见性
- 可见性与原子性的结合使用
- 可见性保证的性能考量
- 可见性问题的诊断与修复
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.5目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/README.md" << 'EOF'
---
title: volatile关键字
icon: volatile
order: 5
---

# volatile关键字

本节详细介绍Java中的volatile关键字，包括其内存语义、可见性保证、有序性保证以及适用场景，帮助读者理解这一轻量级同步机制的特性与局限，正确应用于并发程序设计中。
EOF

# 创建2.1.5.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.5-有序性保证与重排序限制.md" << 'EOF'
---
title: 有序性保证与重排序限制
icon: order
order: 5
---

# 有序性保证与重排序限制

## 指令重排序的基本概念

- 指令重排序的定义与目的
- 编译器重排序的机制
- 处理器重排序的原理
- 内存系统重排序的影响
- 重排序对并发的影响

## volatile的有序性保证机制

- volatile写-读的有序性保证
- 内存屏障在有序性中的作用
- volatile禁止重排序的规则
- 半有序性的概念与影响
- 有序性保证的实现过程

## JMM中的重排序规则

- as-if-serial语义的保证
- happens-before原则与有序性
- 程序顺序规则的定义
- volatile变量规则的应用
- 传递性保证的实现

## 重排序的实际案例分析

- 双重检查锁定的问题分析
- 单例模式中的重排序问题
- 无锁算法中的有序性保证
- 发布对象时的重排序风险
- 延迟初始化中的有序性问题

## 有序性保证的最佳实践

- 正确使用volatile的有序性
- 避免依赖重排序的代码结构
- 有序性与可见性的结合使用
- 有序性保证的性能考量
- 有序性问题的诊断与修复
EOF

# 创建2.1.5.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.6-volatile与原子性的关系.md" << 'EOF'
---
title: volatile与原子性的关系
icon: atomic
order: 6
---

# volatile与原子性的关系

## 原子性的基本概念

- 原子性的定义与特性
- 原子操作的类型与范围
- 原子性与线程安全的关系
- 非原子操作的问题
- Java中的原子性保证机制

## volatile不保证原子性的原因

- volatile的作用范围限制
- 复合操作的非原子性本质
- 读-改-写操作的竞态条件
- volatile变量的竞争访问
- 实际案例中的原子性问题

## volatile与原子性问题的实例

- 计数器的原子性问题
- 状态标志的复合检查
- 复合条件的原子性缺失
- 64位变量的特殊情况
- 原子性问题的实际表现

## 结合其他机制保证原子性

- synchronized与volatile的结合
- 原子类与volatile的配合
- CAS操作的原子性保证
- 锁与volatile的互补作用
- 不可变对象的原子性优势

## 原子性设计的最佳实践

- 避免volatile变量的复合操作
- 正确识别原子性需求
- 选择合适的原子性保证机制
- 原子性与性能的平衡
- 原子性问题的测试与验证
EOF

# 创建2.1.5.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.2-volatile关键字实战篇.md" << 'EOF'
---
title: volatile关键字实战篇
icon: practice
order: 2
---

# volatile关键字实战篇

## volatile的基本用法

- volatile变量的声明方式
- 基本类型的volatile应用
- 引用类型的volatile特性
- volatile数组的特殊性
- volatile与final的组合使用

## volatile在状态标志中的应用

- 状态标志的volatile实现
- 线程安全的状态切换
- 状态可见性的保证方法
- 多状态标志的处理
- 状态标志的最佳实践

## volatile在单例模式中的应用

- 双重检查锁定的正确实现
- volatile解决部分初始化问题
- 单例模式的线程安全保证
- 延迟初始化的volatile应用
- 单例模式的性能优化

## volatile在生产者-消费者模式中的应用

- 简单队列的volatile实现
- 生产者-消费者的协作机制
- 可见性保证的重要性
- 与wait/notify的结合使用
- 性能与安全性的平衡

## volatile的性能考量与优化

- volatile的性能开销分析
- 减少volatile变量的访问频率
- 避免volatile的过度使用
- 合理的缓存策略
- 性能测试与优化方法
EOF

# 创建2.1.5.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.3-volatile适用场景分析.md" << 'EOF'
---
title: volatile适用场景分析
icon: scenario
order: 3
---

# volatile适用场景分析

## 适合使用volatile的场景

- 状态标志的使用场景
- 一次性安全发布的实现
- 独立观察变量的应用
- 开关控制的实现方式
- volatile的"轻量级读-写锁"模式

## 不适合使用volatile的场景

- 需要原子性保证的操作
- 依赖变量当前值的操作
- 复合条件的状态检查
- 高频率读写的性能敏感场景
- 需要事务性的操作组合

## volatile与其他同步机制的对比

- volatile与synchronized的对比
- volatile与原子类的对比
- volatile与显式锁的对比
- volatile与final的对比
- 选择合适同步机制的决策因素

## 实际应用中的最佳实践

- 正确使用volatile的模式
- 常见的volatile使用误区
- 代码审查中的volatile检查点
- volatile的测试策略
- 性能与正确性的平衡

## 案例分析与经验总结

- 并发框架中的volatile应用
- 开源项目中的volatile实践
- 性能优化中的volatile应用
- 常见并发Bug的volatile修复
- 实际项目中的经验教训
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.5目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/README.md" << 'EOF'
---
title: volatile关键字
icon: volatile
order: 5
---

# volatile关键字

本节详细介绍Java中的volatile关键字，包括其内存语义、可见性保证、有序性保证以及适用场景，帮助读者理解这一轻量级同步机制的特性与局限，正确应用于并发程序设计中。
EOF

# 创建2.1.5.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.4-双重检查锁定模式.md" << 'EOF'
---
title: 双重检查锁定模式
icon: lock
order: 4
---

# 双重检查锁定模式

## 双重检查锁定的基本概念

- 双重检查锁定的定义与目的
- 延迟初始化的需求背景
- 单例模式中的应用场景
- 双重检查锁定的基本结构
- 性能与线程安全的平衡

## 双重检查锁定的问题分析

- 部分初始化问题的本质
- 指令重排序的影响
- 内存可见性的缺失
- JDK版本对问题的影响
- 错误实现的风险与后果

## volatile在双重检查锁定中的作用

- volatile解决部分初始化问题
- 禁止指令重排序的必要性
- 内存可见性的保证机制
- volatile引用的特殊性质
- 正确实现的关键点

## 双重检查锁定的正确实现

- 标准的实现代码模式
- volatile关键字的正确使用
- 初始化过程的安全保证
- 不同JDK版本的兼容性
- 实现的性能特性分析

## 双重检查锁定的替代方案

- 静态内部类的单例实现
- 枚举类型的单例实现
- 提前初始化的权衡
- 线程安全的延迟初始化工具
- 方案选择的决策因素
EOF

# 创建2.1.5.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.5-volatile性能影响评估.md" << 'EOF'
---
title: volatile性能影响评估
icon: performance
order: 5
---

# volatile性能影响评估

## volatile的性能开销分析

- 内存屏障的性能影响
- 缓存同步的开销
- 指令重排限制的影响
- 与普通变量的性能对比
- 不同硬件平台的性能差异

## 读操作的性能特性

- volatile读的执行过程
- 缓存失效的影响
- 读屏障的性能开销
- 读操作的优化可能性
- 读多写少场景的性能表现

## 写操作的性能特性

- volatile写的执行过程
- 缓存刷新的影响
- 写屏障的性能开销
- 写操作的优化可能性
- 写多读少场景的性能表现

## 不同应用场景的性能测试

- 状态标志场景的性能
- 单例模式中的性能影响
- 高频读写场景的性能
- 多线程竞争的性能表现
- 不同JVM实现的性能差异

## 性能优化的最佳实践

- 减少volatile变量的使用数量
- 降低volatile变量的访问频率
- 合理的缓存策略设计
- 避免volatile的过度使用
- 性能与正确性的平衡决策
EOF

# 创建2.1.5.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.6-volatile与其他同步机制对比.md" << 'EOF'
---
title: volatile与其他同步机制对比
icon: compare
order: 6
---

# volatile与其他同步机制对比

## volatile与synchronized的对比

- 同步范围与粒度的差异
- 原子性保证的差异
- 性能开销的对比
- 适用场景的区别
- 组合使用的模式

## volatile与原子类的对比

- 功能特性的差异
- 原子性保证的不同
- CAS操作与volatile的关系
- 性能特性的对比
- 选择策略与使用场景

## volatile与显式锁的对比

- Lock接口与volatile的功能差异
- 灵活性与复杂度的对比
- 性能特性的比较
- 适用场景的区分
- 互补使用的模式

## volatile与final的对比

- 内存语义的相似与差异
- 可变性与不可变性的对比
- 性能特性的比较
- 适用场景的区别
- 组合使用的最佳实践

## 同步机制选择的决策框架

- 功能需求的分析方法
- 性能需求的评估
- 代码复杂度的考量
- 维护性与可读性的权衡
- 实际项目中的选择策略
EOF

# 创建2.1.5.7文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.5-volatile关键字/2.1.5.7-常见volatile使用错误.md" << 'EOF'
---
title: 常见volatile使用错误
icon: error
order: 7
---

# 常见volatile使用错误

## 复合操作的原子性误区

- 递增/递减操作的错误使用
- 读-修改-写操作的问题
- 条件判断与修改的复合操作
- 原子性与可见性的混淆
- 正确处理复合操作的方法

## 依赖变量当前值的错误

- 基于当前值计算的问题
- 条件竞争的形成原因
- 典型的代码错误模式
- 问题的实际表现
- 正确实现的解决方案

## 过度依赖volatile的问题

- 替代锁机制的错误尝试
- 忽略原子性需求的风险
- 复杂同步逻辑的简化错误
- 性能优化的误导
- 合理使用范围的界定

## 可见性保证的误解

- 对可见性范围的误解
- 传递性保证的错误理解
- 与final关键字的混淆
- 对重排序影响的误解
- 正确理解可见性的指导

## 实际项目中的错误案例分析

- 单例模式的错误实现
- 标志位控制的错误使用
- 缓存实现中的volatile错误
- 状态检查的常见错误
- 错误修正的最佳实践
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.6目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/README.md" << 'EOF'
---
title: ThreadLocal详解
icon: threadlocal
order: 6
---

# ThreadLocal详解

本节深入讲解Java中的ThreadLocal机制，包括其设计原理、内部实现、使用场景以及注意事项，帮助读者理解这一线程局部变量工具的工作机制，正确应用于并发程序设计中，解决线程安全问题。
EOF

# 创建2.1.6.1文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.1-ThreadLocal详解原理篇.md" << 'EOF'
---
title: ThreadLocal详解原理篇
icon: theory
order: 1
---

# ThreadLocal详解原理篇

## ThreadLocal的基本概念

- ThreadLocal的定义与作用
- 线程局部变量的特性
- ThreadLocal与线程安全的关系
- ThreadLocal的使用场景概述
- ThreadLocal与共享变量的区别

## ThreadLocal的内部结构

- ThreadLocalMap的设计与实现
- Entry的弱引用设计原理
- 线程与ThreadLocalMap的关系
- 哈希冲突的解决方案
- 扩容机制的实现

## ThreadLocal的核心方法实现

- set方法的实现原理
- get方法的实现原理
- remove方法的实现原理
- initialValue方法的作用
- withInitial方法的使用

## ThreadLocal的内存模型

- ThreadLocal变量的存储位置
- 线程栈与堆内存的关系
- 每个线程的独立副本机制
- 线程终止时的内存处理
- 内存泄漏的形成原因

## ThreadLocal的继承机制

- InheritableThreadLocal的设计目的
- 父子线程间的值传递机制
- 创建子线程时的值复制过程
- 使用场景与限制条件
- 与普通ThreadLocal的区别
EOF

# 创建2.1.6.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.2-ThreadLocal设计原理.md" << 'EOF'
---
title: ThreadLocal设计原理
icon: design
order: 2
---

# ThreadLocal设计原理

## ThreadLocal的设计目标

- 线程隔离的设计思想
- 避免共享变量同步的目标
- 简化并发编程的设计理念
- 性能与安全性的平衡
- 设计演进的历史背景

## ThreadLocalMap的哈希表设计

- 开放地址法的实现
- 线性探测的冲突解决
- 哈希算法的特殊设计
- 扩容阈值与策略
- 与HashMap设计的对比

## 弱引用机制的设计考量

- 弱引用的基本概念
- Entry对ThreadLocal的弱引用设计
- 弱引用与垃圾回收的关系
- 内存泄漏的防范设计
- 过期Entry的清理机制

## 线程终止时的资源回收

- 线程对象的生命周期
- ThreadLocalMap的资源释放
- 显式清理与自动清理
- 资源回收的时机控制
- JVM退出时的处理机制

## 设计权衡与优化策略

- 空间换时间的设计思想
- 延迟清理的性能考量
- 哈希冲突的优化策略
- 内存占用与访问速度的平衡
- JDK版本演进中的优化改进
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.6目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/README.md" << 'EOF'
---
title: ThreadLocal详解
icon: threadlocal
order: 6
---

# ThreadLocal详解

本节深入讲解Java中的ThreadLocal机制，包括其设计原理、内部实现、使用场景以及注意事项，帮助读者理解这一线程局部变量工具的工作机制，正确应用于并发程序设计中，解决线程安全问题。
EOF

# 创建2.1.6.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.3-ThreadLocalMap数据结构.md" << 'EOF'
---
title: ThreadLocalMap数据结构
icon: structure
order: 3
---

# ThreadLocalMap数据结构

## ThreadLocalMap的基本结构

- ThreadLocalMap的定义与位置
- 内部类Entry的设计
- 哈希表的基本组成
- 初始容量与负载因子
- 与HashMap的结构对比

## Entry的弱引用设计

- Entry继承WeakReference的原因
- 弱引用对ThreadLocal的引用方式
- key与value的存储关系
- 弱引用与强引用的区别
- 垃圾回收对Entry的影响

## 哈希冲突的解决方案

- 开放地址法的实现
- 线性探测的工作原理
- 冲突处理的具体算法
- 探测序列的生成方式
- 与链地址法的对比分析

## 扩容机制的实现

- 扩容阈值的设定
- 扩容触发的条件
- rehash的实现过程
- 元素重新分布的算法
- 扩容性能的影响因素

## 过期Entry的清理机制

- 过期Entry的定义
- expungeStaleEntry方法的实现
- 启发式清理的工作原理
- 清理时机的设计考量
- 清理效率与内存占用的平衡
EOF

# 创建2.1.6.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.4-弱引用与内存泄漏分析.md" << 'EOF'
---
title: 弱引用与内存泄漏分析
icon: memory
order: 4
---

# 弱引用与内存泄漏分析

## 弱引用的基本概念

- Java引用类型的分类
- 弱引用的特性与生命周期
- 垃圾回收对弱引用的处理
- WeakReference类的使用方式
- 弱引用的应用场景

## ThreadLocal内存泄漏的原理

- 内存泄漏的定义与危害
- ThreadLocalMap中的引用链
- Entry的key被回收的情况
- value无法被回收的原因
- 线程生命周期与内存泄漏的关系

## 内存泄漏的典型场景

- 线程池中的ThreadLocal使用
- 长生命周期线程的风险
- Web应用中的Servlet线程
- 大对象存储的风险
- 静态ThreadLocal的危险性

## 内存泄漏的检测方法

- 堆内存分析工具的使用
- 内存泄漏的症状识别
- ThreadLocal相关泄漏的特征
- JVM参数配置与监控
- 内存泄漏的复现与验证

## 内存泄漏的防范措施

- 手动调用remove的重要性
- try-finally确保清理的模式
- 避免静态ThreadLocal的策略
- 合理设置线程池大小
- 周期性清理的实现方法
EOF

# 创建2.1.6.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.5-ThreadLocal值传递机制.md" << 'EOF'
---
title: ThreadLocal值传递机制
icon: transfer
order: 5
---

# ThreadLocal值传递机制

## ThreadLocal的值初始化

- initialValue方法的作用
- 懒加载机制的实现
- withInitial方法的使用
- Supplier函数式接口的应用
- 不同初始化方式的选择

## 值的存取过程分析

- set方法的执行流程
- get方法的执行流程
- remove方法的执行流程
- 值覆盖与更新的机制
- 首次访问的处理逻辑

## 线程间值传递的限制

- 线程隔离的基本原则
- 不同线程间的值独立性
- 跨线程访问的限制
- 线程间通信的替代方案
- 值传递的应用场景边界

## 父子线程的值传递

- InheritableThreadLocal的基本原理
- 创建子线程时的值复制过程
- childValue方法的定制机会
- 值传递的单向性特点
- 父子线程值同步的局限性

## 值传递的高级应用

- 上下文信息的传递模式
- 分布式追踪中的应用
- 事务上下文的传递
- 安全上下文的传递
- 自定义值传递框架的设计
EOF

# 创建2.1.6.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.6-InheritableThreadLocal原理.md" << 'EOF'
---
title: InheritableThreadLocal原理
icon: inherit
order: 6
---

# InheritableThreadLocal原理

## InheritableThreadLocal的设计目的

- 父子线程间数据传递的需求
- ThreadLocal的局限性
- InheritableThreadLocal的定位
- 适用场景与应用价值
- 与ThreadLocal的关系与区别

## InheritableThreadLocal的实现机制

- InheritableThreadLocal的继承结构
- Thread类中的inheritableThreadLocals字段
- 线程创建时的值传递过程
- init方法中的值复制实现
- childValue方法的定制机会

## 值传递的工作流程

- 父线程设置值的过程
- 子线程创建时的值继承
- 子线程修改值的独立性
- 父线程修改值对子线程的影响
- 多级线程继承的特性

## InheritableThreadLocal的局限性

- 创建子线程后的值同步问题
- 线程池环境下的失效问题
- 异步任务场景的局限
- 复杂继承关系的处理
- 性能与内存占用的考量

## 高级应用与扩展方案

- TransmittableThreadLocal的设计
- 线程池环境下的值传递解决方案
- 异步编程中的上下文传递
- 分布式系统中的应用扩展
- 自定义线程工厂的配合使用
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.6目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/README.md" << 'EOF'
---
title: ThreadLocal详解
icon: threadlocal
order: 6
---

# ThreadLocal详解

本节深入讲解Java中的ThreadLocal机制，包括其设计原理、内部实现、使用场景以及注意事项，帮助读者理解这一线程局部变量工具的工作机制，正确应用于并发程序设计中，解决线程安全问题。
EOF

# 创建2.1.6.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.2-ThreadLocal详解实战篇.md" << 'EOF'
---
title: ThreadLocal详解实战篇
icon: practice
order: 2
---

# ThreadLocal详解实战篇

## ThreadLocal的基本用法

- ThreadLocal的创建与初始化
- set方法的使用方式
- get方法的使用方式
- remove方法的使用方式
- withInitial方法的函数式创建

## ThreadLocal的常用模式

- 线程安全的单例模式
- 上下文信息传递模式
- 线程隔离的对象池模式
- 请求上下文的存储模式
- 线程安全的懒加载模式

## ThreadLocal的最佳实践

- 使用try-finally确保清理
- 避免静态ThreadLocal的风险
- 合理设置初始值的策略
- 注意线程池环境的使用
- 防止内存泄漏的关键点

## ThreadLocal的性能考量

- ThreadLocal的性能特性
- 访问开销的分析
- 内存占用的评估
- 清理操作的性能影响
- 优化ThreadLocal使用的策略

## ThreadLocal的调试与监控

- ThreadLocal变量的查看方法
- 内存泄漏的检测技术
- 线程转储的分析方法
- 性能分析工具的使用
- 常见问题的诊断与解决
EOF

# 创建2.1.6.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.3-ThreadLocal应用场景.md" << 'EOF'
---
title: ThreadLocal应用场景
icon: scenario
order: 3
---

# ThreadLocal应用场景

## Web应用中的请求上下文

- 请求参数的线程安全存储
- 用户身份信息的传递
- 请求级别缓存的实现
- 请求追踪与日志记录
- 多租户环境的隔离

## 数据库连接管理

- 数据库连接的线程绑定
- 事务上下文的传递
- 连接池与ThreadLocal的结合
- 分布式事务中的应用
- 读写分离的实现

## 安全上下文的传递

- 用户认证信息的存储
- 权限控制的上下文传递
- 安全审计信息的记录
- 多级安全模型的实现
- 跨服务调用的安全传递

## 性能优化中的应用

- 重量级对象的线程缓存
- 避免频繁创建对象的开销
- 线程级别的结果缓存
- 批处理操作的上下文存储
- 资源复用的优化模式

## 分布式系统中的应用

- 分布式追踪的上下文传递
- 微服务调用链的信息传递
- 分布式事务的参与者标识
- 跨进程通信的上下文传递
- 云原生环境中的应用扩展
EOF

# 创建2.1.6.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.4-线程上下文信息传递实现.md" << 'EOF'
---
title: 线程上下文信息传递实现
icon: context
order: 4
---

# 线程上下文信息传递实现

## 基本上下文传递模型

- 上下文信息的定义与分类
- ThreadLocal存储上下文的基本模式
- 上下文初始化与清理的生命周期
- 上下文信息的访问控制
- 多维度上下文的组织方式

## 父子线程的上下文传递

- InheritableThreadLocal的使用方法
- 父子线程上下文传递的实现
- 自定义childValue的场景
- 上下文信息的选择性继承
- 多级线程继承的处理

## 线程池环境的上下文传递

- 线程池中的上下文传递问题
- 装饰器模式包装任务提交
- 自定义ThreadFactory的实现
- TransmittableThreadLocal的原理与使用
- 线程池上下文传递的最佳实践

## 异步编程中的上下文传递

- CompletableFuture中的上下文传递
- 响应式编程中的上下文处理
- 回调函数中的上下文获取
- 事件驱动模型的上下文传递
- 异步框架的上下文支持扩展

## 分布式系统的上下文传递

- 跨服务调用的上下文传递
- RPC框架中的上下文支持
- 消息队列中的上下文传递
- 分布式追踪的上下文实现
- 云原生环境的上下文传递方案
EOF

# 创建2.1.6.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.5-事务管理中的应用.md" << 'EOF'
---
title: 事务管理中的应用
icon: transaction
order: 5
---

# 事务管理中的应用

## 事务上下文的基本概念

- 事务上下文的组成要素
- 事务边界的定义与控制
- 事务属性的传递需求
- 事务资源的线程绑定
- 事务上下文的生命周期

## Spring事务管理中的ThreadLocal应用

- TransactionSynchronizationManager的实现
- 事务资源的线程绑定机制
- 事务同步器的注册与回调
- 事务传播行为的实现原理
- 事务挂起与恢复的内部机制

## 数据库连接的线程绑定

- 数据库连接的ThreadLocal存储
- 连接获取与释放的自动化
- 同一事务复用连接的实现
- 多数据源环境的连接管理
- 连接泄漏的防范措施

## 分布式事务中的应用

- XA事务中的参与者标识
- TCC事务中的上下文传递
- SAGA模式中的事务状态跟踪
- 最终一致性事务的上下文存储
- 分布式事务框架的ThreadLocal应用

## 事务上下文传递的高级应用

- 异步方法中的事务上下文传递
- 事务边界的精确控制
- 事务嵌套的上下文管理
- 事务监控与统计的实现
- 自定义事务管理器的ThreadLocal应用
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.6目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/README.md" << 'EOF'
---
title: ThreadLocal详解
icon: threadlocal
order: 6
---

# ThreadLocal详解

本节深入讲解Java中的ThreadLocal机制，包括其设计原理、内部实现、使用场景以及注意事项，帮助读者理解这一线程局部变量工具的工作机制，正确应用于并发程序设计中，解决线程安全问题。
EOF

# 创建2.1.6.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.6-内存泄漏预防措施.md" << 'EOF'
---
title: 内存泄漏预防措施
icon: prevention
order: 6
---

# 内存泄漏预防措施

## 内存泄漏的风险评估

- ThreadLocal内存泄漏的危害程度
- 不同应用场景的风险等级
- 线程池环境的特殊风险
- 大对象存储的风险因素
- 长生命周期线程的风险评估

## 主动清理的最佳实践

- 使用完毕后立即remove
- try-finally确保清理的模式
- 使用工具类封装自动清理
- ThreadLocal变量的作用域控制
- 定期清理的实现策略

## 线程池环境的特殊处理

- 线程池中ThreadLocal使用的风险
- 任务执行前后的清理机制
- 自定义线程工厂的清理策略
- 线程池关闭前的资源清理
- 监控线程池中的ThreadLocal使用

## 框架级别的防护措施

- Web框架中的过滤器清理
- 拦截器中的ThreadLocal管理
- AOP切面实现自动清理
- 统一的上下文管理框架
- 框架生命周期与ThreadLocal绑定

## 监控与诊断工具

- 内存泄漏检测工具的使用
- JVM参数配置与监控
- 堆转储分析的方法
- 自定义监控指标的实现
- 预警系统的建立与响应
EOF

# 创建2.1.6.7文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.6-ThreadLocal详解/2.1.6.7-ThreadLocal最佳实践.md" << 'EOF'
---
title: ThreadLocal最佳实践
icon: bestpractice
order: 7
---

# ThreadLocal最佳实践

## 设计原则与使用规范

- ThreadLocal变量的命名规范
- 静态与非静态ThreadLocal的选择
- 初始值设置的最佳实践
- 访问控制与封装原则
- 文档注释的重要性

## 代码模式与范例

- 标准的ThreadLocal使用模板
- 上下文传递的标准实现
- 资源管理的最佳模式
- 异常处理的规范做法
- 单元测试的编写方法

## 性能优化策略

- 减少ThreadLocal变量的数量
- 合并相关上下文信息
- 避免存储大对象
- 合理设置初始容量
- 批量操作的优化技巧

## 与其他技术的集成

- Spring框架中的最佳实践
- ORM框架中的应用模式
- 日志框架的上下文传递
- 微服务框架的集成方式
- 响应式编程中的使用策略

## 常见陷阱与避免方法

- 内存泄漏的预防措施
- 线程池环境的正确使用
- 继承关系的处理策略
- 跨服务调用的注意事项
- 调试与问题排查的技巧
EOF

# 创建2.1.7目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/README.md" << 'EOF'
---
title: 等待/通知机制
icon: notification
order: 7
---

# 等待/通知机制

本节详细介绍Java中的等待/通知机制，包括Object类中的wait/notify/notifyAll方法的使用、线程间协作的基本模式、生产者-消费者模式的实现以及常见问题的解决方案，帮助读者掌握线程间通信的核心技术，实现复杂的并发协作。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.7目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/README.md" << 'EOF'
---
title: 等待/通知机制
icon: notification
order: 7
---

# 等待/通知机制

本节详细介绍Java中的等待/通知机制，包括Object类中的wait/notify/notifyAll方法的使用、线程间协作的基本模式、生产者-消费者模式的实现以及常见问题的解决方案，帮助读者掌握线程间通信的核心技术，实现复杂的并发协作。
EOF

# 创建2.1.7.1文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.1-等待通知机制原理篇.md" << 'EOF'
---
title: 等待/通知机制原理篇
icon: theory
order: 1
---

# 等待/通知机制原理篇

## 等待/通知机制的基本概念

- 等待/通知模式的定义与作用
- 线程间协作的基本需求
- 等待/通知与轮询的对比
- 等待/通知的应用场景
- Java中的等待/通知实现方式

## Object类中的等待/通知方法

- wait()方法的作用与特性
- notify()方法的作用与特性
- notifyAll()方法的作用与特性
- 带超时参数的wait方法
- 等待/通知方法的使用限制

## 等待/通知的工作原理

- 线程状态转换的过程
- 锁的释放与重新获取
- 等待集合(wait set)的概念
- 通知机制的内部实现
- JVM层面的实现细节

## 等待/通知的内存语义

- 等待/通知与Java内存模型
- wait操作的内存语义
- notify操作的内存语义
- 内存可见性的保证机制
- 与synchronized的配合使用

## 等待/通知的性能特性

- 等待/通知的开销分析
- 线程阻塞与唤醒的成本
- 与自旋等待的性能对比
- 大规模并发下的性能表现
- 性能优化的基本策略
EOF

# 创建2.1.7.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.2-线程通信基本原理.md" << 'EOF'
---
title: 线程通信基本原理
icon: communication
order: 2
---

# 线程通信基本原理

## 线程通信的基本概念

- 线程通信的定义与目的
- 线程间共享数据的方式
- 线程协作的基本模式
- 通信与同步的关系
- 线程通信的应用场景

## 共享内存模型的线程通信

- 共享变量的通信机制
- 内存可见性的保证方法
- volatile关键字的作用
- 原子变量的通信特性
- 共享内存的局限性

## 消息传递模型的线程通信

- 消息传递的基本概念
- 阻塞队列的通信机制
- 管道流的通信方式
- Future/Promise模式
- 消息传递的优势与局限

## 信号量机制的线程通信

- 信号量的基本概念
- 二元信号量的应用
- 计数信号量的使用
- 信号量实现的互斥与同步
- Java中的Semaphore类

## 条件变量的线程通信

- 条件变量的基本概念
- 等待/通知与条件变量
- Java中的Condition接口
- 条件变量的使用模式
- 与其他通信机制的对比
EOF

# 创建2.1.7.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.3-wait-notify实现机制.md" << 'EOF'
---
title: wait/notify实现机制
icon: implementation
order: 3
---

# wait/notify实现机制

## wait方法的实现原理

- wait方法的调用前提
- 锁的释放过程
- 线程状态的转换
- 线程加入等待集合的过程
- 超时参数的处理机制

## notify方法的实现原理

- notify方法的调用前提
- 等待线程的选择策略
- 线程唤醒的内部过程
- 锁竞争的重新开始
- 与notifyAll的区别

## notifyAll方法的实现原理

- notifyAll的工作机制
- 唤醒所有等待线程的过程
- 线程重新竞争锁的顺序
- 性能开销的分析
- 使用场景的选择

## 等待/通知的底层实现

- JVM中的监视器对象
- 操作系统级别的支持
- 内核级线程调度的配合
- 用户态与内核态的切换
- 不同JVM实现的差异

## 等待/通知的异常处理

- InterruptedException的产生
- 中断状态的处理
- 虚假唤醒的处理机制
- 异常安全的编程模式
- 超时处理的实现细节
EOF

# 创建2.1.7.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.4-等待队列与通知模型.md" << 'EOF'
---
title: 等待队列与通知模型
icon: queue
order: 4
---

# 等待队列与通知模型

## 等待队列的基本概念

- 等待队列(Wait Set)的定义
- 等待队列与Java对象的关系
- 等待队列的内部结构
- 线程在等待队列中的状态
- 等待队列的管理机制

## 等待队列的工作流程

- 线程进入等待队列的过程
- 等待队列中线程的状态变化
- 线程从等待队列移出的条件
- 等待队列与锁的交互关系
- 多个等待队列的协作模式

## 通知模型的设计策略

- 单一通知与广播通知的选择
- 通知丢失问题的处理
- 过早通知的处理策略
- 通知顺序的控制方法
- 条件通知的实现技术

## 等待/通知的高级模式

- 生产者-消费者模式的实现
- 读写锁模式的等待/通知
- 多条件等待的实现方式
- 屏障模式的等待/通知
- 资源池的等待/通知控制

## 等待/通知的优化策略

- 减少不必要的等待与通知
- 精确通知的实现方法
- 分组通知的优化技术
- 超时等待的合理设置
- 避免过度唤醒的策略
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.7目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/README.md" << 'EOF'
---
title: 等待/通知机制
icon: notification
order: 7
---

# 等待/通知机制

本节详细介绍Java中的等待/通知机制，包括Object类中的wait/notify/notifyAll方法的使用、线程间协作的基本模式、生产者-消费者模式的实现以及常见问题的解决方案，帮助读者掌握线程间通信的核心技术，实现复杂的并发协作。
EOF

# 创建2.1.7.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.5-虚假唤醒问题分析.md" << 'EOF'
---
title: 虚假唤醒问题分析
icon: warning
order: 5
---

# 虚假唤醒问题分析

## 虚假唤醒的基本概念

- 虚假唤醒的定义与现象
- 产生虚假唤醒的原因
- 操作系统层面的解释
- JVM实现中的特性
- 虚假唤醒的危害性

## 虚假唤醒的典型场景

- 条件等待中的虚假唤醒
- 多线程环境下的表现
- 生产者-消费者模式中的问题
- 资源池实现中的风险
- 实际项目中的案例分析

## 虚假唤醒的检测方法

- 虚假唤醒的症状识别
- 代码审查的关注点
- 测试中的复现技术
- 日志分析的方法
- 调试工具的使用

## 防范虚假唤醒的标准模式

- 循环检测条件的必要性
- while循环替代if语句
- 条件变量的正确使用
- 双重检查的实现方式
- 防范模式的代码模板

## 高级防范策略与最佳实践

- 信号量替代wait/notify的考量
- 显式锁与条件变量的应用
- 并发工具类的选择
- 原子变量的配合使用
- 设计层面的防范措施
EOF

# 创建2.1.7.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.6-等待通知与信号量区别.md" << 'EOF'
---
title: 等待/通知与信号量区别
icon: compare
order: 6
---

# 等待/通知与信号量区别

## 基本概念与设计理念

- 等待/通知机制的核心思想
- 信号量的基本概念与原理
- 两种机制的设计目标
- 历史发展与演进
- 应用领域的差异

## 实现机制的对比

- 等待/通知的内部实现
- 信号量的计数器机制
- 线程状态转换的差异
- 锁与资源管理的区别
- 内存模型的影响

## 功能特性的对比

- 线程协作能力的比较
- 资源控制能力的差异
- 通知策略的不同
- 公平性保证的差异
- 可组合性的比较

## 性能特性的对比

- 线程阻塞与唤醒的开销
- 高并发场景下的表现
- 资源消耗的比较
- 可伸缩性的差异
- 适用场景的性能考量

## 选择策略与最佳实践

- 等待/通知的适用场景
- 信号量的适用场景
- 混合使用的模式
- 迁移与替换的考量
- 实际项目中的选择依据
EOF

# 创建2.1.7.2文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.2-等待通知机制实战篇.md" << 'EOF'
---
title: 等待/通知机制实战篇
icon: practice
order: 2
---

# 等待/通知机制实战篇

## 等待/通知的基本用法

- wait方法的正确调用方式
- notify方法的使用技巧
- notifyAll的应用场景
- 带超时参数的wait使用
- 异常处理的最佳实践

## 等待/通知的标准模式

- 等待条件的循环检测模式
- 通知时机的选择策略
- 锁获取与释放的规范
- 中断处理的标准方式
- 超时处理的实现模板

## 常见应用模式的实现

- 简单的任务协调实现
- 资源池的等待/通知控制
- 工作线程的协作模式
- 多线程下的事件通知
- 异步结果的等待实现

## 等待/通知的高级应用

- 多条件等待的实现技术
- 分组通知的实现方法
- 优先级等待的实现
- 超时与取消的结合使用
- 与其他并发工具的组合应用

## 调试与性能优化

- 等待/通知代码的调试技巧
- 死锁与活锁的预防
- 性能瓶颈的识别方法
- 减少不必要等待的策略
- 实际项目中的优化案例
EOF

# 创建2.1.7.3文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.3-生产者-消费者模式实现.md" << 'EOF'
---
title: 生产者-消费者模式实现
icon: pattern
order: 3
---

# 生产者-消费者模式实现

## 生产者-消费者模式基础

- 模式的基本概念与应用场景
- 核心组件与角色定义
- 模式的优势与适用范围
- 与其他并发模式的关系
- Java中的实现方式概述

## 基于等待/通知的实现

- 共享缓冲区的设计
- 生产者线程的实现
- 消费者线程的实现
- 线程协作的控制逻辑
- 边界条件的处理

## 基于阻塞队列的实现

- BlockingQueue接口的特性
- 常用阻塞队列的选择
- 生产者与消费者的简化实现
- 超时与中断的处理
- 与等待/通知实现的对比

## 高级特性与优化

- 多生产者多消费者的扩展
- 优先级控制的实现
- 批量处理的优化
- 背压机制的实现
- 性能监控与调优

## 实际应用案例分析

- Web服务器的请求处理
- 日志系统的异步处理
- 任务调度系统的实现
- 消息中间件的核心机制
- 大数据处理的流水线模式
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/README.md" << 'EOF'
---
title: 并发基础
icon: basic
order: 1
---

# 并发基础

本节介绍Java并发编程的基础知识，包括线程的创建与管理、线程安全性、共享对象、基本同步机制等内容，帮助读者建立并发编程的基础概念和理论框架，为后续深入学习高级并发技术打下坚实基础。
EOF

# 创建2.1.7目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制"
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/README.md" << 'EOF'
---
title: 等待/通知机制
icon: notification
order: 7
---

# 等待/通知机制

本节详细介绍Java中的等待/通知机制，包括Object类中的wait/notify/notifyAll方法的使用、线程间协作的基本模式、生产者-消费者模式的实现以及常见问题的解决方案，帮助读者掌握线程间通信的核心技术，实现复杂的并发协作。
EOF

# 创建2.1.7.4文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.4-等待超时处理策略.md" << 'EOF'
---
title: 等待超时处理策略
icon: timeout
order: 4
---

# 等待超时处理策略

## 等待超时的基本概念

- 等待超时的定义与目的
- 超时参数的含义与设置
- 超时的内部处理机制
- 超时与中断的区别
- 超时设计的重要性

## 带超时的wait方法

- wait(long timeout)的使用方式
- wait(long timeout, int nanos)的特性
- 超时精度与系统时钟的关系
- 超时返回值的处理
- 超时后的线程状态

## 超时处理的标准模式

- 超时检测的代码模式
- 超时结果的处理策略
- 超时与条件变量的结合
- 循环等待中的超时控制
- 超时与异常处理的配合

## 超时设计的最佳实践

- 合理的超时时间设置
- 超时时间的动态调整
- 超时日志与监控
- 超时重试的策略
- 超时降级的实现

## 高级超时处理技术

- 分层超时控制的实现
- 超时传播的处理机制
- 分布式系统中的超时协调
- 超时与熔断的结合
- 自适应超时策略的设计
EOF

# 创建2.1.7.5文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.5-多线程协作最佳实践.md" << 'EOF'
---
title: 多线程协作最佳实践
icon: cooperation
order: 5
---

# 多线程协作最佳实践

## 线程协作的基本模式

- 一对一协作模式
- 多对一协作模式
- 一对多协作模式
- 多对多协作模式
- 协作模式的选择依据

## 等待/通知的规范使用

- 等待条件的正确检查
- 通知时机的合理选择
- 锁的最小持有原则
- 异常处理的完整性
- 代码可读性的提升

## 复杂场景的协作设计

- 多条件协作的实现
- 分组通知的设计
- 顺序控制的协作模式
- 资源共享的协作策略
- 任务分配的协作机制

## 可靠性与健壮性保证

- 死锁预防的设计原则
- 活锁避免的策略
- 饥饿问题的解决方案
- 超时与降级的配合
- 异常情况的恢复机制

## 性能与可维护性平衡

- 锁粒度的合理控制
- 等待/通知的性能优化
- 代码结构的清晰组织
- 测试与验证的方法
- 文档与注释的重要性
EOF

# 创建2.1.7.6文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.6-等待通知常见错误.md" << 'EOF'
---
title: 等待/通知常见错误
icon: error
order: 6
---

# 等待/通知常见错误

## 锁使用错误

- 未在同步块中调用wait/notify
- 在错误的对象上调用wait/notify
- 锁的不一致性问题
- 锁的嵌套使用错误
- 锁泄露的风险

## 条件检查错误

- 使用if而非while检查条件
- 条件检查的逻辑错误
- 忽略虚假唤醒的风险
- 条件变量的混用问题
- 条件状态的不一致性

## 通知策略错误

- 通知丢失的问题
- 过度通知的性能问题
- 通知顺序的错误假设
- 选择notify而非notifyAll的错误
- 忘记通知的逻辑缺陷

## 异常处理错误

- 忽略InterruptedException
- 异常处理中的锁释放问题
- 异常传播的不当处理
- 资源清理的遗漏
- 异常恢复的缺失

## 设计层面的错误

- 过度复杂的协作逻辑
- 等待/通知与其他机制的混用
- 可伸缩性设计的缺陷
- 超时设置的不合理
- 死锁风险的忽视
EOF

# 创建2.1.7.7文件
cat > "$BASE_DIR/第2章-并发编程/2.1-并发基础/2.1.7-等待通知机制/2.1.7.7-性能优化与替代方案.md" << 'EOF'
---
title: 性能优化与替代方案
icon: performance
order: 7
---

# 性能优化与替代方案

## 等待/通知的性能特性

- 线程阻塞与唤醒的开销
- 锁竞争的性能影响
- 通知策略对性能的影响
- 等待时间对资源利用的影响
- 性能瓶颈的识别方法

## 等待/通知的优化策略

- 减少不必要的等待与通知
- 优化锁的持有时间
- 精确通知的实现
- 批量处理的性能提升
- 条件分组的优化技术

## 基于Java并发包的替代方案

- Lock与Condition的使用
- 阻塞队列的应用
- CountDownLatch的替代方案
- CyclicBarrier的协作模式
- Phaser的灵活协作

## 无锁技术与乐观并发

- 原子变量的应用
- CAS操作的基本原理
- 无锁数据结构的使用
- 乐观锁的实现方式
- 无等待算法的应用场景

## 响应式编程与异步模型

- CompletableFuture的应用
- 响应式流的协作模式
- 事件驱动的设计思想
- 异步回调的协作机制
- 响应式框架的选择与应用
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/README.md" << 'EOF'
---
title: 原子类详解
icon: atomic
order: 1
---

# 原子类详解

本节深入讲解Java并发包中的原子类，包括基本类型原子类、数组原子类、引用原子类以及字段更新器等，分析其内部实现原理、性能特性和适用场景，帮助读者掌握无锁并发编程的核心技术，实现高性能的线程安全操作。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/README.md" << 'EOF'
---
title: 原子类详解
icon: atomic
order: 1
---

# 原子类详解

本节深入讲解Java并发包中的原子类，包括基本类型原子类、数组原子类、引用原子类以及字段更新器等，分析其内部实现原理、性能特性和适用场景，帮助读者掌握无锁并发编程的核心技术，实现高性能的线程安全操作。
EOF

# 创建2.2.1.1文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.1-原子类详解原理篇.md" << 'EOF'
---
title: 原子类详解原理篇
icon: theory
order: 1
---

# 原子类详解原理篇

## 原子类的基本概念

- 原子类的定义与作用
- 原子操作的特性与意义
- 原子类与锁机制的对比
- 原子类的分类与体系结构
- 原子类的应用场景概述

## 原子类的内部实现机制

- 无锁算法的基本原理
- CAS操作的核心机制
- Unsafe类的底层支持
- 内存屏障与可见性保证
- 原子类的性能特性分析

## 基本类型原子类详解

- AtomicInteger的实现原理
- AtomicLong的实现与应用
- AtomicBoolean的特性
- 基本类型原子类的核心方法
- 性能优化与使用技巧

## 数组类型原子类详解

- AtomicIntegerArray的实现
- AtomicLongArray的特性
- AtomicReferenceArray的应用
- 数组元素的原子操作机制
- 与普通数组的性能对比

## 引用类型原子类详解

- AtomicReference的实现原理
- AtomicStampedReference的设计
- AtomicMarkableReference的特性
- ABA问题的解决方案
- 复合操作的原子性保证
EOF

# 创建2.2.1.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.2-原子操作基本原理.md" << 'EOF'
---
title: 原子操作基本原理
icon: principle
order: 2
---

# 原子操作基本原理

## 原子操作的定义与特性

- 原子操作的基本概念
- 不可分割性的含义
- 原子操作的隔离性
- 原子操作的一致性保证
- 原子操作在并发编程中的意义

## 处理器对原子操作的支持

- 处理器指令级的原子操作
- 总线锁与缓存锁机制
- MESI缓存一致性协议
- 内存屏障指令的作用
- 不同处理器架构的差异

## Java中的原子操作类型

- 基本类型的原子操作
- 引用类型的原子操作
- 数组元素的原子操作
- 字段更新的原子操作
- 复合操作的原子性保证

## 原子操作的实现机制

- 硬件层面的支持
- 操作系统层面的支持
- JVM层面的实现
- Unsafe类的底层机制
- JUC包中的抽象与封装

## 原子操作的性能特性

- 原子操作的开销分析
- 与锁机制的性能对比
- 高并发下的性能表现
- 竞争条件对性能的影响
- 优化原子操作性能的策略
EOF

# 创建2.2.1.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.3-CAS算法与实现.md" << 'EOF'
---
title: CAS算法与实现
icon: algorithm
order: 3
---

# CAS算法与实现

## CAS的基本概念

- CAS操作的定义与作用
- 比较并交换的核心思想
- CAS操作的三个操作数
- 原子性保证的机制
- CAS在并发编程中的地位

## CAS的底层实现

- 处理器指令级的支持
- x86架构中的CMPXCHG指令
- ARM架构中的实现方式
- 内存屏障与CAS的配合
- JVM对CAS的实现封装

## CAS在JUC中的应用

- 原子类中的CAS操作
- 锁实现中的CAS应用
- 并发容器中的CAS机制
- 同步工具中的CAS操作
- CAS的使用模式与范例

## CAS的局限性分析

- ABA问题的产生原因
- 循环时间长开销大的问题
- 只能保证一个共享变量的原子操作
- 可能导致的活锁问题
- CAS失败率与性能的关系

## CAS的优化与扩展

- 版本号机制解决ABA问题
- 减少自旋次数的策略
- 复合操作的CAS实现
- 多变量CAS的模拟实现
- 硬件趋势对CAS性能的影响
EOF

# 创建2.2.1.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.4-Unsafe类核心功能.md" << 'EOF'
---
title: Unsafe类核心功能
icon: unsafe
order: 4
---

# Unsafe类核心功能

## Unsafe类的基本概念

- Unsafe类的定义与作用
- 底层操作的能力范围
- 访问限制与使用风险
- 在JDK中的应用场景
- 与JNI的关系与区别

## 内存操作相关功能

- 直接内存分配与释放
- 内存屏障操作
- 对象字段偏移量获取
- 内存数据读写操作
- 数组操作的特殊支持

## 并发操作相关功能

- CAS操作的底层实现
- 线程调度与阻塞
- 锁操作相关方法
- 内存顺序保证
- 原子性操作的支持

## 对象操作相关功能

- 对象实例化(绕过构造函数)
- 类加载与初始化
- 对象字段访问
- 数组操作的特殊方法
- 对象内存布局的操作

## Unsafe类的使用技巧与风险

- 获取Unsafe实例的方法
- 安全使用Unsafe的原则
- 常见的使用陷阱
- 版本兼容性问题
- 替代方案与未来趋势
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/README.md" << 'EOF'
---
title: 原子类详解
icon: atomic
order: 1
---

# 原子类详解

本节深入讲解Java并发包中的原子类，包括基本类型原子类、数组原子类、引用原子类以及字段更新器等，分析其内部实现原理、性能特性和适用场景，帮助读者掌握无锁并发编程的核心技术，实现高性能的线程安全操作。
EOF

# 创建2.2.1.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.5-原子类内部结构.md" << 'EOF'
---
title: 原子类内部结构
icon: structure
order: 5
---

# 原子类内部结构

## 原子类的基础架构

- 原子类的继承体系
- 核心字段与状态表示
- 内部类与辅助结构
- 共享变量的存储方式
- 类设计的演进历史

## 基本类型原子类结构

- AtomicInteger的内部结构
- value字段的特殊处理
- Unsafe实例的获取与使用
- 内存偏移量的计算与缓存
- 内部方法的组织结构

## 引用类型原子类结构

- AtomicReference的内部结构
- 泛型参数的处理机制
- 引用存储的特殊考量
- 版本号的实现方式
- 标记位的内部表示

## 数组类型原子类结构

- AtomicIntegerArray的内部结构
- 数组元素的访问机制
- 索引安全检查的实现
- 数组元素偏移量的计算
- 批量操作的内部实现

## 字段更新器的内部结构

- AtomicIntegerFieldUpdater的实现
- 反射机制的应用
- 字段访问权限的处理
- 类型检查的实现方式
- 缓存机制的设计考量
EOF

# 创建2.2.1.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.6-原子类与锁性能对比.md" << 'EOF'
---
title: 原子类与锁性能对比
icon: performance
order: 6
---

# 原子类与锁性能对比

## 并发性能的评估指标

- 吞吐量与延迟的度量
- 可伸缩性的定义与评估
- 公平性与饥饿的考量
- 资源消耗的测量方法
- 性能测试的科学方法

## 锁机制的性能特性

- 互斥锁的性能开销
- 锁竞争的影响因素
- 锁膨胀与锁消除
- 偏向锁与轻量级锁的性能
- 锁的阻塞与唤醒成本

## 原子类的性能特性

- CAS操作的性能开销
- 自旋等待的影响
- 缓存一致性的开销
- 乐观并发的优势
- 高竞争下的性能表现

## 不同场景下的性能对比

- 低竞争环境的性能比较
- 中等竞争下的表现
- 高竞争场景的性能对比
- 读多写少场景的适用性
- 写多读少场景的性能

## 性能优化的最佳实践

- 选择合适并发工具的策略
- 减少锁竞争的方法
- 优化原子类使用的技巧
- 混合使用的性能考量
- 性能与代码复杂度的平衡
EOF

# 创建2.2.1.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.2-原子类详解实战篇.md" << 'EOF'
---
title: 原子类详解实战篇
icon: practice
order: 2
---

# 原子类详解实战篇

## 基本类型原子类的使用

- AtomicInteger的常用方法
- AtomicLong的实际应用
- AtomicBoolean的使用场景
- 原子更新操作的正确姿势
- 常见错误与陷阱

## 数组类型原子类的应用

- AtomicIntegerArray的使用方法
- AtomicLongArray的应用场景
- AtomicReferenceArray的实践
- 数组元素的原子更新技巧
- 与普通数组的互操作

## 引用类型原子类的实战

- AtomicReference的使用模式
- AtomicStampedReference解决ABA问题
- AtomicMarkableReference的应用
- 复合对象的原子更新
- 引用类型的特殊考量

## 字段更新器的实践应用

- AtomicIntegerFieldUpdater的使用
- AtomicLongFieldUpdater的应用
- AtomicReferenceFieldUpdater的实践
- 字段更新的限制条件
- 性能优化与注意事项

## 高级应用模式与最佳实践

- 原子操作组合的实现技巧
- 自旋重试的优化策略
- 原子类与其他并发工具的结合
- 高并发环境下的使用模式
- 测试与调试的方法
EOF

# 创建2.2.1.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.3-基本原子类使用场景.md" << 'EOF'
---
title: 基本原子类使用场景
icon: scenario
order: 3
---

# 基本原子类使用场景

## 计数器与统计场景

- 高并发计数器的实现
- 性能统计指标的原子更新
- 限流器的原子计数实现
- 多维度统计的原子操作
- 计数器性能优化策略

## 标志位与状态控制

- 原子布尔标志的应用
- 状态切换的原子操作
- 开关控制的线程安全实现
- 多状态控制的组合使用
- 状态检查与更新的原子性

## 序列号与ID生成

- 分布式ID生成器的实现
- 序列号的原子递增
- 时间戳与序列号的组合
- 多节点序列号的协调
- 高性能ID生成的优化

## 缓存与延迟加载

- 原子引用实现的延迟初始化
- 缓存更新的原子操作
- 缓存失效的原子控制
- 双重检查锁定的原子实现
- 缓存一致性的保证

## 并发数据结构的实现

- 无锁队列的原子操作
- 无锁栈的实现技术
- 并发哈希表的原子更新
- 无锁链表的设计思路
- 复杂数据结构的原子操作组合
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.1目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/README.md" << 'EOF'
---
title: 原子类详解
icon: atomic
order: 1
---

# 原子类详解

本节深入讲解Java并发包中的原子类，包括基本类型原子类、数组原子类、引用原子类以及字段更新器等，分析其内部实现原理、性能特性和适用场景，帮助读者掌握无锁并发编程的核心技术，实现高性能的线程安全操作。
EOF

# 创建2.2.1.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.4-数组原子类应用.md" << 'EOF'
---
title: 数组原子类应用
icon: array
order: 4
---

# 数组原子类应用

## 数组原子类的基本概念

- 数组原子类的种类与特点
- AtomicIntegerArray的核心功能
- AtomicLongArray的使用场景
- AtomicReferenceArray的应用领域
- 与普通数组的区别与联系

## 数组原子类的核心API

- 创建与初始化方法
- 原子读取与更新操作
- 条件更新的实现方式
- 复合操作的原子性保证
- 批量操作的实现技巧

## 数组原子类的应用场景

- 计数器数组的实现
- 状态标志数组的应用
- 缓存数组的原子更新
- 并发统计的实现方式
- 分段锁的替代方案

## 数组原子类的性能优化

- 减少数组元素竞争的策略
- 批量操作的优化方法
- 缓存行填充的应用
- 预取与局部性优化
- 与锁实现的性能对比

## 数组原子类的最佳实践

- 合理设置数组大小
- 索引计算的优化技巧
- 异常处理的规范方式
- 与其他并发工具的结合
- 常见陷阱与解决方案
EOF

# 创建2.2.1.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.5-引用原子类与ABA问题.md" << 'EOF'
---
title: 引用原子类与ABA问题
icon: reference
order: 5
---

# 引用原子类与ABA问题

## 引用原子类的基本概念

- 引用原子类的种类与特点
- AtomicReference的核心功能
- AtomicStampedReference的设计目的
- AtomicMarkableReference的应用场景
- 与基本类型原子类的区别

## ABA问题的本质与危害

- ABA问题的定义与产生原因
- 典型场景中的ABA问题
- ABA问题的潜在风险
- 并发数据结构中的ABA问题
- ABA问题的检测方法

## AtomicStampedReference解决ABA问题

- 版本号机制的基本原理
- AtomicStampedReference的内部实现
- 版本号的管理与更新
- 原子性更新的实现方式
- 使用示例与最佳实践

## AtomicMarkableReference的应用

- 标记位机制的设计思想
- AtomicMarkableReference的内部实现
- 标记位的管理与更新
- 与版本号机制的对比
- 适用场景与使用示例

## 引用原子类的高级应用

- 复合对象的原子更新
- 不可变对象的设计配合
- 引用原子类在缓存中的应用
- 并发数据结构的实现技巧
- 性能优化与注意事项
EOF

# 创建2.2.1.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.6-字段更新器应用.md" << 'EOF'
---
title: 字段更新器应用
icon: field
order: 6
---

# 字段更新器应用

## 字段更新器的基本概念

- 字段更新器的种类与特点
- AtomicIntegerFieldUpdater的设计目的
- AtomicLongFieldUpdater的核心功能
- AtomicReferenceFieldUpdater的应用场景
- 与直接原子类的区别与联系

## 字段更新器的工作原理

- 反射机制的应用
- 字段访问权限的处理
- 内存偏移量的计算方式
- 原子操作的实现机制
- 性能特性与开销分析

## 字段更新器的使用限制

- 字段可见性要求
- volatile修饰符的必要性
- 字段类型的限制条件
- 继承关系中的使用注意事项
- 泛型与类型擦除的影响

## 字段更新器的应用场景

- 减少对象内存占用的优化
- 大量对象的原子操作
- 第三方类的字段原子更新
- 与对象池结合的应用
- 性能敏感场景的选择

## 字段更新器的最佳实践

- 创建与缓存更新器实例
- 异常处理的规范方式
- 字段命名与访问控制
- 与其他并发工具的结合使用
- 调试与问题排查技巧
EOF

# 创建2.2.1.7文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.1-原子类详解/2.2.1.7-原子累加器性能优化.md" << 'EOF'
---
title: 原子累加器性能优化
icon: optimization
order: 7
---

# 原子累加器性能优化

## 原子累加器的基本概念

- LongAdder的设计目的与特点
- LongAccumulator的扩展功能
- DoubleAdder的浮点数累加
- DoubleAccumulator的应用场景
- 与AtomicLong的区别与联系

## 原子累加器的内部实现

- 分段累加的核心思想
- Cell数组的动态扩展
- 哈希算法与线程分配
- 伪共享问题的解决方案
- 最终结果的合并计算

## 高并发下的性能优势

- 热点分散的效果分析
- 竞争减少的性能提升
- 扩展性与CPU核心数的关系
- 不同并发级别的性能对比
- 适用场景的性能评估

## 原子累加器的使用场景

- 高并发计数器的实现
- 性能统计指标的收集
- 限流器的高效实现
- 多维度统计的应用
- 分布式系统中的本地计数

## 原子累加器的最佳实践

- 合理选择累加器类型
- 初始化与参数设置
- 结果读取的时机选择
- 重置操作的正确使用
- 与其他并发工具的结合应用
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/README.md" << 'EOF'
---
title: 锁机制与Lock接口
icon: lock
order: 2
---

# 锁机制与Lock接口

本节深入讲解Java并发包中的锁机制与Lock接口，包括ReentrantLock、ReadWriteLock等实现类的原理与使用，分析其内部实现机制、性能特性和适用场景，帮助读者掌握显式锁的高级特性，实现更灵活、高效的并发控制。
EOF

# 创建2.2.2.1文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.1-锁机制与Lock接口原理篇.md" << 'EOF'
---
title: 锁机制与Lock接口原理篇
icon: theory
order: 1
---

# 锁机制与Lock接口原理篇

## 锁的基本概念与分类

- 锁的定义与作用
- 互斥锁与共享锁的区别
- 乐观锁与悲观锁的对比
- 公平锁与非公平锁的特性
- 可重入锁的概念与意义

## Lock接口的设计思想

- Lock接口的核心功能
- 与synchronized的对比优势
- 显式锁的设计理念
- 锁获取与释放的分离控制
- 可中断、可超时的锁获取

## AQS框架的核心原理

- AbstractQueuedSynchronizer的设计
- 同步状态的管理机制
- 等待队列的实现原理
- 独占模式与共享模式
- 条件变量的实现机制

## ReentrantLock的实现原理

- 内部结构与状态表示
- 锁获取的实现机制
- 锁释放的处理流程
- 公平性的实现方式
- 可重入性的实现原理

## 锁的性能与优化

- 锁竞争的性能影响因素
- 锁粒度的设计考量
- 锁分离与锁分段技术
- 锁消除与锁粗化
- JVM对锁的优化支持
EOF

# 创建2.2.2.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.2-Lock接口设计原理.md" << 'EOF'
---
title: Lock接口设计原理
icon: design
order: 2
---

# Lock接口设计原理

## Lock接口的核心方法

- lock()方法的语义与实现
- unlock()方法的语义与实现
- tryLock()的非阻塞尝试
- lockInterruptibly()的中断响应
- newCondition()的条件变量创建

## 锁获取的多种模式

- 阻塞获取锁的实现机制
- 非阻塞尝试获取的设计
- 可中断获取的实现原理
- 超时获取的处理流程
- 不同获取模式的选择策略

## 锁释放的设计原理

- 锁状态的管理机制
- 等待线程的唤醒策略
- 锁重入计数的处理
- 异常情况下的锁释放
- 锁释放的性能考量

## 条件变量的设计与实现

- Condition接口的设计思想
- await()与signal()的实现原理
- 条件等待队列的管理
- 与Object的wait/notify对比
- 多条件变量的应用场景

## 锁接口的扩展与演进

- ReadWriteLock的设计理念
- StampedLock的创新特性
- 锁接口的未来发展趋势
- 函数式编程对锁的影响
- 分布式环境下的锁扩展
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/README.md" << 'EOF'
---
title: 锁机制与Lock接口
icon: lock
order: 2
---

# 锁机制与Lock接口

本节深入讲解Java并发包中的锁机制与Lock接口，包括ReentrantLock、ReadWriteLock等实现类的原理与使用，分析其内部实现机制、性能特性和适用场景，帮助读者掌握显式锁的高级特性，实现更灵活、高效的并发控制。
EOF

# 创建2.2.2.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.3-可重入锁实现机制.md" << 'EOF'
---
title: 可重入锁实现机制
icon: reentrant
order: 3
---

# 可重入锁实现机制

## 可重入锁的基本概念

- 可重入锁的定义与特性
- 重入性的意义与必要性
- 可重入锁与不可重入锁的区别
- Java中的可重入锁实现
- 可重入锁的应用场景

## ReentrantLock的内部结构

- ReentrantLock的类层次结构
- 同步器的选择与实现
- 锁状态的表示方式
- 线程持有者的记录机制
- 重入计数的管理方式

## 锁获取的重入实现

- 首次获取锁的处理流程
- 重入获取的判断逻辑
- 重入计数的递增机制
- 锁获取失败的处理策略
- 重入获取的性能考量

## 锁释放的重入处理

- 锁释放的基本流程
- 重入计数的递减机制
- 最终释放的判断条件
- 后续线程的唤醒策略
- 异常情况下的锁释放

## 可重入锁的高级特性

- 可重入性与锁粒度的关系
- 嵌套锁的正确使用模式
- 可重入锁的性能优化
- 与synchronized的重入对比
- 分布式环境下的可重入实现
EOF

# 创建2.2.2.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.4-公平锁与非公平锁原理.md" << 'EOF'
---
title: 公平锁与非公平锁原理
icon: fairness
order: 4
---

# 公平锁与非公平锁原理

## 公平性的基本概念

- 锁公平性的定义与意义
- 公平锁与非公平锁的区别
- 先来先服务的调度原则
- 公平性对性能的影响
- 公平性的应用场景选择

## 公平锁的实现原理

- 公平锁的内部结构
- 等待队列的管理机制
- 锁获取的公平性判断
- 新到线程的入队处理
- 唤醒策略的公平性保证

## 非公平锁的实现原理

- 非公平锁的内部结构
- 锁获取的抢占机制
- 新到线程的优先级
- 等待线程的处理策略
- 饥饿问题的可能性

## 公平性与性能的权衡

- 公平锁的性能开销分析
- 非公平锁的性能优势
- 上下文切换的影响
- 吞吐量与响应时间的平衡
- 不同场景下的选择策略

## 公平锁的最佳实践

- 合理选择公平性策略
- 避免长时间持有锁
- 混合使用的设计模式
- 监控与调优的方法
- 常见陷阱与解决方案
EOF

# 创建2.2.2.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.5-锁中断与超时机制.md" << 'EOF'
---
title: 锁中断与超时机制
icon: interrupt
order: 5
---

# 锁中断与超时机制

## 可中断锁的基本概念

- 可中断锁的定义与特性
- 与不可中断锁的对比
- 中断响应的意义与价值
- Java中的可中断锁实现
- 可中断锁的应用场景

## 中断机制的实现原理

- 线程中断的基本原理
- lockInterruptibly()的内部实现
- 中断状态的检查机制
- 中断响应的处理流程
- 中断异常的传播机制

## 锁超时机制的设计

- 超时获取锁的基本概念
- tryLock(time, unit)的实现原理
- 超时计算的精确性考量
- 超时返回值的处理策略
- 超时与中断的结合使用

## 中断与超时的应用模式

- 避免死锁的超时策略
- 可取消任务的中断设计
- 资源获取的优雅降级
- 响应用户取消的实现
- 复杂场景的组合应用

## 中断与超时的最佳实践

- 合理设置超时时间
- 正确处理中断异常
- 中断状态的恢复策略
- 超时后的资源清理
- 测试与调试的方法
EOF

# 创建2.2.2.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.6-Condition原理与实现.md" << 'EOF'
---
title: Condition原理与实现
icon: condition
order: 6
---

# Condition原理与实现

## Condition接口的基本概念

- Condition的定义与作用
- 与Object的wait/notify对比
- 条件变量的设计思想
- 与Lock接口的配合使用
- Condition的应用场景

## Condition的内部实现

- ConditionObject的结构设计
- 条件等待队列的管理
- 与同步队列的关系
- 节点状态的表示与转换
- 信号机制的实现原理

## 等待与通知的核心机制

- await()方法的实现流程
- signal()方法的内部机制
- signalAll()的广播通知
- 线程状态的转换过程
- 虚假唤醒的处理策略

## Condition的高级特性

- 超时等待的实现原理
- 可中断等待的处理机制
- 唤醒顺序的控制策略
- 多条件变量的协作模式
- 条件谓词的正确使用

## Condition的最佳实践

- 条件变量的选择与设计
- 等待条件的循环检查
- 通知时机的合理选择
- 锁与条件的配合使用
- 常见错误与调试技巧
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/README.md" << 'EOF'
---
title: 锁机制与Lock接口
icon: lock
order: 2
---

# 锁机制与Lock接口

本节深入讲解Java并发包中的锁机制与Lock接口，包括ReentrantLock、ReadWriteLock等实现类的原理与使用，分析其内部实现机制、性能特性和适用场景，帮助读者掌握显式锁的高级特性，实现更灵活、高效的并发控制。
EOF

# 创建2.2.2.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.2-锁机制与Lock接口实战篇.md" << 'EOF'
---
title: 锁机制与Lock接口实战篇
icon: practice
order: 2
---

# 锁机制与Lock接口实战篇

## Lock接口的基本使用

- Lock接口的核心方法使用
- 锁的获取与释放模式
- try-finally确保锁释放
- 非阻塞尝试获取锁
- 可中断锁的使用技巧

## ReentrantLock的实战应用

- ReentrantLock的创建与配置
- 公平性选择的实际考量
- 可重入特性的利用
- 与synchronized的替换技巧
- 性能敏感场景的应用

## ReadWriteLock的使用模式

- 读写锁的基本概念
- ReentrantReadWriteLock的使用
- 读锁与写锁的协作模式
- 锁降级的实现方法
- 缓存实现中的应用

## Condition的实战应用

- Condition的创建与使用
- 等待与通知的标准模式
- 多条件变量的协作
- 生产者-消费者模式实现
- 超时等待的应用场景

## 锁的高级应用技巧

- 锁分段技术的实现
- 细粒度锁的设计模式
- 锁顺序的规范与死锁预防
- 性能监控与调优方法
- 锁争用问题的诊断与解决
EOF

# 创建2.2.2.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.3-Lock接口使用模式.md" << 'EOF'
---
title: Lock接口使用模式
icon: pattern
order: 3
---

# Lock接口使用模式

## 标准锁获取与释放模式

- 基本的锁获取-使用-释放模式
- try-finally确保锁释放的标准写法
- 锁获取前的准备工作
- 锁释放后的清理操作
- 嵌套锁的正确使用方式

## 非阻塞获取锁模式

- tryLock()的使用场景
- 获取失败的处理策略
- 重试机制的实现方法
- 超时尝试的应用模式
- 避免活锁的设计考量

## 可中断获取锁模式

- lockInterruptibly()的使用场景
- 中断响应的处理逻辑
- 中断状态的正确处理
- 可取消操作的实现
- 与超时获取的结合使用

## 读写锁使用模式

- 读多写少场景的优化
- 读锁与写锁的获取顺序
- 锁升级与锁降级的处理
- 缓存失效的同步策略
- 读写锁的性能优化

## 条件变量使用模式

- 条件等待的标准模式
- 条件通知的最佳实践
- 虚假唤醒的防范措施
- 多条件协作的实现
- 超时等待的处理策略
EOF

# 创建2.2.2.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.4-可重入锁最佳实践.md" << 'EOF'
---
title: 可重入锁最佳实践
icon: bestpractice
order: 4
---

# 可重入锁最佳实践

## 可重入锁的选择策略

- ReentrantLock的使用场景
- 公平锁与非公平锁的选择
- 锁粒度的设计考量
- 性能与复杂度的平衡
- 与synchronized的对比选择

## 锁获取的最佳实践

- 最小化锁持有时间
- 避免锁中执行耗时操作
- 合理设置超时参数
- 正确处理中断异常
- 锁获取顺序的规范化

## 锁释放的最佳实践

- 确保锁释放的可靠性
- try-finally的标准使用
- 异常处理中的锁释放
- 资源清理的完整性
- 避免重复释放的问题

## 嵌套锁的使用技巧

- 嵌套锁的合理性评估
- 避免死锁的设计模式
- 锁顺序的一致性保证
- 减少锁嵌套的复杂度
- 嵌套锁的性能考量

## 可重入锁的性能优化

- 减少锁竞争的策略
- 锁分离与锁分段技术
- 读写锁的合理应用
- 锁粒度的优化方法
- 性能监控与调优技巧
EOF

# 创建2.2.2.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.5-锁降级实现方法.md" << 'EOF'
---
title: 锁降级实现方法
icon: downgrade
order: 5
---

# 锁降级实现方法

## 锁降级的基本概念

- 锁降级的定义与目的
- 写锁降级为读锁的过程
- 锁降级与锁升级的区别
- 锁降级的应用场景
- 锁降级的性能意义

## 锁降级的标准实现

- ReentrantReadWriteLock中的锁降级
- 获取写锁的前提条件
- 读锁获取的时机选择
- 写锁释放的处理策略
- 完整锁降级的代码模式

## 锁降级的应用场景

- 缓存更新中的锁降级
- 数据一致性保证的实现
- 读多写少场景的优化
- 状态转换中的锁降级
- 复杂业务流程中的应用

## 锁降级的注意事项

- 避免死锁的防范措施
- 锁降级的性能开销
- 与锁升级的区别理解
- 读锁可重入性的影响
- 并发环境下的安全考量

## 锁降级的最佳实践

- 合理评估锁降级的必要性
- 简化锁降级的实现逻辑
- 锁降级的测试与验证
- 性能监控与优化方法
- 常见错误与解决方案
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/README.md" << 'EOF'
---
title: 锁机制与Lock接口
icon: lock
order: 2
---

# 锁机制与Lock接口

本节深入讲解Java并发包中的锁机制与Lock接口，包括ReentrantLock、ReadWriteLock等实现类的原理与使用，分析其内部实现机制、性能特性和适用场景，帮助读者掌握显式锁的高级特性，实现更灵活、高效的并发控制。
EOF

# 创建2.2.2.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.6-多Condition线程协作.md" << 'EOF'
---
title: 多Condition线程协作
icon: cooperation
order: 6
---

# 多Condition线程协作

## 多Condition的基本概念

- 多条件变量的设计思想
- 单Condition与多Condition的区别
- 条件变量的隔离性与独立性
- 多Condition的应用场景
- 与Object的wait/notify对比优势

## 多Condition的创建与管理

- 从Lock创建多个Condition
- Condition对象的命名与组织
- 条件变量的生命周期管理
- 条件变量的访问控制
- 多条件环境的线程安全考量

## 多条件协作的实现模式

- 条件分组与线程分类
- 精确唤醒的实现机制
- 条件转换的协作模式
- 多阶段处理的条件流转
- 复杂业务流程的条件设计

## 多Condition的典型应用

- 有界缓冲区的多条件实现
- 资源池的精确控制
- 工作流引擎的状态管理
- 多角色协作的实现方式
- 分阶段任务的协调机制

## 多Condition的最佳实践

- 条件变量的合理划分
- 避免条件变量过度设计
- 防止条件变量交叉使用
- 调试与问题排查技巧
- 性能优化与扩展性考量
EOF

# 创建2.2.2.7文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.2-锁机制与Lock接口/2.2.2.7-自定义锁实现案例.md" << 'EOF'
---
title: 自定义锁实现案例
icon: custom
order: 7
---

# 自定义锁实现案例

## 自定义锁的设计思路

- 自定义锁的需求分析
- 锁接口的选择与实现
- 同步器的设计策略
- 功能特性的定义与规划
- 性能与可用性的平衡

## 基于AQS实现简单互斥锁

- AQS框架的基本使用
- 同步状态的管理实现
- 独占模式的获取与释放
- 公平性策略的选择
- 基本互斥锁的完整实现

## 实现可重入锁的扩展

- 重入计数的管理机制
- 线程持有者的记录方式
- 锁获取的重入判断
- 锁释放的计数处理
- 可重入特性的测试验证

## 实现读写锁的案例

- 读写状态的位操作技巧
- 读锁与写锁的状态表示
- 锁获取的条件控制
- 锁释放的状态更新
- 读写锁的性能优化

## 高级特性的实现技巧

- 超时获取的实现方法
- 可中断特性的添加
- 条件变量的支持实现
- 锁降级的处理机制
- 自定义锁的调试与测试
EOF

# 创建2.2.3目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/README.md" << 'EOF'
---
title: AQS原理与应用
icon: framework
order: 3
---

# AQS原理与应用

本节深入剖析Java并发包的核心框架AbstractQueuedSynchronizer(AQS)，包括其设计思想、实现原理、内部结构以及在各种同步器中的应用，帮助读者理解Java并发工具的底层机制，为实现自定义同步器打下坚实基础。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.3目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/README.md" << 'EOF'
---
title: AQS原理与应用
icon: framework
order: 3
---

# AQS原理与应用

本节深入剖析Java并发包的核心框架AbstractQueuedSynchronizer(AQS)，包括其设计思想、实现原理、内部结构以及在各种同步器中的应用，帮助读者理解Java并发工具的底层机制，为实现自定义同步器打下坚实基础。
EOF

# 创建2.2.3.1文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.1-AQS原理与应用原理篇.md" << 'EOF'
---
title: AQS原理与应用原理篇
icon: theory
order: 1
---

# AQS原理与应用原理篇

## AQS的基本概念

- AQS的定义与核心作用
- 同步器框架的设计目标
- AQS在JUC中的地位
- 同步状态的管理机制
- 队列同步器的基本原理

## AQS的核心组件

- 同步状态的表示与管理
- CLH队列的变体实现
- 节点状态与线程封装
- 条件队列的实现机制
- 独占模式与共享模式

## 独占锁的实现原理

- 独占模式的基本流程
- 获取锁的处理逻辑
- 释放锁的实现机制
- 线程阻塞与唤醒策略
- 可中断与超时获取的实现

## 共享锁的实现原理

- 共享模式的基本流程
- 共享状态的管理方式
- 多线程并发获取的处理
- 释放过程中的传播机制
- 共享模式的特殊考量

## AQS的高级特性

- 条件变量的实现原理
- 超时获取的处理机制
- 中断响应的实现方式
- 公平性与非公平性的控制
- 状态检查与监控方法
EOF

# 创建2.2.3.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.2-AQS设计思想与架构.md" << 'EOF'
---
title: AQS设计思想与架构
icon: architecture
order: 2
---

# AQS设计思想与架构

## AQS的设计哲学

- 模板方法模式的应用
- 框架与具体实现的分离
- 状态管理的抽象机制
- 阻塞原语的封装设计
- 可扩展性与复用性考量

## AQS的类层次结构

- AbstractOwnableSynchronizer的作用
- AbstractQueuedSynchronizer的核心地位
- 内部类与辅助组件的设计
- 与其他同步器的关系
- 继承体系的演进历史

## 核心方法的设计

- 模板方法的定义与实现
- 需要子类实现的方法
- 框架提供的基础设施方法
- 状态检查与操作方法
- 队列管理的核心方法

## 状态管理的设计

- 同步状态的表示方式
- 原子性操作的保证机制
- 状态解释的灵活性
- 位操作在状态管理中的应用
- 状态一致性的保证方法

## 可扩展性设计

- 子类定制的扩展点
- 独占模式的扩展机制
- 共享模式的扩展机制
- 条件变量的扩展支持
- 自定义同步器的实现模式
EOF

# 创建2.2.3.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.3-同步队列数据结构.md" << 'EOF'
---
title: 同步队列数据结构
icon: queue
order: 3
---

# 同步队列数据结构

## CLH队列的基本概念

- CLH锁的原始设计
- AQS中CLH队列的变体
- 自旋锁与阻塞锁的区别
- 队列的FIFO特性保证
- CLH队列的优势与适用性

## 节点的数据结构

- Node类的设计与字段
- 节点状态的定义与转换
- 前驱与后继引用的管理
- 线程的封装与访问
- 条件队列的节点复用

## 队列的构建与管理

- 队列的初始化过程
- 节点的入队操作
- 节点的出队处理
- 头尾节点的原子更新
- 队列状态的一致性保证

## 线程的阻塞与唤醒

- park/unpark机制的应用
- 线程阻塞前的检查逻辑
- 唤醒策略与传播机制
- 取消与中断的处理
- 超时控制的实现方式

## 队列的优化技术

- 自旋与阻塞的平衡
- 前驱节点状态的检查优化
- 节点复用的内存优化
- 锁争用下的性能考量
- 可伸缩性的设计要点
EOF

# 创建2.2.3.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.4-条件队列实现机制.md" << 'EOF'
---
title: 条件队列实现机制
icon: condition
order: 4
---

# 条件队列实现机制

## 条件队列的基本概念

- 条件变量的设计目的
- 条件队列与同步队列的关系
- ConditionObject的实现位置
- 条件等待与通知的语义
- 与Object的wait/notify对比

## 条件队列的数据结构

- 条件队列的节点复用
- 队列的组织方式
- 首尾节点的管理
- 节点状态的特殊含义
- 多条件队列的隔离性

## 等待机制的实现

- await()方法的执行流程
- 从同步队列到条件队列的转移
- 线程挂起与状态保存
- 中断与超时的处理
- 虚假唤醒的防范措施

## 通知机制的实现

- signal()方法的执行流程
- 节点的选择与转移策略
- 从条件队列到同步队列的转移
- 线程状态的恢复过程
- signalAll()的广播机制

## 条件变量的高级特性

- 超时等待的实现原理
- 中断响应的处理机制
- 多条件变量的协作模式
- 条件谓词的正确使用
- 条件变量的性能考量
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.3目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/README.md" << 'EOF'
---
title: AQS原理与应用
icon: framework
order: 3
---

# AQS原理与应用

本节深入剖析Java并发包的核心框架AbstractQueuedSynchronizer(AQS)，包括其设计思想、实现原理、内部结构以及在各种同步器中的应用，帮助读者理解Java并发工具的底层机制，为实现自定义同步器打下坚实基础。
EOF

# 创建2.2.3.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.5-独占模式与共享模式.md" << 'EOF'
---
title: 独占模式与共享模式
icon: mode
order: 5
---

# 独占模式与共享模式

## 两种同步模式的基本概念

- 独占模式与共享模式的定义
- 两种模式的本质区别
- 适用场景的划分
- 在JUC中的应用实例
- 模式选择的设计考量

## 独占模式的实现机制

- 独占式获取同步状态的流程
- tryAcquire方法的设计要点
- 独占式释放同步状态的过程
- tryRelease方法的实现考量
- 线程的阻塞与唤醒策略

## 共享模式的实现机制

- 共享式获取同步状态的流程
- tryAcquireShared方法的返回值含义
- 共享式释放同步状态的过程
- tryReleaseShared方法的实现要点
- 释放传播机制的实现原理

## 两种模式的内部区别

- 队列管理的差异处理
- 线程唤醒策略的不同
- 状态管理的实现差异
- 条件变量支持的区别
- 性能特性的对比分析

## 模式组合与互操作

- 读写锁中的模式结合
- 独占与共享的状态表示
- 模式转换的实现技巧
- 复合同步器的设计模式
- 自定义同步器的模式选择
EOF

# 创建2.2.3.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.6-状态变量管理机制.md" << 'EOF'
---
title: 状态变量管理机制
icon: state
order: 6
---

# 状态变量管理机制

## 同步状态的基本概念

- 同步状态的定义与作用
- 状态变量的表示方式
- 状态的原子性保证
- 状态解释的灵活性
- 状态管理的核心地位

## 状态的原子操作

- compareAndSetState的实现
- getState与setState的使用
- 原子性操作的保证机制
- CAS操作的应用场景
- 状态操作的性能考量

## 状态的语义表示

- 互斥锁中的状态含义
- 读写锁中的状态划分
- 信号量中的状态表示
- 计数器中的状态应用
- 自定义状态语义的设计

## 位操作在状态管理中的应用

- 高低位分离的技术
- 位掩码的使用方法
- 位运算的性能优势
- 复合状态的编码解码
- 位操作的实际案例分析

## 状态管理的最佳实践

- 状态定义的清晰性
- 状态操作的安全性
- 状态解释的一致性
- 状态边界的处理策略
- 状态扩展的设计考量
EOF

# 创建2.2.3.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.2-AQS原理与应用实战篇.md" << 'EOF'
---
title: AQS原理与应用实战篇
icon: practice
order: 2
---

# AQS原理与应用实战篇

## JUC中的AQS应用分析

- ReentrantLock中的AQS应用
- Semaphore的AQS实现分析
- CountDownLatch的内部机制
- CyclicBarrier与AQS的关系
- ReadWriteLock的AQS应用

## 独占锁的实现案例

- 不可重入互斥锁的实现
- 可重入锁的状态管理
- 公平锁与非公平锁的实现
- 超时获取的处理方法
- 可中断锁的实现技巧

## 共享锁的实现案例

- 基本信号量的实现
- 读写锁的状态设计
- 共享计数器的实现
- 资源池的并发控制
- 多线程协作的实现

## 条件变量的使用案例

- 条件变量的创建与管理
- 等待与通知的标准模式
- 条件谓词的正确使用
- 多条件协作的实现
- 超时等待的应用场景

## 高级应用与性能优化

- 锁分段技术的实现
- 读写分离的优化策略
- 细粒度锁的设计模式
- 锁争用的减少方法
- 同步器性能的监控与调优
EOF

# 创建2.2.3.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.3-基于AQS实现自定义锁.md" << 'EOF'
---
title: 基于AQS实现自定义锁
icon: custom
order: 3
---

# 基于AQS实现自定义锁

## 自定义同步器的设计思路

- 需求分析与功能定义
- 同步模式的选择
- 状态表示的设计
- 接口设计与API规划
- 性能与可用性的平衡

## 独占式同步器的实现

- 继承AQS的基本框架
- tryAcquire方法的实现
- tryRelease方法的实现
- 是否公平性的控制
- 可重入特性的支持

## 共享式同步器的实现

- tryAcquireShared的实现
- tryReleaseShared的实现
- 共享状态的管理
- 并发获取的处理
- 释放传播的实现

## 条件变量的支持实现

- 创建与管理条件变量
- 等待条件的实现
- 条件通知的处理
- 与同步器的协作机制
- 多条件变量的支持

## 高级特性的实现技巧

- 超时获取的实现方法
- 可中断特性的添加
- 状态检查与监控支持
- 调试与测试的方法
- 性能优化的实践经验
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.3目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/README.md" << 'EOF'
---
title: AQS原理与应用
icon: framework
order: 3
---

# AQS原理与应用

本节深入剖析Java并发包的核心框架AbstractQueuedSynchronizer(AQS)，包括其设计思想、实现原理、内部结构以及在各种同步器中的应用，帮助读者理解Java并发工具的底层机制，为实现自定义同步器打下坚实基础。
EOF

# 创建2.2.3.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.4-实现不可重入锁.md" << 'EOF'
---
title: 实现不可重入锁
icon: mutex
order: 4
---

# 实现不可重入锁

## 不可重入锁的基本概念

- 不可重入锁的定义与特性
- 与可重入锁的区别
- 不可重入锁的应用场景
- 实现不可重入锁的意义
- 性能与安全性的考量

## 基于AQS实现不可重入锁

- 继承AQS的基本框架
- 同步状态的表示方式
- 独占模式的选择
- 核心方法的实现规划
- 锁接口的设计

## 核心方法的实现

- tryAcquire方法的实现
- tryRelease方法的实现
- isHeldExclusively的实现
- 锁获取与释放的完整流程
- 线程持有者的判断逻辑

## 锁功能的扩展实现

- 公平性控制的实现
- 超时获取的支持
- 可中断特性的添加
- 条件变量的支持
- 状态检查与监控方法

## 不可重入锁的测试与应用

- 基本功能的单元测试
- 并发安全性的验证
- 性能测试与基准比较
- 实际应用场景示例
- 常见问题与解决方案
EOF

# 创建2.2.3.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.5-实现读写锁.md" << 'EOF'
---
title: 实现读写锁
icon: readwrite
order: 5
---

# 实现读写锁

## 读写锁的基本概念

- 读写锁的定义与特性
- 读共享写互斥的原则
- 读写锁的应用场景
- 与互斥锁的性能对比
- 读写锁的实现挑战

## 基于AQS实现读写锁

- 状态变量的设计
- 高低位分离的技术
- 读写状态的编码解码
- 同步器的整体架构
- 内部类的组织结构

## 读锁的实现

- tryAcquireShared的实现
- 读锁获取的条件控制
- 读锁重入的处理
- tryReleaseShared的实现
- 读锁释放的传播机制

## 写锁的实现

- tryAcquire的实现
- 写锁获取的条件判断
- 写锁重入的支持
- tryRelease的实现
- 写锁释放的处理流程

## 锁降级与高级特性

- 锁降级的实现机制
- 公平性控制的实现
- 条件变量的支持
- 读写锁的性能优化
- 实际应用案例分析
EOF

# 创建2.2.3.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.6-实现限流器.md" << 'EOF'
---
title: 实现限流器
icon: ratelimiter
order: 6
---

# 实现限流器

## 限流器的基本概念

- 限流器的定义与作用
- 常见的限流算法
- 限流器的应用场景
- 限流与熔断的关系
- 分布式限流的挑战

## 基于AQS实现限流器

- 限流器的设计思路
- 同步状态的语义定义
- 共享模式的选择
- 许可管理的机制
- 接口设计与功能规划

## 核心方法的实现

- tryAcquireShared的实现
- 许可获取的策略
- tryReleaseShared的实现
- 许可释放的处理
- 超时与中断的支持

## 高级限流特性的实现

- 令牌桶算法的实现
- 漏桶算法的实现
- 动态调整限流阈值
- 限流统计与监控
- 分布式环境的扩展

## 限流器的测试与应用

- 功能测试与验证
- 性能测试与基准比较
- 高并发场景的应用
- 与其他组件的集成
- 实际案例分析与最佳实践
EOF

# 创建2.2.3.7文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.3-AQS原理与应用/2.2.3.7-AQS在框架中的应用.md" << 'EOF'
---
title: AQS在框架中的应用
icon: application
order: 7
---

# AQS在框架中的应用

## JUC包中的AQS应用

- ReentrantLock的AQS实现
- ReentrantReadWriteLock的设计
- Semaphore的内部机制
- CountDownLatch的实现原理
- CyclicBarrier与AQS的关系

## Spring框架中的AQS应用

- Spring中的锁抽象
- 事务同步管理器的实现
- 资源同步的AQS应用
- Spring集成测试中的同步
- Spring并发工具的设计

## Netty框架中的AQS应用

- Netty中的并发控制
- 事件处理的同步机制
- 资源管理的并发控制
- 连接限制的实现
- 自定义同步器的应用

## 数据库连接池中的应用

- 连接获取的同步控制
- 连接池容量管理
- 等待超时的实现
- 连接回收的并发处理
- 连接池监控的实现

## 自定义框架中的AQS应用

- 同步器的选择策略
- AQS的扩展与定制
- 性能优化的实践经验
- 调试与问题排查
- 框架设计的最佳实践
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.4目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/README.md" << 'EOF'
---
title: ReentrantLock源码分析
icon: code
order: 4
---

# ReentrantLock源码分析

本节深入分析Java并发包中ReentrantLock的源码实现，包括其内部结构、锁获取与释放机制、公平性实现、可重入特性等核心内容，帮助读者透彻理解这一重要锁机制的工作原理，为高效应用并发工具提供理论基础。
EOF

# 创建2.2.4.1文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.1-ReentrantLock源码分析原理篇.md" << 'EOF'
---
title: ReentrantLock源码分析原理篇
icon: theory
order: 1
---

# ReentrantLock源码分析原理篇

## ReentrantLock的基本概念

- ReentrantLock的定义与特性
- 与synchronized的对比
- 可重入特性的意义
- 公平性选择的影响
- ReentrantLock的应用场景

## ReentrantLock的整体架构

- 类层次结构与继承关系
- 内部类的组织结构
- 同步器的选择与实现
- 公平与非公平实现的区别
- 核心字段与状态表示

## 锁获取的源码分析

- lock()方法的实现流程
- 非公平锁的快速获取路径
- 公平锁的排队获取机制
- 锁重入的处理逻辑
- 线程阻塞与唤醒的实现

## 锁释放的源码分析

- unlock()方法的实现流程
- 锁状态的更新机制
- 重入计数的管理方式
- 后继线程的唤醒策略
- 异常情况的处理机制

## 高级特性的源码实现

- 可中断获取锁的实现
- 超时获取锁的处理
- 条件变量的内部实现
- 锁状态的检查机制
- 公平性保证的源码分析
EOF

# 创建2.2.4.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.2-ReentrantLock整体架构.md" << 'EOF'
---
title: ReentrantLock整体架构
icon: architecture
order: 2
---

# ReentrantLock整体架构

## ReentrantLock的类层次结构

- ReentrantLock的继承体系
- Lock接口的实现方式
- 与AbstractQueuedSynchronizer的关系
- 内部类的组织结构
- 类设计的演进历史

## 核心字段与状态表示

- 同步器的选择与创建
- 锁状态的表示方式
- 线程持有者的记录机制
- 重入计数的存储方式
- 公平性标志的管理

## 内部同步器的实现

- Sync抽象类的设计
- NonfairSync的实现特点
- FairSync的实现特点
- 同步器的状态管理
- 公平性实现的核心差异

## 锁方法的分发机制

- 外部接口与内部实现的映射
- 锁操作的委托模式
- 方法调用链的分析
- 异常处理的传播机制
- 接口设计的一致性保证

## 与AQS框架的配合

- 对AQS模板方法的实现
- 同步状态的解释方式
- 独占模式的应用
- 条件变量的支持机制
- AQS功能的扩展使用
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.4目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/README.md" << 'EOF'
---
title: ReentrantLock源码分析
icon: code
order: 4
---

# ReentrantLock源码分析

本节深入分析Java并发包中ReentrantLock的源码实现，包括其内部结构、锁获取与释放机制、公平性实现、可重入特性等核心内容，帮助读者透彻理解这一重要锁机制的工作原理，为高效应用并发工具提供理论基础。
EOF

# 创建2.2.4.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.3-公平锁实现原理.md" << 'EOF'
---
title: 公平锁实现原理
icon: fair
order: 3
---

# 公平锁实现原理

## 公平锁的基本概念

- 公平锁的定义与特性
- 先来先服务的调度原则
- 公平性对性能的影响
- 公平锁的适用场景
- 与非公平锁的对比分析

## FairSync的类结构设计

- FairSync类的继承关系
- 与Sync抽象类的关系
- 核心方法的重写情况
- 状态表示与管理方式
- 内部结构的设计考量

## 公平锁获取的源码分析

- lock()方法的调用链
- tryAcquire()的实现细节
- hasQueuedPredecessors()的作用
- 等待队列的检查机制
- 锁重入的公平处理

## 公平锁释放的源码分析

- unlock()方法的调用链
- tryRelease()的实现细节
- 状态更新的原子性保证
- 后继线程的唤醒策略
- 与非公平锁释放的区别

## 公平锁的性能与优化

- 公平性保证的开销分析
- 队列检查的性能影响
- 上下文切换的开销
- 吞吐量与公平性的权衡
- 实际应用中的选择策略
EOF

# 创建2.2.4.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.4-非公平锁实现原理.md" << 'EOF'
---
title: 非公平锁实现原理
icon: unfair
order: 4
---

# 非公平锁实现原理

## 非公平锁的基本概念

- 非公平锁的定义与特性
- 抢占式的资源获取机制
- 非公平性对性能的影响
- 非公平锁的适用场景
- 与公平锁的对比分析

## NonfairSync的类结构设计

- NonfairSync类的继承关系
- 与Sync抽象类的关系
- 核心方法的重写情况
- 状态表示与管理方式
- 内部结构的设计考量

## 非公平锁获取的源码分析

- lock()方法的调用链
- 快速获取锁的尝试机制
- tryAcquire()的实现细节
- 与公平锁获取的关键区别
- 锁重入的非公平处理

## 非公平锁释放的源码分析

- unlock()方法的调用链
- tryRelease()的实现细节
- 状态更新的原子性保证
- 后继线程的唤醒策略
- 与公平锁释放的共同点

## 非公平锁的性能优势

- 快速路径获取的性能提升
- 减少上下文切换的机制
- 吞吐量的提高分析
- 饥饿问题的可能性
- 实际应用中的性能表现
EOF

# 创建2.2.4.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.5-锁获取与释放流程.md" << 'EOF'
---
title: 锁获取与释放流程
icon: process
order: 5
---

# 锁获取与释放流程

## 锁获取的基本流程

- lock()方法的入口分析
- 公平与非公平的分支路径
- 快速获取的尝试机制
- 排队等待的处理流程
- 线程阻塞与唤醒的时机

## 锁获取的核心源码分析

- acquire()方法的实现
- tryAcquire()的差异化实现
- addWaiter()的队列构建
- acquireQueued()的等待逻辑
- 中断处理的机制

## 锁释放的基本流程

- unlock()方法的入口分析
- 重入计数的检查与更新
- 最终释放的条件判断
- 后继线程的唤醒过程
- 异常情况的处理机制

## 锁释放的核心源码分析

- release()方法的实现
- tryRelease()的状态更新
- unparkSuccessor()的唤醒策略
- 头节点的更新机制
- 并发安全的保证方式

## 锁流程中的关键点分析

- CAS操作在锁流程中的应用
- 线程状态转换的关键节点
- 等待队列的管理要点
- 性能优化的关键设计
- 死锁预防的内置机制
EOF

# 创建2.2.4.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.6-可重入机制实现.md" << 'EOF'
---
title: 可重入机制实现
icon: reentrant
order: 6
---

# 可重入机制实现

## 可重入性的基本概念

- 可重入锁的定义与特性
- 重入性的意义与必要性
- 可重入锁与不可重入锁的区别
- ReentrantLock的可重入设计
- 可重入性的应用场景

## 重入状态的表示与管理

- 同步状态的复用设计
- 重入计数的存储方式
- 线程持有者的记录机制
- 状态更新的原子性保证
- 状态解释的一致性维护

## 重入获取的源码实现

- 线程身份的判断逻辑
- 当前持有者的检查机制
- 重入计数的递增处理
- 计数溢出的防护措施
- 公平与非公平下的重入差异

## 重入释放的源码实现

- 重入计数的递减处理
- 最终释放的判断条件
- 线程持有者的清除机制
- 后继线程的唤醒时机
- 异常情况下的状态恢复

## 可重入机制的性能与安全性

- 重入检查的性能开销
- 状态管理的并发安全性
- 与synchronized重入的对比
- 可重入设计的优化空间
- 实际应用中的最佳实践
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.4目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/README.md" << 'EOF'
---
title: ReentrantLock源码分析
icon: code
order: 4
---

# ReentrantLock源码分析

本节深入分析Java并发包中ReentrantLock的源码实现，包括其内部结构、锁获取与释放机制、公平性实现、可重入特性等核心内容，帮助读者透彻理解这一重要锁机制的工作原理，为高效应用并发工具提供理论基础。
EOF

# 创建2.2.4.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.2-ReentrantLock源码分析实战篇.md" << 'EOF'
---
title: ReentrantLock源码分析实战篇
icon: practice
order: 2
---

# ReentrantLock源码分析实战篇

## ReentrantLock的基本使用

- ReentrantLock的创建与配置
- 锁的获取与释放模式
- try-finally确保锁释放
- 公平性选择的实际考量
- 与synchronized的替换技巧

## 源码分析的实战工具

- IDE调试技巧与断点设置
- 源码阅读的方法论
- JDK源码的获取方式
- 反编译工具的使用
- 性能分析工具的应用

## 锁获取源码的实战分析

- 跟踪lock()方法的执行流程
- 分析锁竞争时的处理逻辑
- 观察线程阻塞与唤醒过程
- 调试重入计数的变化
- 分析公平与非公平的差异

## 锁释放源码的实战分析

- 跟踪unlock()方法的执行流程
- 观察状态变量的更新过程
- 分析后继线程的唤醒机制
- 调试锁完全释放的条件
- 分析异常情况的处理

## 高级特性的源码实战

- 调试lockInterruptibly()的中断响应
- 分析tryLock()的非阻塞实现
- 跟踪条件变量的等待与通知
- 观察读写锁的内部协作
- 分析锁降级的实现过程
EOF

# 创建2.2.4.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.3-ReentrantLock性能调优.md" << 'EOF'
---
title: ReentrantLock性能调优
icon: performance
order: 3
---

# ReentrantLock性能调优

## ReentrantLock性能特性

- ReentrantLock的性能指标
- 与synchronized的性能对比
- 公平锁与非公平锁的性能差异
- 锁竞争对性能的影响
- JVM优化对锁性能的影响

## 锁竞争的性能分析

- 高竞争环境的性能瓶颈
- 线程阻塞与唤醒的开销
- 上下文切换的性能影响
- 自旋等待的成本分析
- 锁粒度对性能的影响

## 锁性能的监控与分析

- JVM锁监控工具的使用
- JFR与JMC的锁分析功能
- 线程转储的锁信息解读
- 性能分析工具的应用
- 锁竞争热点的识别方法

## 锁性能优化策略

- 减少锁持有时间的技巧
- 锁分离与锁分段的实现
- 读写锁替代互斥锁的场景
- 无锁算法的应用时机
- 锁粗化与锁消除的利用

## 实际案例的性能调优

- 高并发缓存的锁优化
- 生产者消费者模型的调优
- 读多写少场景的优化
- 批处理系统的锁策略
- 微服务环境的锁性能考量
EOF

# 创建2.2.4.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.4-公平与非公平锁选择策略.md" << 'EOF'
---
title: 公平与非公平锁选择策略
icon: strategy
order: 4
---

# 公平与非公平锁选择策略

## 公平与非公平锁的特性对比

- 公平锁的优势与劣势
- 非公平锁的优势与劣势
- 吞吐量与响应时间的权衡
- 线程调度的公平性考量
- 系统资源消耗的差异

## 适合公平锁的场景

- 对响应时间公平性要求高的系统
- 长时间持有锁的业务场景
- 避免线程饥饿的关键应用
- 任务优先级一致的环境
- 调试与测试环境的选择

## 适合非公平锁的场景

- 高吞吐量优先的系统
- 短时间持有锁的业务场景
- 线程饥饿不敏感的应用
- 性能敏感的核心服务
- 大多数生产环境的默认选择

## 选择策略的决策因素

- 业务需求的优先级分析
- 系统负载特性的考量
- 线程数量与资源的关系
- 锁持有时间的估计
- 性能测试结果的参考

## 混合策略与动态调整

- 不同锁实例的混合使用
- 基于负载的动态策略调整
- 监控驱动的锁策略优化
- A/B测试的应用方法
- 渐进式调优的实践经验
EOF

# 创建2.2.4.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.5-锁超时与中断处理.md" << 'EOF'
---
title: 锁超时与中断处理
icon: timeout
order: 5
---

# 锁超时与中断处理

## 锁获取的高级特性

- 阻塞获取与非阻塞尝试
- 可中断获取的意义
- 超时获取的应用价值
- 与基本锁获取的对比
- 高级特性的组合使用

## 超时获取锁的实现原理

- tryLock(time, unit)的源码分析
- 超时计算的精确性考量
- 超时检测的实现机制
- 超时返回的处理策略
- 性能与可靠性的平衡

## 中断响应的实现原理

- lockInterruptibly()的源码分析
- 中断状态的检查机制
- 中断响应的处理流程
- 中断异常的传播机制
- 与普通中断的区别

## 超时与中断的应用模式

- 避免死锁的超时策略
- 可取消任务的中断设计
- 资源获取的优雅降级
- 响应用户取消的实现
- 复杂场景的组合应用

## 超时与中断的最佳实践

- 合理设置超时时间
- 正确处理中断异常
- 中断状态的恢复策略
- 超时后的资源清理
- 测试与调试的方法
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.4目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/README.md" << 'EOF'
---
title: ReentrantLock源码分析
icon: code
order: 4
---

# ReentrantLock源码分析

本节深入分析Java并发包中ReentrantLock的源码实现，包括其内部结构、锁获取与释放机制、公平性实现、可重入特性等核心内容，帮助读者透彻理解这一重要锁机制的工作原理，为高效应用并发工具提供理论基础。
EOF

# 创建2.2.4.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.6-与synchronized对比使用.md" << 'EOF'
---
title: 与synchronized对比使用
icon: compare
order: 6
---

# 与synchronized对比使用

## 基本特性对比

- 实现机制的本质区别
- 语法使用的差异
- 可重入性的实现比较
- 锁释放的保证机制
- 性能特性的对比分析

## 功能特性对比

- ReentrantLock的高级特性
- synchronized的简洁性
- 公平性控制的支持
- 条件变量与wait/notify
- 中断与超时的处理能力

## 性能对比分析

- 不同JDK版本的性能变化
- 低竞争下的性能比较
- 高竞争下的性能比较
- 锁粗化与锁消除的影响
- 实际应用中的性能测试

## 使用场景选择

- 简单同步场景的选择
- 需要高级特性时的选择
- 性能敏感场景的选择
- 已有代码的迁移考量
- 不同规模项目的选择策略

## 最佳实践与设计模式

- 两种锁的混合使用模式
- 锁的选择与封装策略
- 异常处理的最佳实践
- 可读性与可维护性考量
- 测试与调试的差异处理
EOF

# 创建2.2.4.7文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.4-ReentrantLock源码分析/2.2.4.7-源码分析方法与工具.md" << 'EOF'
---
title: 源码分析方法与工具
icon: tools
order: 7
---

# 源码分析方法与工具

## 源码分析的基本方法

- 自顶向下的分析策略
- 关注点分离的技巧
- 核心流程的识别方法
- 源码阅读的思维导图
- 分析笔记的组织方式

## JDK源码获取与查看

- OpenJDK源码的获取方式
- IDE中配置源码的方法
- 在线源码查看平台介绍
- 不同JDK版本源码的差异
- 源码注释的解读技巧

## IDE辅助分析工具

- IntelliJ IDEA的源码分析功能
- Eclipse的源码导航工具
- 类层次结构的查看方法
- 方法调用链的追踪技术
- 代码结构的可视化工具

## 调试与反编译工具

- 断点调试的高级技巧
- 条件断点的有效使用
- 远程调试的配置方法
- JD-GUI等反编译工具
- Arthas等在线诊断工具

## 源码分析的实践经验

- 建立知识体系的重要性
- 结合实例的分析方法
- 源码分析的时间管理
- 团队协作的源码研究
- 持续学习的有效策略
EOF

# 创建2.2.5目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/README.md" << 'EOF'
---
title: 读写锁与StampedLock
icon: lock
order: 5
---

# 读写锁与StampedLock

本节详细介绍Java并发包中的读写锁机制，包括ReentrantReadWriteLock和Java 8引入的StampedLock，分析它们的实现原理、性能特性和适用场景，帮助读者掌握这些高级锁机制的使用方法，优化读多写少场景下的并发性能。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.5目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/README.md" << 'EOF'
---
title: 读写锁与StampedLock
icon: lock
order: 5
---

# 读写锁与StampedLock

本节详细介绍Java并发包中的读写锁机制，包括ReentrantReadWriteLock和Java 8引入的StampedLock，分析它们的实现原理、性能特性和适用场景，帮助读者掌握这些高级锁机制的使用方法，优化读多写少场景下的并发性能。
EOF

# 创建2.2.5.1文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.1-读写锁与StampedLock原理篇.md" << 'EOF'
---
title: 读写锁与StampedLock原理篇
icon: theory
order: 1
---

# 读写锁与StampedLock原理篇

## 读写锁的基本概念

- 读写锁的定义与特性
- 读共享写互斥的原则
- 读写锁解决的核心问题
- 与互斥锁的对比优势
- 读多写少场景的性能提升

## ReentrantReadWriteLock的设计

- ReentrantReadWriteLock的整体架构
- 读锁与写锁的关系
- 可重入特性的实现
- 公平性选择的影响
- 锁降级的支持机制

## 读写状态的管理

- 状态变量的位分配设计
- 读写状态的编码解码
- 读锁计数的管理方式
- 写锁重入的处理
- 状态一致性的保证

## StampedLock的创新设计

- StampedLock的核心特性
- 乐观读模式的实现原理
- 悲观读与写模式的关系
- 版本戳的设计与应用
- 与ReadWriteLock的对比

## 性能特性与适用场景

- 读写锁的性能特点
- StampedLock的性能优势
- 乐观读的应用条件
- 锁模式选择的考量因素
- 实际应用中的性能测试
EOF

# 创建2.2.5.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.2-读写锁设计原理.md" << 'EOF'
---
title: 读写锁设计原理
icon: design
order: 2
---

# 读写锁设计原理

## 读写锁的核心设计思想

- 读写分离的基本原则
- 共享与独占的访问控制
- 读写互斥的实现策略
- 读读并发的支持机制
- 公平性与吞吐量的平衡

## ReentrantReadWriteLock的架构设计

- 类层次结构与继承关系
- ReadLock与WriteLock的实现
- Sync抽象类的核心作用
- FairSync与NonfairSync的区别
- 内部组件的协作机制

## 同步状态的设计

- 状态变量的位分配方案
- 高16位与低16位的用途
- 状态操作的原子性保证
- 位操作在状态管理中的应用
- 状态解释的一致性维护

## 读锁实现的设计要点

- 共享模式的应用
- 读锁获取的条件控制
- 读锁重入的计数管理
- 读锁释放的传播机制
- 与写锁的协作设计

## 写锁实现的设计要点

- 独占模式的应用
- 写锁获取的条件判断
- 写锁重入的处理机制
- 写锁释放的状态更新
- 与读锁的互斥保证
EOF

# 创建2.2.5.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.3-读写锁升级与降级.md" << 'EOF'
---
title: 读写锁升级与降级
icon: upgrade
order: 3
---

# 读写锁升级与降级

## 锁升级与降级的基本概念

- 锁升级与降级的定义
- 锁转换的应用场景
- 锁升级的限制原因
- 锁降级的实现可能性
- 锁转换对并发性能的影响

## 读写锁的升级限制

- 读锁升级为写锁的限制
- 升级限制的技术原因
- 多线程环境下的死锁风险
- 绕过升级限制的方法
- 实际应用中的处理策略

## 读写锁的降级机制

- 写锁降级为读锁的实现
- 降级的标准流程
- 降级的应用场景
- 降级过程中的注意事项
- 降级对性能的影响分析

## 锁降级的实战应用

- 缓存更新中的锁降级
- 数据一致性保证的实现
- 读多写少场景的优化
- 状态转换中的锁降级
- 复杂业务流程中的应用

## 锁转换的最佳实践

- 合理设计锁转换策略
- 避免不必要的锁转换
- 锁转换的性能测试方法
- 常见错误与解决方案
- 锁转换的调试与监控
EOF

# 创建2.2.5.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.4-StampedLock实现机制.md" << 'EOF'
---
title: StampedLock实现机制
icon: mechanism
order: 4
---

# StampedLock实现机制

## StampedLock的基本概念

- StampedLock的设计目标
- 三种锁模式的定义
- 版本戳的核心作用
- 与ReadWriteLock的区别
- Java 8引入的背景

## 乐观读模式的实现原理

- 乐观读的工作机制
- tryOptimisticRead的实现
- 版本戳的生成与验证
- validate方法的实现细节
- 乐观读的性能优势

## 悲观读与写模式的实现

- readLock与writeLock的实现
- 读写状态的管理方式
- 锁获取与释放的流程
- 版本戳在锁模式中的应用
- 与ReentrantReadWriteLock的区别

## 锁模式转换的实现

- 乐观读转悲观读的机制
- 锁升级与降级的支持
- 转换过程中的版本控制
- 模式转换的原子性保证
- 转换失败的处理策略

## StampedLock的高级特性

- 非可重入设计的考量
- 中断与超时的支持机制
- 条件变量的缺失原因
- 死锁风险与预防措施
- CPU缓存伪共享的优化
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.5目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/README.md" << 'EOF'
---
title: 读写锁与StampedLock
icon: lock
order: 5
---

# 读写锁与StampedLock

本节详细介绍Java并发包中的读写锁机制，包括ReentrantReadWriteLock和Java 8引入的StampedLock，分析它们的实现原理、性能特性和适用场景，帮助读者掌握这些高级锁机制的使用方法，优化读多写少场景下的并发性能。
EOF

# 创建2.2.5.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.5-乐观读与悲观读原理.md" << 'EOF'
---
title: 乐观读与悲观读原理
icon: reading
order: 5
---

# 乐观读与悲观读原理

## 乐观读与悲观读的基本概念

- 乐观读与悲观读的定义
- 两种读模式的本质区别
- 乐观策略与悲观策略的思想
- 读模式选择的影响因素
- StampedLock中的读模式设计

## 乐观读的实现机制

- tryOptimisticRead的工作原理
- 版本戳的生成与验证
- 无锁状态下的读取过程
- validate方法的实现细节
- 乐观读失败的处理策略

## 悲观读的实现机制

- readLock的工作原理
- 悲观读锁的获取过程
- 读锁状态的管理方式
- 与写锁的互斥关系
- 悲观读锁的释放机制

## 两种读模式的性能对比

- 乐观读的性能优势
- 悲观读的稳定性优势
- 不同竞争环境下的表现
- 读写比例对性能的影响
- 实际应用中的性能测试

## 读模式选择的最佳实践

- 适合乐观读的场景
- 适合悲观读的场景
- 读模式动态切换的策略
- 失败重试的设计模式
- 混合使用的优化技巧
EOF

# 创建2.2.5.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.6-锁冲突与饥饿问题.md" << 'EOF'
---
title: 锁冲突与饥饿问题
icon: conflict
order: 6
---

# 锁冲突与饥饿问题

## 锁冲突的基本概念

- 锁冲突的定义与表现
- 读写锁中的冲突类型
- 冲突对性能的影响
- 冲突频率的影响因素
- 冲突检测与处理机制

## 读写锁中的饥饿问题

- 写线程饥饿的产生原因
- 读线程饥饿的可能性
- 公平性策略对饥饿的影响
- 饥饿问题的危害
- 传统读写锁的饥饿风险

## StampedLock对饥饿问题的改进

- StampedLock的调度策略
- 写优先级的实现机制
- 乐观读对饥饿问题的缓解
- 锁模式转换中的公平性
- 与ReentrantReadWriteLock的对比

## 锁冲突的优化策略

- 减少锁持有时间的技巧
- 锁分段与分区的应用
- 读写分离的架构设计
- 乐观并发控制的引入
- 无锁算法的应用场景

## 饥饿预防的最佳实践

- 合理设置锁粒度
- 公平锁的适当使用
- 超时机制的引入
- 负载均衡的实现
- 监控与告警的重要性
EOF

# 创建2.2.5.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.2-读写锁与StampedLock实战篇.md" << 'EOF'
---
title: 读写锁与StampedLock实战篇
icon: practice
order: 2
---

# 读写锁与StampedLock实战篇

## ReentrantReadWriteLock的基本使用

- 读写锁的创建与配置
- 读锁的获取与释放
- 写锁的获取与释放
- 锁降级的标准流程
- 条件变量的使用方式

## StampedLock的基本使用

- StampedLock的创建
- 乐观读模式的使用
- 悲观读模式的使用
- 写锁模式的使用
- 锁模式转换的实现

## 读写锁的实战应用模式

- 缓存实现中的读写锁
- 数据一致性保证模式
- 读写分离的实现方式
- 锁降级在更新中的应用
- 条件变量与线程协作

## StampedLock的实战应用模式

- 乐观读失败重试模式
- 读模式动态切换策略
- 版本戳的有效管理
- 并发集合的优化实现
- 高性能缓存的设计

## 性能优化与调试技巧

- 锁竞争的监控方法
- 锁持有时间的优化
- 锁粒度的调整策略
- 死锁与活锁的排查
- 性能测试与基准比较
EOF

# 创建2.2.5.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.3-读多写少场景优化.md" << 'EOF'
---
title: 读多写少场景优化
icon: optimize
order: 3
---

# 读多写少场景优化

## 读多写少场景的特点

- 读多写少场景的定义
- 典型应用领域与案例
- 传统锁机制的性能瓶颈
- 并发读取的重要性
- 性能优化的关键指标

## 读写锁在读多写少场景的应用

- ReentrantReadWriteLock的优势
- 读锁共享的性能收益
- 写锁独占的必要性
- 锁降级的应用时机
- 实际应用中的性能提升

## StampedLock在读多写少场景的优势

- 乐观读模式的性能优势
- 无锁读取的吞吐量提升
- 写操作优先级的保证
- 版本控制的一致性保证
- 与读写锁的性能对比

## 读多写少场景的架构优化

- 缓存策略的设计与应用
- 读写分离的架构模式
- 快照隔离的实现技术
- 异步更新的设计模式
- 最终一致性的应用

## 实战案例与性能测试

- 高并发缓存的实现
- 配置中心的优化设计
- 数据分析系统的并发控制
- 性能测试方法与工具
- 不同锁策略的对比分析
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.5目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/README.md" << 'EOF'
---
title: 读写锁与StampedLock
icon: lock
order: 5
---

# 读写锁与StampedLock

本节详细介绍Java并发包中的读写锁机制，包括ReentrantReadWriteLock和Java 8引入的StampedLock，分析它们的实现原理、性能特性和适用场景，帮助读者掌握这些高级锁机制的使用方法，优化读多写少场景下的并发性能。
EOF

# 创建2.2.5.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.4-StampedLock使用模式.md" << 'EOF'
---
title: StampedLock使用模式
icon: pattern
order: 4
---

# StampedLock使用模式

## StampedLock的基本使用模式

- StampedLock的创建与初始化
- 三种锁模式的基本用法
- 版本戳的正确管理
- 锁释放的标准流程
- 异常处理的最佳实践

## 乐观读模式的使用模式

- 乐观读的标准代码模式
- 版本验证的正确实现
- 乐观读失败的处理策略
- 重试机制的设计模式
- 乐观读的适用场景

## 悲观读模式的使用模式

- 悲观读的标准代码模式
- 与乐观读的结合使用
- 读锁升级的处理方式
- 读锁超时与中断处理
- 悲观读的适用场景

## 写锁模式的使用模式

- 写锁的标准代码模式
- 写锁获取的策略设计
- 写操作的原子性保证
- 写锁与读模式的协作
- 写锁的适用场景

## 混合模式与高级应用

- 读写模式动态切换
- 条件变量的替代实现
- 锁转换的安全实现
- 并发容器的优化模式
- 复杂业务场景的应用
EOF

# 创建2.2.5.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.5-乐观锁应用案例.md" << 'EOF'
---
title: 乐观锁应用案例
icon: case
order: 5
---

# 乐观锁应用案例

## 乐观锁的基本概念

- 乐观锁与悲观锁的对比
- 乐观并发控制的核心思想
- 版本控制在乐观锁中的作用
- StampedLock的乐观特性
- 乐观锁的适用条件

## 高性能缓存实现案例

- 基于StampedLock的缓存设计
- 乐观读提升读取性能
- 缓存更新的原子性保证
- 缓存一致性的维护策略
- 性能测试与优化结果

## 读多写少的数据结构案例

- 并发HashMap的优化实现
- 读写分离的集合设计
- 乐观读在遍历中的应用
- 写操作的安全处理
- 与传统同步集合的对比

## 配置系统的乐观锁应用

- 分布式配置中心的设计
- 本地缓存的乐观读实现
- 配置更新的冲突处理
- 版本控制的实现机制
- 性能与一致性的平衡

## 数据分析系统的乐观并发

- 大数据处理的并发优化
- 读取操作的无锁设计
- 分析结果的一致性保证
- 动态切换锁模式的策略
- 系统吞吐量的提升效果
EOF

# 创建2.2.5.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.6-锁转换与升级策略.md" << 'EOF'
---
title: 锁转换与升级策略
icon: upgrade
order: 6
---

# 锁转换与升级策略

## 锁模式转换的基本概念

- 锁模式转换的定义与类型
- 转换的必要性与应用场景
- 转换过程中的安全考量
- StampedLock中的转换支持
- 与读写锁转换的区别

## 乐观读转悲观读的策略

- 转换的触发条件
- tryConvertToReadLock的使用
- 版本戳的传递与验证
- 转换失败的处理方法
- 性能影响的分析

## 乐观读转写锁的策略

- 转换的应用场景
- tryConvertToWriteLock的使用
- 转换的原子性保证
- 并发冲突的处理
- 实际应用中的注意事项

## 悲观读转写锁的策略

- 读锁升级的限制与解决
- 使用StampedLock实现升级
- 升级过程的安全保证
- 与读写锁的升级对比
- 性能开销的分析

## 锁转换的最佳实践

- 转换策略的设计原则
- 避免不必要的转换
- 转换失败的重试策略
- 死锁风险的预防措施
- 转换过程的监控与调优
EOF

# 创建2.2.5.7文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.5-读写锁与StampedLock/2.2.5.7-性能对比与选型指南.md" << 'EOF'
---
title: 性能对比与选型指南
icon: guide
order: 7
---

# 性能对比与选型指南

## 锁机制的性能指标

- 锁性能的关键评估指标
- 吞吐量与延迟的权衡
- 公平性与性能的关系
- 可伸缩性的衡量方法
- 锁开销的组成因素

## 不同锁机制的性能对比

- synchronized的性能特性
- ReentrantLock的性能表现
- ReentrantReadWriteLock的优势
- StampedLock的性能突破
- 不同JDK版本的性能变化

## 不同场景下的性能测试

- 读多写少场景的性能对比
- 写多读少场景的性能对比
- 读写均衡场景的性能对比
- 高竞争环境的性能表现
- 低竞争环境的性能表现

## 锁选型的决策因素

- 业务需求的优先考量
- 读写比例的影响
- 锁持有时间的考虑
- 功能特性的需求分析
- 系统环境与JDK版本

## 锁选型的最佳实践

- 简单场景的锁选择
- 读多写少场景的最佳选择
- 高并发系统的锁策略
- 混合使用的设计模式
- 性能测试驱动的选型方法
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.6目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/README.md" << 'EOF'
---
title: 并发容器详解
icon: container
order: 6
---

# 并发容器详解

本节详细介绍Java并发包中的并发容器，包括ConcurrentHashMap、CopyOnWriteArrayList、ConcurrentLinkedQueue等高性能线程安全集合，分析它们的实现原理、性能特性和适用场景，帮助读者掌握这些并发容器的使用方法，构建高效可靠的并发应用。
EOF

# 创建2.2.6.1文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.1-并发容器详解原理篇.md" << 'EOF'
---
title: 并发容器详解原理篇
icon: theory
order: 1
---

# 并发容器详解原理篇

## 并发容器的基本概念

- 并发容器的定义与特性
- 线程安全的实现方式
- 与同步容器的本质区别
- 并发容器的性能优势
- JUC包中的并发容器分类

## ConcurrentHashMap的实现原理

- ConcurrentHashMap的设计演进
- JDK 7中的分段锁机制
- JDK 8中的CAS+Synchronized
- 并发级别与扩容机制
- 弱一致性迭代器的实现

## CopyOnWriteArrayList的实现原理

- 写时复制的核心思想
- 读写分离的实现机制
- 不变性保证的线程安全
- 迭代器的快照特性
- 内存开销与适用场景

## 并发队列的实现原理

- ConcurrentLinkedQueue的无锁设计
- LinkedBlockingQueue的阻塞机制
- ArrayBlockingQueue的有界特性
- PriorityBlockingQueue的优先级排序
- DelayQueue的延迟处理机制

## 并发集合的性能特性

- 读写性能的权衡设计
- 并发度与吞吐量的关系
- 内存消耗的影响因素
- 弱一致性的性能优势
- 实际应用中的性能表现
EOF

# 创建2.2.6.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.2-并发容器设计原则.md" << 'EOF'
---
title: 并发容器设计原则
icon: principle
order: 2
---

# 并发容器设计原则

## 并发容器的核心设计思想

- 细粒度锁的应用原则
- 无锁算法的设计思路
- 读写分离的实现策略
- 不变性在并发中的应用
- 弱一致性与性能的平衡

## 并发安全的实现策略

- 互斥锁的应用场景
- CAS操作的优势与限制
- 分段锁的设计模式
- 写时复制的适用条件
- 原子变量的组合应用

## 性能优化的设计原则

- 减少锁竞争的技术
- 避免伪共享的方法
- 批量操作的优化策略
- 延迟初始化的安全实现
- 空间换时间的权衡

## 一致性模型的设计考量

- 强一致性的实现成本
- 弱一致性的应用场景
- 最终一致性的保证机制
- 一致性级别的选择因素
- 迭代器的一致性语义

## 可伸缩性的设计原则

- 避免串行点的设计方法
- 负载均衡的实现技术
- 动态调整的自适应机制
- 资源隔离的并发控制
- 可伸缩性测试与评估
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.6目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/README.md" << 'EOF'
---
title: 并发容器详解
icon: container
order: 6
---

# 并发容器详解

本节详细介绍Java并发包中的并发容器，包括ConcurrentHashMap、CopyOnWriteArrayList、ConcurrentLinkedQueue等高性能线程安全集合，分析它们的实现原理、性能特性和适用场景，帮助读者掌握这些并发容器的使用方法，构建高效可靠的并发应用。
EOF

# 创建2.2.6.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.3-ConcurrentHashMap实现原理.md" << 'EOF'
---
title: ConcurrentHashMap实现原理
icon: hashmap
order: 3
---

# ConcurrentHashMap实现原理

## ConcurrentHashMap的设计演进

- JDK 1.5引入的初始设计
- JDK 7中的分段锁实现
- JDK 8中的重大重构
- 设计思想的变化与演进
- 不同版本的性能对比

## JDK 7中的分段锁机制

- Segment数组的设计
- 分段锁的实现原理
- 并发级别的概念
- 锁分段的粒度控制
- 读操作的无锁设计

## JDK 8中的CAS+Synchronized

- 数据结构的变化
- 红黑树的引入条件
- CAS操作的应用场景
- Synchronized的细粒度应用
- 分段锁的淡化与优化

## 并发控制与安全机制

- 并发写入的冲突处理
- 扩容过程的并发控制
- 弱一致性的迭代器
- size()方法的实现变化
- 安全失败与快速失败

## 性能优化与实现细节

- 哈希冲突的处理策略
- 负载因子与初始容量
- 扩容阈值与扩容因子
- 树化与反树化的条件
- 并发读写的性能平衡
EOF

# 创建2.2.6.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.4-CopyOnWriteArrayList机制.md" << 'EOF'
---
title: CopyOnWriteArrayList机制
icon: copyonwrite
order: 4
---

# CopyOnWriteArrayList机制

## 写时复制的核心思想

- 写时复制的基本概念
- 不可变对象的线程安全性
- 读写分离的设计思路
- 写时复制在并发中的应用
- 与其他并发策略的对比

## CopyOnWriteArrayList的实现原理

- 内部数据结构的设计
- 读操作的无锁实现
- 写操作的加锁与复制
- 数组引用的原子更新
- 迭代器的快照特性

## 性能特性与适用场景

- 读多写少场景的优势
- 写操作的性能开销
- 内存消耗的考量
- 数据一致性的特点
- 适合与不适合的应用场景

## 与ArrayList和Vector的对比

- 线程安全实现方式的区别
- 性能特性的对比分析
- 迭代器行为的差异
- 内存使用的比较
- 选择依据与最佳实践

## 高级特性与注意事项

- 批量操作的实现机制
- 迭代过程中的修改处理
- 弱一致性的影响
- 内存泄漏的防范
- 性能优化的实践技巧
EOF

# 创建2.2.6.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.5-并发队列算法分析.md" << 'EOF'
---
title: 并发队列算法分析
icon: queue
order: 5
---

# 并发队列算法分析

## 并发队列的分类与特性

- 阻塞队列与非阻塞队列
- 有界队列与无界队列
- FIFO队列与优先级队列
- 单端队列与双端队列
- 并发队列的应用场景

## ConcurrentLinkedQueue的无锁算法

- Michael-Scott算法的实现
- CAS操作在入队出队中的应用
- 原子引用的使用技巧
- 无锁队列的性能优势
- ABA问题的处理方式

## LinkedBlockingQueue的实现机制

- 分离锁设计的优势
- 条件变量的应用
- 阻塞与唤醒的实现
- 容量控制的机制
- 与ArrayBlockingQueue的区别

## DelayQueue与优先级队列

- 延迟执行的实现原理
- 优先级排序的机制
- 堆数据结构的应用
- 时间轮算法的实现
- 定时任务的并发处理

## 并发队列的性能分析

- 吞吐量与延迟的测试方法
- 不同并发队列的性能对比
- 队列长度对性能的影响
- 生产者消费者比例的影响
- 实际应用中的选择策略
EOF

# 创建2.2.6.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.6-并发集合与同步包装器对比.md" << 'EOF'
---
title: 并发集合与同步包装器对比
icon: compare
order: 6
---

# 并发集合与同步包装器对比

## 同步包装器的基本概念

- Collections.synchronizedXXX的实现
- 装饰器模式在同步包装中的应用
- 同步包装器的锁粒度
- 同步包装器的一致性特性
- 同步包装器的性能特点

## 并发集合的设计优势

- 细粒度锁的应用
- 无锁算法的实现
- 读写分离的设计
- 弱一致性的性能优势
- 专为并发设计的数据结构

## 功能特性对比

- 迭代器行为的差异
- 原子操作的支持程度
- 条件操作的实现方式
- 批量操作的性能差异
- 异常处理的不同策略

## 性能对比分析

- 低并发下的性能比较
- 高并发下的性能比较
- 读写比例对性能的影响
- 扩展性与可伸缩性的对比
- 内存消耗的比较分析

## 选择指南与最佳实践

- 应用场景的选择依据
- 并发访问模式的考量
- 性能需求的权衡
- 功能需求的匹配
- 实际项目中的应用策略
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.6目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/README.md" << 'EOF'
---
title: 并发容器详解
icon: container
order: 6
---

# 并发容器详解

本节详细介绍Java并发包中的并发容器，包括ConcurrentHashMap、CopyOnWriteArrayList、ConcurrentLinkedQueue等高性能线程安全集合，分析它们的实现原理、性能特性和适用场景，帮助读者掌握这些并发容器的使用方法，构建高效可靠的并发应用。
EOF

# 创建2.2.6.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.2-并发容器详解实战篇.md" << 'EOF'
---
title: 并发容器详解实战篇
icon: practice
order: 2
---

# 并发容器详解实战篇

## 并发容器的基本使用

- 并发容器的创建与初始化
- 常用操作的线程安全性
- 迭代器的使用注意事项
- 批量操作的原子性考量
- 异常处理的最佳实践

## ConcurrentHashMap的实战应用

- ConcurrentHashMap的创建配置
- 高并发环境下的读写操作
- 原子性复合操作的实现
- 计算方法的高效应用
- 迭代与遍历的安全实现

## CopyOnWriteArrayList的实战应用

- CopyOnWriteArrayList的创建配置
- 读多写少场景的优化
- 迭代过程中的修改处理
- 批量操作的性能考量
- 内存占用的监控与优化

## 并发队列的实战应用

- 阻塞队列在生产者消费者模式中的应用
- 非阻塞队列的高性能使用
- 优先级队列的任务调度实现
- 延迟队列的定时任务处理
- 队列监控与性能调优

## 并发集合的性能测试与调优

- 并发基准测试的方法
- JMH工具的使用技巧
- 性能瓶颈的识别方法
- 常见性能问题的解决方案
- 实际项目中的调优案例
EOF

# 创建2.2.6.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.3-并发容器选型指南.md" << 'EOF'
---
title: 并发容器选型指南
icon: guide
order: 3
---

# 并发容器选型指南

## 并发容器的分类与特点

- Map类并发容器的对比
- List类并发容器的对比
- Queue类并发容器的对比
- Set类并发容器的对比
- 特殊用途并发容器介绍

## 选型的关键考量因素

- 并发访问模式的分析
- 读写比例的影响
- 数据规模的考量
- 性能需求的权衡
- 功能特性的匹配

## 常见应用场景的选型建议

- 缓存场景的容器选择
- 消息队列的容器选择
- 数据收集的容器选择
- 任务调度的容器选择
- 并发计数的容器选择

## 性能与功能的权衡

- 一致性与性能的平衡
- 内存占用与速度的权衡
- 并发度与复杂度的平衡
- 通用性与专用性的选择
- 学习成本与收益的考量

## 实际项目中的选型案例

- 高并发Web应用的选型
- 大数据处理系统的选型
- 实时交易系统的选型
- 分布式缓存的选型
- 微服务架构中的选型
EOF

# 创建2.2.6.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.4-ConcurrentHashMap最佳实践.md" << 'EOF'
---
title: ConcurrentHashMap最佳实践
icon: best-practice
order: 4
---

# ConcurrentHashMap最佳实践

## ConcurrentHashMap的高级特性

- 原子性复合操作的支持
- 计算方法的高效应用
- 批量操作的并行实现
- 弱一致性迭代的特点
- 并发度调整的机制

## 性能优化的最佳实践

- 初始容量的合理设置
- 负载因子的选择策略
- 并发级别的调整方法
- 减少哈希冲突的技巧
- 避免不必要的扩容

## 常见陷阱与解决方案

- 复合操作的原子性保证
- size()方法的一致性问题
- 迭代过程中的修改处理
- 弱一致性的影响与应对
- 内存泄漏的防范措施

## 实际应用模式与案例

- 高性能缓存的实现
- 并发计数器的设计
- 分段锁的自定义实现
- 异步更新的安全处理
- 批量操作的优化技巧

## 与其他Map实现的集成

- HashMap与ConcurrentHashMap的转换
- 与TreeMap的功能互补
- 与LinkedHashMap的结合使用
- 自定义Map与并发Map的整合
- 分布式环境下的扩展应用
EOF

# 创建2.2.6.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.5-写时复制容器应用场景.md" << 'EOF'
---
title: 写时复制容器应用场景
icon: scenario
order: 5
---

# 写时复制容器应用场景

## 写时复制容器的特性回顾

- 写时复制的核心机制
- 读操作的无锁设计
- 写操作的性能开销
- 内存消耗的特点
- 一致性保证的级别

## 适合的应用场景分析

- 读多写少的业务模型
- 集合大小相对较小的情况
- 迭代频繁的应用场景
- 对实时性要求不高的系统
- 内存资源充足的环境

## 不适合的场景与替代方案

- 写入频繁的业务模型
- 大数据量的集合管理
- 实时一致性要求高的系统
- 内存资源受限的环境
- 替代方案的选择指南

## 实际应用案例分析

- 配置信息管理系统
- 缓存读取优化设计
- 事件监听器注册表
- 路由表与规则引擎
- 用户权限管理系统

## 性能优化与最佳实践

- 写操作批量化的技巧
- 内存占用的监控方法
- 垃圾回收的优化策略
- 与其他容器的混合使用
- 实际项目中的调优经验
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.6目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/README.md" << 'EOF'
---
title: 并发容器详解
icon: container
order: 6
---

# 并发容器详解

本节详细介绍Java并发包中的并发容器，包括ConcurrentHashMap、CopyOnWriteArrayList、ConcurrentLinkedQueue等高性能线程安全集合，分析它们的实现原理、性能特性和适用场景，帮助读者掌握这些并发容器的使用方法，构建高效可靠的并发应用。
EOF

# 创建2.2.6.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.6-并发队列实际应用.md" << 'EOF'
---
title: 并发队列实际应用
icon: application
order: 6
---

# 并发队列实际应用

## 生产者-消费者模式实现

- 阻塞队列在生产者-消费者中的应用
- 多生产者多消费者的协作机制
- 平衡生产与消费速率的策略
- 异常处理与恢复机制
- 性能优化与监控方法

## 任务调度系统的实现

- 优先级队列在任务调度中的应用
- 延迟队列实现定时任务
- 任务取消与中断的处理
- 动态调整任务优先级
- 调度系统的监控与统计

## 数据流处理系统

- 并发队列在流处理中的应用
- 数据分片与并行处理
- 背压机制的实现方式
- 处理顺序与结果合并
- 流量控制与系统稳定性

## 消息中间件的核心实现

- 并发队列在消息系统中的应用
- 消息持久化与内存队列
- 消息确认与重试机制
- 主题订阅模型的实现
- 高可用与负载均衡设计

## 实际案例分析与最佳实践

- 高并发Web应用的队列应用
- 日志收集系统的队列设计
- 实时分析系统的数据流
- 微服务架构中的消息队列
- 性能瓶颈分析与优化案例
EOF

# 创建2.2.6.7文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.6-并发容器详解/2.2.6.7-性能测试与调优.md" << 'EOF'
---
title: 性能测试与调优
icon: performance
order: 7
---

# 性能测试与调优

## 并发容器性能测试方法

- 性能测试的关键指标
- JMH基准测试框架的使用
- 多线程测试的设计原则
- 测试环境的搭建与配置
- 测试结果的分析与解读

## 常见性能瓶颈分析

- 锁竞争导致的性能问题
- 内存分配与GC的影响
- 伪共享问题的识别
- 线程调度开销的分析
- 数据结构选择的影响

## 并发容器的调优策略

- 初始容量与负载因子的调整
- 并发级别的优化设置
- 批量操作的合理使用
- 读写分离的实现技巧
- 缓存友好的数据结构设计

## 实际系统的性能优化案例

- 高并发缓存系统的优化
- 消息处理系统的吞吐量提升
- 数据分析平台的延迟优化
- 交易系统的响应时间改进
- 微服务架构的性能调优

## 性能监控与持续优化

- 性能指标的实时监控
- JVM性能分析工具的应用
- 线程转储的分析方法
- 性能回归测试的实施
- 持续优化的最佳实践
EOF

# 创建2.2.7目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/README.md" << 'EOF'
---
title: 阻塞队列应用
icon: queue
order: 7
---

# 阻塞队列应用

本节详细介绍Java并发包中的阻塞队列，包括ArrayBlockingQueue、LinkedBlockingQueue、PriorityBlockingQueue等实现，分析它们的特性、使用方法和应用场景，帮助读者掌握阻塞队列在生产者-消费者模式、线程池、任务调度等场景中的应用技巧，构建高效可靠的并发系统。
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.7目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/README.md" << 'EOF'
---
title: 阻塞队列应用
icon: queue
order: 7
---

# 阻塞队列应用

本节详细介绍Java并发包中的阻塞队列，包括ArrayBlockingQueue、LinkedBlockingQueue、PriorityBlockingQueue等实现，分析它们的特性、使用方法和应用场景，帮助读者掌握阻塞队列在生产者-消费者模式、线程池、任务调度等场景中的应用技巧，构建高效可靠的并发系统。
EOF

# 创建2.2.7.1文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.1-阻塞队列应用原理篇.md" << 'EOF'
---
title: 阻塞队列应用原理篇
icon: theory
order: 1
---

# 阻塞队列应用原理篇

## 阻塞队列的基本概念

- 阻塞队列的定义与特性
- 阻塞操作的实现机制
- 线程安全的保证方式
- 与非阻塞队列的区别
- 阻塞队列在并发编程中的地位

## 阻塞队列的核心接口

- BlockingQueue接口的设计
- 核心方法的语义与行为
- 阻塞与非阻塞方法的区别
- 超时机制的实现原理
- 异常处理的设计模式

## 阻塞队列的内部实现机制

- 锁与条件变量的应用
- 线程等待与唤醒的过程
- 入队与出队的原子性保证
- 容量控制的实现方式
- 线程安全的迭代器实现

## 阻塞队列的性能特性

- 不同实现的性能对比
- 吞吐量与延迟的权衡
- 内存消耗的影响因素
- 并发度对性能的影响
- 实际应用中的性能表现

## 阻塞队列的应用场景

- 生产者-消费者模式的实现
- 线程池中的任务队列
- 资源池的请求队列
- 消息传递的中间媒介
- 流量控制与背压机制
EOF

# 创建2.2.7.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.2-阻塞队列设计原理.md" << 'EOF'
---
title: 阻塞队列设计原理
icon: design
order: 2
---

# 阻塞队列设计原理

## 阻塞队列的设计目标

- 线程安全的队列操作
- 高效的线程协作机制
- 可控的阻塞与唤醒
- 灵活的超时处理
- 可靠的异常处理策略

## 阻塞队列的核心设计模式

- 生产者-消费者模式的应用
- 监视器模式在队列中的实现
- 条件变量的设计与应用
- 双缓冲区的设计思想
- 分离锁的设计策略

## 阻塞与非阻塞操作的设计

- 四种操作类型的设计理念
- 抛出异常的操作设计
- 返回特殊值的操作设计
- 阻塞操作的实现机制
- 超时操作的时间控制

## 容量控制与边界处理

- 有界队列的容量管理
- 无界队列的增长控制
- 满队列的阻塞策略
- 空队列的等待机制
- 边界条件的处理设计

## 线程安全与性能平衡

- 锁粒度的设计考量
- 条件信号的精确通知
- 批量操作的原子性保证
- 内存一致性的保证机制
- 性能与安全的权衡设计
EOF

# 创建2.2.7.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.3-常见阻塞队列实现分析.md" << 'EOF'
---
title: 常见阻塞队列实现分析
icon: analysis
order: 3
---

# 常见阻塞队列实现分析

## ArrayBlockingQueue的实现分析

- 基于数组的循环队列实现
- 单锁设计的线程安全保证
- 公平性选项的实现机制
- 迭代器的弱一致性特性
- 性能特点与适用场景

## LinkedBlockingQueue的实现分析

- 基于链表的队列实现
- 分离锁设计的并发优化
- 容量控制的实现方式
- 与ArrayBlockingQueue的对比
- 性能特点与适用场景

## SynchronousQueue的实现分析

- 零容量队列的特殊设计
- 直接交付的实现机制
- 公平模式与非公平模式
- 内部算法的演进历史
- 性能特点与适用场景

## DelayQueue的实现分析

- 延迟优先级队列的设计
- 时间轮算法的应用
- 定时任务的处理机制
- 内部排序的实现方式
- 性能特点与适用场景

## LinkedTransferQueue的实现分析

- 传输队列的设计理念
- 无锁算法的应用
- 三种操作模式的实现
- 与其他队列的功能对比
- 性能特点与适用场景
EOF

# 创建2.2.7.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.4-优先级队列实现机制.md" << 'EOF'
---
title: 优先级队列实现机制
icon: priority
order: 4
---

# 优先级队列实现机制

## 优先级队列的基本概念

- 优先级队列的定义与特性
- 优先级的表示与比较
- 与普通队列的区别
- 优先级反转的问题
- 应用场景与使用价值

## PriorityBlockingQueue的实现原理

- 基于堆的数据结构
- 线程安全的实现机制
- 动态扩容的设计
- 比较器的应用
- 迭代顺序的特点

## 优先级队列的核心算法

- 堆数据结构的实现
- 上浮与下沉操作
- 插入操作的实现
- 删除操作的实现
- 堆排序的应用

## 优先级队列的性能特性

- 各种操作的时间复杂度
- 内存占用的分析
- 并发性能的影响因素
- 与其他队列的性能对比
- 性能优化的方向

## 优先级队列的高级应用

- 任务调度系统的实现
- 事件处理的优先级控制
- 图算法中的应用
- 多级反馈队列的设计
- 实时系统中的应用
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.7目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/README.md" << 'EOF'
---
title: 阻塞队列应用
icon: queue
order: 7
---

# 阻塞队列应用

本节详细介绍Java并发包中的阻塞队列，包括ArrayBlockingQueue、LinkedBlockingQueue、PriorityBlockingQueue等实现，分析它们的特性、使用方法和应用场景，帮助读者掌握阻塞队列在生产者-消费者模式、线程池、任务调度等场景中的应用技巧，构建高效可靠的并发系统。
EOF

# 创建2.2.7.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.5-延迟队列原理.md" << 'EOF'
---
title: 延迟队列原理
icon: delay
order: 5
---

# 延迟队列原理

## 延迟队列的基本概念

- 延迟队列的定义与特性
- 延迟执行的核心思想
- 与普通队列的区别
- 延迟元素的设计
- 应用场景与使用价值

## DelayQueue的实现原理

- DelayQueue的内部结构
- 优先级队列的应用
- Delayed接口的设计
- 时间管理的实现机制
- 线程安全的保证方式

## 延迟元素的设计与实现

- Delayed接口的核心方法
- 比较器的实现策略
- 时间计算的精度控制
- 过期判断的实现
- 自定义延迟元素的设计

## 延迟队列的工作机制

- 入队操作的处理流程
- 出队操作的阻塞机制
- 等待与唤醒的实现
- 超时处理的设计
- 线程协作的内部过程

## 延迟队列的高级特性

- 时间轮算法的应用
- 定时任务的调度机制
- 批量延迟处理的实现
- 性能优化的关键点
- 与其他调度方案的对比
EOF

# 创建2.2.7.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.6-阻塞算法与非阻塞算法.md" << 'EOF'
---
title: 阻塞算法与非阻塞算法
icon: algorithm
order: 6
---

# 阻塞算法与非阻塞算法

## 阻塞与非阻塞的基本概念

- 阻塞与非阻塞的定义
- 线程状态转换的区别
- 资源利用的差异
- 响应性能的对比
- 编程复杂度的比较

## 阻塞算法的实现机制

- 锁与条件变量的应用
- 线程挂起与唤醒的过程
- 阻塞队列的典型实现
- 阻塞算法的优缺点
- 适用场景分析

## 非阻塞算法的实现机制

- CAS操作的核心原理
- 原子变量的应用
- 自旋与回退策略
- ABA问题及解决方案
- 无锁队列的实现思路

## 两种算法在队列中的应用

- 阻塞队列的实现分析
- 非阻塞队列的实现分析
- ConcurrentLinkedQueue的无锁设计
- LinkedBlockingQueue的阻塞设计
- 性能特性的对比分析

## 选择策略与最佳实践

- 场景适应性的分析
- 性能需求的考量
- 资源限制的影响
- 混合策略的应用
- 实际项目中的选择指南
EOF

# 创建2.2.7.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.2-阻塞队列应用实战篇.md" << 'EOF'
---
title: 阻塞队列应用实战篇
icon: practice
order: 2
---

# 阻塞队列应用实战篇

## 阻塞队列的基本使用

- 阻塞队列的创建与配置
- 四种操作方法的实际应用
- 超时机制的使用技巧
- 异常处理的最佳实践
- 队列容量的合理设置

## 不同阻塞队列的选择策略

- ArrayBlockingQueue的应用场景
- LinkedBlockingQueue的应用场景
- SynchronousQueue的应用场景
- PriorityBlockingQueue的应用场景
- DelayQueue的应用场景

## 线程池中的阻塞队列应用

- 任务队列的选择策略
- 队列大小对线程池的影响
- 拒绝策略与队列的关系
- 任务优先级的实现方式
- 动态调整的实现技巧

## 消息系统中的阻塞队列应用

- 消息缓冲区的实现
- 消息分发的队列设计
- 消息优先级的处理
- 消息延迟处理的实现
- 消息持久化的设计

## 高并发系统的队列优化

- 队列性能的监控方法
- 队列瓶颈的识别与解决
- 批量操作的优化技巧
- 内存效率的提升方法
- 实际项目中的调优案例
EOF

# 创建2.2.7.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.3-生产者-消费者模式实现.md" << 'EOF'
---
title: 生产者-消费者模式实现
icon: producer-consumer
order: 3
---

# 生产者-消费者模式实现

## 生产者-消费者模式基础

- 模式的核心概念与原理
- 解耦生产与消费的优势
- 缓冲区的作用与设计
- 线程协作的基本机制
- 实现方式的演进历史

## 基于阻塞队列的实现方案

- 阻塞队列简化实现的优势
- 生产者线程的设计模式
- 消费者线程的设计模式
- 多生产者多消费者的协调
- 异常处理与恢复机制

## 高级特性的实现

- 背压机制的设计与实现
- 消费者优先级的处理
- 生产者限流的实现
- 动态调整处理能力
- 优雅关闭的实现方式

## 实际应用案例分析

- 日志处理系统的队列设计
- 任务调度系统的实现
- 消息中间件的核心架构
- 数据处理管道的构建
- 实时分析系统的设计

## 性能优化与最佳实践

- 队列容量的合理设置
- 批量处理的实现技巧
- 避免队列饥饿的策略
- 监控与告警的实现
- 性能测试与调优方法
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.7目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/README.md" << 'EOF'
---
title: 阻塞队列应用
icon: queue
order: 7
---

# 阻塞队列应用

本节详细介绍Java并发包中的阻塞队列，包括ArrayBlockingQueue、LinkedBlockingQueue、PriorityBlockingQueue等实现，分析它们的特性、使用方法和应用场景，帮助读者掌握阻塞队列在生产者-消费者模式、线程池、任务调度等场景中的应用技巧，构建高效可靠的并发系统。
EOF

# 创建2.2.7.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.4-线程池中的应用.md" << 'EOF'
---
title: 线程池中的应用
icon: threadpool
order: 4
---

# 线程池中的应用

## 线程池与阻塞队列的关系

- 阻塞队列作为任务缓冲区的角色
- 线程池的工作队列设计
- 队列类型对线程池行为的影响
- 线程池的核心组件交互
- 任务提交与执行的流程

## 不同队列对线程池的影响

- ArrayBlockingQueue的有界特性影响
- LinkedBlockingQueue的无界特性影响
- SynchronousQueue的直接交付特性
- PriorityBlockingQueue的优先级调度
- DelayQueue的延迟执行特性

## 线程池参数与队列的协调

- 核心线程数与队列容量的平衡
- 最大线程数与队列类型的关系
- 拒绝策略与队列容量的关联
- 线程存活时间与队列积压的关系
- 参数调优的最佳实践

## 常见线程池配置模式

- FixedThreadPool的队列配置
- CachedThreadPool的队列配置
- ScheduledThreadPool的队列配置
- SingleThreadExecutor的队列配置
- 自定义线程池的队列选择策略

## 线程池队列的监控与调优

- 队列积压的监控方法
- 任务执行时间的统计
- 队列容量的动态调整
- 线程池参数的实时优化
- 性能瓶颈的识别与解决
EOF

# 创建2.2.7.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.5-异步任务处理框架.md" << 'EOF'
---
title: 异步任务处理框架
icon: async
order: 5
---

# 异步任务处理框架

## 异步任务处理的基本概念

- 异步处理的核心思想
- 任务提交与执行分离
- 结果获取与回调机制
- 异步框架的基本组件
- 与同步处理的对比优势

## 基于阻塞队列的异步框架设计

- 任务队列的设计与选择
- 工作线程的管理机制
- 任务优先级的实现
- 结果返回的处理方式
- 异常处理的策略

## CompletableFuture与阻塞队列

- CompletableFuture的实现原理
- 内部队列的应用
- 任务编排与依赖管理
- 异步回调的实现机制
- 与传统Future的对比

## 自定义异步框架实现

- 框架核心组件的设计
- 任务提交接口的实现
- 结果获取机制的设计
- 任务取消与中断的支持
- 资源管理与释放机制

## 实际应用案例分析

- Web应用的异步请求处理
- 批处理系统的任务调度
- 消息驱动架构的实现
- 实时数据处理的异步框架
- 分布式系统的异步协作
EOF

# 创建2.2.7.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.6-有界队列与背压机制.md" << 'EOF'
---
title: 有界队列与背压机制
icon: backpressure
order: 6
---

# 有界队列与背压机制

## 背压机制的基本概念

- 背压的定义与作用
- 流量控制的必要性
- 系统稳定性与背压的关系
- 背压与限流的区别
- 背压机制的应用场景

## 有界队列实现背压的原理

- 有界队列的容量限制特性
- 队列满时的阻塞行为
- 生产者速率自动调节机制
- 消费者处理能力的保护
- 系统资源的合理利用

## 背压机制的实现策略

- 阻塞式背压的实现
- 信号反馈式背压的实现
- 丢弃策略的设计
- 动态调整的背压机制
- 分层背压的架构设计

## 背压在响应式编程中的应用

- Reactive Streams规范中的背压
- Publisher与Subscriber的协作
- 请求量控制的实现
- RxJava中的背压策略
- Project Reactor的背压支持

## 实际系统中的背压应用

- 微服务架构中的背压设计
- 大数据处理系统的流量控制
- 消息中间件的背压机制
- 实时流处理的稳定性保证
- 高并发Web系统的保护策略
EOF

# 创建2.2.7.7文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.7-阻塞队列应用/2.2.7.7-常见阻塞队列使用案例.md" << 'EOF'
---
title: 常见阻塞队列使用案例
icon: case
order: 7
---

# 常见阻塞队列使用案例

## 日志收集系统的实现

- 异步日志框架的队列设计
- 多级缓冲的实现方式
- 日志丢失风险的控制
- 峰值流量的处理策略
- 实际项目中的最佳实践

## 任务调度系统的设计

- 基于优先级队列的调度器
- 延迟队列实现定时任务
- 任务依赖关系的处理
- 调度系统的可靠性保证
- 大规模任务的调度优化

## 消息中间件的核心实现

- 消息队列的内部设计
- 消息分发与订阅机制
- 持久化与内存队列的结合
- 高可用设计中的队列应用
- 性能优化的关键技术

## 缓存系统的异步更新

- 写后异步更新的实现
- 缓存一致性的保证
- 失败重试的机制设计
- 更新优先级的控制
- 系统性能的平衡策略

## 高并发Web应用的请求处理

- 请求队列的设计与实现
- 请求优先级的处理策略
- 服务降级与过载保护
- 请求超时的处理机制
- 系统吞吐量的优化方法
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.8目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/README.md" << 'EOF'
---
title: 线程池原理与使用
icon: threadpool
order: 8
---

# 线程池原理与使用

本节详细介绍Java并发包中的线程池机制，包括ThreadPoolExecutor的实现原理、核心参数配置、工作流程和使用策略，帮助读者深入理解线程池的设计思想和内部机制，掌握线程池在高并发场景下的应用技巧，提升系统的性能和稳定性。
EOF

# 创建2.2.8.1文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/2.2.8.1-线程池原理与使用原理篇.md" << 'EOF'
---
title: 线程池原理与使用原理篇
icon: theory
order: 1
---

# 线程池原理与使用原理篇

## 线程池的基本概念

- 线程池的定义与作用
- 线程池解决的核心问题
- 线程池的优势与应用场景
- 线程复用的基本原理
- Java中的线程池体系结构

## ThreadPoolExecutor的核心实现

- ThreadPoolExecutor的类层次结构
- 核心组件与内部状态
- 线程池的生命周期管理
- 工作线程的创建与回收
- 任务队列的管理机制

## 线程池的工作原理

- 任务提交与执行流程
- 核心线程与非核心线程的区别
- 线程池容量的动态调整
- 任务拒绝策略的触发条件
- 线程池关闭的处理流程

## 线程池的状态转换

- 线程池的五种状态定义
- 状态转换的触发条件
- 状态与容量的复合控制
- 状态对任务执行的影响
- 状态转换的原子性保证

## 线程池的任务调度机制

- 任务优先级的处理
- 公平性与效率的平衡
- 任务窃取的实现机制
- 工作线程的调度策略
- 任务执行的异常处理
EOF

# 创建2.2.8.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/2.2.8.2-线程池设计思想.md" << 'EOF'
---
title: 线程池设计思想
icon: design
order: 2
---

# 线程池设计思想

## 线程池的设计目标

- 资源复用的核心思想
- 性能优化的设计目标
- 系统稳定性的保障
- 可管理性的设计考量
- 可扩展性的架构设计

## 线程池的核心设计模式

- 生产者-消费者模式的应用
- 工作窃取模式的实现
- 资源池化的设计思想
- 命令模式在任务执行中的应用
- 策略模式在拒绝处理中的应用

## 线程池的参数设计

- 核心线程数的设计考量
- 最大线程数的限制因素
- 队列容量的平衡策略
- 线程存活时间的优化
- 拒绝策略的选择依据

## 线程池的安全设计

- 线程安全的实现机制
- 状态一致性的保证
- 任务提交的原子性
- 异常处理的安全机制
- 资源泄露的防范设计

## 线程池的性能设计

- 减少锁竞争的设计策略
- 任务分配的效率优化
- 线程创建与销毁的开销控制
- 内存使用的优化考量
- 可伸缩性的设计原则
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.8目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/README.md" << 'EOF'
---
title: 线程池原理与使用
icon: threadpool
order: 8
---

# 线程池原理与使用

本节详细介绍Java并发包中的线程池机制，包括ThreadPoolExecutor的实现原理、核心参数配置、工作流程和使用策略，帮助读者深入理解线程池的设计思想和内部机制，掌握线程池在高并发场景下的应用技巧，提升系统的性能和稳定性。
EOF

# 创建2.2.8.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/2.2.8.3-任务调度与执行流程.md" << 'EOF'
---
title: 任务调度与执行流程
icon: workflow
order: 3
---

# 任务调度与执行流程

## 任务提交的处理流程

- 任务提交的入口方法
- execute与submit的区别
- 任务包装与适配过程
- 执行策略的判断逻辑
- 任务入队与线程创建的决策

## 核心线程的创建与管理

- 核心线程的定义与特性
- 核心线程的创建时机
- 预启动核心线程的机制
- 核心线程的回收策略
- 核心线程数的动态调整

## 任务队列与线程扩展

- 队列已满时的处理策略
- 非核心线程的创建条件
- 最大线程数的限制作用
- 线程数量的动态变化
- 任务执行的优先级控制

## Worker线程的工作机制

- Worker的设计与实现
- 线程启动与任务获取
- 任务执行的生命周期
- 空闲线程的等待策略
- 线程退出的触发条件

## 任务执行的异常处理

- 未捕获异常的处理机制
- execute与submit的异常区别
- Future中的异常传递
- 异常处理器的自定义
- 线程池稳定性的保证
EOF

# 创建2.2.8.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/2.2.8.4-线程池状态转换.md" << 'EOF'
---
title: 线程池状态转换
icon: state
order: 4
---

# 线程池状态转换

## 线程池的状态定义

- 五种状态的含义与作用
- RUNNING状态的特性
- SHUTDOWN状态的特性
- STOP状态的特性
- TIDYING与TERMINATED状态的特性
- 状态与线程数的复合控制

## 状态转换的触发条件

- RUNNING到SHUTDOWN的转换
- SHUTDOWN到TIDYING的转换
- RUNNING到STOP的转换
- STOP到TIDYING的转换
- TIDYING到TERMINATED的转换

## 状态转换的原子性保证

- ctl变量的设计与实现
- 高位表示状态的位操作
- 低位表示线程数的位操作
- CAS操作保证状态转换的原子性
- 状态检查与转换的辅助方法

## 状态对任务执行的影响

- 各状态下的任务提交行为
- 各状态下的任务执行行为
- 各状态下的线程创建行为
- 各状态下的线程终止行为
- 状态转换对正在执行任务的影响

## 线程池关闭的处理流程

- shutdown()方法的实现机制
- shutdownNow()方法的实现机制
- 优雅关闭与强制关闭的区别
- 关闭过程中的任务处理
- 等待终止的实现方式
EOF

# 创建2.2.8.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/2.2.8.5-任务队列与拒绝策略.md" << 'EOF'
---
title: 任务队列与拒绝策略
icon: queue
order: 5
---

# 任务队列与拒绝策略

## 任务队列的类型与选择

- 常用阻塞队列的特性对比
- ArrayBlockingQueue的应用场景
- LinkedBlockingQueue的应用场景
- SynchronousQueue的应用场景
- PriorityBlockingQueue的应用场景
- DelayQueue的应用场景

## 队列容量对线程池的影响

- 无界队列的风险与应用
- 有界队列的容量设计
- 队列容量与线程数的平衡
- 队列选择对性能的影响
- 实际应用中的队列配置策略

## 拒绝策略的设计与实现

- RejectedExecutionHandler接口
- AbortPolicy的实现与应用
- CallerRunsPolicy的实现与应用
- DiscardPolicy的实现与应用
- DiscardOldestPolicy的实现与应用
- 拒绝策略的触发条件

## 自定义拒绝策略的实现

- 自定义拒绝策略的设计思路
- 任务重试机制的实现
- 任务降级处理的实现
- 任务日志记录与监控
- 动态调整策略的实现

## 拒绝策略的最佳实践

- 不同场景下的策略选择
- 避免任务丢失的方法
- 系统过载保护的实现
- 拒绝策略与监控的结合
- 实际项目中的应用案例
EOF

# 创建2.2.8.6文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/2.2.8.6-线程池监控机制.md" << 'EOF'
---
title: 线程池监控机制
icon: monitor
order: 6
---

# 线程池监控机制

## 线程池的监控指标

- 核心监控指标的定义
- 活跃线程数的监控
- 队列积压的监控
- 任务执行时间的监控
- 拒绝任务数的监控
- 线程池状态的监控

## ThreadPoolExecutor的监控方法

- getPoolSize()的使用
- getActiveCount()的使用
- getCompletedTaskCount()的使用
- getLargestPoolSize()的使用
- getTaskCount()的使用
- getQueue()的使用与风险

## 扩展线程池实现监控

- beforeExecute()的应用
- afterExecute()的应用
- terminated()的应用
- 任务执行时间的统计
- 异常情况的监控
- 自定义指标的收集

## 线程池监控框架的实现

- 监控数据的采集机制
- 实时监控的实现方式
- 监控数据的存储策略
- 告警阈值的设置
- 监控面板的设计

## 线程池监控的最佳实践

- 监控与动态调整的结合
- 性能瓶颈的识别方法
- 容量规划的数据支持
- 监控驱动的优化策略
- 实际项目中的监控案例
EOF
BASE_DIR="/Users/guanrunbai/my/kphub/src/java-backend"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Java后端开发知识体系
icon: java
order: 1
---

# Java后端开发知识体系

本知识库系统地整理了Java后端开发工程师所需掌握的核心知识和技能，从基础语法到高级特性，从单体应用到分布式架构，全面涵盖Java后端开发的各个方面。
EOF

# 创建第2章目录
mkdir -p "$BASE_DIR/第2章-并发编程"
cat > "$BASE_DIR/第2章-并发编程/README.md" << 'EOF'
---
title: 并发编程
icon: thread
order: 2
---

# 并发编程

本章节深入探讨Java并发编程的核心概念、基础理论和实践技术，包括线程基础、锁机制、并发容器、线程池、异步编程等内容，帮助读者全面掌握Java多线程编程技能，构建高性能、可靠的并发应用。
EOF

# 创建2.2目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/README.md" << 'EOF'
---
title: JUC并发包
icon: package
order: 2
---

# JUC并发包

本节详细介绍Java并发编程中的JUC(java.util.concurrent)包，包括原子类、锁机制、并发集合、线程池、同步工具等核心组件，帮助读者掌握这些高级并发工具的使用方法和实现原理，提升并发程序的性能和可靠性。
EOF

# 创建2.2.8目录
mkdir -p "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用"
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/README.md" << 'EOF'
---
title: 线程池原理与使用
icon: threadpool
order: 8
---

# 线程池原理与使用

本节详细介绍Java并发包中的线程池机制，包括ThreadPoolExecutor的实现原理、核心参数配置、工作流程和使用策略，帮助读者深入理解线程池的设计思想和内部机制，掌握线程池在高并发场景下的应用技巧，提升系统的性能和稳定性。
EOF

# 创建2.2.8.2文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/2.2.8.2-线程池原理与使用实战篇.md" << 'EOF'
---
title: 线程池原理与使用实战篇
icon: practice
order: 2
---

# 线程池原理与使用实战篇

## 线程池的基本使用

- ThreadPoolExecutor的创建与配置
- Executors工厂方法的使用
- 任务提交的不同方式
- 获取执行结果的方法
- 线程池的关闭方式

## 常用线程池类型及应用

- FixedThreadPool的特性与应用场景
- CachedThreadPool的特性与应用场景
- SingleThreadExecutor的特性与应用场景
- ScheduledThreadPool的特性与应用场景
- ForkJoinPool的特性与应用场景

## 线程池在Web应用中的实践

- Web服务器中的线程池配置
- 处理HTTP请求的线程池策略
- 异步处理的线程池设计
- 避免线程池死锁的方法
- 线程池与Web容器的交互

## 线程池在批处理系统中的应用

- 大数据量处理的线程池设计
- 任务分片与并行处理
- 批处理任务的优先级控制
- 处理结果的汇总策略
- 异常处理与任务重试

## 线程池在微服务架构中的应用

- 微服务中的线程池隔离
- 服务调用的线程池配置
- 熔断降级中的线程池应用
- 资源隔离的实现方式
- 分布式系统的线程池监控
EOF

# 创建2.2.8.3文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/2.2.8.3-线程池参数配置策略.md" << 'EOF'
---
title: 线程池参数配置策略
icon: config
order: 3
---

# 线程池参数配置策略

## 核心线程数的配置策略

- CPU密集型任务的线程数配置
- IO密集型任务的线程数配置
- 混合型任务的线程数估算
- 动态调整核心线程数的方法
- 实际业务场景的线程数计算

## 最大线程数的配置策略

- 最大线程数的限制因素
- 系统资源与最大线程数的关系
- 任务特性对最大线程数的影响
- 峰值流量下的线程数估算
- 最大线程数的动态调整

## 队列容量的配置策略

- 队列类型的选择依据
- 有界队列的容量估算
- 无界队列的风险控制
- 队列容量与系统内存的关系
- 队列容量的监控与调整

## 线程存活时间的配置策略

- 非核心线程的回收策略
- 核心线程超时配置的应用
- 线程存活时间的合理设置
- 线程复用效率的优化
- 系统负载变化下的调整策略

## 拒绝策略的选择与配置

- 不同拒绝策略的应用场景
- 任务重要性与拒绝策略的关系
- 系统稳定性与拒绝策略的选择
- 自定义拒绝策略的设计思路
- 拒绝策略与监控告警的结合
EOF

# 创建2.2.8.4文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/2.2.8.4-自定义线程池实现.md" << 'EOF'
---
title: 自定义线程池实现
icon: custom
order: 4
---

# 自定义线程池实现

## 扩展ThreadPoolExecutor

- 继承ThreadPoolExecutor的方法
- 重写beforeExecute()方法的应用
- 重写afterExecute()方法的应用
- 重写terminated()方法的应用
- 添加自定义功能的实现思路

## 自定义线程工厂

- ThreadFactory接口的实现
- 自定义线程命名的实现
- 线程优先级的设置
- 线程组的管理
- 守护线程的配置

## 自定义拒绝策略

- RejectedExecutionHandler接口的实现
- 任务重试机制的设计
- 任务降级处理的实现
- 任务持久化的策略
- 拒绝任务的日志与监控

## 可监控的线程池实现

- 线程池运行状态的收集
- 任务执行时间的统计
- 任务成功率的计算
- 线程池性能指标的暴露
- 与监控系统的集成方式

## 动态调整的线程池实现

- 参数动态调整的设计
- 基于负载的自适应调整
- 配置中心的集成方式
- 热更新的实现机制
- 动态调整的安全保障
EOF

# 创建2.2.8.5文件
cat > "$BASE_DIR/第2章-并发编程/2.2-JUC并发包/2.2.8-线程池原理与使用/2.2.8.5-常见线程池使用错误.md" << 'EOF'
---
title: 常见线程池使用错误
icon: error
order: 5
---

# 常见线程池使用错误

## Executors工厂方法的隐患

- newFixedThreadPool的潜在问题
- newCachedThreadPool的风险
- newSingleThreadExecutor的局限
- newScheduledThreadPool的注意事项
- 为什么应该直接使用ThreadPoolExecutor

## 线程池配置不当的问题

- 线程数设置过小的影响
- 线程数设置过大的后果
- 队列容量配置不当的风险
- 拒绝策略选择不当的影响
- 参数组合不合理的案例分析

## 任务设计的常见错误

- 任务执行时间过长的影响
- 任务中的阻塞操作问题
- 任务依赖设计不当导致的死锁
- 任务异常处理不当的后果
- 资源泄露的常见原因

## 线程池管理的错误

- 线程池创建过多的问题
- 线程池关闭不当的后果
- 线程池复用不当的风险
- 缺乏监控导致的问题
- 生命周期管理不当的案例

## 实际项目中的错误案例

- 高并发系统的线程池崩溃案例
- Web应用的请求处理超时问题
- 批处理系统的内存溢出案例
- 微服务架构中的线程池隔离失效
- 问题诊断与修复的最佳实践
EOF