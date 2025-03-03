---
title: CSS嵌套规则
icon: code
order: 1
---

# CSS嵌套规则

## 概述

CSS 嵌套规则是 CSS 的一项重要新特性，它允许开发者在 CSS 选择器内部直接嵌套其他选择器，从而创建更清晰、更易维护的样式表。本文将详细介绍 CSS 嵌套规则的基本概念、语法、实际应用以及最佳实践，帮助您更高效地组织和管理样式代码。

## 目录

- [基本概念](#基本概念)
- [嵌套语法](#嵌套语法)
- [实际应用](#实际应用)
- [高级技巧](#高级技巧)
- [浏览器兼容性](#浏览器兼容性)
- [最佳实践](#最佳实践)
- [参考资源](#参考资源)

## 基本概念

### 什么是 CSS 嵌套规则

CSS 嵌套规则是原生 CSS 的一项新功能，允许开发者在一个 CSS 规则集内部直接嵌套另一个规则集。这种方式可以更直观地表达元素之间的层次关系，减少选择器的重复，并使代码结构更接近 HTML 的层次结构。

### 嵌套规则的优势

1. **提高可读性**：代码结构更清晰，层次关系一目了然
2. **减少重复**：避免父选择器的重复书写
3. **降低错误风险**：减少长选择器链中的错误可能性
4. **简化维护**：修改父选择器时，所有嵌套选择器自动更新
5. **更好的组织**：相关样式自然地组织在一起

### 与预处理器的区别

CSS 嵌套规则与 Sass、Less 等预处理器中的嵌套功能类似，但有几个重要区别：

- 原生支持：无需编译步骤，直接在浏览器中运行
- 语法差异：使用 `&` 符号的方式略有不同
- 性能优势：浏览器原生实现，可能有更好的性能

## 嵌套语法

### 基本嵌套

最简单的嵌套形式是在一个选择器内部直接嵌套另一个选择器：

```css
.parent {
  color: blue;
  
  .child {
    color: red;
  }
}
```

这等同于：

```css
.parent {
  color: blue;
}

.parent .child {
  color: red;
}
```

### 使用 & 符号

`&` 符号代表父选择器，可用于创建更复杂的选择器组合：

```css
.button {
  background-color: blue;
  
  &:hover {
    background-color: darkblue;
  }
  
  &.primary {
    background-color: green;
  }
  
  .icon & {
    margin-left: 10px;
  }
}
```

等同于：

```css
.button {
  background-color: blue;
}

.button:hover {
  background-color: darkblue;
}

.button.primary {
  background-color: green;
}

.icon .button {
  margin-left: 10px;
}
```

### 嵌套媒体查询

媒体查询也可以嵌套在选择器内部：

```css
.card {
  width: 100%;
  
  @media (min-width: 768px) {
    width: 50%;
  }
  
  @media (min-width: 1200px) {
    width: 33.33%;
  }
}
```

等同于：

```css
.card {
  width: 100%;
}

@media (min-width: 768px) {
  .card {
    width: 50%;
  }
}

@media (min-width: 1200px) {
  .card {
    width: 33.33%;
  }
}
```

### 嵌套层级限制

为了避免过度嵌套导致的性能问题和可维护性降低，建议将嵌套限制在合理的层级内（通常不超过 3-4 层）。

## 实际应用

### 组件样式封装

嵌套规则非常适合组件化的样式结构：

```css
.card {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 16px;
  
  .card-header {
    border-bottom: 1px solid #eee;
    padding-bottom: 8px;
    margin-bottom: 16px;
    
    .card-title {
      margin: 0;
      font-size: 18px;
    }
    
    .card-subtitle {
      color: #666;
      margin: 4px 0 0;
    }
  }
  
  .card-body {
    line-height: 1.5;
  }
  
  .card-footer {
    margin-top: 16px;
    padding-top: 8px;
    border-top: 1px solid #eee;
    display: flex;
    justify-content: flex-end;
    
    .card-button {
      padding: 6px 12px;
      background: #0077cc;
      color: white;
      border: none;
      border-radius: 4px;
      
      &:hover {
        background: #005fa3;
      }
    }
  }
}
```

### 状态管理

嵌套规则使状态管理更加直观：

```css
.dropdown {
  position: relative;
  
  .dropdown-toggle {
    cursor: pointer;
  }
  
  .dropdown-menu {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 10;
  }
  
  &.open {
    .dropdown-toggle {
      color: blue;
    }
    
    .dropdown-menu {
      display: block;
    }
  }
}
```

### 主题变体

嵌套可以更清晰地组织主题变体：

```css
.theme {
  &-light {
    --bg-color: #ffffff;
    --text-color: #333333;
    --border-color: #dddddd;
    
    .button {
      background-color: #f0f0f0;
      color: #333333;
      
      &:hover {
        background-color: #e0e0e0;
      }
    }
  }
  
  &-dark {
    --bg-color: #222222;
    --text-color: #f0f0f0;
    --border-color: #444444;
    
    .button {
      background-color: #444444;
      color: #ffffff;
      
      &:hover {
        background-color: #555555;
      }
    }
  }
}
```

## 高级技巧

### 嵌套选择器组

可以在嵌套中使用选择器组：

```css
.container {
  h1, h2, h3 {
    margin-top: 0;
  }
  
  p, ul, ol {
    line-height: 1.5;
  }
}
```

### 嵌套属性

某些 CSS 属性可以使用嵌套来组织相关值（注意：这是一个提案，尚未广泛支持）：

```css
.element {
  font: {
    family: Arial, sans-serif;
    size: 16px;
    weight: bold;
  }
  
  margin: {
    top: 10px;
    right: 15px;
    bottom: 10px;
    left: 15px;
  }
}
```

### 嵌套与 CSS 变量结合

嵌套规则与 CSS 变量结合使用，可以创建更灵活的样式系统：

```css
.component {
  --primary-color: blue;
  --spacing: 16px;
  
  color: var(--primary-color);
  padding: var(--spacing);
  
  .component-header {
    --spacing: 8px;
    
    padding: var(--spacing);
    border-bottom: 1px solid var(--primary-color);
  }
  
  &.variant {
    --primary-color: green;
    
    .component-header {
      background-color: var(--primary-color);
      color: white;
    }
  }
}
```

### 嵌套与容器查询结合

嵌套规则可以与容器查询结合使用：

```css
.card-container {
  container-type: inline-size;
  
  .card {
    display: flex;
    flex-direction: column;
    
    @container (min-width: 400px) {
      flex-direction: row;
      
      .card-image {
        width: 40%;
      }
      
      .card-content {
        width: 60%;
      }
    }
  }
}
```

## 浏览器兼容性

### 支持情况

| 浏览器 | 版本支持 |
|------|---------|
| Chrome | 112+ |
| Firefox | 117+ |
| Safari | 16.4+ |
| Edge | 112+ |
| Opera | 98+ |

### 兼容性处理

对于不支持 CSS 嵌套的浏览器，可以采用以下策略：

1. **使用预处理器**：继续使用 Sass 或 Less 等预处理器，编译为标准 CSS

```scss
// Sass 嵌套
.parent {
  color: blue;
  
  .child {
    color: red;
  }
}
```

2. **使用 PostCSS 插件**：如 `postcss-nesting` 插件可以转换嵌套语法

```js
// postcss.config.js
module.exports = {
  plugins: [
    require('postcss-nesting')
  ]
}
```

3. **特性检测**：使用 `@supports` 规则检测嵌套支持

```css
@supports (selector(&)) {
  /* 使用嵌套的现代代码 */
}

/* 回退代码 */
```

## 最佳实践

### 1. 避免过度嵌套

过度嵌套会导致选择器过长，影响性能和可维护性：

```css
/* 避免这样 */
.header {
  .nav {
    .nav-list {
      .nav-item {
        .nav-link {
          /* 嵌套太深 */
        }
      }
    }
  }
}

/* 更好的方式 */
.header {
  /* 头部样式 */
}

.nav {
  /* 导航样式 */
}

.nav-item {
  /* 导航项样式 */
}

.nav-link {
  /* 导航链接样式 */
}
```

### 2. 合理使用 & 符号

`&` 符号可以创建更复杂的选择器，但也可能导致混淆：

```css
/* 清晰的用法 */
.button {
  &:hover { /* 明确表示 .button:hover */ }
  &.primary { /* 明确表示 .button.primary */ }
}

/* 可能混淆的用法 */
.button {
  &-primary { /* 创建 .button-primary，而非 .button .primary */ }
}
```

### 3. 组织相关样式

使用嵌套将相关样式组织在一起：

```css
.product {
  /* 基本样式 */
  
  /* 状态变体 */
  &.featured { }
  &.sold-out { }
  
  /* 子组件 */
  .product-image { }
  .product-title { }
  .product-price { }
  
  /* 响应式调整 */
  @media (min-width: 768px) { }
}
```

### 4. 与 BEM 结合使用

嵌套规则可以简化 BEM 命名约定的使用：

```css
.block {
  /* 块样式 */
  
  &__element {
    /* 元素样式 */
    
    &--modifier {
      /* 修饰符样式 */
    }
  }
  
  &--modifier {
    /* 块修饰符样式 */
  }
}
```

### 5. 保持一致性

在项目中保持嵌套风格的一致性：

```css
/* 一致的嵌套模式 */
.component {
  /* 组件基本样式 */
  
  /* 子元素 */
  .component-header { }
  .component-body { }
  .component-footer { }
  
  /* 状态 */
  &.is-active { }
  &.is-disabled { }
  
  /* 响应式 */
  @media (min-width: 768px) { }
}
```

## 参考资源

- [MDN Web Docs: CSS 嵌套](https://developer.mozilla.org/zh-CN/docs/Web/CSS/CSS_nesting)
- [W3C CSS 嵌套模块规范](https://www.w3.org/TR/css-nesting-1/)
- [CSS 嵌套兼容性表](https://caniuse.com/css-nesting)
- [PostCSS Nesting 插件](https://github.com/csstools/postcss-plugins/tree/main/plugins/postcss-nesting)
- [CSS 嵌套与 Sass 嵌套的区别](https://sass-lang.com/blog/sass-and-native-nesting/)

## 总结

CSS 嵌套规则是现代 CSS 的重要进步，它简化了样式表的组织和维护，使代码结构更加清晰。通过嵌套，开发者可以：

1. **更直观地表达元素层次关系**
2. **减少选择器重复**
3. **提高代码可读性和可维护性**
4. **更高效地组织组件样式**

随着浏览器支持的不断完善，CSS 嵌套规则将成为前端开发中的标准实践。通过合理使用嵌套规则，结合本文介绍的最佳实践，开发者可以编写出更加清晰、高效且易于维护的样式代码，从而提升整体的开发体验和项目质量。
