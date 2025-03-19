---
title: 原型与继承
icon: javascript
order: 1
---

# 原型与继承

原型是JavaScript面向对象编程的核心机制。本节将深入探讨原型链、继承模式以及相关的高级概念。

## 内容概览

JavaScript的原型系统是其面向对象编程的基础，与传统的基于类的继承有很大不同。通过原型链，JavaScript实现了对象之间的属性和方法共享，为代码复用提供了灵活的机制。

本节包含以下主题：

### [原型链详解](./3.1.1-原型链详解.md)

深入理解JavaScript的原型链机制，包括：
- 原型与构造函数的关系
- `__proto__`与`prototype`属性
- 属性查找过程
- 原型链的终点
- 原型链的构建方式
- 原型链的实际应用
- 性能考虑与常见陷阱

### [继承模式](./3.1.2-继承模式.md)

探索JavaScript中实现继承的多种方式：
- 原型链继承
- 构造函数继承
- 组合继承
- 原型式继承
- 寄生式继承
- 寄生组合继承
- ES6类继承
- 多重继承与Mixin模式

### [instanceof与原型判断](./3.1.3-instanceof与原型判断.md)

学习如何判断对象的原型关系：
- instanceof运算符的工作原理
- Object.prototype.isPrototypeOf()方法
- 原型链查找机制
- 跨窗口/跨框架问题
- 更可靠的类型检查方法
- 自定义instanceof行为

### [多态与混入](./3.1.4-多态与混入.md)

掌握JavaScript中的多态实现和混入模式：
- JavaScript中的多态实现
- 鸭子类型多态
- 混入(Mixin)模式的多种实现
- Object.assign()详解
- 高级混入技术
- 混入的实际应用场景
- 混入的最佳实践

## 学习路径

建议按照以下顺序学习本节内容：

1. 首先理解[原型链详解](./3.1.1-原型链详解.md)，掌握JavaScript原型系统的基础知识
2. 然后学习[继承模式](./3.1.2-继承模式.md)，了解如何利用原型实现不同的继承方式
3. 接着探索[instanceof与原型判断](./3.1.3-instanceof与原型判断.md)，学会如何判断对象之间的原型关系
4. 最后深入[多态与混入](./3.1.4-多态与混入.md)，掌握更高级的代码复用技术

通过系统学习这些内容，你将能够全面理解JavaScript的原型继承机制，并在实际开发中灵活运用这些知识构建可维护的面向对象代码。

## 进阶资源

- [MDN Web Docs: 继承与原型链](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Inheritance_and_the_prototype_chain)
- [You Don't Know JS: this与对象原型](https://github.com/getify/You-Dont-Know-JS/blob/1st-ed/this%20%26%20object%20prototypes/README.md)
- [JavaScript高级程序设计（第4版）](https://www.ituring.com.cn/book/2472)中的"创建对象"和"继承"章节
