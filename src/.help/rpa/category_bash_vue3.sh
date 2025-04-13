
BASE_DIR="/Users/guanrunbai/my/kphub/src/vue3"
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建1. Vue3 基础入门目录
mkdir -p "$BASE_DIR/1-Vue3基础入门"
cat > "$BASE_DIR/1-Vue3基础入门/README.md" << 'EOF'
---
title: Vue3 基础入门
icon: guide
order: 1
---

# Vue3 基础入门

本章节涵盖Vue3的基础知识，包括核心特性、开发环境搭建、与Vue2的区别以及快速上手指南，帮助您建立对Vue3的基本认识和使用能力。
EOF

# 创建1.1 Vue3 核心特性与优势
cat > "$BASE_DIR/1-Vue3基础入门/1.1-Vue3核心特性与优势.md" << 'EOF'
---
title: Vue3 核心特性与优势
icon: feature
order: 1
---

# Vue3 核心特性与优势

## 核心特性
- Composition API：提供更灵活的代码组织方式
- 响应式系统升级：基于Proxy的响应式系统
- TypeScript支持：更好的类型推断和类型检查
- 性能优化：更小的打包体积和更快的渲染速度
- Teleport组件：可以将组件渲染到DOM树的任何位置
- Fragments：支持多根节点组件

## 相比Vue2的优势
- 更好的性能表现
- 更强的TypeScript集成
- 更灵活的代码组织
- 更好的Tree-shaking支持
- 更完善的开发工具链
EOF

# 创建1.2 开发环境搭建与工具链
cat > "$BASE_DIR/1-Vue3基础入门/1.2-开发环境搭建与工具链.md" << 'EOF'
---
title: 开发环境搭建与工具链
icon: tools
order: 2
---

# 开发环境搭建与工具链

## 开发环境准备
- Node.js和npm/yarn安装
- Vue CLI安装与使用
- Vite开发服务器配置
- VSCode编辑器及推荐插件

## 常用开发工具
- Vue DevTools
- Volar (Vue Language Features)
- ESLint与Prettier配置
- Vue Test Utils

## 项目创建方式
- 使用Vue CLI创建项目
- 使用Vite创建项目
- 从零搭建Vue3项目
EOF

# 创建1.3 从Vue2到Vue3的变化
cat > "$BASE_DIR/1-Vue3基础入门/1.3-从Vue2到Vue3的变化.md" << 'EOF'
---
title: 从Vue2到Vue3的变化
icon: compare
order: 3
---

# 从Vue2到Vue3的变化

## API变化
- 全局API的调整
- 生命周期钩子的变化
- 组件选项的变化
- 指令用法的变化

## 架构变化
- 响应式系统重构
- 渲染机制优化
- 编译器改进

## 迁移策略
- 渐进式迁移方案
- 兼容性处理
- 常见迁移问题及解决方案
EOF

# 创建1.4 快速上手指南
cat > "$BASE_DIR/1-Vue3基础入门/1.4-快速上手指南.md" << 'EOF'
---
title: 快速上手指南
icon: rocket
order: 4
---

# 快速上手指南

## 第一个Vue3应用
- 创建Vue实例
- 声明式渲染
- 处理用户输入
- 条件与循环

## Composition API基础
- setup函数
- 响应式状态
- 计算属性与监听器
- 生命周期钩子

## 组件基础
- 组件注册
- Props传递
- 事件处理
- 插槽使用
EOF

# 创建1.5 Vue3项目结构与最佳实践
cat > "$BASE_DIR/1-Vue3基础入门/1.5-Vue3项目结构与最佳实践.md" << 'EOF'
---
title: Vue3项目结构与最佳实践
icon: structure
order: 5
---

# Vue3项目结构与最佳实践

## 标准项目结构
- 目录组织方式
- 文件命名规范
- 资源管理策略

## 代码组织最佳实践
- 组件设计原则
- 状态管理策略
- API调用封装
- 路由组织方式

## 性能优化建议
- 懒加载与代码分割
- 缓存策略
- 避免不必要的渲染
- 资源优化技巧
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建2. 组合式API基础目录
mkdir -p "$BASE_DIR/2-组合式API基础"
cat > "$BASE_DIR/2-组合式API基础/README.md" << 'EOF'
---
title: 组合式API基础
icon: code
order: 2
---

# 组合式API基础

本章节详细介绍Vue3的组合式API（Composition API）基础知识，包括设计理念、setup函数使用以及响应式系统的核心概念，帮助您掌握Vue3最重要的编程范式。
EOF

# 创建2.1 组合式API设计理念
cat > "$BASE_DIR/2-组合式API基础/2.1-组合式API设计理念.md" << 'EOF'
---
title: 组合式API设计理念
icon: idea
order: 1
---

# 组合式API设计理念

## 设计背景
- 选项式API的局限性
- 大型组件的代码组织问题
- 逻辑复用的困难

## 核心思想
- 按功能/逻辑关注点组织代码
- 提高代码复用性
- 更好的TypeScript类型推导
- 更小的生产包体积

## 与选项式API的对比
- 代码组织方式的差异
- 逻辑复用的不同实现
- 性能与可维护性比较
EOF

# 创建2.2 setup函数与生命周期
cat > "$BASE_DIR/2-组合式API基础/2.2-setup函数与生命周期.md" << 'EOF'
---
title: setup函数与生命周期
icon: cycle
order: 2
---

# setup函数与生命周期

## setup函数基础
- setup函数的参数：props和context
- 返回值类型：渲染函数或响应式对象
- 执行时机与注意事项
- 访问组件实例

## 组合式API中的生命周期钩子
- onMounted
- onUpdated
- onUnmounted
- onBeforeMount
- onBeforeUpdate
- onBeforeUnmount
- onErrorCaptured
- onActivated/onDeactivated

## 与选项式API生命周期的对应关系
- 命名规则变化
- 执行时机差异
- 使用场景建议
EOF

# 创建2.3 响应式核心目录
mkdir -p "$BASE_DIR/2-组合式API基础/2.3-响应式核心"
cat > "$BASE_DIR/2-组合式API基础/2.3-响应式核心/README.md" << 'EOF'
---
title: 响应式核心
icon: refresh
order: 3
---

# 响应式核心

本节详细介绍Vue3响应式系统的核心概念和API，包括ref和reactive的使用方法、区别以及各自的适用场景，帮助您深入理解Vue3的响应式原理。
EOF

# 创建2.3.1 ref与reactive对比
cat > "$BASE_DIR/2-组合式API基础/2.3-响应式核心/2.3.1-ref与reactive对比.md" << 'EOF'
---
title: ref与reactive对比
icon: compare
order: 1
---

# ref与reactive对比

## 基本概念
- ref：包装基本类型和对象类型的通用API
- reactive：专门用于对象类型的响应式转换

## 使用差异
- 访问方式：ref需要.value，reactive直接访问
- 解构行为：ref可保持响应性，reactive会失去响应性
- 模板中的使用：ref自动解包，reactive直接使用

## 选择指南
- 何时使用ref
- 何时使用reactive
- 混合使用的最佳实践
EOF

# 创建2.3.2 ref及其相关API
cat > "$BASE_DIR/2-组合式API基础/2.3-响应式核心/2.3.2-ref及其相关API.md" << 'EOF'
---
title: ref及其相关API
icon: api
order: 2
---

# ref及其相关API

## ref基础
- 创建响应式引用
- 访问和修改值
- 在模板中的自动解包
- 在响应式对象中的解包规则

## 相关API
- isRef：检查值是否为ref对象
- unref：获取ref值或非ref值
- toRef：为响应式对象的属性创建ref
- toRefs：将响应式对象转换为普通对象，其中每个属性都是指向原始对象相应属性的ref
- customRef：创建自定义ref，显式控制依赖追踪和更新触发
- shallowRef：创建一个浅层响应式ref

## 实际应用场景
- 表单处理
- 状态管理
- 异步数据获取
EOF

# 创建2.3.3 reactive及其局限性
cat > "$BASE_DIR/2-组合式API基础/2.3-响应式核心/2.3.3-reactive及其局限性.md" << 'EOF'
---
title: reactive及其局限性
icon: warning
order: 3
---

# reactive及其局限性

## reactive基础
- 创建响应式对象
- 深层响应性
- 与Vue2 Object.defineProperty的区别

## 局限性
- 解构时丢失响应性
- 替换整个对象导致的问题
- 对原始类型无效
- 对集合类型的特殊处理

## 相关API
- isReactive：检查对象是否由reactive创建
- shallowReactive：创建一个浅层响应式对象
- markRaw：标记一个对象，使其永远不会转换为代理
- toRaw：返回reactive或readonly代理的原始对象

## 解决局限性的策略
- 使用ref代替
- 使用toRefs保持响应性
- 使用扩展运算符的正确方式
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建2. 组合式API基础目录
mkdir -p "$BASE_DIR/2-组合式API基础"
cat > "$BASE_DIR/2-组合式API基础/README.md" << 'EOF'
---
title: 组合式API基础
icon: code
order: 2
---

# 组合式API基础

本章节详细介绍Vue3的组合式API（Composition API）基础知识，包括设计理念、setup函数使用以及响应式系统的核心概念，帮助您掌握Vue3最重要的编程范式。
EOF

# 创建2.3 响应式核心目录
mkdir -p "$BASE_DIR/2-组合式API基础/2.3-响应式核心"
cat > "$BASE_DIR/2-组合式API基础/2.3-响应式核心/README.md" << 'EOF'
---
title: 响应式核心
icon: refresh
order: 3
---

# 响应式核心

本节详细介绍Vue3响应式系统的核心概念和API，包括ref和reactive的使用方法、区别以及各自的适用场景，帮助您深入理解Vue3的响应式原理。
EOF

# 创建2.3.4 toRef与toRefs
cat > "$BASE_DIR/2-组合式API基础/2.3-响应式核心/2.3.4-toRef与toRefs.md" << 'EOF'
---
title: toRef与toRefs
icon: link
order: 4
---

# toRef与toRefs

## toRef基础
- 为响应式对象的属性创建引用
- 与直接访问属性的区别
- 与普通ref的区别
- 处理可能不存在的属性

## toRefs基础
- 将响应式对象转换为普通对象
- 保持响应式连接的解构方式
- 与扩展运算符的配合使用

## 实际应用场景
- 组件props的响应式处理
- 解构reactive对象时保持响应性
- 在组合式函数中返回响应式对象
- 创建可复用的响应式属性
EOF

# 创建2.3.5 computed计算属性
cat > "$BASE_DIR/2-组合式API基础/2.3-响应式核心/2.3.5-computed计算属性.md" << 'EOF'
---
title: computed计算属性
icon: calculate
order: 5
---

# computed计算属性

## 基本用法
- 创建只读计算属性
- 创建可写计算属性
- 计算属性缓存机制
- 与方法的区别

## 计算属性的依赖追踪
- 自动收集依赖
- 依赖变化时的更新机制
- 避免副作用操作

## 高级用法
- 计算属性的链式调用
- 在计算属性中使用其他计算属性
- 计算属性的性能优化
- 计算属性的调试技巧
EOF

# 创建2.3.6 watch与watchEffect
cat > "$BASE_DIR/2-组合式API基础/2.3-响应式核心/2.3.6-watch与watchEffect.md" << 'EOF'
---
title: watch与watchEffect
icon: eye
order: 6
---

# watch与watchEffect

## watch基础
- 监听单个数据源
- 监听多个数据源
- 深度监听选项
- 立即执行选项
- 回调函数的参数

## watchEffect基础
- 自动收集依赖
- 执行时机
- 停止监听
- 清除副作用

## watch与watchEffect对比
- 依赖收集方式的不同
- 回调触发时机的差异
- 适用场景分析
- 性能考量

## 实际应用场景
- 数据变化后的异步操作
- 表单验证
- 数据持久化
- 路由参数监听
EOF

# 创建2.3.7 响应式工具函数集
cat > "$BASE_DIR/2-组合式API基础/2.3-响应式核心/2.3.7-响应式工具函数集.md" << 'EOF'
---
title: 响应式工具函数集
icon: toolbox
order: 7
---

# 响应式工具函数集

## 响应式状态工具
- readonly：创建只读代理
- shallowReadonly：创建浅层只读代理
- isReadonly：检查对象是否为只读代理
- isProxy：检查对象是否为代理

## 响应式转换工具
- toRaw：获取代理对象的原始对象
- markRaw：标记对象永远不会转换为代理
- effectScope：创建一个effect作用域
- getCurrentScope：获取当前活跃的effect作用域
- onScopeDispose：在当前活跃的effect作用域销毁时执行回调

## 调试工具
- triggerRef：手动触发ref的更新
- customRef：创建自定义ref
- enableTracking/pauseTracking：启用/暂停依赖追踪
- resetTracking：重置依赖追踪状态
EOF

# 创建2.4 组合式函数(Composables)目录
mkdir -p "$BASE_DIR/2-组合式API基础/2.4-组合式函数"
cat > "$BASE_DIR/2-组合式API基础/2.4-组合式函数/README.md" << 'EOF'
---
title: 组合式函数(Composables)
icon: puzzle-piece
order: 4
---

# 组合式函数(Composables)

本节介绍Vue3中组合式函数的概念、设计原则和实践方法，帮助您理解如何创建和使用可复用的逻辑单元，提高代码的可维护性和复用性。
EOF

# 创建2.4.1 自定义组合式函数
cat > "$BASE_DIR/2-组合式API基础/2.4-组合式函数/2.4.1-自定义组合式函数.md" << 'EOF'
---
title: 自定义组合式函数
icon: code-branch
order: 1
---

# 自定义组合式函数

## 基本概念
- 什么是组合式函数
- 与mixins的区别
- 与React Hooks的对比
- 组合式函数的设计哲学

## 创建组合式函数
- 命名规范：use前缀
- 输入参数设计
- 返回值设计
- 生命周期集成
- 错误处理

## 组合式函数的状态管理
- 局部状态与全局状态
- 状态共享机制
- 避免状态污染
- 状态持久化
EOF

# 创建2.4.2 组合式函数最佳实践
cat > "$BASE_DIR/2-组合式API基础/2.4-组合式函数/2.4.2-组合式函数最佳实践.md" << 'EOF'
---
title: 组合式函数最佳实践
icon: star
order: 2
---

# 组合式函数最佳实践

## 设计原则
- 单一职责原则
- 可组合性优先
- 命名清晰明确
- 适当的抽象级别
- 考虑TypeScript类型支持

## 常见陷阱与避免方法
- 副作用管理
- 内存泄漏防范
- 避免过度抽象
- 处理异步操作
- 测试友好设计

## 目录组织与模块化
- 组合式函数的文件组织
- 按功能域分组
- 公共组合式函数库
- 私有vs公共组合式函数
EOF

# 创建2.4.3 常用组合式函数示例
cat > "$BASE_DIR/2-组合式API基础/2.4-组合式函数/2.4.3-常用组合式函数示例.md" << 'EOF'
---
title: 常用组合式函数示例
icon: example
order: 3
---

# 常用组合式函数示例

## 状态管理相关
- useStorage：本地存储状态管理
- useToggle：切换布尔状态
- useCounter：计数器状态管理
- useForm：表单状态管理

## 生命周期相关
- useMount：挂载时执行
- useUnmount：卸载时执行
- useUpdate：强制组件更新
- useInterval：定时器管理

## DOM相关
- useEventListener：事件监听管理
- useMouse：鼠标位置追踪
- useScroll：滚动位置管理
- useMediaQuery：媒体查询响应

## 网络请求相关
- useFetch：数据获取与缓存
- useAsync：异步操作管理
- useWebSocket：WebSocket连接管理
- useInfiniteScroll：无限滚动加载
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建2.5 生命周期钩子目录
mkdir -p "$BASE_DIR/2-组合式API基础/2.5-生命周期钩子"
cat > "$BASE_DIR/2-组合式API基础/2.5-生命周期钩子/README.md" << 'EOF'
---
title: 生命周期钩子
icon: cycle
order: 5
---

# 生命周期钩子

本节详细介绍Vue3组件的生命周期钩子函数，包括各个生命周期阶段的特点、用途以及在组合式API中的使用方式，帮助您更好地理解和控制组件的整个生命周期过程。
EOF

# 创建2.5.1 Vue3生命周期钩子
cat > "$BASE_DIR/2-组合式API基础/2.5-生命周期钩子/2.5.1-Vue3生命周期钩子.md" << 'EOF'
---
title: Vue3生命周期钩子
icon: lifecycle
order: 1
---

# Vue3生命周期钩子

## 创建阶段
- beforeCreate：实例初始化之后，数据观测和事件配置之前
- created：实例创建完成，数据观测、属性和方法的运算完成

## 挂载阶段
- beforeMount：挂载开始之前被调用
- mounted：实例被挂载后调用，此时组件已经渲染完成

## 更新阶段
- beforeUpdate：数据更新时调用，发生在虚拟DOM打补丁之前
- updated：数据更改导致的虚拟DOM重新渲染和打补丁之后调用

## 卸载阶段
- beforeUnmount：实例销毁之前调用
- unmounted：实例销毁后调用

## 特殊钩子
- activated：被keep-alive缓存的组件激活时调用
- deactivated：被keep-alive缓存的组件停用时调用
- errorCaptured：捕获一个来自后代组件的错误时被调用
EOF

# 创建2.5.2 与Vue2生命周期对比
cat > "$BASE_DIR/2-组合式API基础/2.5-生命周期钩子/2.5.2-与Vue2生命周期对比.md" << 'EOF'
---
title: 与Vue2生命周期对比
icon: compare
order: 2
---

# 与Vue2生命周期对比

## 命名变化
- beforeDestroy → beforeUnmount
- destroyed → unmounted
- 其他钩子名称保持不变

## 行为差异
- setup执行时机：在beforeCreate之前
- 异步组件的加载状态处理变化
- 错误处理机制的增强
- 调试钩子的变化

## 性能优化
- 生命周期钩子的调用性能提升
- 更精确的依赖追踪
- 更高效的组件实例创建过程

## 迁移策略
- Vue2到Vue3生命周期钩子的平滑迁移
- 兼容性处理方法
- 常见迁移问题及解决方案
EOF

# 创建2.5.3 组合式API中的生命周期
cat > "$BASE_DIR/2-组合式API基础/2.5-生命周期钩子/2.5.3-组合式API中的生命周期.md" << 'EOF'
---
title: 组合式API中的生命周期
icon: api
order: 3
---

# 组合式API中的生命周期

## 组合式API生命周期钩子
- onBeforeMount
- onMounted
- onBeforeUpdate
- onUpdated
- onBeforeUnmount
- onUnmounted
- onActivated
- onDeactivated
- onErrorCaptured

## 使用方式
- 在setup函数中注册
- 多次注册同一生命周期的处理
- 生命周期钩子的执行顺序
- 与选项式API混合使用时的注意事项

## 实际应用场景
- 组件初始化数据获取
- DOM操作与第三方库集成
- 资源清理与内存管理
- 性能监控与分析
EOF

# 创建3. Vue3模板与渲染目录
mkdir -p "$BASE_DIR/3-Vue3模板与渲染"
cat > "$BASE_DIR/3-Vue3模板与渲染/README.md" << 'EOF'
---
title: Vue3模板与渲染
icon: template
order: 3
---

# Vue3模板与渲染

本章节详细介绍Vue3的模板语法、指令系统以及样式处理方法，帮助您掌握Vue3的声明式渲染机制，高效构建用户界面。
EOF

# 创建3.1 模板语法与指令
cat > "$BASE_DIR/3-Vue3模板与渲染/3.1-模板语法与指令.md" << 'EOF'
---
title: 模板语法与指令
icon: code
order: 1
---

# 模板语法与指令

## 文本插值
- 双大括号语法
- v-text指令
- 使用JavaScript表达式
- 表达式限制

## 属性绑定
- v-bind指令及其缩写
- 动态属性名
- 多重值绑定
- 布尔属性处理

## 条件渲染
- v-if / v-else-if / v-else
- v-show
- 条件渲染的性能考量
- 与template标签结合使用

## 列表渲染
- v-for指令
- 遍历数组、对象和范围值
- 维护状态与key属性
- 数组变更检测
- v-for与v-if的优先级

## 事件处理
- v-on指令及其缩写
- 事件修饰符
- 按键修饰符
- 系统修饰键
- 鼠标按钮修饰符

## 表单输入绑定
- v-model基础
- 表单元素绑定
- 修饰符：lazy、number、trim
- 自定义组件的v-model
EOF

# 创建3.2 类与样式绑定
cat > "$BASE_DIR/3-Vue3模板与渲染/3.2-类与样式绑定.md" << 'EOF'
---
title: 类与样式绑定
icon: style
order: 2
---

# 类与样式绑定

## 类名绑定
- 对象语法
- 数组语法
- 组件上的类名绑定
- 条件类名绑定

## 内联样式绑定
- 对象语法
- 数组语法
- 自动添加前缀
- 多重值

## CSS模块集成
- 局部作用域CSS
- 与预处理器结合使用
- 动态类名生成

## 动态样式策略
- 计算属性生成样式
- 主题切换实现
- 响应式样式处理
- 性能优化技巧
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建3. Vue3模板与渲染目录
mkdir -p "$BASE_DIR/3-Vue3模板与渲染"
cat > "$BASE_DIR/3-Vue3模板与渲染/README.md" << 'EOF'
---
title: Vue3模板与渲染
icon: template
order: 3
---

# Vue3模板与渲染

本章节详细介绍Vue3的模板语法、指令系统以及渲染机制，帮助您掌握Vue3的声明式渲染能力，高效构建用户界面。
EOF

# 创建3.3 条件与列表渲染
cat > "$BASE_DIR/3-Vue3模板与渲染/3.3-条件与列表渲染.md" << 'EOF'
---
title: 条件与列表渲染
icon: list
order: 3
---

# 条件与列表渲染

## 条件渲染
- v-if 指令详解
- v-else 与 v-else-if 的配合使用
- v-show 与 v-if 的区别及性能考量
- 在 template 元素上使用条件渲染
- 条件渲染的最佳实践

## 列表渲染
- v-for 指令基础用法
- 遍历数组、对象、数字范围
- key 属性的重要性与正确使用
- v-for 与 v-if 一起使用的注意事项
- 数组变更检测的原理与限制
- 显示过滤/排序后的结果

## 高级列表渲染技巧
- 组件上使用 v-for
- 维护状态与组件复用
- 列表过渡动画处理
- 大数据列表的性能优化
- 虚拟滚动实现思路
EOF

# 创建3.4 事件处理机制
cat > "$BASE_DIR/3-Vue3模板与渲染/3.4-事件处理机制.md" << 'EOF'
---
title: 事件处理机制
icon: event
order: 4
---

# 事件处理机制

## 事件监听基础
- v-on 指令与 @ 缩写
- 内联事件处理器
- 方法事件处理器
- 多事件处理
- 访问原生事件对象

## 事件修饰符
- .stop：阻止事件传播
- .prevent：阻止默认行为
- .capture：捕获模式
- .self：仅当事件在该元素本身触发时才触发处理函数
- .once：只触发一次
- .passive：提升滚动性能
- 修饰符链式使用

## 按键与鼠标修饰符
- 常用按键修饰符
- 系统修饰键
- 鼠标按钮修饰符
- 自定义按键修饰符

## 事件处理最佳实践
- 性能优化考量
- 事件委托模式
- 组件事件处理
- 事件总线的替代方案
EOF

# 创建3.5 表单输入绑定
cat > "$BASE_DIR/3-Vue3模板与渲染/3.5-表单输入绑定.md" << 'EOF'
---
title: 表单输入绑定
icon: form
order: 5
---

# 表单输入绑定

## v-model 基础
- 双向绑定原理
- 表单元素绑定
- 值绑定与更新触发时机
- v-model 内部实现机制

## 不同表单元素的处理
- 文本输入框
- 多行文本域
- 复选框
- 单选按钮
- 选择器
- 多选选择器
- 动态选项渲染

## v-model 修饰符
- .lazy：在 change 事件后同步
- .number：自动转换为数字
- .trim：自动去除首尾空格

## 自定义组件的 v-model
- 在组件上使用 v-model
- 自定义 v-model 的 prop 和事件
- 多个 v-model 绑定
- 处理 v-model 修饰符
EOF

# 创建3.6 模板引用(ref)
cat > "$BASE_DIR/3-Vue3模板与渲染/3.6-模板引用(ref).md" << 'EOF'
---
title: 模板引用(ref)
icon: reference
order: 6
---

# 模板引用(ref)

## 基本用法
- 创建模板引用
- 访问DOM元素
- 引用时机与生命周期关系
- 在组合式API中使用模板引用

## v-for 中的模板引用
- 引用数组的处理
- 动态引用的管理
- 更新时的注意事项

## 组件上的引用
- 访问子组件实例
- 访问子组件的DOM元素
- 暴露子组件内部属性和方法

## 模板引用的最佳实践
- 何时使用模板引用
- 避免过度依赖DOM操作
- 与虚拟DOM协同工作
- 与第三方库集成
EOF

# 创建3.7 组件基础
cat > "$BASE_DIR/3-Vue3模板与渲染/3.7-组件基础.md" << 'EOF'
---
title: 组件基础
icon: component
order: 7
---

# 组件基础

## 组件注册
- 全局注册
- 局部注册
- 组件命名约定
- 异步组件

## 组件通信基础
- Props 传递数据
- 事件抛出
- 插槽内容分发
- 依赖注入

## 单文件组件
- .vue 文件结构
- <script setup> 语法
- <style> 作用域
- 预处理器支持

## 组件设计原则
- 单一职责
- 可复用性
- 可测试性
- 松耦合设计
EOF

# 创建3.8 渲染函数与JSX
cat > "$BASE_DIR/3-Vue3模板与渲染/3.8-渲染函数与JSX.md" << 'EOF'
---
title: 渲染函数与JSX
icon: code-branch
order: 8
---

# 渲染函数与JSX

## 渲染函数基础
- h 函数详解
- 创建VNode
- 与模板的对比
- 函数式组件

## JSX 在 Vue3 中的应用
- 配置 JSX 支持
- JSX 语法基础
- 与 React JSX 的区别
- 在 TypeScript 中使用 JSX

## 高级渲染技巧
- 条件渲染
- 列表渲染
- 事件处理
- 插槽处理
- 动态组件

## 何时使用渲染函数
- 适用场景分析
- 与模板的取舍
- 性能考量
- 复杂UI的实现策略
EOF

# 创建3.9 Vue3渲染机制解析
cat > "$BASE_DIR/3-Vue3模板与渲染/3.9-Vue3渲染机制解析.md" << 'EOF'
---
title: Vue3渲染机制解析
icon: diagram
order: 9
---

# Vue3渲染机制解析

## 虚拟DOM原理
- 虚拟DOM的概念与作用
- Vue3虚拟DOM的实现
- 与Vue2的区别
- 性能优化策略

## 渲染管线
- 编译阶段：模板到渲染函数
- 挂载阶段：初始渲染
- 更新阶段：响应式触发更新
- 卸载阶段：资源清理

## 静态提升与缓存
- 静态节点提升
- 静态属性提升
- 事件处理函数缓存
- PatchFlags优化

## 编译优化
- 块树结构(Block Tree)
- 静态分析
- 动态节点追踪
- 编译时提示
- 自定义渲染器
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建4. Vue3组件开发进阶目录
mkdir -p "$BASE_DIR/4-Vue3组件开发进阶"
cat > "$BASE_DIR/4-Vue3组件开发进阶/README.md" << 'EOF'
---
title: Vue3组件开发进阶
icon: puzzle-piece
order: 4
---

# Vue3组件开发进阶

本章节深入探讨Vue3组件开发的进阶技巧和最佳实践，包括组件设计原则、组件通信机制、插槽系统等核心内容，帮助您构建高质量、可维护的Vue3组件。
EOF

# 创建4.1 组件设计原则
cat > "$BASE_DIR/4-Vue3组件开发进阶/4.1-组件设计原则.md" << 'EOF'
---
title: 组件设计原则
icon: design
order: 1
---

# 组件设计原则

## 单一职责原则
- 组件功能聚焦
- 避免过度复杂
- 合理拆分组件
- 功能内聚性

## 可复用性设计
- API设计一致性
- 松耦合设计
- 避免副作用
- 状态隔离

## 可测试性
- 组件测试策略
- 依赖注入设计
- 测试友好的API
- 边界情况处理

## 组件分类与层次
- 展示型组件
- 容器型组件
- 通用基础组件
- 业务组件
- 布局组件
EOF

# 创建4.2 组件注册与异步组件
cat > "$BASE_DIR/4-Vue3组件开发进阶/4.2-组件注册与异步组件.md" << 'EOF'
---
title: 组件注册与异步组件
icon: register
order: 2
---

# 组件注册与异步组件

## 全局组件注册
- app.component()方法
- 批量注册全局组件
- 全局注册的优缺点
- 自动化全局注册

## 局部组件注册
- 组件选项中注册
- 在setup中注册
- 动态组件注册

## 异步组件
- defineAsyncComponent
- 加载状态处理
- 错误处理
- 超时设置
- 延迟加载与预加载

## 组件懒加载最佳实践
- 路由级别懒加载
- 组件级别懒加载
- 按需加载策略
- 性能优化考量
EOF

# 创建4.3 Props定义与校验
cat > "$BASE_DIR/4-Vue3组件开发进阶/4.3-Props定义与校验.md" << 'EOF'
---
title: Props定义与校验
icon: check
order: 3
---

# Props定义与校验

## Props声明
- 简单声明方式
- 带类型的声明
- 带默认值的声明
- 必填属性设置

## Props校验
- 类型校验
- 自定义校验函数
- 多类型支持
- 复杂对象的校验

## TypeScript集成
- 使用类型定义Props
- 泛型组件
- 类型推导与检查
- defineProps宏

## Props最佳实践
- 单向数据流原则
- 不可变性处理
- 命名规范
- 文档化Props
- 默认值设计
EOF

# 创建4.4 事件处理与emit
cat > "$BASE_DIR/4-Vue3组件开发进阶/4.4-事件处理与emit.md" << 'EOF'
---
title: 事件处理与emit
icon: event
order: 4
---

# 事件处理与emit

## 事件声明
- defineEmits使用
- 事件名称规范
- 事件参数设计
- TypeScript类型定义

## 事件触发
- emit方法使用
- 传递事件参数
- 事件触发时机
- 事件冒泡控制

## 事件校验
- 运行时校验
- 类型校验
- 自定义校验函数

## 最佳实践
- 事件命名约定
- 事件文档化
- 事件设计模式
- 避免过度使用事件
- 事件与Props的配合使用
EOF

# 创建4.5 v-model组件实现
cat > "$BASE_DIR/4-Vue3组件开发进阶/4.5-v-model组件实现.md" << 'EOF'
---
title: v-model组件实现
icon: sync
order: 5
---

# v-model组件实现

## 基本实现
- modelValue属性
- update:modelValue事件
- 双向绑定原理
- 表单组件实现

## 多个v-model
- 自定义v-model名称
- 多个v-model的处理
- 命名规范

## v-model修饰符
- 内置修饰符处理
- 自定义修饰符
- 修饰符参数获取

## 实际应用案例
- 自定义输入组件
- 复合表单组件
- 日期选择器
- 颜色选择器
- 高级表单控件
EOF

# 创建4.6 透传Attributes
cat > "$BASE_DIR/4-Vue3组件开发进阶/4.6-透传Attributes.md" << 'EOF'
---
title: 透传Attributes
icon: transfer
order: 6
---

# 透传Attributes

## 属性透传机制
- 自动属性透传
- 禁用透传
- 多根节点透传规则
- 透传的属性类型

## 访问透传属性
- useAttrs()组合式API
- $attrs选项式API
- 在模板中使用透传属性

## 透传控制
- 显式绑定vs透传
- 继承属性
- 深层组件透传

## 最佳实践
- 组件封装策略
- 透传与组件API设计
- 样式和类名透传
- 事件监听器透传
- 常见陷阱与解决方案
EOF

# 创建4.7 插槽与作用域插槽
cat > "$BASE_DIR/4-Vue3组件开发进阶/4.7-插槽与作用域插槽.md" << 'EOF'
---
title: 插槽与作用域插槽
icon: slot
order: 7
---

# 插槽与作用域插槽

## 基本插槽
- 默认插槽
- 具名插槽
- 插槽默认内容
- 动态插槽名

## 作用域插槽
- 插槽prop传递
- 解构插槽prop
- 作用域插槽使用场景
- 与普通插槽的区别

## 插槽API
- v-slot指令
- #缩写语法
- 在组件内部访问插槽
- 插槽检测

## 高级应用模式
- 布局组件设计
- 表格组件定制
- 列表渲染定制
- 组件库设计中的插槽
- 插槽性能优化
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建4.8 依赖注入(provide/inject)
cat > "$BASE_DIR/4-Vue3组件开发进阶/4.8-依赖注入(provide-inject).md" << 'EOF'
---
title: 依赖注入(provide/inject)
icon: injection
order: 8
---

# 依赖注入(provide/inject)

## 基本概念
- provide/inject的工作原理
- 与Props传递的区别
- 适用场景分析
- 组件树中的数据流向

## 使用方式
- 选项式API中的使用
- 组合式API中的使用
- 应用层级的依赖注入
- 组件层级的依赖注入

## 响应式依赖注入
- 注入响应式数据
- 使用ref和reactive
- 保持响应性的最佳实践
- 避免响应式丢失

## 高级用法
- 注入默认值
- 符号键注入(Symbol keys)
- 控制数据修改权限
- 与TypeScript集成
- 依赖注入的测试策略
EOF

# 创建4.9 组件通信方式全解析
cat > "$BASE_DIR/4-Vue3组件开发进阶/4.9-组件通信方式全解析.md" << 'EOF'
---
title: 组件通信方式全解析
icon: communication
order: 9
---

# 组件通信方式全解析

## 父子组件通信
- Props向下传递
- Emit向上传递
- v-model双向绑定
- ref直接访问
- 透传Attributes

## 兄弟组件通信
- 通过共同父组件
- 事件总线替代方案
- 状态管理库

## 跨层级组件通信
- 依赖注入(provide/inject)
- 全局状态管理
- 组合式函数共享状态

## 通信方式对比
- 使用场景分析
- 优缺点对比
- 性能影响
- 可维护性考量
- 选择合适通信方式的决策树
EOF

# 创建4.10 组件性能优化策略
cat > "$BASE_DIR/4-Vue3组件开发进阶/4.10-组件性能优化策略.md" << 'EOF'
---
title: 组件性能优化策略
icon: speed
order: 10
---

# 组件性能优化策略

## 渲染性能优化
- 合理使用v-once
- 使用v-memo减少重渲染
- 大列表优化策略
- 虚拟滚动实现
- 懒加载组件

## 响应式优化
- 避免不必要的响应式
- shallowRef和shallowReactive
- 使用Object.freeze冻结对象
- 合理设计响应式数据结构

## 计算属性与侦听器优化
- 缓存计算结果
- 避免复杂计算
- 合理使用watchEffect和watch
- 侦听器的即时清理

## 组件实例优化
- 合理使用keep-alive
- 组件懒加载与预加载
- 异步组件加载策略
- 组件实例复用
- 避免内存泄漏
EOF

# 创建5. Vue3特有功能与API目录
mkdir -p "$BASE_DIR/5-Vue3特有功能与API"
cat > "$BASE_DIR/5-Vue3特有功能与API/README.md" << 'EOF'
---
title: Vue3特有功能与API
icon: star
order: 5
---

# Vue3特有功能与API

本章节介绍Vue3相比Vue2新增的特有功能和API，帮助您了解Vue3的创新之处，以及如何利用这些新特性提升开发效率和应用性能。
EOF

# 创建5.1 Composition API vs Options API
cat > "$BASE_DIR/5-Vue3特有功能与API/5.1-Composition-API-vs-Options-API.md" << 'EOF'
---
title: Composition API vs Options API
icon: compare
order: 1
---

# Composition API vs Options API

## 两种API范式概述
- Options API的设计理念
- Composition API的设计理念
- 代码组织方式的根本区别
- 各自的历史背景

## 代码组织对比
- 按选项组织 vs 按功能组织
- 逻辑复用方式对比
- 代码可读性比较
- 维护性与可扩展性分析

## 性能与类型支持
- 打包体积影响
- 运行时性能差异
- TypeScript类型推导支持
- IDE支持与开发体验

## 选择指南
- 项目规模与复杂度考量
- 团队熟悉度因素
- 迁移策略建议
- 混合使用的最佳实践
- 未来趋势展望
EOF

# 创建5.2 Teleport传送门组件
cat > "$BASE_DIR/5-Vue3特有功能与API/5.2-Teleport传送门组件.md" << 'EOF'
---
title: Teleport传送门组件
icon: portal
order: 2
---

# Teleport传送门组件

## 基本概念
- Teleport的设计目的
- 解决的核心问题
- 与React Portal的对比
- DOM结构与渲染机制

## 基础用法
- to属性指定目标
- 动态目标控制
- 禁用Teleport
- 多个Teleport到同一目标

## 实际应用场景
- 模态框实现
- 通知提示组件
- 下拉菜单与浮层
- 全局加载指示器
- 固定定位元素

## 高级用法
- 与过渡动画结合
- 条件渲染控制
- 与组件通信
- 多层嵌套Teleport
- SSR注意事项
EOF

# 创建5.3 Fragments片段支持
cat > "$BASE_DIR/5-Vue3特有功能与API/5.3-Fragments片段支持.md" << 'EOF'
---
title: Fragments片段支持
icon: pieces
order: 3
---

# Fragments片段支持

## 基本概念
- 什么是Fragments
- Vue2的单根节点限制
- Vue3多根节点支持
- 实现原理解析

## 使用方式
- 模板中的多根节点
- 渲染函数中的Fragments
- JSX中的Fragments
- 虚拟DOM表示

## 带来的优势
- 减少不必要的包装元素
- 提升渲染性能
- 简化组件结构
- 更灵活的布局组织

## 注意事项
- 属性继承行为
- key管理
- 样式应用
- 与过渡动画的配合
- 与其他特性的交互
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建5.4 Suspense异步加载组件
cat > "$BASE_DIR/5-Vue3特有功能与API/5.4-Suspense异步加载组件.md" << 'EOF'
---
title: Suspense异步加载组件
icon: loading
order: 4
---

# Suspense异步加载组件

## 基本概念
- Suspense组件的设计目的
- 异步组件加载机制
- 与React Suspense的异同
- 实现原理解析

## 使用方式
- 基本语法结构
- default与fallback插槽
- 与async setup配合使用
- 嵌套Suspense处理

## 错误处理
- onErrorCaptured钩子
- ErrorBoundary模式实现
- 优雅降级策略
- 重试机制设计

## 实际应用场景
- 数据预加载
- 路由组件懒加载
- 大型组件异步加载
- 复杂页面的分步渲染
- 与Transition结合使用
EOF

# 创建5.5 多根节点组件
cat > "$BASE_DIR/5-Vue3特有功能与API/5.5-多根节点组件.md" << 'EOF'
---
title: 多根节点组件
icon: nodes
order: 5
---

# 多根节点组件

## 基本概念
- 多根节点组件定义
- Vue2单根节点限制回顾
- Vue3多根节点支持原理
- 虚拟DOM的处理机制

## 使用方式
- 模板中的多根节点
- 渲染函数中的多根节点
- JSX中的多根节点
- 动态多根节点

## 属性继承行为
- 多根节点的属性分发规则
- 手动控制属性继承
- 禁用属性继承
- 样式和类名的处理

## 最佳实践
- 何时使用多根节点
- 性能考量
- 可维护性设计
- 常见陷阱与解决方案
- 与其他特性的交互
EOF

# 创建5.6 自定义渲染器API
cat > "$BASE_DIR/5-Vue3特有功能与API/5.6-自定义渲染器API.md" << 'EOF'
---
title: 自定义渲染器API
icon: custom
order: 6
---

# 自定义渲染器API

## 基本概念
- 自定义渲染器的定义
- 与传统DOM渲染的区别
- 渲染器架构设计
- 适用场景分析

## 创建自定义渲染器
- createRenderer API
- 核心渲染接口实现
- 节点操作适配
- 属性处理适配
- 事件系统适配

## 实际应用案例
- Canvas渲染实现
- WebGL渲染
- 小程序渲染
- 终端命令行UI
- 跨平台渲染

## 高级用法
- 自定义指令支持
- 组件生命周期处理
- 性能优化策略
- 与Vue核心功能集成
- 调试与测试方法
EOF

# 创建5.7 响应式系统升级(Proxy)
cat > "$BASE_DIR/5-Vue3特有功能与API/5.7-响应式系统升级(Proxy).md" << 'EOF'
---
title: 响应式系统升级(Proxy)
icon: refresh
order: 7
---

# 响应式系统升级(Proxy)

## 技术演进
- Vue2 Object.defineProperty回顾
- Proxy的基本概念
- 两种技术的本质区别
- 性能与功能对比

## Proxy优势
- 完整的对象拦截能力
- 数组变更的原生支持
- 新属性的自动响应
- 删除属性的响应支持
- Map/Set等集合类型支持

## 实现原理
- 基本Proxy拦截器
- 依赖收集机制
- 触发更新机制
- 嵌套对象处理
- 集合类型处理

## 兼容性与降级
- 浏览器兼容性现状
- 不支持Proxy的环境处理
- Vue 2.7的过渡方案
- 迁移策略与最佳实践
EOF

# 创建5.8 全局API树摇优化
cat > "$BASE_DIR/5-Vue3特有功能与API/5.8-全局API树摇优化.md" << 'EOF'
---
title: 全局API树摇优化
icon: tree
order: 8
---

# 全局API树摇优化

## 基本概念
- 什么是树摇(Tree-shaking)
- Vue2全局API的问题
- Vue3 API设计的改进
- 打包体积优化原理

## API设计变化
- 全局API的显式导入
- Vue实例方法的重组
- 插件系统的变化
- 全局配置的调整

## 具体优化项
- createApp替代new Vue
- 显式导入生命周期钩子
- 显式导入响应式API
- 按需导入内置组件
- 按需导入指令

## 迁移与最佳实践
- 从Vue2迁移的策略
- 优化现有代码的方法
- 检测未使用API的工具
- 打包体积分析与监控
- 常见陷阱与解决方案
EOF

# 创建5.9 自定义指令升级
cat > "$BASE_DIR/5-Vue3特有功能与API/5.9-自定义指令升级.md" << 'EOF'
---
title: 自定义指令升级
icon: magic
order: 9
---

# 自定义指令升级

## 指令API变化
- Vue2指令钩子函数回顾
- Vue3指令生命周期对齐
- 钩子函数参数变化
- 命名约定变化

## 新的生命周期钩子
- created：元素的attribute或事件监听器应用之前
- beforeMount：元素被插入到DOM之前
- mounted：元素插入DOM时
- beforeUpdate：组件更新前
- updated：组件更新后
- beforeUnmount：元素被移除之前
- unmounted：元素被移除后

## 实现技巧
- 访问组件实例
- 指令参数与修饰符
- 动态指令参数
- 复合指令开发
- 指令与组件的交互

## 常用自定义指令示例
- v-focus：自动聚焦
- v-clickoutside：点击外部
- v-lazy：图片懒加载
- v-permission：权限控制
- v-tooltip：提示框
EOF

# 创建5.10 实验性新特性预览
cat > "$BASE_DIR/5-Vue3特有功能与API/5.10-实验性新特性预览.md" << 'EOF'
---
title: 实验性新特性预览
icon: experiment
order: 10
---

# 实验性新特性预览

## Script Setup语法糖
- <script setup>基本用法
- 组件自动注册
- defineProps与defineEmits
- defineExpose导出属性
- useSlots与useAttrs
- 顶层await支持

## 单文件组件状态驱动CSS
- <style>中的v-bind
- 响应式CSS变量
- 动态主题实现
- 性能考量

## 新一代编译优化
- 块树结构(Block Tree)
- 静态提升(Static Hoisting)
- 补丁标记(Patch Flags)
- 缓存事件处理函数
- 按需编译

## 未来规划特性
- 服务器组件(Server Components)
- 反应式效果作用域(Effect Scope)
- 改进的TypeScript集成
- 更多内置组件
- 编译时优化进展
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建6. Vue3内置组件详解目录
mkdir -p "$BASE_DIR/6-Vue3内置组件详解"
cat > "$BASE_DIR/6-Vue3内置组件详解/README.md" << 'EOF'
---
title: Vue3内置组件详解
icon: component
order: 6
---

# Vue3内置组件详解

本章节详细介绍Vue3提供的内置组件，包括过渡动画、组件缓存、传送门等功能组件，帮助您掌握这些强大工具的使用方法和最佳实践。
EOF

# 创建6.1 Transition过渡动画
cat > "$BASE_DIR/6-Vue3内置组件详解/6.1-Transition过渡动画.md" << 'EOF'
---
title: Transition过渡动画
icon: animation
order: 1
---

# Transition过渡动画

## 基本概念
- Transition组件的作用
- 过渡的本质与原理
- 与Vue2的区别
- 性能考量

## CSS过渡
- 过渡类名约定
- 自定义过渡类名
- 过渡模式：out-in与in-out
- 显式过渡时间
- 初始渲染过渡

## JavaScript钩子
- before-enter
- enter
- after-enter
- enter-cancelled
- before-leave
- leave
- after-leave
- leave-cancelled

## 高级用法
- 复用过渡组件
- 动态过渡
- 状态过渡
- 与第三方动画库集成
- 性能优化技巧
EOF

# 创建6.2 TransitionGroup列表过渡
cat > "$BASE_DIR/6-Vue3内置组件详解/6.2-TransitionGroup列表过渡.md" << 'EOF'
---
title: TransitionGroup列表过渡
icon: list
order: 2
---

# TransitionGroup列表过渡

## 基本概念
- TransitionGroup的设计目的
- 与单元素Transition的区别
- 渲染原理与DOM操作
- 性能影响因素

## 基础用法
- 列表项进入/离开过渡
- 列表排序过渡
- 交错过渡效果
- 自定义包装元素

## CSS实现技巧
- move类与FLIP动画
- 绝对定位策略
- 网格布局过渡
- 列表项尺寸变化处理

## 实际应用案例
- 购物车动画
- 筛选列表动画
- 拖拽排序动画
- 分页切换动画
- 数据可视化过渡
EOF

# 创建6.3 KeepAlive缓存组件
cat > "$BASE_DIR/6-Vue3内置组件详解/6.3-KeepAlive缓存组件.md" << 'EOF'
---
title: KeepAlive缓存组件
icon: cache
order: 3
---

# KeepAlive缓存组件

## 基本概念
- KeepAlive的设计目的
- 缓存机制原理
- 内存管理策略
- 与Vue2的区别

## 基础用法
- 基本缓存功能
- include/exclude属性
- max属性控制缓存数量
- 缓存键管理

## 生命周期钩子
- activated钩子
- deactivated钩子
- 与常规生命周期的关系
- 组合式API中的使用

## 实际应用场景
- 标签页切换
- 表单数据保持
- 列表-详情导航
- 路由视图缓存
- 性能优化策略
EOF

# 创建6.4 Teleport传送门
cat > "$BASE_DIR/6-Vue3内置组件详解/6.4-Teleport传送门.md" << 'EOF'
---
title: Teleport传送门
icon: portal
order: 4
---

# Teleport传送门

## 基本概念
- Teleport的设计目的
- 解决的核心问题
- 渲染机制原理
- 与React Portal对比

## 基础用法
- to属性指定目标
- disabled属性控制
- 多个Teleport到同一目标
- 动态目标处理

## 高级用法
- 与过渡动画结合
- 嵌套Teleport
- 条件渲染
- 与组件通信
- 上下文继承行为

## 实际应用场景
- 模态框实现
- 通知提示组件
- 下拉菜单与浮层
- 全局加载指示器
- 固定定位元素
EOF

# 创建6.5 Suspense异步加载
cat > "$BASE_DIR/6-Vue3内置组件详解/6.5-Suspense异步加载.md" << 'EOF'
---
title: Suspense异步加载
icon: loading
order: 5
---

# Suspense异步加载

## 基本概念
- Suspense的设计目的
- 异步依赖处理机制
- 与React Suspense对比
- 实验性特性状态

## 基础用法
- default与fallback插槽
- 异步组件配合
- async setup函数支持
- 嵌套Suspense处理

## 错误处理
- onErrorCaptured钩子
- 错误边界实现
- 降级UI策略
- 重试机制设计

## 实际应用场景
- 数据预加载
- 路由组件懒加载
- 复杂页面分步渲染
- 资源按需加载
- 与其他特性协同使用
EOF

# 创建7. 状态管理与路由目录
mkdir -p "$BASE_DIR/7-状态管理与路由"
cat > "$BASE_DIR/7-状态管理与路由/README.md" << 'EOF'
---
title: 状态管理与路由
icon: connection
order: 7
---

# 状态管理与路由

本章节介绍Vue3应用中的状态管理方案和路由系统，帮助您掌握大型应用的数据流管理和页面导航实现方法。
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建7. 状态管理与路由目录
mkdir -p "$BASE_DIR/7-状态管理与路由"
cat > "$BASE_DIR/7-状态管理与路由/README.md" << 'EOF'
---
title: 状态管理与路由
icon: connection
order: 7
---

# 状态管理与路由

本章节介绍Vue3应用中的状态管理方案和路由系统，帮助您掌握大型应用的数据流管理和页面导航实现方法。
EOF

# 创建7.1 Pinia状态管理目录
mkdir -p "$BASE_DIR/7-状态管理与路由/7.1-Pinia状态管理"
cat > "$BASE_DIR/7-状态管理与路由/7.1-Pinia状态管理/README.md" << 'EOF'
---
title: Pinia状态管理
icon: store
order: 1
---

# Pinia状态管理

本节详细介绍Vue3官方推荐的状态管理库Pinia，包括其核心概念、使用方法以及最佳实践，帮助您构建可维护的应用状态管理系统。
EOF

# 创建7.1.1 Pinia核心概念
cat > "$BASE_DIR/7-状态管理与路由/7.1-Pinia状态管理/7.1.1-Pinia核心概念.md" << 'EOF'
---
title: Pinia核心概念
icon: concept
order: 1
---

# Pinia核心概念

## 基本介绍
- Pinia的设计理念
- 与Vuex的对比
- 核心优势与特点
- TypeScript支持

## 核心概念
- Store：状态容器
- State：应用状态
- Getters：计算状态
- Actions：修改状态的方法
- 插件系统

## 基础架构
- 单一Store vs 多Store设计
- 模块化组织
- 状态的响应式原理
- 与Vue3响应式系统的集成

## 开发工具支持
- Vue DevTools集成
- 时间旅行调试
- 状态快照
- 性能监控
EOF

# 创建7.1.2 组合式API风格的Store
cat > "$BASE_DIR/7-状态管理与路由/7.1-Pinia状态管理/7.1.2-组合式API风格的Store.md" << 'EOF'
---
title: 组合式API风格的Store
icon: composition
order: 2
---

# 组合式API风格的Store

## 定义Store
- defineStore函数
- 组合式API风格定义
- 选项式API风格定义
- 混合风格使用

## 状态定义与访问
- 响应式状态声明
- 在组件中使用状态
- 重置状态
- 状态变更追踪

## Getters使用
- 定义计算属性
- 访问其他getters
- 向getters传递参数
- 在组件中使用getters

## 组合多个Store
- 跨Store引用
- 组合Store逻辑
- 避免循环依赖
- 模块化设计策略
EOF

# 创建7.1.3 Actions与异步操作
cat > "$BASE_DIR/7-状态管理与路由/7.1-Pinia状态管理/7.1.3-Actions与异步操作.md" << 'EOF'
---
title: Actions与异步操作
icon: action
order: 3
---

# Actions与异步操作

## Actions基础
- 定义同步Actions
- 定义异步Actions
- 在组件中调用Actions
- Actions返回值处理

## 异步操作处理
- async/await语法
- Promise链式调用
- 错误处理策略
- 加载状态管理

## 复杂业务逻辑
- 组合多个Actions
- 条件Actions执行
- 事务性操作
- 撤销/重做功能实现

## 最佳实践
- Actions命名规范
- 职责划分原则
- 测试友好设计
- 调试与日志记录
EOF

# 创建7.1.4 Store组合与复用
cat > "$BASE_DIR/7-状态管理与路由/7.1-Pinia状态管理/7.1.4-Store组合与复用.md" << 'EOF'
---
title: Store组合与复用
icon: reuse
order: 4
---

# Store组合与复用

## Store之间的组合
- 在一个Store中使用另一个Store
- 共享逻辑抽取
- 避免循环依赖
- 模块化设计模式

## 可复用Store模式
- 工厂函数创建Store
- 参数化Store定义
- 动态Store注册
- 按需加载Store

## 组合式函数与Store
- 自定义组合式函数封装Store逻辑
- 状态逻辑复用策略
- 与其他组合式函数集成
- 测试与维护考量

## 实际应用案例
- 用户认证Store
- 多实体数据管理
- 表单状态管理
- 全局UI状态管理
EOF

# 创建7.1.5 持久化与插件
cat > "$BASE_DIR/7-状态管理与路由/7.1-Pinia状态管理/7.1.5-持久化与插件.md" << 'EOF'
---
title: 持久化与插件
icon: plugin
order: 5
---

# 持久化与插件

## 插件系统基础
- 插件的定义与注册
- 插件钩子函数
- 扩展Store功能
- 全局Store修改

## 状态持久化
- localStorage持久化实现
- sessionStorage使用场景
- IndexedDB大数据持久化
- 自定义存储适配器

## 常用插件开发
- 日志记录插件
- 状态重置插件
- 缓存管理插件
- 状态同步插件

## 高级插件技巧
- 添加新的Store属性
- 包装已有Actions
- 状态订阅与拦截
- 与外部系统集成
EOF

# 创建7.2 Vue Router 4目录
mkdir -p "$BASE_DIR/7-状态管理与路由/7.2-Vue-Router-4"
cat > "$BASE_DIR/7-状态管理与路由/7.2-Vue-Router-4/README.md" << 'EOF'
---
title: Vue Router 4
icon: route
order: 2
---

# Vue Router 4

本节详细介绍Vue3配套的路由库Vue Router 4，包括其新特性、基本用法以及高级应用，帮助您构建功能完善的单页应用路由系统。
EOF

# 创建7.2.1 Vue Router 4新特性
cat > "$BASE_DIR/7-状态管理与路由/7.2-Vue-Router-4/7.2.1-Vue-Router-4新特性.md" << 'EOF'
---
title: Vue Router 4新特性
icon: new
order: 1
---

# Vue Router 4新特性

## 架构升级
- 与Vue3的深度集成
- 组合式API支持
- TypeScript重写
- 性能优化

## API变化
- createRouter替代构造函数
- 历史模式配置变更
- 组件内导航守卫变化
- 路由组件props配置

## 新增功能
- 动态路由增强
- 命名视图改进
- 更灵活的导航守卫
- 更好的TypeScript类型推导

## 迁移与兼容性
- 从Vue Router 3迁移策略
- 破坏性变更处理
- 渐进式升级方案
- 常见迁移问题解决
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建7.2.2 组合式API中的路由
cat > "$BASE_DIR/7-状态管理与路由/7.2-Vue-Router-4/7.2.2-组合式API中的路由.md" << 'EOF'
---
title: 组合式API中的路由
icon: composition
order: 2
---

# 组合式API中的路由

## 核心组合式API
- useRouter：获取路由实例
- useRoute：获取当前路由对象
- 与选项式API的对比
- 在setup中使用路由

## 路由操作
- 编程式导航
- 路由参数获取
- 路由查询参数处理
- 路由历史管理

## 响应式路由状态
- 监听路由变化
- 基于路由的计算属性
- 路由参数的响应式处理
- 路由状态与组件状态同步

## 最佳实践
- 路由逻辑封装
- 自定义路由组合式函数
- 路由与状态管理集成
- 测试路由相关代码
EOF

# 创建7.2.3 导航守卫体系
cat > "$BASE_DIR/7-状态管理与路由/7.2-Vue-Router-4/7.2.3-导航守卫体系.md" << 'EOF'
---
title: 导航守卫体系
icon: guard
order: 3
---

# 导航守卫体系

## 全局导航守卫
- beforeEach：全局前置守卫
- afterEach：全局后置钩子
- beforeResolve：全局解析守卫
- 执行时机与顺序

## 路由级别守卫
- beforeEnter：路由独享守卫
- 配置方式
- 动态添加
- 复用守卫逻辑

## 组件内守卫
- beforeRouteEnter
- beforeRouteUpdate
- beforeRouteLeave
- 在组合式API中使用

## 完整导航解析流程
- 导航被触发
- 调用离开组件的守卫
- 调用全局beforeEach守卫
- 调用路由配置的beforeEnter
- 解析异步路由组件
- 调用组件内beforeRouteEnter
- 调用全局beforeResolve守卫
- 导航被确认
- 调用全局afterEach钩子
EOF

# 创建7.2.4 路由元信息与权限
cat > "$BASE_DIR/7-状态管理与路由/7.2-Vue-Router-4/7.2.4-路由元信息与权限.md" << 'EOF'
---
title: 路由元信息与权限
icon: permission
order: 4
---

# 路由元信息与权限

## 路由元信息基础
- meta字段定义
- 类型定义与扩展
- 访问元信息
- 元信息继承

## 基于角色的权限控制
- 角色定义与管理
- 路由权限配置
- 动态权限验证
- 权限不足处理

## 基于能力的权限控制
- 细粒度权限定义
- 权限指令实现
- 权限组合与继承
- 条件渲染策略

## 权限系统最佳实践
- 权限数据存储
- 权限缓存策略
- 权限变更处理
- 权限UI反馈
- 权限测试方法
EOF

# 创建7.2.5 动态路由与懒加载
cat > "$BASE_DIR/7-状态管理与路由/7.2-Vue-Router-4/7.2.5-动态路由与懒加载.md" << 'EOF'
---
title: 动态路由与懒加载
icon: dynamic
order: 5
---

# 动态路由与懒加载

## 动态路由管理
- addRoute添加路由
- removeRoute移除路由
- 路由替换与更新
- 动态路由的生命周期

## 路由懒加载
- 基于webpack的代码分割
- 基于Vite的动态导入
- 命名chunk优化
- 预加载策略

## 高级路由模式
- 嵌套路由设计
- 命名视图布局
- 路由别名
- 路由重定向策略

## 性能优化
- 路由缓存策略
- 导航性能监控
- 路由预取
- 减少路由配置体积
- 优化路由匹配算法
EOF

# 创建8. TypeScript与Vue3目录
mkdir -p "$BASE_DIR/8-TypeScript与Vue3"
cat > "$BASE_DIR/8-TypeScript与Vue3/README.md" << 'EOF'
---
title: TypeScript与Vue3
icon: typescript
order: 8
---

# TypeScript与Vue3

本章节详细介绍TypeScript在Vue3项目中的应用，包括类型定义、类型推导以及最佳实践，帮助您构建类型安全的Vue3应用。
EOF

# 创建8.1 TypeScript在Vue3中的应用
cat > "$BASE_DIR/8-TypeScript与Vue3/8.1-TypeScript在Vue3中的应用.md" << 'EOF'
---
title: TypeScript在Vue3中的应用
icon: application
order: 1
---

# TypeScript在Vue3中的应用

## 环境搭建
- Vue3 + TypeScript项目创建
- tsconfig.json配置
- Volar插件配置
- 类型检查设置

## 基础类型定义
- 组件props类型
- 事件类型
- 响应式状态类型
- 计算属性类型
- 方法参数与返回值类型

## 类型声明文件
- .d.ts文件使用
- 模块类型声明
- 全局类型扩展
- 第三方库类型处理

## 类型安全实践
- 严格类型检查
- 类型断言最佳实践
- 类型守卫使用
- 泛型应用场景
EOF

# 创建8.2 组合式API的类型系统
cat > "$BASE_DIR/8-TypeScript与Vue3/8.2-组合式API的类型系统.md" << 'EOF'
---
title: 组合式API的类型系统
icon: system
order: 2
---

# 组合式API的类型系统

## 响应式API类型
- ref与Ref类型
- reactive与UnwrapNestedRefs
- readonly与DeepReadonly
- computed与ComputedRef
- 类型推导与类型断言

## 组件类型定义
- defineComponent类型增强
- defineProps类型定义
- defineEmits类型定义
- defineExpose类型定义
- 插槽类型处理

## 组合式函数类型
- 返回值类型定义
- 参数类型定义
- 泛型组合式函数
- 类型安全的组合式函数设计

## 高级类型技巧
- 条件类型应用
- 映射类型使用
- 类型工具函数
- 递归类型定义
- 类型推导优化
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建8.2.1 ref与reactive类型定义
mkdir -p "$BASE_DIR/8-TypeScript与Vue3/8.2-组合式API的类型系统"
cat > "$BASE_DIR/8-TypeScript与Vue3/8.2-组合式API的类型系统/README.md" << 'EOF'
---
title: 组合式API的类型系统
icon: system
order: 2
---

# 组合式API的类型系统

本节详细介绍Vue3组合式API中的类型系统，包括响应式API的类型定义、组件类型声明以及类型推导机制，帮助您构建类型安全的Vue3应用。
EOF

cat > "$BASE_DIR/8-TypeScript与Vue3/8.2-组合式API的类型系统/8.2.1-ref与reactive类型定义.md" << 'EOF'
---
title: ref与reactive类型定义
icon: type
order: 1
---

# ref与reactive类型定义

## ref类型系统
- Ref<T>接口定义
- 基本类型的ref
- 复杂对象的ref
- 数组的ref
- 类型推导与显式类型注解

## reactive类型系统
- UnwrapNestedRefs<T>类型
- DeepReadonly<T>类型
- 对象类型的reactive
- 嵌套对象的类型处理
- 类型丢失问题与解决方案

## 类型转换与断言
- unref函数类型
- toRefs类型转换
- toRef类型转换
- 安全的类型断言方法
- 类型守卫应用

## 高级类型技巧
- 泛型约束在ref中的应用
- 条件类型与ref
- 递归类型与深层响应式
- 联合类型与交叉类型在响应式中的应用
EOF

# 创建8.2.2 props与emit类型定义
cat > "$BASE_DIR/8-TypeScript与Vue3/8.2-组合式API的类型系统/8.2.2-props与emit类型定义.md" << 'EOF'
---
title: props与emit类型定义
icon: props
order: 2
---

# props与emit类型定义

## defineProps类型定义
- 运行时声明与类型声明
- 使用类型参数
- 使用类型字面量
- 复杂props类型定义
- 默认值与必填属性

## defineEmits类型定义
- 事件类型声明
- 事件参数类型
- 事件验证函数类型
- 复杂事件类型定义

## withDefaults辅助函数
- 为props提供默认值
- 类型推导与默认值
- 复杂默认值处理
- 与TypeScript配置的交互

## 最佳实践
- 接口vs类型别名
- 可复用类型定义
- 类型文档化
- 严格类型检查配置
- 常见类型错误规避
EOF

# 创建8.2.3 组件类型声明
cat > "$BASE_DIR/8-TypeScript与Vue3/8.2-组合式API的类型系统/8.2.3-组件类型声明.md" << 'EOF'
---
title: 组件类型声明
icon: component
order: 3
---

# 组件类型声明

## 组件实例类型
- ComponentPublicInstance类型
- 获取组件实例类型
- 组件ref类型定义
- 类型安全的组件引用

## 插槽类型
- 定义插槽内容类型
- 作用域插槽类型
- 插槽props类型
- 动态插槽类型

## 组件暴露类型
- defineExpose类型定义
- 暴露方法与属性
- 访问暴露的API
- 类型安全的组件通信

## 全局组件类型
- 全局组件类型声明
- 扩展全局组件类型
- 自定义组件库类型
- 第三方组件类型集成
EOF

# 创建8.3 defineComponent与类型推导
cat > "$BASE_DIR/8-TypeScript与Vue3/8.3-defineComponent与类型推导.md" << 'EOF'
---
title: defineComponent与类型推导
icon: define
order: 3
---

# defineComponent与类型推导

## defineComponent基础
- 类型推导增强作用
- 与直接导出组件对象的区别
- 返回值类型分析
- 在不同API风格中的应用

## 选项式API类型推导
- data类型推导
- methods类型推导
- computed类型推导
- props类型推导
- 生命周期钩子类型

## 组合式API类型推导
- setup函数参数类型
- setup返回值类型
- 上下文类型(context)
- 生命周期钩子类型
- 响应式API类型推导

## 高级类型推导技巧
- 泛型组件定义
- 条件类型应用
- 类型推导调试
- 类型推导限制与解决方案
EOF

# 创建8.4 自定义类型声明
cat > "$BASE_DIR/8-TypeScript与Vue3/8.4-自定义类型声明.md" << 'EOF'
---
title: 自定义类型声明
icon: custom
order: 4
---

# 自定义类型声明

## 模块类型声明
- .d.ts文件创建与使用
- 模块声明语法
- 命名空间声明
- 全局类型声明

## Vue相关类型扩展
- 扩展ComponentCustomProperties
- 扩展ComponentCustomOptions
- 扩展全局属性类型
- 扩展插件类型

## 环境类型声明
- Vite环境变量类型
- 静态资源导入类型
- CSS模块类型
- 客户端类型vs服务端类型

## 第三方库类型处理
- 为无类型库添加声明
- 增强现有类型声明
- 模块扩充技术
- 声明合并应用
EOF

# 创建8.5 TypeScript工具类型
cat > "$BASE_DIR/8-TypeScript与Vue3/8.5-TypeScript工具类型.md" << 'EOF'
---
title: TypeScript工具类型
icon: tools
order: 5
---

# TypeScript工具类型

## 内置工具类型
- Partial<T>：将所有属性变为可选
- Required<T>：将所有属性变为必选
- Readonly<T>：将所有属性变为只读
- Record<K,T>：构造键值对类型
- Pick<T,K>：从T中选择部分属性
- Omit<T,K>：从T中排除部分属性

## Vue特有工具类型
- PropType<T>：定义复杂prop类型
- ExtractPropTypes<T>：提取props类型
- ComponentPublicInstance：组件实例类型
- ComponentInternalInstance：内部实例类型
- Slots：插槽类型

## 自定义工具类型
- 条件类型定义
- 映射类型应用
- 索引类型查询
- 类型推断与类型断言

## 实际应用场景
- 状态管理类型
- API响应类型
- 表单验证类型
- 路由参数类型
- 组件props类型
EOF

# 创建8.6 类型体操实践
cat > "$BASE_DIR/8-TypeScript与Vue3/8.6-类型体操实践.md" << 'EOF'
---
title: 类型体操实践
icon: practice
order: 6
---

# 类型体操实践

## 类型体操基础
- 什么是类型体操
- 类型编程思维
- 类型级别的算法
- 类型体操的价值与限制

## 常见类型体操案例
- 递归类型定义
- 联合类型转交叉类型
- 字符串字面量操作
- 数组类型操作
- 函数类型变换

## Vue3中的类型体操
- 响应式类型转换
- 组件props类型推导
- 复杂状态类型定义
- 类型安全的事件系统
- 插件类型体操

## 类型体操最佳实践
- 可读性与复杂性平衡
- 类型注释与文档
- 类型测试策略
- 性能考量
- 团队协作中的类型体操
EOF
mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3 知识体系
icon: vue
order: 1
---

# Vue3 知识体系

本知识库系统地整理了Vue3的核心概念、实践技巧和高级应用，帮助开发者从入门到精通Vue3框架。无论您是Vue新手还是从Vue2迁移的开发者，都能在这里找到有价值的学习资源。
EOF

# 创建9. Vue3应用规模化目录
mkdir -p "$BASE_DIR/9-Vue3应用规模化"
cat > "$BASE_DIR/9-Vue3应用规模化/README.md" << 'EOF'
---
title: Vue3应用规模化
icon: scale
order: 9
---

# Vue3应用规模化

本章节介绍如何构建和管理大型Vue3应用，包括项目架构设计、代码组织策略以及开发工具链配置，帮助您应对企业级应用开发的挑战。
EOF

# 创建9.1 项目架构设计目录
mkdir -p "$BASE_DIR/9-Vue3应用规模化/9.1-项目架构设计"
cat > "$BASE_DIR/9-Vue3应用规模化/9.1-项目架构设计/README.md" << 'EOF'
---
title: 项目架构设计
icon: architecture
order: 1
---

# 项目架构设计

本节详细介绍Vue3大型应用的架构设计原则和实践方法，包括目录结构组织、代码分层策略以及模块化设计，帮助您构建可维护、可扩展的应用架构。
EOF

# 创建9.1.1 基于组合式API的目录结构
cat > "$BASE_DIR/9-Vue3应用规模化/9.1-项目架构设计/9.1.1-基于组合式API的目录结构.md" << 'EOF'
---
title: 基于组合式API的目录结构
icon: folder
order: 1
---

# 基于组合式API的目录结构

## 基础目录结构
- src/assets：静态资源
- src/components：通用组件
- src/composables：组合式函数
- src/views：页面组件
- src/router：路由配置
- src/stores：状态管理
- src/utils：工具函数
- src/api：API接口

## 组件目录组织
- 按功能域分组
- 原子设计方法论
- 组件命名约定
- 组件文档化策略

## 组合式函数目录
- 领域驱动的组织方式
- 共享状态组合式函数
- UI逻辑组合式函数
- 工具类组合式函数

## 大型项目扩展结构
- 多模块架构
- 微前端架构考量
- 国际化资源组织
- 主题与样式组织
- 测试目录结构
EOF

# 创建9.1.2 代码组织策略
cat > "$BASE_DIR/9-Vue3应用规模化/9.1-项目架构设计/9.1.2-代码组织策略.md" << 'EOF'
---
title: 代码组织策略
icon: strategy
order: 2
---

# 代码组织策略

## 组件设计策略
- 展示型vs容器型组件
- 组件粒度控制
- 组件通信策略
- 组件复用模式
- 组件文档化

## 状态管理策略
- 本地状态vs全局状态
- 状态分层设计
- 状态持久化策略
- 状态同步机制
- 状态测试方法

## 路由组织策略
- 路由模块化
- 路由懒加载策略
- 路由权限控制
- 路由元数据设计
- 路由过渡效果

## 业务逻辑组织
- 领域驱动设计应用
- 业务逻辑分层
- API调用封装
- 错误处理策略
- 日志与监控
EOF

# 创建9.1.3 模块化设计
cat > "$BASE_DIR/9-Vue3应用规模化/9.1-项目架构设计/9.1.3-模块化设计.md" << 'EOF'
---
title: 模块化设计
icon: module
order: 3
---

# 模块化设计

## 模块划分原则
- 业务领域划分
- 功能内聚原则
- 模块间低耦合
- 模块边界定义
- 模块接口设计

## 模块内部结构
- 统一的模块结构
- 模块内组件组织
- 模块内状态管理
- 模块内API封装
- 模块内工具函数

## 模块间通信
- 基于状态管理的通信
- 事件总线替代方案
- 依赖注入模式
- 模块API设计
- 避免循环依赖

## 可插拔模块设计
- 动态模块加载
- 模块注册机制
- 模块生命周期
- 模块配置系统
- 模块扩展点设计
EOF

# 创建9.2 Vite开发工具链目录
mkdir -p "$BASE_DIR/9-Vue3应用规模化/9.2-Vite开发工具链"
cat > "$BASE_DIR/9-Vue3应用规模化/9.2-Vite开发工具链/README.md" << 'EOF'
---
title: Vite开发工具链
icon: tools
order: 2
---

# Vite开发工具链

本节详细介绍Vite在Vue3项目中的配置和优化方法，帮助您构建高效的开发环境和生产构建流程。
EOF

# 创建9.2.1 Vite配置最佳实践
cat > "$BASE_DIR/9-Vue3应用规模化/9.2-Vite开发工具链/9.2.1-Vite配置最佳实践.md" << 'EOF'
---
title: Vite配置最佳实践
icon: config
order: 1
---

# Vite配置最佳实践

## 基础配置
- 项目根目录配置
- 开发服务器设置
- 环境变量配置
- 别名路径设置
- 全局CSS变量

## 插件配置
- Vue插件配置
- TypeScript插件
- ESLint与Prettier集成
- 自动导入组件
- 自动导入API

## 构建配置
- 生产环境优化
- 代码分割策略
- 资源处理配置
- 预构建依赖
- 兼容性处理

## 高级配置
- 多页应用配置
- SSR配置
- PWA支持
- 测试环境配置
- 自定义Vite插件
EOF

# 创建9.2.2 构建优化策略
cat > "$BASE_DIR/9-Vue3应用规模化/9.2-Vite开发工具链/9.2.2-构建优化策略.md" << 'EOF'
---
title: 构建优化策略
icon: optimize
order: 2
---

# 构建优化策略

## 开发环境优化
- 热更新性能优化
- 依赖预构建优化
- 开发服务器配置
- 源码映射配置
- 内存使用优化

## 构建速度优化
- 并行构建配置
- 缓存策略优化
- ESBuild转换优化
- 按需编译
- CI/CD优化

## 构建产物优化
- 代码分割策略
- 懒加载配置
- 资源压缩优化
- 图片优化
- CSS优化

## 性能监控与分析
- 构建性能分析
- 包大小分析
- 运行时性能分析
- 性能预算设置
- 持续优化策略
EOF

mkdir -p "$BASE_DIR"

# 创建主README.md
cat > "$BASE_DIR/README.md" << 'EOF'
---
title: Vue3性能优化与最佳实践
icon: vue
order: 10
---

# Vue3性能优化与最佳实践

本章节将深入探讨Vue3应用的性能优化策略和最佳实践，帮助开发者构建高效、流畅的Vue3应用。从性能指标监控到具体的优化技术，以及错误处理机制，全面提升Vue3应用的质量和用户体验。
EOF

# 创建性能优化目录
mkdir -p "$BASE_DIR/10.1-性能优化"
cat > "$BASE_DIR/10.1-性能优化/README.md" << 'EOF'
---
title: 性能优化
icon: speed
order: 1
---

# 性能优化

本节将介绍Vue3应用的各种性能优化技术，从性能指标的监控到具体的优化策略，帮助开发者构建高性能的Vue3应用。
EOF

# 创建性能指标与监控文档
cat > "$BASE_DIR/10.1-性能优化/10.1.1-性能指标与监控.md" << 'EOF'
---
title: 性能指标与监控
icon: dashboard
order: 1
---

# 性能指标与监控

## 关键性能指标
- 首次内容绘制 (FCP)
- 最大内容绘制 (LCP)
- 首次输入延迟 (FID)
- 累积布局偏移 (CLS)
- 总阻塞时间 (TBT)

## 性能监控工具
- Vue Devtools性能面板
- Lighthouse
- Chrome Performance面板
- Web Vitals库

## 自定义性能监控
- 使用Performance API
- 集成第三方监控服务
EOF

# 创建组合式API性能优化文档
cat > "$BASE_DIR/10.1-性能优化/10.1.2-组合式API性能优化.md" << 'EOF'
---
title: 组合式API性能优化
icon: code
order: 2
---

# 组合式API性能优化

## 响应式系统优化
- ref vs reactive的选择
- 避免不必要的响应式
- shallowRef和shallowReactive的使用场景

## 计算属性优化
- 缓存计算结果
- 避免复杂计算属性
- 合理设置依赖项

## 组合函数(Composables)优化
- 逻辑复用与性能平衡
- 避免重复创建响应式对象
- 合理使用生命周期钩子
EOF

# 创建构建层面优化文档
cat > "$BASE_DIR/10.1-性能优化/10.1.3-构建层面优化.md" << 'EOF'
---
title: 构建层面优化
icon: build
order: 3
---

# 构建层面优化

## 代码分割
- 路由懒加载
- 组件懒加载
- 动态导入

## 资源优化
- 图片优化
- CSS优化
- 字体优化

## Vite构建优化
- 预构建依赖
- 生产环境构建配置
- 构建缓存策略
EOF

# 创建运行时优化文档
cat > "$BASE_DIR/10.1-性能优化/10.1.4-运行时优化.md" << 'EOF'
---
title: 运行时优化
icon: rocket
order: 4
---

# 运行时优化

## 虚拟列表
- 处理大数据列表
- 虚拟滚动实现
- 第三方库推荐

## 组件渲染优化
- v-once和v-memo指令
- 避免不必要的组件渲染
- 组件缓存策略

## 内存管理
- 避免内存泄漏
- 合理使用事件监听
- 及时清理不再使用的资源
EOF

# 创建错误处理目录
mkdir -p "$BASE_DIR/10.2-错误处理"
cat > "$BASE_DIR/10.2-错误处理/README.md" << 'EOF'
---
title: 错误处理
icon: bug
order: 2
---

# 错误处理

本节将介绍Vue3应用中的错误处理机制，帮助开发者构建更加健壮的应用。
EOF

# 创建错误边界文档
cat > "$BASE_DIR/10.2-错误处理/10.2.1-错误边界.md" << 'EOF'
---
title: 错误边界
icon: shield
order: 1
---

# 错误边界

## 错误边界概念
- 什么是错误边界
- Vue3中的错误处理机制
- 与React错误边界的对比

## 实现错误边界
- 使用errorCaptured钩子
- 全局错误处理
- 自定义错误边界组件

## 错误恢复策略
- 优雅降级
- 错误重试机制
- 用户反馈与错误报告
EOF

# 创建错误捕获文档
cat > "$BASE_DIR/10.Vue3性能优化与最佳实践/10.2-错误处理/10.2.2-异常捕获.md" << 'EOF'
---
title: 异常捕获
icon: bug-slash
order: 2
---

# 异常捕获

## Vue3异常捕获机制
- try/catch在组合式API中的使用
- 异步操作的错误处理
- Promise错误捕获

## 全局异常处理
- app.config.errorHandler配置
- window.onerror与window.addEventListener('error')
- 未捕获的Promise异常处理

## 组件级异常处理
- onErrorCaptured生命周期钩子
- 异常传播机制
- 阻止异常继续传播
EOF

# 创建错误监控文档
cat > "$BASE_DIR/10.Vue3性能优化与最佳实践/10.2-错误处理/10.2.3-错误监控.md" << 'EOF'
---
title: 错误监控
icon: monitor
order: 3
---

# 错误监控

## 前端错误监控系统
- 错误日志收集
- 错误上报机制
- 错误分析与可视化

## 常见监控工具
- Sentry集成
- LogRocket
- 自定义错误监控系统

## 监控最佳实践
- 错误分类与优先级
- 用户环境信息收集
- 错误复现与调试
EOF

# 创建安全实践目录
mkdir -p "$BASE_DIR/10.Vue3性能优化与最佳实践/10.3-安全实践"
cat > "$BASE_DIR/110.Vue3性能优化与最佳实践/0.3-安全实践/README.md" << 'EOF'
---
title: 安全实践
icon: shield-check
order: 3
---

# 安全实践

本节将介绍Vue3应用开发中的安全最佳实践，帮助开发者构建更加安全的Web应用。
EOF

# 创建安全实践文档
cat > "$BASE_DIR/10.Vue3性能优化与最佳实践/10.3-安全实践/10.3.1-安全最佳实践.md" << 'EOF'
---
title: 安全最佳实践
icon: shield-check
order: 1
---

# 安全最佳实践

## XSS防护
- Vue3内置的XSS防护机制
- v-html指令的安全使用
- 用户输入验证与过滤

## CSRF防护
- CSRF令牌管理
- SameSite Cookie属性
- 请求头验证

## 敏感数据处理
- 避免敏感信息泄露
- 本地存储安全
- 传输层安全
EOF

# 创建国际化方案目录
mkdir -p "$BASE_DIR/10.Vue3性能优化与最佳实践/10.4-国际化方案"
cat > "$BASE_DIR/10.Vue3性能优化与最佳实践/10.4-国际化方案/README.md" << 'EOF'
---
title: 国际化方案
icon: globe
order: 4
---

# 国际化方案

本节将介绍Vue3应用的国际化解决方案，帮助开发者构建支持多语言的全球化应用。
EOF

# 创建国际化方案文档
cat > "$BASE_DIR/10.Vue3性能优化与最佳实践/10.4-国际化方案/10.4.1-Vue3国际化实现.md" << 'EOF'
---
title: Vue3国际化实现
icon: language
order: 1
---

# Vue3国际化实现

## Vue I18n集成
- Vue I18n 9.x与Vue3的集成
- 组合式API中的国际化
- 动态语言切换

## 国际化最佳实践
- 翻译文件组织
- 日期、数字和货币格式化
- 复数和特殊语法处理

## 按需加载翻译
- 语言包分割策略
- 动态导入翻译资源
- 性能优化考量
EOF

# 创建跨端开发实践目录
mkdir -p "$BASE_DIR/10.Vue3性能优化与最佳实践/10.5-跨端开发实践"
cat > "$BASE_DIR/10.Vue3性能优化与最佳实践/10.5-跨端开发实践/README.md" << 'EOF'
---
title: 跨端开发实践
icon: devices
order: 5
---

# 跨端开发实践

本节将介绍基于Vue3的跨端开发解决方案，帮助开发者构建能够在多种平台上运行的应用。
EOF

# 创建跨端开发实践文档
cat > "$BASE_DIR/10.Vue3性能优化与最佳实践/10.5-跨端开发实践/10.5.1-跨端解决方案.md" << 'EOF'
---
title: 跨端解决方案
icon: mobile
order: 1
---

# 跨端解决方案

## Vue3与原生应用集成
- Capacitor框架
- Ionic Vue
- NativeScript-Vue

## 小程序开发
- uni-app与Vue3
- Taro与Vue3
- 跨平台组件设计

## 桌面应用开发
- Electron与Vue3
- Tauri与Vue3
- 性能与体验优化
EOF

# 创建Vue3源码解析目录
mkdir -p "$BASE_DIR/11.Vue3源码解析"
cat > "$BASE_DIR/11.Vue3源码解析/README.md" << 'EOF'
---
title: Vue3源码解析
icon: code
order: 11
---

# Vue3源码解析

本章节将深入分析Vue3的源码实现，帮助开发者理解Vue3的内部工作原理，从而更好地使用Vue3进行开发。
EOF

# 创建响应式系统实现目录
mkdir -p "$BASE_DIR/11.Vue3源码解析/11.1-响应式系统实现"
cat > "$BASE_DIR/11.Vue3源码解析/11.1-响应式系统实现/README.md" << 'EOF'
---
title: 响应式系统实现
icon: refresh
order: 1
---

# 响应式系统实现

本节将深入分析Vue3响应式系统的实现原理，包括Proxy的使用、依赖收集与触发更新的机制等。
EOF

# 创建响应式系统实现文档
cat > "$BASE_DIR/11.Vue3源码解析/11.1-响应式系统实现/11.1.1-响应式核心原理.md" << 'EOF'
---
title: 响应式核心原理
icon: atom
order: 1
---

# 响应式核心原理

## Proxy与Reflect
- Proxy基础概念
- Proxy与Object.defineProperty对比
- Reflect API的作用

## 依赖收集
- effect函数实现
- 依赖收集过程
- 依赖存储结构

## 触发更新
- 响应式数据变更检测
- 更新队列管理
- 调度系统实现
EOF

# 创建Proxy与Reflect文档
cat > "$BASE_DIR/11.Vue3源码解析/11.1-响应式系统实现/11.1.1-Proxy与Reflect.md" << 'EOF'
---
title: Proxy与Reflect
icon: code
order: 1
---

# Proxy与Reflect

## Proxy基础
- Proxy对象的概念与作用
- 常用的trap方法
- Proxy与Object.defineProperty的对比

## Reflect API
- Reflect对象的设计目的
- 常用的Reflect方法
- 为什么Vue3中配合Proxy使用Reflect

## Vue3中的实现
- createReactiveObject函数分析
- 基础handler实现
- 只读与浅层响应式的处理
EOF

# 创建依赖收集与触发更新文档
cat > "$BASE_DIR/11.Vue3源码解析/11.1-响应式系统实现/11.1.2-依赖收集与触发更新.md" << 'EOF'
---
title: 依赖收集与触发更新
icon: connection
order: 2
---

# 依赖收集与触发更新

## 依赖收集机制
- effect函数实现原理
- 活跃effect的管理
- 依赖图的构建过程

## 触发更新流程
- trigger函数实现
- 依赖清理与优化
- 调度系统与批量更新

## 嵌套effect处理
- effect嵌套问题分析
- effectStack的实现
- 避免无限循环的策略
EOF

# 创建ref与reactive实现原理文档
cat > "$BASE_DIR/11.Vue3源码解析/11.1-响应式系统实现/11.1.3-ref与reactive实现原理.md" << 'EOF'
---
title: ref与reactive实现原理
icon: atom
order: 3
---

# ref与reactive实现原理

## reactive实现
- reactive函数源码分析
- 深层响应式的实现
- 集合类型的特殊处理

## ref实现
- ref的内部结构
- RefImpl类的实现
- .value属性的代理机制

## 响应式工具函数
- toRaw实现原理
- markRaw的作用机制
- shallowRef与shallowReactive的实现区别
EOF

# 创建渲染机制目录
mkdir -p "$BASE_DIR/11.Vue3源码解析/11.2-渲染机制"
cat > "$BASE_DIR/11.Vue3源码解析/11.2-渲染机制/README.md" << 'EOF'
---
title: 渲染机制
icon: eye
order: 2
---

# 渲染机制

本节将深入分析Vue3的渲染机制，包括虚拟DOM的实现、Diff算法的优化以及静态内容的处理策略。
EOF

# 创建虚拟DOM与Diff算法文档
cat > "$BASE_DIR/11.Vue3源码解析/11.2-渲染机制/11.2.1-虚拟DOM与Diff算法.md" << 'EOF'
---
title: 虚拟DOM与Diff算法
icon: sitemap
order: 1
---

# 虚拟DOM与Diff算法

## 虚拟DOM基础
- VNode的数据结构
- h函数与createVNode
- 虚拟DOM的优势与权衡

## 传统Diff算法
- 树形Diff的基本原理
- 同层比较策略
- key的重要性

## Vue3中的实现
- patch函数实现分析
- 不同类型节点的处理
- 组件与普通元素的区别
EOF

# 创建Vue3 Diff优化文档
cat > "$BASE_DIR/11.Vue3源码解析/11.2-渲染机制/11.2.2-Vue3 Diff优化.md" << 'EOF'
---
title: Vue3 Diff优化
icon: bolt
order: 2
---

# Vue3 Diff优化

## 双端Diff算法
- Vue2中的双端比较
- Vue3中的改进
- 性能提升分析

## 快速路径检测
- 静态节点跳过
- 文本节点快速处理
- Fragment处理优化

## 最长递增子序列算法
- 算法原理与实现
- 在移动节点中的应用
- 时间复杂度优化
EOF

# 创建静态提升与缓存文档
cat > "$BASE_DIR/11.Vue3源码解析/11.2-渲染机制/11.2.3-静态提升与缓存.md" << 'EOF'
---
title: 静态提升与缓存
icon: rocket
order: 3
---

# 静态提升与缓存

## 静态提升
- hoistStatic的实现原理
- 静态节点的识别
- 提升带来的性能收益

## 事件缓存
- cacheHandlers的工作原理
- 内联函数的优化
- 缓存策略的取舍

## PatchFlags机制
- 动态节点标记系统
- 不同标志的含义
- 运行时的快速路径
EOF

# 创建模板编译原理目录
mkdir -p "$BASE_DIR/11.Vue3源码解析/11.3-模板编译原理"
cat > "$BASE_DIR/11.Vue3源码解析/11.3-模板编译原理/README.md" << 'EOF'
---
title: 模板编译原理
icon: code-branch
order: 3
---

# 模板编译原理

本节将深入分析Vue3的模板编译过程，包括解析、转换和代码生成等阶段。
EOF

# 创建模板编译原理文档
cat > "$BASE_DIR/11.Vue3源码解析/11.3-模板编译原理/11.3.1-编译流程概述.md" << 'EOF'
---
title: 编译流程概述
icon: diagram-project
order: 1
---

# 编译流程概述

## 编译阶段划分
- 解析(Parse)：模板到AST
- 转换(Transform)：AST优化
- 生成(Generate)：AST到渲染函数

## 编译时优化
- 静态节点分析
- 动态属性标记
- 编译时提示与警告

## 运行时编译vs预编译
- 两种模式的区别
- 性能影响分析
- 使用场景选择
EOF

# 创建AST转换文档
cat > "$BASE_DIR/11.Vue3源码解析/11.3-模板编译原理/11.3.2-AST转换与优化.md" << 'EOF'
---
title: AST转换与优化
icon: bezier-curve
order: 2
---

# AST转换与优化

## AST节点类型
- 元素节点结构
- 文本与表达式节点
- 指令与属性的表示

## 转换插件系统
- 插件机制设计
- 内置转换插件分析
- 自定义转换插件

## 静态分析优化
- 静态提升标记
- 常量表达式计算
- 条件编译实现
EOF

# 创建代码生成文档
cat > "$BASE_DIR/11.Vue3源码解析/11.3-模板编译原理/11.3.3-代码生成.md" << 'EOF'
---
title: 代码生成
icon: file-code
order: 3
---

# 代码生成

## 渲染函数生成
- render函数结构
- createVNode调用生成
- 动态内容处理

## 模板指令编译
- v-if/v-for的编译输出
- v-model的双向绑定实现
- 自定义指令的处理

## 编译产物分析
- 生产环境vs开发环境
- 代码体积优化
- 运行时性能考量
EOF
# 创建编译优化策略文档
cat > "$BASE_DIR/11.Vue3源码解析/11.Vue3源码解析/11.3-模板编译原理/11.3.1-编译优化策略.md" << 'EOF'
---
title: 编译优化策略
icon: rocket
order: 1
---

# 编译优化策略

## 静态提升
- 静态节点和属性的识别
- 提升到渲染函数外部
- 减少重复创建的开销

## 预字符串化
- 大型静态树的字符串化处理
- innerHTML vs createElement性能对比
- 应用场景与限制

## 缓存事件处理函数
- 内联函数缓存机制
- 避免子组件更新
- 实现原理与源码分析
EOF

# 创建Block树与PatchFlags文档
cat > "$BASE_DIR/11.Vue3源码解析/11.3-模板编译原理/11.3.2-Block树与PatchFlags.md" << 'EOF'
---
title: Block树与PatchFlags
icon: tree
order: 2
---

# Block树与PatchFlags

## Block树概念
- Block节点的定义与作用
- 动态节点收集机制
- 与传统虚拟DOM的区别

## PatchFlags标记系统
- 不同标志位的含义
- 复合标志的处理
- 运行时快速路径

## 动态节点追踪
- 动态子节点的收集
- 扁平化的动态节点列表
- 优化Diff算法的效率
EOF

# 创建组件化实现目录
mkdir -p "$BASE_DIR/11.Vue3源码解析/11.4-组件化实现"
cat > "$BASE_DIR/11.Vue3源码解析/11.4-组件化实现/README.md" << 'EOF'
---
title: 组件化实现
icon: puzzle-piece
order: 4
---

# 组件化实现

本节将深入分析Vue3的组件系统实现原理，包括组件的创建、挂载、更新等核心流程。
EOF

# 创建组件化实现文档
cat > "$BASE_DIR/11.Vue3源码解析/11.4-组件化实现/11.4.1-组件实例创建.md" << 'EOF'
---
title: 组件实例创建
icon: plus-circle
order: 1
---

# 组件实例创建

## 组件实例结构
- 组件实例的核心属性
- setupContext的构成
- 内部状态管理

## 创建组件实例流程
- createComponentInstance函数分析
- 组件初始化过程
- 生命周期注册机制

## 组件代理对象
- 实例代理的实现
- 属性访问控制
- 渲染上下文构建
EOF

# 创建组件生命周期文档
cat > "$BASE_DIR/11.Vue3源码解析/11.4-组件化实现/11.4.2-组件生命周期.md" << 'EOF'
---
title: 组件生命周期
icon: recycle
order: 2
---

# 组件生命周期

## 生命周期钩子实现
- 钩子注册机制
- 调用时机与顺序
- 组合式API中的生命周期

## 组件挂载流程
- mountComponent函数分析
- setup函数执行过程
- 首次渲染机制

## 组件更新与卸载
- 更新触发条件
- 更新流程分析
- 卸载时的清理工作
EOF

# 创建Vue3与Vue2源码对比目录
mkdir -p "$BASE_DIR/11.Vue3源码解析/11.5-Vue3与Vue2源码对比"
cat > "$BASE_DIR/11.Vue3源码解析/11.5-Vue3与Vue2源码对比/README.md" << 'EOF'
---
title: Vue3与Vue2源码对比
icon: code-compare
order: 5
---

# Vue3与Vue2源码对比

本节将对比分析Vue3与Vue2在源码层面的主要差异，帮助开发者更好地理解Vue3的演进方向。
EOF

# 创建架构设计对比文档
cat > "$BASE_DIR/11.Vue3源码解析/11.5-Vue3与Vue2源码对比/11.5.1-架构设计对比.md" << 'EOF'
---
title: 架构设计对比
icon: sitemap
order: 1
---

# 架构设计对比

## 整体架构变化
- 模块化设计的改进
- 包结构的变化
- 代码组织方式对比

## 响应式系统对比
- Object.defineProperty vs Proxy
- 依赖收集机制的变化
- 响应式边界处理

## 编译优化对比
- 编译策略的演进
- 静态分析能力提升
- 运行时性能优化
EOF

# 创建API设计对比文档
cat > "$BASE_DIR/11.Vue3源码解析/11.5-Vue3与Vue2源码对比/11.5.2-API设计对比.md" << 'EOF'
---
title: API设计对比
icon: code
order: 2
---

# API设计对比

## 选项式API vs 组合式API
- 内部实现差异
- 代码组织方式对比
- 性能与可维护性分析

## 生命周期变化
- 命名与调用方式变化
- 执行时机的差异
- 组合式API中的生命周期

## 全局API重构
- 全局API的变化
- 应用实例概念的引入
- 插件系统的改进
EOF

# 创建Vue3生态系统目录
mkdir -p "$BASE_DIR/12.Vue3生态系统"
cat > "$BASE_DIR/12.Vue3生态系统/README.md" << 'EOF'
---
title: Vue3生态系统
icon: leaf
order: 12
---

# Vue3生态系统

本章节将介绍Vue3生态系统中的重要工具、库和框架，帮助开发者构建完整的Vue3应用。
EOF

# 创建UI组件库目录
mkdir -p "$BASE_DIR/12.Vue3生态系统/12.1-UI组件库"
cat > "$BASE_DIR/12.Vue3生态系统/12.1-UI组件库/README.md" << 'EOF'
---
title: UI组件库
icon: palette
order: 1
---

# UI组件库

本节将介绍Vue3生态中的主流UI组件库，帮助开发者选择适合自己项目的组件库。
EOF

# 创建Element Plus文档
cat > "$BASE_DIR/12.Vue3生态系统/12.1-UI组件库/12.1.1-Element Plus.md" << 'EOF'
---
title: Element Plus
icon: element-plus
order: 1
---

# Element Plus

## 基本介绍
- Element Plus的发展历程
- 与Element UI的区别
- 设计理念与特点

## 使用指南
- 安装与配置
- 按需引入优化
- 主题定制方案

## 最佳实践
- 组件封装技巧
- 性能优化建议
- 与TypeScript结合使用
EOF
# 创建Ant Design Vue文档
cat > "$BASE_DIR/12.Vue3生态系统/12.1-UI组件库/12.1.2-Ant Design Vue.md" << 'EOF'
---
title: Ant Design Vue
icon: ant-design
order: 2
---

# Ant Design Vue

## 基本介绍
- Ant Design Vue的设计理念
- 与React版Ant Design的关系
- 企业级应用UI解决方案

## 使用指南
- 安装与配置方法
- 按需加载与全局引入
- 主题定制与国际化

## 最佳实践
- 表单处理技巧
- 数据表格优化
- 与TypeScript结合使用
EOF

# 创建Naive UI文档
cat > "$BASE_DIR/12.Vue3生态系统/12.1-UI组件库/12.1.3-Naive UI.md" << 'EOF'
---
title: Naive UI
icon: puzzle-piece
order: 3
---

# Naive UI

## 基本介绍
- Naive UI的设计特点
- 完全基于TypeScript
- 主题系统与暗黑模式

## 使用指南
- 安装与快速上手
- 按需引入与全局配置
- 主题定制与国际化

## 组件特色
- 独特的组件设计
- 高级数据表格
- 丰富的交互组件
EOF

# 创建组件库选型对比文档
cat > "$BASE_DIR/12.Vue3生态系统/12.1-UI组件库/12.1.4-组件库选型对比.md" << 'EOF'
---
title: 组件库选型对比
icon: balance-scale
order: 4
---

# 组件库选型对比

## 功能对比
- 组件覆盖范围
- 特色功能比较
- 扩展性与定制化

## 性能对比
- 包体积与加载性能
- 渲染性能
- 内存占用

## 选型建议
- 不同项目类型的选择建议
- 团队因素考量
- 长期维护与社区活跃度
EOF

# 创建开发工具目录
mkdir -p "$BASE_DIR/12.Vue3生态系统/12.2-开发工具"
cat > "$BASE_DIR/12.Vue3生态系统/12.2-开发工具/README.md" << 'EOF'
---
title: 开发工具
icon: tools
order: 2
---

# 开发工具

本节将介绍Vue3生态中的核心开发工具，帮助开发者提高开发效率和代码质量。
EOF

# 创建Vite与插件文档
cat > "$BASE_DIR/12.Vue3生态系统/12.2-开发工具/12.2.1-Vite与插件.md" << 'EOF'
---
title: Vite与插件
icon: lightning
order: 1
---

# Vite与插件

## Vite基础
- Vite的设计理念
- 与传统构建工具的对比
- 开发服务器与构建优化

## Vue3专用插件
- @vitejs/plugin-vue详解
- @vitejs/plugin-vue-jsx使用
- 路由与状态管理插件

## 常用Vite插件
- vite-plugin-pages
- vite-plugin-pwa
- unplugin系列插件
EOF

# 创建Vue DevTools文档
cat > "$BASE_DIR/12.Vue3生态系统/12.2-开发工具/12.2.2-Vue DevTools.md" << 'EOF'
---
title: Vue DevTools
icon: bug
order: 2
---

# Vue DevTools

## 基本功能
- 组件树检查
- 性能分析工具
- 状态管理调试

## Vue3特有功能
- 组合式API调试
- 自定义检查器
- 时间线事件追踪

## 高级使用技巧
- 自定义标签
- 过滤组件
- 性能优化分析
EOF

# 创建VS Code插件文档
cat > "$BASE_DIR/12.Vue3生态系统/12.2-开发工具/12.2.3-VS Code插件.md" << 'EOF'
---
title: VS Code插件
icon: microsoft
order: 3
---

# VS Code插件

## 必备插件
- Volar (Vue Language Features)
- TypeScript Vue Plugin
- ESLint与Prettier

## 提效插件
- Vue VSCode Snippets
- i18n Ally
- Auto Import

## 配置最佳实践
- 工作区设置推荐
- 代码片段定制
- 调试配置优化
EOF

# 创建实用工具库目录
mkdir -p "$BASE_DIR/12.Vue3生态系统/12.3-实用工具库"
cat > "$BASE_DIR/12.Vue3生态系统/12.3-实用工具库/README.md" << 'EOF'
---
title: 实用工具库
icon: wrench
order: 3
---

# 实用工具库

本节将介绍Vue3生态中的实用工具库，帮助开发者解决常见问题并提高开发效率。
EOF

# 创建状态管理工具文档
cat > "$BASE_DIR/12.Vue3生态系统/12.3-实用工具库/12.3.1-状态管理工具.md" << 'EOF'
---
title: 状态管理工具
icon: database
order: 1
---

# 状态管理工具

## Pinia
- Pinia的设计理念
- Store定义与使用
- 与Vuex的对比

## VueUse
- 响应式工具集
- 状态管理相关函数
- 持久化状态解决方案

## 轻量级状态管理
- provide/inject模式
- 组合式函数封装
- 响应式API自定义状态
EOF

# 创建路由与导航文档
cat > "$BASE_DIR/12.Vue3生态系统/12.3-实用工具库/12.3.2-路由与导航.md" << 'EOF'
---
title: 路由与导航
icon: route
order: 2
---

# 路由与导航

## Vue Router 4
- 路由配置与使用
- 组合式API中的路由
- 导航守卫最佳实践

## 路由增强工具
- 路由元信息管理
- 动态路由与权限控制
- 路由过渡动画

## 导航组件库
- 面包屑导航
- 菜单组件
- 标签页导航
EOF

# 创建网络请求工具文档
cat > "$BASE_DIR/12.Vue3生态系统/12.3-实用工具库/12.3.3-网络请求工具.md" << 'EOF'
---
title: 网络请求工具
icon: cloud
order: 3
---

# 网络请求工具

## Axios与Vue集成
- 请求拦截器配置
- 响应处理最佳实践
- 错误处理策略

## Fetch API封装
- 基于Fetch的请求库
- 与Axios的对比
- 组合式API封装

## GraphQL客户端
- Apollo Client
- urql
- 与REST API的集成
EOF
mkdir -p "$BASE_DIR/13.实战项目与案例"

# 创建主README.md
cat > "$BASE_DIR/13.实战项目与案例/README.md" << 'EOF'
---
title: 实战项目与案例
icon: project
order: 13
---

# 实战项目与案例

本章节提供了前端开发中常见的实战项目与案例分析，包括中后台管理系统和移动端应用的开发实践。通过这些案例，您可以了解真实项目中的架构设计、功能实现和性能优化等关键环节，将理论知识应用到实际开发中。
EOF

# 创建中后台管理系统目录
mkdir -p "$BASE_DIR/13.实战项目与案例/01-中后台管理系统"
cat > "$BASE_DIR/13.实战项目与案例/01-中后台管理系统/README.md" << 'EOF'
---
title: 中后台管理系统
icon: dashboard
order: 1
---

# 中后台管理系统

中后台管理系统是企业级应用的重要组成部分，本节将介绍中后台系统的架构设计、权限系统实现以及组件封装实践，帮助您掌握企业级应用开发的核心技能。
EOF

# 创建项目架构设计文档
cat > "$BASE_DIR/13.实战项目与案例/01-中后台管理系统/01-项目架构设计.md" << 'EOF'
---
title: 项目架构设计
icon: architecture
order: 1
---

# 项目架构设计

## 概述
中后台管理系统的架构设计，包括技术选型、目录结构、状态管理、路由设计等方面的最佳实践。

## 目录
- 技术栈选型考量
- 前端工程化配置
- 目录结构规范
- 状态管理方案
- 路由设计与权限控制
- API请求封装
- 环境配置与部署策略
EOF

# 创建权限系统实现文档
cat > "$BASE_DIR/13.实战项目与案例/01-中后台管理系统/02-权限系统实现.md" << 'EOF'
---
title: 权限系统实现
icon: lock
order: 2
---

# 权限系统实现

## 概述
权限系统是中后台管理系统的核心功能，本文档介绍如何设计和实现一个灵活、安全的权限控制系统。

## 目录
- RBAC权限模型设计
- 基于角色的访问控制
- 菜单权限与按钮权限
- 数据权限控制
- 权限验证中间件
- 权限状态管理
- 动态路由生成
EOF

# 创建组件封装实践文档
cat > "$BASE_DIR/13.实战项目与案例/01-中后台管理系统/03-组件封装实践.md" << 'EOF'
---
title: 组件封装实践
icon: component
order: 3
---

# 组件封装实践

## 概述
高质量的组件封装是提高开发效率和代码复用性的关键。本文档介绍中后台系统中常见组件的封装思路和实践经验。

## 目录
- 业务组件设计原则
- 通用表格组件封装
- 高级表单组件实现
- 权限按钮组件
- 动态表单生成器
- 图表组件封装
- 主题定制与样式隔离
EOF

# 创建移动端应用目录
mkdir -p "$BASE_DIR/13.实战项目与案例/02-移动端应用"
cat > "$BASE_DIR/13.实战项目与案例/02-移动端应用/README.md" << 'EOF'
---
title: 移动端应用
icon: mobile
order: 2
---

# 移动端应用

移动端应用开发需要考虑不同设备的适配和触摸交互体验，本节将介绍响应式设计和触摸事件处理的核心技术，帮助您构建流畅、易用的移动端应用。
EOF

# 创建响应式设计文档
cat > "$BASE_DIR/13.实战项目与案例/02-移动端应用/01-响应式设计.md" << 'EOF'
---
title: 响应式设计
icon: responsive
order: 1
---

# 响应式设计

## 概述
响应式设计是移动端应用开发的基础，本文档介绍如何实现适配各种屏幕尺寸的前端界面。

## 目录
- 响应式设计原则
- 媒体查询技巧
- 弹性布局实现
- 视口配置与像素比
- 图片资源响应式处理
- 字体大小与行高调整
- 常见响应式框架对比
EOF

# 创建触摸事件处理文档
cat > "$BASE_DIR/13.实战项目与案例/02-移动端应用/02-触摸事件处理.md" << 'EOF'
---
title: 触摸事件处理
icon: touch
order: 2
---

# 触摸事件处理

## 概述
触摸事件是移动端交互的核心，本文档介绍如何处理各种触摸手势和事件，提升用户体验。

## 目录
- 移动端事件模型
- 触摸事件与鼠标事件的区别
- 常见手势识别与实现
- 滑动、缩放与旋转手势
- 事件委托优化
- 移动端事件性能优化
- 第三方手势库对比与使用
EOF
# 更新移动端应用目录，添加性能优化文档
mkdir -p "$BASE_DIR/13.实战项目与案例/02-移动端应用"
cat > "$BASE_DIR/13.实战项目与案例/02-移动端应用/03-性能优化.md" << 'EOF'
---
title: 性能优化
icon: speed
order: 3
---

# 性能优化

## 概述
移动端应用性能优化对用户体验至关重要，本文档介绍移动端前端应用的性能优化策略和技巧。

## 目录
- 移动端性能指标与评估
- 首屏加载优化策略
- 资源懒加载实现
- 列表渲染性能优化
- 动画性能优化技巧
- 网络请求优化
- 内存管理与内存泄漏防范
- 离线缓存策略
EOF

# 创建大型应用最佳实践目录
mkdir -p "$BASE_DIR/13.实战项目与案例/03-大型应用最佳实践"
cat > "$BASE_DIR/13.实战项目与案例/03-大型应用最佳实践/README.md" << 'EOF'
---
title: 大型应用最佳实践
icon: project
order: 3
---

# 大型应用最佳实践

大型前端应用开发涉及复杂的代码组织、状态管理和性能优化问题。本节将分享大型应用开发的最佳实践，帮助您构建可维护、高性能的大型前端应用。
EOF

# 创建代码组织与复用文档
cat > "$BASE_DIR/13.实战项目与案例/03-大型应用最佳实践/01-代码组织与复用.md" << 'EOF'
---
title: 代码组织与复用
icon: code
order: 1
---

# 代码组织与复用

## 概述
大型应用的代码组织与复用是保证项目可维护性的关键，本文档介绍大型前端项目的代码组织策略和复用模式。

## 目录
- 模块化设计原则
- 微前端架构实践
- 组件设计模式与复用策略
- 工具函数库设计
- API层抽象与复用
- 多项目代码共享方案
- Monorepo项目结构实践
EOF

# 创建状态管理策略文档
cat > "$BASE_DIR/13.实战项目与案例/03-大型应用最佳实践/02-状态管理策略.md" << 'EOF'
---
title: 状态管理策略
icon: data
order: 2
---

# 状态管理策略

## 概述
状态管理是大型前端应用的核心挑战，本文档介绍不同场景下的状态管理策略和最佳实践。

## 目录
- 状态分类与管理原则
- 集中式状态管理实践
- 分布式状态管理方案
- 服务端状态与客户端状态
- 状态持久化策略
- 状态管理性能优化
- 不同框架下的状态管理对比
EOF

# 创建性能优化案例文档
cat > "$BASE_DIR/13.实战项目与案例/03-大型应用最佳实践/03-性能优化案例.md" << 'EOF'
---
title: 性能优化案例
icon: performance
order: 3
---

# 性能优化案例

## 概述
通过实际案例分析大型前端应用的性能优化过程，包括问题诊断、优化方案和效果评估。

## 目录
- 大型表格渲染优化案例
- 复杂表单性能提升实践
- 大数据可视化优化方案
- 首屏加载优化案例分析
- 长列表无限滚动优化
- 大型SPA应用路由优化
- 微前端架构下的性能优化
EOF