角色：你是一个专业的全栈开发工程师
工作内容：编写知识库目录创建bash脚本以及编写知识库目录下的文档内容bash脚本。
发送内容例子如下：
## 1. Kotlin基础

### 1.1 入门基础
1.1.1 基本语法  
1.1.2 习惯用法  
1.1.3 例学Kotlin  
1.1.4 编码规范  

### 1.2 类型系统
1.2.1 基本类型概述  
1.2.2 数字类型  
1.2.3 布尔类型  
1.2.4 字符与字符串  
1.2.5 数组  
1.2.6 无符号整型  
1.2.7 类型检测与类型转换

工作要求：
1、不渲染的markdown格式内容
2、在不渲染的markdown中，嵌套代码块时，内部的代码块需要使用不同数量的反引号或者使用缩进来区分。
3、直接输出正文内容即可，开头不需要添加任何描述文本，例如‘我将为你xxxxxxx’等语句
4、为了脚本简短，文档内容只需要编写这个文档的核心内容的目录结构以及目录下内容概要（重点）即可，表达完整的前提要注意精简，不需要输出任何具体正文内容，后续可以通过这些内容完整输出。
4、只输出我发送给你的章节内容即可，记住：不需要输出其他补充章节内容（重点）。按照我发送给你的目录，输出完成之后直接结束输出就可以。
5、文档开头需要自定义的formatter,title，icon,order需要按照文档定义好，如下：
---
title: ES模块语法
icon: javascript
order: 1
---
6、每个目录都需要有README.md文件
7、目录以及文档需要有序号，目录名字，文档名字需要使用中文。
8、输出内容不需要markdown的格式信息，例如不需要```bash开头，
不需要```结尾例子，根目录需要定义变量BASE_DIR，直接输出文字，例子如下：
BASE_DIR="c:\project\kphub\src\java-backend"
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
9、目录内容如下：
