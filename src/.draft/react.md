以下是整理后的目录结构：

### 起步
- 快速入门
  - 教程：井字棋游戏
  - React 哲学
- 安装
  - 创建一个 React 应用
  - 从零构建一个 React 应用
  - 将 React 添加到现有项目中
- 配置
  - 编辑器设置
  - 使用 TypeScript
  - React 开发者工具
  - React Compiler

### 学习 React
- 描述 UI
  - 你的第一个组件
  - 组件的导入与导出
  - 使用 JSX 书写标签语言
  - 在 JSX 中通过大括号使用 JavaScript
  - 将 Props 传递给组件
  - 条件渲染
  - 渲染列表
  - 保持组件纯粹
  - 将 UI 视为树
- 添加交互
  - 响应事件
  - state：组件的记忆
  - 渲染和提交
  - state 如同一张快照
  - 把一系列 state 更新加入队列
  - 更新 state 中的对象
  - 更新 state 中的数组
- 状态管理
  - 用 State 响应输入
  - 选择 State 结构
  - 在组件间共享状态
  - 对 state 进行保留和重置
  - 迁移状态逻辑至 Reducer 中
  - 使用 Context 深层传递参数
  - 使用 Reducer 和 Context 拓展你的应用
- 脱围机制
  - 使用 ref 引用值
  - 使用 ref 操作 DOM
  - 使用 Effect 进行同步
  - 你可能不需要 Effect
  - 响应式 Effect 的生命周期
  - 将事件从 Effect 中分开
  - 移除 Effect 依赖
  - 使用自定义 Hook 复用逻辑


  以下是整理后的目录结构：

### react@19
- 总览
- Hook
  - useActionState
  - useCallback
  - useContext
  - useDebugValue
  - useDeferredValue
  - useEffect
  - useId
  - useImperativeHandle
  - useInsertionEffect
  - useLayoutEffect
  - useMemo
  - useOptimistic
  - useReducer
  - useRef
  - useState
  - useSyncExternalStore
  - useTransition
- 组件
  - `<Fragment> (<>)`
  - `<Profiler>`
  - `<StrictMode>`
  - `<Suspense>`
- API
  - act
  - cache
  - createContext
  - lazy
  - memo
  - startTransition
  - use
  - experimental_taintObjectReference
  - experimental_taintUniqueValue
  - captureOwnerStack

### react-dom@19
- Hook
  - useFormStatus
- 组件
  - Common (e.g. `<div>`)
  - `<form>`
  - `<input>`
  - `<option>`
  - `<progress>`
  - `<select>`
  - `<textarea>`
  - `<link>`
  - `<meta>`
  - `<script>`
  - `<style>`
  - `<title>`
- API
  - createPortal
  - flushSync
  - preconnect
  - prefetchDNS
  - preinit
  - preinitModule
  - preload
  - preloadModule
- 客户端 API
  - createRoot
  - hydrateRoot
- 服务端 API
  - renderToPipeableStream
  - renderToReadableStream
  - renderToStaticMarkup
  - renderToString
- Static APIs
  - prerender
  - prerenderToNodeStream

### React 规则
- 概述
  - 组件和 Hook 必须是纯粹的
  - React 调用组件和 Hook
  - Hook 的规则

### React 服务器组件
- 服务器组件
- Server Functions
- Directives
  - 'use client'
  - 'use server'

### 过时的 API
- 过时的 React API
  - Children
  - cloneElement
  - Component
  - createElement
  - createRef
  - forwardRef
  - isValidElement
  - PureComponent


  生态系统
  https://juejin.cn/post/7473817521433657363