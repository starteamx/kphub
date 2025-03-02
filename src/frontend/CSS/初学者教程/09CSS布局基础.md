---
title: CSS布局基础
icon: layout
order: 9
---

# CSS布局基础

布局是网页设计的核心部分，决定了页面元素如何排列和定位。本章将介绍CSS布局的基本概念和技术。

## CSS布局概述

CSS布局是指使用CSS来控制HTML元素在页面上的位置和排列方式。随着Web技术的发展，CSS布局技术也在不断演进。

### 布局模型

CSS提供了多种布局模型，每种都有其特定的用途和优势：

1. **流式布局（Normal Flow）**：默认的布局方式，元素按照在HTML中的顺序从上到下、从左到右排列。
2. **浮动布局（Float）**：允许元素浮动到容器的左侧或右侧。
3. **定位布局（Positioning）**：通过`position`属性精确控制元素位置。
4. **弹性盒子布局（Flexbox）**：一维布局模型，适合处理行或列的排列。
5. **网格布局（Grid）**：二维布局模型，同时处理行和列的排列。
6. **多列布局（Multi-column）**：将内容分成多列显示，类似报纸布局。

本章将重点介绍前三种传统布局方法，而弹性盒子和网格布局将在后续章节中详细讲解。

### 盒模型

在讨论布局之前，理解CSS盒模型是至关重要的。每个HTML元素都被视为一个矩形盒子，由以下部分组成：

- **内容区域（Content）**：显示元素内容的区域
- **内边距（Padding）**：内容区域周围的空白区域
- **边框（Border）**：内边距外的边界线
- **外边距（Margin）**：边框外的空白区域

```css
.box {
  width: 300px;          /* 内容宽度 */
  height: 200px;         /* 内容高度 */
  padding: 20px;         /* 内边距 */
  border: 1px solid #000; /* 边框 */
  margin: 30px;          /* 外边距 */
}
```

默认情况下，`width`和`height`属性只设置内容区域的大小。可以使用`box-sizing`属性改变这一行为：

```css
.box {
  box-sizing: content-box; /* 默认值，width/height只包括内容区域 */
  box-sizing: border-box;  /* width/height包括内容、内边距和边框 */
}
```

## 流式布局（Normal Flow）

流式布局是CSS的默认布局方式，元素按照在HTML中的顺序从上到下、从左到右排列。

### 块级元素与内联元素

在流式布局中，元素的显示方式主要由其`display`属性决定：

- **块级元素（Block）**：占据父容器的整个宽度，在垂直方向上一个接一个排列。
  例如：`<div>`、`<p>`、`<h1>`-`<h6>`、`<ul>`、`<li>`等。

```css
.block-element {
  display: block;
  width: 50%;      /* 可以设置宽度 */
  height: 100px;   /* 可以设置高度 */
  margin: 10px 0;  /* 可以设置上下外边距 */
}
```

- **内联元素（Inline）**：只占据内容所需的宽度，在水平方向上一个接一个排列。
  例如：`<span>`、`<a>`、`<strong>`、`<em>`等。

```css
.inline-element {
  display: inline;
  /* width和height对内联元素无效 */
  /* 上下外边距对内联元素无效 */
  margin: 0 10px;  /* 只有左右外边距有效 */
}
```

- **内联块元素（Inline-block）**：结合了块级和内联元素的特性，可以设置宽高，但在水平方向上排列。

```css
.inline-block-element {
  display: inline-block;
  width: 100px;    /* 可以设置宽度 */
  height: 100px;   /* 可以设置高度 */
  margin: 10px;    /* 四个方向的外边距都有效 */
}
```

### 控制元素可见性

可以使用以下属性控制元素的可见性：

```css
.hidden-element {
  display: none;     /* 元素完全不显示，不占据空间 */
  visibility: hidden; /* 元素不可见，但仍占据空间 */
  opacity: 0;        /* 元素透明，但仍占据空间和可交互 */
}
```

## 浮动布局（Float）

浮动布局允许元素脱离正常文档流，浮动到容器的左侧或右侧。

### 基本浮动

```css
.float-left {
  float: left;   /* 元素浮动到左侧 */
}

.float-right {
  float: right;  /* 元素浮动到右侧 */
}

.no-float {
  float: none;   /* 默认值，元素不浮动 */
}
```

### 清除浮动

浮动元素会导致父容器高度塌陷的问题，可以通过以下方法清除浮动：

1. **使用clear属性**

```css
.clear-left {
  clear: left;   /* 清除左浮动 */
}

.clear-right {
  clear: right;  /* 清除右浮动 */
}

.clear-both {
  clear: both;   /* 清除左右浮动 */
}
```

2. **使用clearfix技巧**

```css
.clearfix::after {
  content: "";
  display: table;
  clear: both;
}
```

3. **设置父容器overflow**

```css
.container {
  overflow: auto;  /* 或 hidden */
}
```

### 浮动布局示例

```html
<div class="clearfix">
  <div class="float-left">左浮动元素</div>
  <div class="float-right">右浮动元素</div>
</div>
```

```css
.float-left {
  float: left;
  width: 48%;
  margin-right: 2%;
}

.float-right {
  float: right;
  width: 48%;
  margin-left: 2%;
}

.clearfix::after {
  content: "";
  display: table;
  clear: both;
}
```

## 定位布局（Positioning）

定位布局允许你精确控制元素在页面上的位置。

### position属性

```css
.element {
  position: static;    /* 默认值，按照正常文档流定位 */
  position: relative;  /* 相对于元素正常位置定位 */
  position: absolute;  /* 相对于最近的定位祖先元素定位 */
  position: fixed;     /* 相对于视口定位，不随页面滚动 */
  position: sticky;    /* 根据用户滚动位置在相对和固定定位之间切换 */
}
```

### 偏移属性

当`position`不是`static`时，可以使用以下属性调整元素位置：

```css
.positioned-element {
  top: 20px;     /* 从顶部偏移 */
  right: 20px;   /* 从右侧偏移 */
  bottom: 20px;  /* 从底部偏移 */
  left: 20px;    /* 从左侧偏移 */
}
```

### z-index属性

`z-index`属性控制定位元素的堆叠顺序：

```css
.element-1 {
  position: relative;
  z-index: 1;    /* 较低的堆叠顺序 */
}

.element-2 {
  position: relative;
  z-index: 2;    /* 较高的堆叠顺序，显示在element-1上面 */
}
```

### 定位示例

1. **相对定位**

```css
.relative-box {
  position: relative;
  top: 20px;
  left: 20px;
  /* 元素相对于其正常位置向下移动20px，向右移动20px */
}
```

2. **绝对定位**

```css
.container {
  position: relative; /* 创建定位上下文 */
}

.absolute-box {
  position: absolute;
  top: 0;
  right: 0;
  /* 元素定位在容器的右上角 */
}
```

3. **固定定位**

```css
.fixed-header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  /* 创建一个固定在视口顶部的页眉 */
}
```

4. **粘性定位**

```css
.sticky-nav {
  position: sticky;
  top: 0;
  /* 导航栏在滚动到顶部时固定 */
}
```

## 多列布局（Multi-column）

多列布局允许你将内容分成多列显示，类似报纸或杂志的布局。

### 基本属性

```css
.multi-column {
  column-count: 3;           /* 列数 */
  column-width: 200px;       /* 列宽 */
  column-gap: 30px;          /* 列间距 */
  column-rule: 1px solid #ddd; /* 列分隔线 */
}
```

### 跨列元素

```css
.column-span {
  column-span: all;  /* 元素跨越所有列 */
}
```

### 控制列填充

```css
.balanced-columns {
  column-fill: balance;  /* 默认值，列高度平衡 */
}

.auto-fill-columns {
  column-fill: auto;     /* 按顺序填充列 */
}
```

## 实例：传统布局技术组合

下面是一个结合流式布局、浮动和定位的页面布局示例：

```html
<!DOCTYPE html>
<html>
<head>
  <title>传统布局示例</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
    }
    
    /* 固定页眉 */
    header {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      background-color: #333;
      color: white;
      padding: 10px 20px;
      z-index: 100;
    }
    
    /* 主内容区域 */
    .main-content {
      margin-top: 60px; /* 为固定页眉留出空间 */
      padding: 20px;
    }
    
    /* 两列布局 */
    .clearfix::after {
      content: "";
      display: table;
      clear: both;
    }
    
    .sidebar {
      float: left;
      width: 25%;
      padding: 15px;
      background-color: #f0f0f0;
    }
    
    .content {
      float: left;
      width: 75%;
      padding: 15px;
    }
    
    /* 相对定位的元素 */
    .featured-box {
      position: relative;
      padding: 20px;
      margin-bottom: 20px;
      background-color: #e9f7fe;
      border-left: 5px solid #4a90e2;
    }
    
    .featured-tag {
      position: absolute;
      top: 0;
      right: 0;
      background-color: #4a90e2;
      color: white;
      padding: 5px 10px;
      font-size: 12px;
    }
    
    /* 多列文本 */
    .multi-column-text {
      column-count: 2;
      column-gap: 30px;
      column-rule: 1px solid #ddd;
      margin-top: 20px;
    }
    
    /* 页脚 */
    footer {
      clear: both; /* 清除浮动 */
      background-color: #333;
      color: white;
      padding: 20px;
      text-align: center;
    }
    
    /* 响应式设计 */
    @media (max-width: 768px) {
      .sidebar, .content {
        float: none;
        width: 100%;
      }
      
      .multi-column-text {
        column-count: 1;
      }
    }
  </style>
</head>
<body>
  <header>
    <h1>网站标题</h1>
  </header>
  
  <div class="main-content">
    <div class="clearfix">
      <div class="sidebar">
        <h2>侧边栏</h2>
        <ul>
          <li><a href="#">链接1</a></li>
          <li><a href="#">链接2</a></li>
          <li><a href="#">链接3</a></li>
        </ul>
      </div>
      
      <div class="content">
        <div class="featured-box">
          <div class="featured-tag">特色</div>
          <h2>特色内容</h2>
          <p>这是一个使用相对定位和绝对定位的特色内容框。</p>
        </div>
        
        <h2>主要内容</h2>
        <p>这是使用浮动创建的两列布局中的主要内容区域。</p>
        
        <div class="multi-column-text">
          <p>这是一个使用多列布局的文本区域。多列布局可以提高长文本的可读性，特别是在宽屏设备上。当屏幕宽度减小时，列数会自动减少，确保内容在各种设备上都能良好显示。</p>
          <p>传统的CSS布局技术虽然有一些局限性，但在许多场景下仍然非常有用。通过组合使用这些技术，可以创建各种复杂的页面布局。</p>
        </div>
      </div>
    </div>
  </div>
  
  <footer>
    <p>&copy; 2023 传统布局示例</p>
  </footer>
</body>
</html>
```

## 布局技巧与最佳实践

### 居中元素

1. **水平居中块级元素**

```css
.center-block {
  width: 300px;        /* 必须设置宽度 */
  margin-left: auto;
  margin-right: auto;
}
```

2. **水平居中内联元素**

```css
.center-inline {
  text-align: center;  /* 在父元素上设置 */
}
```

3. **垂直居中**

使用绝对定位和负边距：

```css
.center-absolute {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 300px;
  height: 200px;
  margin-top: -100px;  /* 高度的一半 */
  margin-left: -150px; /* 宽度的一半 */
}
```

使用绝对定位和transform：

```css
.center-transform {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
```

### 等高列

创建视觉上等高的列：

```css
.equal-height-columns {
  overflow: hidden; /* 创建BFC */
}

.equal-height-columns .column {
  padding-bottom: 1000px; /* 大值 */
  margin-bottom: -1000px; /* 相同的负值 */
  float: left;
  width: 33.33%;
}
```

### 响应式设计基础

使用媒体查询调整布局：

```css
/* 基础样式 - 适用于所有屏幕 */
.container {
  width: 100%;
  padding: 0 15px;
}

/* 平板设备 */
@media (min-width: 768px) {
  .container {
    width: 750px;
    margin: 0 auto;
  }
}

/* 桌面设备 */
@media (min-width: 992px) {
  .container {
    width: 970px;
  }
}

/* 大屏设备 */
@media (min-width: 1200px) {
  .container {
    width: 1170px;
  }
}
```

### 常见布局模式

1. **圣杯布局**

一种三列布局，中间列包含主要内容，两侧列包含导航和相关信息。

```html
<div class="holy-grail">
  <header>页眉</header>
  <div class="holy-grail-body">
    <main class="holy-grail-content">主内容</main>
    <nav class="holy-grail-nav">导航</nav>
    <aside class="holy-grail-aside">侧边栏</aside>
  </div>
  <footer>页脚</footer>
</div>
```

```css
.holy-grail {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

.holy-grail-body {
  display: flex;
  flex: 1;
}

.holy-grail-content {
  flex: 1;
}

.holy-grail-nav {
  order: -1;
  flex: 0 0 12em;
}

.holy-grail-aside {
  flex: 0 0 12em;
}

@media (max-width: 768px) {
  .holy-grail-body {
    flex-direction: column;
  }
  
  .holy-grail-nav,
  .holy-grail-aside,
  .holy-grail-content {
    flex: auto;
  }
}
```

2. **粘性页脚**

确保页脚始终位于页面底部，即使内容不足以填满整个视口。

```html
<div class="sticky-footer-container">
  <div class="content">内容</div>
  <footer class="footer">页脚</footer>
</div>
```

```css
html, body {
  height: 100%;
  margin: 0;
}

.sticky-footer-container {
  min-height: 100%;
  display: flex;
  flex-direction: column;
}

.content {
  flex: 1;
}

.footer {
  flex-shrink: 0;
}
```

## 总结

在本章中，我们学习了CSS布局的基础知识，包括：

1. **盒模型**：理解内容区域、内边距、边框和外边距如何影响元素的尺寸和布局。

2. **流式布局**：CSS的默认布局方式，包括块级元素和内联元素的特性。

3. **浮动布局**：如何使用浮动创建多列布局，以及如何处理浮动引起的问题。

4. **定位布局**：如何使用不同的定位方式（相对、绝对、固定、粘性）精确控制元素位置。

5. **多列布局**：如何将文本内容分成多列显示，类似报纸或杂志的布局。

这些传统的布局技术虽然在某些方面已被现代布局方法（如Flexbox和Grid）所取代，但它们仍然是CSS布局的基础，理解这些概念对于掌握更高级的布局技术至关重要。

在下一章中，我们将深入探讨弹性盒子布局（Flexbox），这是一种更现代、更强大的一维布局系统，可以更轻松地创建复杂的响应式布局。

## 练习

1. 创建一个三列等宽布局，使用浮动实现。
2. 实现一个固定页眉和页脚的页面布局，中间内容区域可滚动。
3. 使用绝对定位创建一个模态对话框，居中显示在页面上。
4. 创建一个使用多列布局的文章页面，标题跨越所有列。
5. 实现一个响应式导航栏，在大屏幕上水平显示，在小屏幕上垂直显示。

## 进一步学习

- [MDN CSS布局指南](https://developer.mozilla.org/zh-CN/docs/Learn/CSS/CSS_layout)
- [CSS盒模型详解](https://developer.mozilla.org/zh-CN/docs/Web/CSS/CSS_Box_Model/Introduction_to_the_CSS_box_model)
- [CSS定位详解](https://developer.mozilla.org/zh-CN/docs/Web/CSS/position)
- [CSS多列布局](https://developer.mozilla.org/zh-CN/docs/Web/CSS/CSS_Columns)
- [响应式设计基础](https://developer.mozilla.org/zh-CN/docs/Learn/CSS/CSS_layout/Responsive_Design)
