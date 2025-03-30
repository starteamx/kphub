我理解您的需求，确实前端框架与库内容很庞大，可以作为单独的知识库。我将调整目录结构，保留到04-现代JavaScript部分，并确保每个目录都有README文件。以下是调整后的树形结构：

```
/Users/guanrunbai/my/kphub/src/frontend/JavaScript/
├── README.md                                # JavaScript知识库总览
├── 01-基础指南/
│   ├── README.md                            # 基础指南概述
│   ├── 1.1-介绍/
│   │   ├── README.md                        # 介绍部分概述
│   │   ├── 1.1.1-JavaScript历史与发展.md     # JavaScript的起源与演变
│   │   ├── 1.1.2-JavaScript与ECMAScript.md  # 标准与实现的关系
│   │   └── 1.1.3-开发环境搭建.md             # 开发工具与环境配置
│   ├── 1.2-语法和数据类型/
│   │   ├── README.md                        # 语法和数据类型概述
│   │   ├── 1.2.1-基本语法规则.md             # 语法基础与代码结构
│   │   ├── 1.2.2-变量声明与作用域.md          # var、let、const与作用域
│   │   ├── 1.2.3-数据类型概述.md             # 七种基本数据类型介绍
│   │   ├── 1.2.4-类型转换.md                # 显式与隐式类型转换
│   │   └── 1.2.5-字面量与模板字符串.md        # 各类字面量与模板语法
│   ├── 1.3-流程控制与错误处理/
│   │   ├── README.md                        # 流程控制与错误处理概述
│   │   ├── 1.3.1-条件语句.md                # if-else与switch语句
│   │   ├── 1.3.2-异常处理.md                # try-catch-finally机制
│   │   └── 1.3.3-错误类型与自定义错误.md      # 内置错误与自定义错误
│   ├── 1.4-循环与迭代/
│   │   ├── README.md                        # 循环与迭代概述
│   │   ├── 1.4.1-for循环.md                 # for循环及其变体
│   │   ├── 1.4.2-while与do-while循环.md     # while循环详解
│   │   ├── 1.4.3-for...in与for...of.md      # 对象与可迭代对象的遍历
│   │   └── 1.4.4-迭代方法.md                # forEach、map等数组迭代方法
│   ├── 1.5-函数/
│   │   ├── README.md                        # 函数概述
│   │   ├── 1.5.1-函数定义与调用.md           # 函数声明与表达式
│   │   ├── 1.5.2-参数与返回值.md             # 参数传递与返回值处理
│   │   ├── 1.5.3-箭头函数.md                # ES6箭头函数特性
│   │   ├── 1.5.4-作用域与闭包基础.md         # 函数作用域与闭包入门
│   │   └── 1.5.5-this关键字.md              # this绑定规则与应用
│   ├── 1.6-表达式与运算符/
│   │   ├── README.md                        # 表达式与运算符概述
│   │   ├── 1.6.1-算术运算符.md              # 加减乘除等基本运算
│   │   ├── 1.6.2-比较运算符.md              # 相等与不等比较
│   │   ├── 1.6.3-逻辑运算符.md              # 与或非逻辑操作
│   │   ├── 1.6.4-位运算符.md                # 位操作详解
│   │   └── 1.6.5-运算符优先级.md            # 运算符优先级与结合性
│   ├── 1.7-数字与字符串/
│   │   ├── README.md                        # 数字与字符串概述
│   │   ├── 1.7.1-Number对象与方法.md        # 数字对象API详解
│   │   ├── 1.7.2-Math对象.md                # 数学计算与函数
│   │   ├── 1.7.3-String对象与方法.md        # 字符串操作与处理
│   │   └── 1.7.4-正则表达式基础.md          # 基本正则表达式语法
│   ├── 1.8-日期与时间/
│   │   ├── README.md                        # 日期与时间概述
│   │   ├── 1.8.1-Date对象基础.md            # 日期创建与格式化
│   │   ├── 1.8.2-日期计算与比较.md          # 日期运算与处理
│   │   └── 1.8.3-现代日期库介绍.md          # Moment.js、Day.js等库
│   ├── 1.9-正则表达式/
│   │   ├── README.md                        # 正则表达式概述
│   │   ├── 1.9.1-正则表达式语法详解.md       # 模式与标志
│   │   ├── 1.9.2-正则表达式方法.md          # exec、test等方法
│   │   └── 1.9.3-常用正则表达式示例.md       # 实用正则表达式集合
│   ├── 1.10-数组与集合/
│   │   ├── README.md                        # 数组与集合概述
│   │   ├── 1.10.1-数组创建与访问.md         # 数组基本操作
│   │   ├── 1.10.2-数组方法详解.md           # 常用数组方法
│   │   ├── 1.10.3-类数组对象.md             # arguments与DOM集合
│   │   ├── 1.10.4-Map与Set.md              # ES6中的Map与Set集合
│   │   └── 1.10.5-WeakMap与WeakSet.md      # 弱引用集合
│   ├── 1.11-对象基础/
│   │   ├── README.md                        # 对象基础概述
│   │   ├── 1.11.1-对象创建与属性.md         # 对象字面量与属性访问
│   │   ├── 1.11.2-对象方法.md               # 对象内的方法定义
│   │   ├── 1.11.3-属性描述符.md             # 属性特性与描述符
│   │   └── 1.11.4-对象遍历与操作.md         # 对象属性遍历方法
│   ├── 1.12-类与面向对象/
│   │   ├── README.md                        # 类与面向对象概述
│   │   ├── 1.12.1-ES6类语法.md              # class关键字与语法
│   │   ├── 1.12.2-构造函数与实例.md         # 构造函数与new操作符
│   │   ├── 1.12.3-类继承.md                 # extends与super关键字
│   │   └── 1.12.4-静态方法与属性.md         # 静态成员定义与使用
│   ├── 1.13-Promise基础/
│   │   ├── README.md                        # Promise基础概述
│   │   ├── 1.13.1-Promise概念与状态.md      # Promise基本概念
│   │   ├── 1.13.2-Promise链式调用.md        # then与catch方法
│   │   └── 1.13.3-Promise组合.md            # all、race等静态方法
│   ├── 1.14-类型化数组/
│   │   ├── README.md                        # 类型化数组概述
│   │   ├── 1.14.1-ArrayBuffer.md           # 二进制数据缓冲区
│   │   ├── 1.14.2-类型化数组视图.md         # Int8Array等类型化数组
│   │   └── 1.14.3-DataView.md              # 灵活的二进制数据视图
│   ├── 1.15-迭代器与生成器/
│   │   ├── README.md                        # 迭代器与生成器概述
│   │   ├── 1.15.1-迭代协议.md               # 可迭代对象与迭代器
│   │   ├── 1.15.2-生成器函数.md             # function*与yield关键字
│   │   └── 1.15.3-异步迭代器.md             # 异步迭代与for-await-of
│   ├── 1.16-国际化/
│   │   ├── README.md                        # 国际化概述
│   │   ├── 1.16.1-Intl对象.md               # 国际化API概述
│   │   ├── 1.16.2-日期时间格式化.md          # DateTimeFormat使用
│   │   └── 1.16.3-数字与货币格式化.md        # NumberFormat使用
│   ├── 1.17-元编程/
│   │   ├── README.md                        # 元编程概述
│   │   ├── 1.17.1-Symbol类型.md             # Symbol基本用法
│   │   ├── 1.17.2-Reflect API.md           # 反射API详解
│   │   └── 1.17.3-Proxy对象.md              # 代理与拦截器模式
│   └── 1.18-模块系统/
│       ├── README.md                        # 模块系统概述
│       ├── 1.18.1-ES模块语法.md              # import与export语法
│       ├── 1.18.2-CommonJS模块.md           # require与module.exports
│       └── 1.18.3-模块加载器.md              # 浏览器与Node.js中的模块加载
├── 02-中级进阶/
│   ├── README.md                            # 中级进阶概述
│   ├── 2.1-高级对象概念/
│   │   ├── README.md                        # 高级对象概念概述
│   │   ├── 2.1.1-对象深拷贝与浅拷贝.md       # 对象复制技术
│   │   ├── 2.1.2-对象冻结与封印.md           # Object.freeze与seal
│   │   ├── 2.1.3-对象解构与扩展.md           # 解构赋值与扩展运算符
│   │   └── 2.1.4-对象属性描述符高级用法.md    # getter、setter与描述符
│   ├── 2.2-异步编程/
│   │   ├── README.md                        # 异步编程概述
│   │   ├── 2.2.1-回调函数模式.md             # 传统回调与回调地狱
│   │   ├── 2.2.2-Promise高级用法.md          # Promise模式与最佳实践
│   │   ├── 2.2.3-async与await.md            # 异步函数语法糖
│   │   ├── 2.2.4-异步迭代器.md               # 异步迭代与生成器
│   │   └── 2.2.5-事件与发布订阅模式.md        # 事件驱动编程
│   ├── 2.3-Web API/
│   │   ├── README.md                        # Web API概述
│   │   ├── 2.3.1-DOM操作.md                  # DOM节点操作与查询
│   │   ├── 2.3.2-事件处理.md                 # 事件监听与传播
│   │   ├── 2.3.3-Fetch API.md               # 网络请求与响应处理
│   │   ├── 2.3.4-Web Storage.md             # localStorage与sessionStorage
│   │   ├── 2.3.5-Web Workers.md             # 多线程JavaScript
│   │   └── 2.3.6-WebSocket.md               # 实时通信API
│   ├── 2.4-语言特性深入/
│   │   ├── README.md                        # 语言特性深入概述
│   │   ├── 2.4.1-变量提升.md                 # 声明提升机制详解
│   │   ├── 2.4.2-执行上下文与作用域链.md      # 代码执行环境
│   │   ├── 2.4.3-严格模式.md                 # 'use strict'与其影响
│   │   └── 2.4.4-尾调用优化.md               # 尾递归与优化
│   ├── 2.5-数据结构实现/
│   │   ├── README.md                        # 数据结构实现概述
│   │   ├── 2.5.1-链表.md                     # 链表实现与操作
│   │   ├── 2.5.2-栈与队列.md                 # 栈与队列的JavaScript实现
│   │   ├── 2.5.3-树结构.md                   # 二叉树与其他树结构
│   │   └── 2.5.4-图.md                       # 图的表示与遍历
│   ├── 2.6-相等性判断/
│   │   ├── README.md                        # 相等性判断概述
│   │   ├── 2.6.1-相等操作符.md               # ==与===的区别
│   │   ├── 2.6.2-Object.is.md               # 严格相等判断
│   │   └── 2.6.3-深度相等实现.md             # 对象深度比较算法
│   ├── 2.7-属性特性/
│   │   ├── README.md                        # 属性特性概述
│   │   ├── 2.7.1-可枚举性.md                 # 属性枚举与遍历
│   │   ├── 2.7.2-属性描述符操作.md           # defineProperty与getOwnPropertyDescriptor
│   │   └── 2.7.3-属性遍历方法对比.md         # 不同遍历方法的区别
│   └── 2.8-闭包深入/
│       ├── README.md                        # 闭包深入概述
│       ├── 2.8.1-闭包原理与实现.md            # 闭包形成机制
│       ├── 2.8.2-闭包应用模式.md              # 常见闭包使用模式
│       └── 2.8.3-闭包陷阱与性能.md            # 闭包相关问题与优化
├── 03-高级主题/
│   ├── README.md                             # 高级主题概述
│   ├── 3.1-原型与继承/
│   │   ├── README.md                         # 原型与继承概述
│   │   ├── 3.1.1-原型链详解.md               # 原型链工作机制
│   │   ├── 3.1.2-继承模式.md                 # 各种继承实现方式
│   │   ├── 3.1.3-instanceof与原型判断.md     # 类型检查与原型关系
│   │   └── 3.1.4-多态与混入.md               # 多重继承与mixin模式
│   ├── 3.2-内存管理/
│   │   ├── README.md                         # 内存管理概述
│   │   ├── 3.2.1-垃圾回收机制.md              # JavaScript GC原理
│   │   ├── 3.2.2-内存泄漏.md                 # 常见内存泄漏场景与解决方案
│   │   ├── 3.2.3-性能优化.md                 # 内存使用优化技巧
│   │   └── 3.2.4-内存分析工具.md             # Chrome DevTools等内存分析工具
│   ├── 3.3-并发模型/
│   │   ├── README.md                         # 并发模型概述
│   │   ├── 3.3.1-事件循环详解.md             # 事件循环机制深入分析
│   │   ├── 3.3.2-宏任务与微任务.md           # 任务队列优先级与执行顺序
│   │   ├── 3.3.3-并发控制模式.md             # 限流、节流等并发控制技术
│   │   └── 3.3.4-Worker线程.md               # Web Worker与多线程编程
│   ├── 3.4-函数式编程/
│   │   ├── README.md                         # 函数式编程概述
│   │   ├── 3.4.1-纯函数与副作用.md           # 函数式编程核心概念
│   │   ├── 3.4.2-高阶函数.md                 # 函数作为参数与返回值
│   │   ├── 3.4.3-函数组合与管道.md           # 函数组合技术与实现
│   │   ├── 3.4.4-柯里化与偏应用.md           # 函数柯里化技术与应用
│   │   └── 3.4.5-函数式库介绍.md             # Ramda、Lodash/fp等库
│   ├── 3.5-设计模式/
│   │   ├── README.md                         # 设计模式概述
│   │   ├── 3.5.1-创建型模式.md               # 工厂、单例、构建者等模式
│   │   ├── 3.5.2-结构型模式.md               # 适配器、装饰器、代理等模式
│   │   ├── 3.5.3-行为型模式.md               # 观察者、策略、命令等模式
│   │   └── 3.5.4-JavaScript特有模式.md       # 模块模式、揭示模块等JS特有模式
│   ├── 3.6-元编程高级/
│   │   ├── README.md                         # 元编程高级概述
│   │   ├── 3.6.1-Symbol深入.md               # 内置Symbol与自定义Symbol应用
│   │   ├── 3.6.2-Proxy高级应用.md            # 代理模式与数据绑定实现
│   │   ├── 3.6.3-Reflect完全指南.md          # 反射API的全面应用
│   │   └── 3.6.4-装饰器模式.md               # 类与方法装饰器实现与应用
│   └── 3.7-性能优化/
│       ├── README.md                         # 性能优化概述
│       ├── 3.7.1-代码优化策略.md             # 高性能JavaScript编码实践
│       ├── 3.7.2-渲染性能.md                 # 浏览器渲染优化技术
│       ├── 3.7.3-网络性能.md                 # 资源加载与传输优化
│       └── 3.7.4-性能分析工具.md             # 性能监测与分析工具使用
├── 04-现代JavaScript/
│   ├── README.md                             # 现代JavaScript概述
│   ├── 4.1-ES6+特性/
│   │   ├── README.md                         # ES6+特性概述
│   │   ├── 4.1.1-ES6完全指南.md              # ES6核心特性综述
│   │   ├── 4.1.2-ES2017-ES2019特性.md        # ES2017到ES2019新特性
│   │   ├── 4.1.3-ES2020-ES2022特性.md        # ES2020到ES2022新特性
│   │   └── 4.1.4-提案阶段特性.md             # TC39提案中的未来特性
│   ├── 4.2-工具链/
│   │   ├── README.md                         # 工具链概述
│   │   ├── 4.2.1-打包工具.md                 # Webpack、Rollup、Vite等
│   │   ├── 4.2.2-转译器.md                   # Babel配置与插件
│   │   ├── 4.2.3-代码检查.md                 # ESLint与Prettier
│   │   └── 4.2.4-测试工具.md                 # Jest、Mocha等测试框架
│   └── 4.3-模块化开发/
│       ├── README.md                         # 模块化开发概述
│       ├── 4.3.1-模块格式对比.md             # AMD、CommonJS、UMD、ESM对比
│       ├── 4.3.2-动态导入.md                 # 按需加载与代码分割
│       ├── 4.3.3-模块打包策略.md             # 模块打包优化技术
│       └── 4.3.4-模块设计模式.md             # 模块化最佳实践

以下是整理后的目录内容：

**JavaScript 
指南**
1. **介绍**  
2. **语法和数据类型**  
3. **流程控制与错误处理**  
4. **循环与迭代**  
5. **函数**  
6. **表达式与运算符**  
7. **数字与字符串**  
8. **表达日期与时间**（仅英文版）  
9. **正则表达式**  
10. **索引集合类**  
11. **带键的集合**  
12. **使用对象**  
13. **使用类**  
14. **使用 Promise**  
15. **JavaScript 类型化数组**  
16. **迭代器和生成器**  
17. **国际化**（仅英文版）  
18. **元编程**  
19. **JavaScript 模块**

**中级**
1. **高级 JavaScript 对象**  
2. **异步 JavaScript**  
3. **客户端 Web API**  
4. **语言概述**  
5. **JavaScript 数据结构**  
6. **如何正确判断相等性**  
7. **属性的可枚举性和所有权**  
8. **闭包**


**高级**
1. **继承和原型链**  
2. **内存管理**  
3. **并发模型与事件循环**

https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Guide/Introduction



以下是整理后的 JSON 数据结构，其中 `key` 是对应的标题，`value` 是对应的链接：

```json
{
  "内置对象": {
    "概述": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects",
    "AggregateError": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/AggregateError",
    "Array": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Array",
    "ArrayBuffer": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer",
    "AsyncFunction": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/AsyncFunction",
    "AsyncGenerator": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/AsyncGenerator",
    "AsyncGeneratorFunction": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/AsyncGeneratorFunction",
    "AsyncIterator": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/AsyncIterator",
    "Atomics": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Atomics",
    "BigInt": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/BigInt",
    "BigInt64Array": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/BigInt64Array",
    "BigUint64Array": "/en-US/docs/Web/JavaScript/Reference/Global_Objects/BigUint64Array",
    "Boolean": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Boolean",
    "DataView": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/DataView",
    "Date": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Date",
    "decodeURI": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/decodeURI",
    "decodeURIComponent": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/decodeURIComponent",
    "encodeURI": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/encodeURI",
    "encodeURIComponent": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/encodeURIComponent",
    "Error": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Error",
    "escape": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/escape",
    "eval": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/eval",
    "EvalError": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/EvalError",
    "FinalizationRegistry": "/en-US/docs/Web/JavaScript/Reference/Global_Objects/FinalizationRegistry",
    "Float16Array": "/en-US/docs/Web/JavaScript/Reference/Global_Objects/Float16Array",
    "Float32Array": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Float32Array",
    "Float64Array": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Float64Array",
    "Function": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Function",
    "Generator": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Generator",
    "GeneratorFunction": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/GeneratorFunction",
    "globalThis": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/globalThis",
    "Infinity": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Infinity",
    "Int16Array": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Int16Array",
    "Int32Array": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Int32Array",
    "Int8Array": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Int8Array",
    "InternalError": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/InternalError",
    "Intl": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Intl",
    "isFinite": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/isFinite",
    "isNaN": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/isNaN",
    "Iterator": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Iterator",
    "JSON": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/JSON",
    "Map": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Map",
    "Math": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Math",
    "NaN": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/NaN",
    "Number": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Number",
    "Object": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Object",
    "parseFloat": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/parseFloat",
    "parseInt": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/parseInt",
    "Promise": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Promise",
    "Proxy": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Proxy",
    "RangeError": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/RangeError",
    "ReferenceError": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/ReferenceError",
    "Reflect": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Reflect",
    "RegExp": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/RegExp",
    "Set": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Set",
    "SharedArrayBuffer": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer",
    "String": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/String",
    "Symbol": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Symbol",
    "SyntaxError": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/SyntaxError",
    "Temporal": "/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal",
    "TypedArray": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/TypedArray",
    "TypeError": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/TypeError",
    "Uint16Array": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Uint16Array",
    "Uint32Array": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Uint32Array",
    "Uint8Array": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Uint8Array",
    "Uint8ClampedArray": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Uint8ClampedArray",
    "undefined": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/undefined",
    "unescape": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/unescape",
    "URIError": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/URIError",
    "WeakMap": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/WeakMap",
    "WeakRef": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/WeakRef",
    "WeakSet": "/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/WeakSet"
  },
  "表达式和运算符": {
    "概述": "/zh-CN/docs/Web/JavaScript/Reference/Operators",
    "加法（+）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Addition",
    "加法赋值（+=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Addition_assignment",
    "赋值（=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Assignment",
    "异步函数（async function）表达式": "/zh-CN/docs/Web/JavaScript/Reference/Operators/async_function",
    "async function* 表达式": "/zh-CN/docs/Web/JavaScript/Reference/Operators/async_function*",
    "await": "/zh-CN/docs/Web/JavaScript/Reference/Operators/await",
    "按位与（&）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Bitwise_AND",
    "按位与赋值（&=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Bitwise_AND_assignment",
    "按位非（~）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Bitwise_NOT",
    "按位或（|）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Bitwise_OR",
    "按位或赋值（|=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Bitwise_OR_assignment",
    "按位异或（^）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Bitwise_XOR",
    "按位异或赋值 (^=)": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Bitwise_XOR_assignment",
    "类表达式": "/zh-CN/docs/Web/JavaScript/Reference/Operators/class",
    "逗号运算符（,）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Comma_operator",
    "条件（三元）运算符": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Conditional_operator",
    "自减（--）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Decrement",
    "delete 运算符": "/zh-CN/docs/Web/JavaScript/Reference/Operators/delete",
    "解构赋值": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment",
    "除法（/）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Division",
    "除法赋值（/=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Division_assignment",
    "相等（==）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Equality",
    "幂（**）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Exponentiation",
    "幂赋值（**=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Exponentiation_assignment",
    "函数表达式": "/zh-CN/docs/Web/JavaScript/Reference/Operators/function",
    "function* 表达式": "/zh-CN/docs/Web/JavaScript/Reference/Operators/function*",
    "大于（>）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Greater_than",
    "大于等于（>=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Greater_than_or_equal",
    "圆括号运算符": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Grouping",
    "import.meta": "/zh-CN/docs/Web/JavaScript/Reference/Operators/import.meta",
    "import()": "/zh-CN/docs/Web/JavaScript/Reference/Operators/import",
    "in": "/zh-CN/docs/Web/JavaScript/Reference/Operators/in",
    "自增（++）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Increment",
    "不相等（!=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Inequality",
    "instanceof": "/zh-CN/docs/Web/JavaScript/Reference/Operators/instanceof",
    "左移 (<<)": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Left_shift",
    "左移赋值（<<=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Left_shift_assignment",
    "小于（<）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Less_than",
    "小于等于（<=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Less_than_or_equal",
    "逻辑与（&&）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Logical_AND",
    "逻辑与赋值（&&=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Logical_AND_assignment",
    "逻辑非（!）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Logical_NOT",
    "逻辑或（||）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Logical_OR",
    "逻辑或赋值（||=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Logical_OR_assignment",
    "乘法（*）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Multiplication",
    "乘法赋值（*=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Multiplication_assignment",
    "new": "/zh-CN/docs/Web/JavaScript/Reference/Operators/new",
    "new.target": "/zh-CN/docs/Web/JavaScript/Reference/Operators/new.target",
    "null": "/zh-CN/docs/Web/JavaScript/Reference/Operators/null",
    "逻辑空赋值（??=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Nullish_coalescing_assignment",
    "空值合并运算符（??）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Nullish_coalescing",
    "对象初始化器": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Object_initializer",
    "运算符优先级": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Operator_precedence",
    "可选链运算符（?.）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Optional_chaining",
    "属性访问器": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Property_accessors",
    "取余（%）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Remainder",
    "取余赋值（%=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Remainder_assignment",
    "右移（>>）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Right_shift",
    "右移赋值（>>=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Right_shift_assignment",
    "展开语法": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Spread_syntax",
    "严格相等（===）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Strict_equality",
    "严格不相等（!==）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Strict_inequality",
    "减法（-）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Subtraction",
    "减法赋值（-=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Subtraction_assignment",
    "super": "/zh-CN/docs/Web/JavaScript/Reference/Operators/super",
    "this": "/zh-CN/docs/Web/JavaScript/Reference/Operators/this",
    "typeof": "/zh-CN/docs/Web/JavaScript/Reference/Operators/typeof",
    "一元减（-）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Unary_negation",
    "一元加（+）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Unary_plus",
    "无符号右移（>>>）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Unsigned_right_shift",
    "无符号右移赋值（>>>=）": "/zh-CN/docs/Web/JavaScript/Reference/Operators/Unsigned_right_shift_assignment",
    "void 运算符": "/zh-CN/docs/Web/JavaScript/Reference/Operators/void",
    "yield": "/zh-CN/docs/Web/JavaScript/Reference/Operators/yield",
    "yield*": "/zh-CN/docs/Web/JavaScript/Reference/Operators/yield*"
  },
  "语句和声明": {
    "概述": "/zh-CN/docs/Web/JavaScript/Reference/Statements",
    "async function": "/zh-CN/docs/Web/JavaScript/Reference/Statements/async_function",
    "async function*": "/zh-CN/docs/Web/JavaScript/Reference/Statements/async_function*",
    "块语句": "/zh-CN/docs/Web/JavaScript/Reference/Statements/block",
    "break": "/zh-CN/docs/Web/JavaScript/Reference/Statements/break",
    "class": "/zh-CN/docs/Web/JavaScript/Reference/Statements/class",
    "const": "/zh-CN/docs/Web/JavaScript/Reference/Statements/const",
    "continue": "/zh-CN/docs/Web/JavaScript/Reference/Statements/continue",
    "debugger": "/zh-CN/docs/Web/JavaScript/Reference/Statements/debugger",
    "do...while": "/zh-CN/docs/Web/JavaScript/Reference/Statements/do...while",
    "空语句": "/zh-CN/docs/Web/JavaScript/Reference/Statements/Empty",
    "export": "/zh-CN/docs/Web/JavaScript/Reference/Statements/export",
    "表达式语句": "/zh-CN/docs/Web/JavaScript/Reference/Statements/Expression_statement",
    "for": "/zh-CN/docs/Web/JavaScript/Reference/Statements/for",
    "for await...of": "/zh-CN/docs/Web/JavaScript/Reference/Statements/for-await...of",
    "for...in": "/zh-CN/docs/Web/JavaScript/Reference/Statements/for...in",
    "for...of": "/zh-CN/docs/Web/JavaScript/Reference/Statements/for...of",
    "function": "/zh-CN/docs/Web/JavaScript/Reference/Statements/function",
    "function*": "/zh-CN/docs/Web/JavaScript/Reference/Statements/function*",
    "if...else": "/zh-CN/docs/Web/JavaScript/Reference/Statements/if...else",
    "import": "/zh-CN/docs/Web/JavaScript/Reference/Statements/import",
    "label": "/zh-CN/docs/Web/JavaScript/Reference/Statements/label",
    "let": "/zh-CN/docs/Web/JavaScript/Reference/Statements/let",
    "return": "/zh-CN/docs/Web/JavaScript/Reference/Statements/return",
    "switch": "/zh-CN/docs/Web/JavaScript/Reference/Statements/switch",
    "throw": "/zh-CN/docs/Web/JavaScript/Reference/Statements/throw",
    "try...catch": "/zh-CN/docs/Web/JavaScript/Reference/Statements/try...catch",
    "var": "/zh-CN/docs/Web/JavaScript/Reference/Statements/var",
    "while": "/zh-CN/docs/Web/JavaScript/Reference/Statements/while",
    "with": "/zh-CN/docs/Web/JavaScript/Reference/Statements/with"
  },
  "函数": {
    "概述": "/zh-CN/docs/Web/JavaScript/Reference/Functions",
    "箭头函数表达式": "/zh-CN/docs/Web/JavaScript/Reference/Functions/Arrow_functions",
    "默认参数值": "/zh-CN/docs/Web/JavaScript/Reference/Functions/Default_parameters",
    "getter": "/zh-CN/docs/Web/JavaScript/Reference/Functions/get",
    "方法的定义": "/zh-CN/docs/Web/JavaScript/Reference/Functions/Method_definitions",
    "剩余参数": "/zh-CN/docs/Web/JavaScript/Reference/Functions/rest_parameters",
    "setter": "/zh-CN/docs/Web/JavaScript/Reference/Functions/set",
    "Arguments 对象": "/zh-CN/docs/Web/JavaScript/Reference/Functions/arguments"
  },
  "类": {
    "概述": "/zh-CN/docs/Web/JavaScript/Reference/Classes",
    "构造函数": "/zh-CN/docs/Web/JavaScript/Reference/Classes/constructor",
    "extends": "/zh-CN/docs/Web/JavaScript/Reference/Classes/extends",
    "私有属性": "/zh-CN/docs/Web/JavaScript/Reference/Classes/Private_properties",
    "公有类字段": "/zh-CN/docs/Web/JavaScript/Reference/Classes/Public_class_fields",
    "static": "/zh-CN/docs/Web/JavaScript/Reference/Classes/static",
    "静态初始化块": "/zh-CN/docs/Web/JavaScript/Reference/Classes/Static_initialization_blocks"
  },
  "正则表达式": {
    "概述": "/zh-CN/docs/Web/JavaScript/Reference/Regular_expressions",
    "Backreference: \\1, \\2": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Backreference",
    "Capturing group: (...)": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Capturing_group",
    "Character class escape: \\d, \\D, \\w, \\W, \\s, \\S": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Character_class_escape",
    "Character class: [...], [^...]": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Character_class",
    "Character escape: \\n, \\u{...}": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Character_escape",
    "Disjunction: |": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Disjunction",
    "Input boundary assertion: ^, $": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Input_boundary_assertion",
    "Literal character: a, b": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Literal_character",
    "Lookahead assertion: (?=...), (?!...)": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Lookahead_assertion",
    "Lookbehind assertion: (?<=...), (?<!...)": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Lookbehind_assertion",
    "Modifier: (?ims-ims:...)": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Modifier",
    "Named backreference: \\k<name>": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Named_backreference",
    "Named capturing group: (?<name>...)": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Named_capturing_group",
    "Non-capturing group: (?:...)": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Non-capturing_group",
    "量词：*, +, ?, {n}, {n,}, {n,m}": "/zh-CN/docs/Web/JavaScript/Reference/Regular_expressions/Quantifier",
    "Unicode 字符类转义：\\p{...}, \\P{...}": "/zh-CN/docs/Web/JavaScript/Reference/Regular_expressions/Unicode_character_class_escape",
    "Wildcard: .": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Wildcard",
    "Word boundary assertion: \\b, \\B": "/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Word_boundary_assertion"
  },
  "错误": {
    "概述": "/zh-CN/docs/Web/JavaScript/Reference/Errors",
    "AggregateError: No Promise in Promise.any was resolved": "/en-US/docs/Web/JavaScript/Reference/Errors/Promise_any_all_rejected",
    "Error: Permission denied to access property \"x\"": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Property_access_denied",
    "InternalError: too much recursion": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Too_much_recursion",
    "RangeError: argument is not a valid code point": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Not_a_valid_code_point",
    "RangeError: BigInt division by zero": "/en-US/docs/Web/JavaScript/Reference/Errors/BigInt_division_by_zero",
    "RangeError: BigInt negative exponent": "/en-US/docs/Web/JavaScript/Reference/Errors/BigInt_negative_exponent",
    "RangeError: form must be one of 'NFC', 'NFD', 'NFKC', or 'NFKD'": "/en-US/docs/Web/JavaScript/Reference/Errors/Form_must_be_one_of",
    "RangeError: invalid array length": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Invalid_array_length",
    "RangeError: invalid date": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Invalid_date",
    "RangeError: precision is out of range": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Precision_range",
    "RangeError: radix must be an integer": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Bad_radix",
    "RangeError: repeat count must be less than infinity": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Resulting_string_too_large",
    "RangeError: repeat count must be non-negative": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Negative_repetition_count",
    "RangeError: x can't be converted to BigInt because it isn't an integer": "/en-US/docs/Web/JavaScript/Reference/Errors/Cant_be_converted_to_BigInt_because_it_isnt_an_integer",
    "ReferenceError: \"x\" is not defined": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Not_defined",
    "ReferenceError: assignment to undeclared variable \"x\"": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Undeclared_var",
    "ReferenceError: can't access lexical declaration`X' before initialization": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Cant_access_lexical_declaration_before_init",
    "ReferenceError: deprecated caller or arguments usage": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Deprecated_caller_or_arguments_usage",
    "ReferenceError: must call super constructor before using 'this' in derived class constructor": "/en-US/docs/Web/JavaScript/Reference/Errors/Super_not_called",
    "ReferenceError: super() called twice in derived class constructor": "/en-US/docs/Web/JavaScript/Reference/Errors/Super_called_twice",
    "SyntaxError: 'arguments'/'eval' can't be defined or assigned to in strict mode code": "/en-US/docs/Web/JavaScript/Reference/Errors/Bad_strict_arguments_eval",
    "SyntaxError: \"0\"-prefixed octal literals are deprecated": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Deprecated_octal_literal",
    "SyntaxError: \"use strict\" not allowed in function with non-simple parameters": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Strict_non_simple_params",
    "SyntaxError: \"x\" is a reserved identifier": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Reserved_identifier",
    "SyntaxError: \\ at end of pattern": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_backslash_at_end_of_pattern",
    "SyntaxError: a declaration in the head of a for-of loop can't have an initializer": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Invalid_for-of_initializer",
    "SyntaxError: applying the 'delete' operator to an unqualified name is deprecated": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Delete_in_strict_mode",
    "SyntaxError: arguments is not valid in fields": "/en-US/docs/Web/JavaScript/Reference/Errors/Arguments_not_allowed",
    "SyntaxError: await is only valid in async functions, async generators and modules": "/en-US/docs/Web/JavaScript/Reference/Errors/Bad_await",
    "SyntaxError: await/yield expression can't be used in parameter": "/en-US/docs/Web/JavaScript/Reference/Errors/await_yield_in_parameter",
    "SyntaxError: cannot use `??` unparenthesized within `||` and `&&` expressions": "/en-US/docs/Web/JavaScript/Reference/Errors/Cant_use_nullish_coalescing_unparenthesized",
    "SyntaxError: character class escape cannot be used in class range in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_character_class_escape_in_class_range",
    "SyntaxError: continue must be inside loop": "/en-US/docs/Web/JavaScript/Reference/Errors/Bad_continue",
    "SyntaxError: duplicate capture group name in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_duplicate_capture_group_name",
    "SyntaxError: duplicate formal argument x": "/en-US/docs/Web/JavaScript/Reference/Errors/Duplicate_parameter",
    "SyntaxError: for-in loop head declarations may not have initializers": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Invalid_for-in_initializer",
    "SyntaxError: function statement requires a name": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Unnamed_function_statement",
    "SyntaxError: functions cannot be labelled": "/en-US/docs/Web/JavaScript/Reference/Errors/Function_label",
    "SyntaxError: getter and setter for private name #x should either be both static or non-static": "/en-US/docs/Web/JavaScript/Reference/Errors/Either_be_both_static_or_non-static",
    "SyntaxError: getter functions must have no arguments": "/en-US/docs/Web/JavaScript/Reference/Errors/Getter_no_arguments",
    "SyntaxError: identifier starts immediately after numeric literal": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Identifier_after_number",
    "SyntaxError: illegal character": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Illegal_character",
    "SyntaxError: import declarations may only appear at top level of a module": "/en-US/docs/Web/JavaScript/Reference/Errors/import_decl_module_top_level",
    "SyntaxError: incomplete quantifier in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_incomplete_quantifier",
    "SyntaxError: invalid assignment left-hand side": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Invalid_assignment_left-hand_side",
    "SyntaxError: invalid BigInt syntax": "/en-US/docs/Web/JavaScript/Reference/Errors/Invalid_BigInt_syntax",
    "SyntaxError: invalid capture group name in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_invalid_capture_group_name",
    "SyntaxError: invalid character in class in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_invalid_char_in_class",
    "SyntaxError: invalid class set operation in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_invalid_class_set_operation",
    "SyntaxError: invalid decimal escape in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_invalid_decimal_escape",
    "SyntaxError: invalid identity escape in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_invalid_identity_escape",
    "SyntaxError: invalid named capture reference in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_invalid_named_capture_reference",
    "SyntaxError: invalid property name in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_invalid_property_name",
    "SyntaxError: invalid range in character class": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_invalid_range_in_character_class",
    "SyntaxError: invalid regexp group": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_invalid_group",
    "SyntaxError: invalid regular expression flag "x"": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Bad_regexp_flag",
    "SyntaxError: invalid unicode escape in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_invalid_unicode_escape",
    "SyntaxError: JSON.parse: bad parsing": "/zh-CN/docs/Web/JavaScript/Reference/Errors/JSON_bad_parse",
    "SyntaxError: label not found": "/en-US/docs/Web/JavaScript/Reference/Errors/Label_not_found",
    "SyntaxError: missing : after property id": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Missing_colon_after_property_id",
    "SyntaxError: missing ) after argument list": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Missing_parenthesis_after_argument_list",
    "SyntaxError: missing ) after condition": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Missing_parenthesis_after_condition",
    "SyntaxError: missing ] after element list": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Missing_bracket_after_list",
    "SyntaxError: missing } after function body": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Missing_curly_after_function_body",
    "SyntaxError: missing } after property list": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Missing_curly_after_property_list",
    "SyntaxError: missing = in const declaration": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Missing_initializer_in_const",
    "SyntaxError: missing formal parameter": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Missing_formal_parameter",
    "SyntaxError: missing name after . operator": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Missing_name_after_dot_operator",
    "SyntaxError: missing variable name": "/zh-CN/docs/Web/JavaScript/Reference/Errors/No_variable_name",
    "SyntaxError: negated character class with strings in regular expression": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_negated_char_class_with_strings",
    "SyntaxError: new keyword cannot be used with an optional chain": "/en-US/docs/Web/JavaScript/Reference/Errors/Bad_new_optional",
    "SyntaxError: nothing to repeat": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_nothing_to_repeat",
    "SyntaxError: numbers out of order in {} quantifier.": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_numbers_out_of_order_in_quantifier",
    "SyntaxError: octal escape sequences can't be used in untagged template literals or in strict mode code": "/en-US/docs/Web/JavaScript/Reference/Errors/Deprecated_octal_escape_sequence",
    "SyntaxError: parameter after rest parameter": "/en-US/docs/Web/JavaScript/Reference/Errors/Parameter_after_rest_parameter",
    "SyntaxError: private fields can't be deleted": "/en-US/docs/Web/JavaScript/Reference/Errors/Cant_delete_private_fields",
    "SyntaxError: property name __proto__ appears more than once in object literal": "/en-US/docs/Web/JavaScript/Reference/Errors/Duplicate_proto",
    "SyntaxError: raw bracket is not allowed in regular expression with unicode flag": "/en-US/docs/Web/JavaScript/Reference/Errors/Regex_raw_bracket",
    "SyntaxError: redeclaration of formal parameter "x"": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Redeclared_parameter",
    "SyntaxError: reference to undeclared private field or method #x": "/en-US/docs/Web/JavaScript/Reference/Errors/Undeclared_private_field_or_method",
    "SyntaxError: rest parameter may not have a default": "/en-US/docs/Web/JavaScript/Reference/Errors/Rest_with_default",
    "SyntaxError: return not in function": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Bad_return",
    "SyntaxError: setter functions must have one argument": "/en-US/docs/Web/JavaScript/Reference/Errors/Setter_one_argument",
    "SyntaxError: string literal contains an unescaped line break": "/zh-CN/docs/Web/JavaScript/Reference/Errors/String_literal_EOL",
    "SyntaxError: super() is only valid in derived class constructors": "/en-US/docs/Web/JavaScript/Reference/Errors/Bad_super_call",
    "SyntaxError: tagged template cannot be used with optional chain": "/en-US/docs/Web/JavaScript/Reference/Errors/Bad_optional_template",
    "SyntaxError: Unexpected '#' used outside of class body": "/en-US/docs/Web/JavaScript/Reference/Errors/Hash_outside_class",
    "SyntaxError: Unexpected token": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Unexpected_token",
    "SyntaxError: unlabeled break must be inside loop or switch": "/en-US/docs/Web/JavaScript/Reference/Errors/Bad_break",
    "SyntaxError: unparenthesized unary expression can't appear on the left-hand side of '**'": "/en-US/docs/Web/JavaScript/Reference/Errors/Unparenthesized_unary_expr_lhs_exponentiation",
    "SyntaxError: use of super property/member accesses only valid within methods or eval code within methods": "/en-US/docs/Web/JavaScript/Reference/Errors/Bad_super_prop",
    "SyntaxError: Using //@ to indicate sourceURL pragmas is deprecated. Use //# instead": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Deprecated_source_map_pragma",
    "TypeError: 'x' is not iterable": "/zh-CN/docs/Web/JavaScript/Reference/Errors/is_not_iterable",
    "TypeError: "x" is (not) "y"": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Unexpected_type",
    "TypeError: "x" is not a constructor": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Not_a_constructor",
    "TypeError: "x" is not a function": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Not_a_function",
    "TypeError: "x" is not a non-null object": "/zh-CN/docs/Web/JavaScript/Reference/Errors/No_non-null_object",
    "TypeError: "x" is read-only": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Read-only",
    "TypeError: BigInt value can't be serialized in JSON": "/en-US/docs/Web/JavaScript/Reference/Errors/BigInt_not_serializable",
    "TypeError: calling a builtin X constructor without new is forbidden": "/en-US/docs/Web/JavaScript/Reference/Errors/Builtin_ctor_no_new",
    "TypeError: can't access/set private field or method: object is not the right class": "/en-US/docs/Web/JavaScript/Reference/Errors/Get_set_missing_private",
    "TypeError: can't assign to property "x" on "y": not an object": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Cant_assign_to_property",
    "TypeError: can't convert BigInt to number": "/en-US/docs/Web/JavaScript/Reference/Errors/Cant_convert_BigInt_to_number",
    "TypeError: can't convert x to BigInt": "/en-US/docs/Web/JavaScript/Reference/Errors/Cant_convert_x_to_BigInt",
    "TypeError: can't define property "x": "obj" is not extensible": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Cant_define_property_object_not_extensible",
    "TypeError: can't delete non-configurable array element": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Non_configurable_array_element",
    "TypeError: can't redefine non-configurable property "x"": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Cant_redefine_property",
    "TypeError: can't set prototype of this object": "/en-US/docs/Web/JavaScript/Reference/Errors/Cant_set_prototype",
    "TypeError: can't set prototype: it would cause a prototype chain cycle": "/en-US/docs/Web/JavaScript/Reference/Errors/Cyclic_prototype",
    "TypeError: invalid 'in' operand "x"": "/zh-CN/docs/Web/JavaScript/Reference/Errors/in_operator_no_object",
    "TypeError: class constructors must be invoked with 'new'": "/en-US/docs/Web/JavaScript/Reference/Errors/Class_ctor_no_new",
    "TypeError: cyclic object value": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Cyclic_object_value",
    "TypeError: derived class constructor returned invalid value x": "/en-US/docs/Web/JavaScript/Reference/Errors/Invalid_derived_return",
    "TypeError: getting private setter-only property": "/en-US/docs/Web/JavaScript/Reference/Errors/Private_setter_only",
    "TypeError: Initializing an object twice is an error with private fields/methods": "/en-US/docs/Web/JavaScript/Reference/Errors/Private_double_initialization",
    "TypeError: invalid 'instanceof' operand 'x'": "/zh-CN/docs/Web/JavaScript/Reference/Errors/invalid_right_hand_side_instanceof_operand",
    "TypeError: invalid Array.prototype.sort argument": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Array_sort_argument",
    "TypeError: invalid assignment to const "x"": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Invalid_const_assignment",
    "TypeError: Iterator/AsyncIterator constructor can't be used directly": "/en-US/docs/Web/JavaScript/Reference/Errors/Constructor_cant_be_used_directly",
    "TypeError: matchAll/replaceAll must be called with a global RegExp": "/en-US/docs/Web/JavaScript/Reference/Errors/Requires_global_RegExp",
    "TypeError: More arguments needed": "/zh-CN/docs/Web/JavaScript/Reference/Errors/More_arguments_needed",
    "TypeError: "x" has no properties": "/zh-CN/docs/Web/JavaScript/Reference/Errors/No_properties",
    "TypeError: property "x" is non-configurable and can't be deleted": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Cant_delete",
    "TypeError: Reduce of empty array with no initial value": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Reduce_of_empty_array_with_no_initial_value",
    "TypeError: setting getter-only property "x"": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Getter_only",
    "TypeError: WeakSet key/WeakMap value 'x' must be an object or an unregistered symbol": "/en-US/docs/Web/JavaScript/Reference/Errors/Key_not_weakly_held",
    "X.prototype.y called on incompatible type": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Called_on_incompatible_type",
    "URIError: malformed URI sequence": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Malformed_URI",
    "Warning: -file- is being assigned a //# sourceMappingURL, but already has one": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Already_has_pragma",
    "Warning: unreachable code after return statement": "/zh-CN/docs/Web/JavaScript/Reference/Errors/Stmt_after_return"
  },
  "更多": {
    "JavaScript 技术概要": "/zh-CN/docs/Web/JavaScript/JavaScript_technologies_overview",
    "词法文法": "/zh-CN/docs/Web/JavaScript/Reference/Lexical_grammar",
    "迭代协议": "/zh-CN/docs/Web/JavaScript/Reference/Iteration_protocols",
    "严格模式": "/zh-CN/docs/Web/JavaScript/Reference/Strict_mode",
    "模板字符串": "/zh-CN/docs/Web/JavaScript/Reference/Template_literals",
    "尾后逗号": "/zh-CN/docs/Web/JavaScript/Reference/Trailing_commas",
    "已废弃的特性": "/zh-CN/docs/Web/JavaScript/Reference/Deprecated_and_obsolete_features"
  }
}
