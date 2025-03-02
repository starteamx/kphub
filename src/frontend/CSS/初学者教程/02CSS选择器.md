---
title: CSS选择器
icon: select
order: 2
---

# CSS选择器

选择器是CSS的核心，它们允许你精确地选择要样式化的HTML元素。本章将介绍各种CSS选择器及其用法。

## 基本选择器

基本选择器是CSS中最常用的选择器，包括元素选择器、类选择器、ID选择器和通用选择器。

### 元素选择器

元素选择器根据HTML标签名称选择元素。它会选择页面上所有指定类型的元素。

**语法**：
```css
元素名 {
  属性: 值;
}
```

**示例**：
```css
p {
  color: blue;
}

h1 {
  font-size: 24px;
}

div {
  background-color: #f0f0f0;
}
```

这些规则分别选择所有的`<p>`、`<h1>`和`<div>`元素，并应用相应的样式。

### 类选择器

类选择器根据元素的`class`属性选择元素。一个类可以应用于多个元素，一个元素也可以有多个类。

**语法**：
```css
.类名 {
  属性: 值;
}
```

**示例**：
```css
.highlight {
  background-color: yellow;
}

.error {
  color: red;
}

.button {
  padding: 10px;
  border-radius: 5px;
}
```

在HTML中使用类：
```html
<p class="highlight">这是高亮文本</p>
<p class="error">这是错误信息</p>
<div class="highlight error">同时应用多个类</div>
```

### ID选择器

ID选择器根据元素的`id`属性选择元素。ID在页面中应该是唯一的，每个元素只能有一个ID。

**语法**：
```css
#ID名 {
  属性: 值;
}
```

**示例**：
```css
#header {
  background-color: black;
  color: white;
}

#main-content {
  margin: 20px;
}

#footer {
  font-size: 12px;
}
```

在HTML中使用ID：
```html
<header id="header">网站头部</header>
<main id="main-content">主要内容</main>
<footer id="footer">网站底部</footer>
```

### 通用选择器

通用选择器（也称为星号选择器）选择页面上的所有元素。

**语法**：
```css
* {
  属性: 值;
}
```

**示例**：
```css
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
```

这个规则将应用于页面上的所有元素。通用选择器通常用于重置默认样式或设置全局属性。

## 组合选择器

组合选择器允许你基于元素之间的关系来选择元素。

### 后代选择器

后代选择器选择作为指定元素后代的所有元素，不论嵌套层级有多深。

**语法**：
```css
祖先 后代 {
  属性: 值;
}
```

**示例**：
```css
article p {
  line-height: 1.6;
}
```

这个规则选择所有在`<article>`元素内部的`<p>`元素，无论嵌套多深。

### 子选择器

子选择器选择作为指定元素直接子元素的所有元素。

**语法**：
```css
父元素 > 子元素 {
  属性: 值;
}
```

**示例**：
```css
ul > li {
  list-style-type: square;
}
```

这个规则只选择作为`<ul>`直接子元素的`<li>`元素，不包括嵌套在更深层次的列表项。

### 相邻兄弟选择器

相邻兄弟选择器选择紧接在指定元素后的兄弟元素。

**语法**：
```css
元素 + 相邻兄弟 {
  属性: 值;
}
```

**示例**：
```css
h2 + p {
  font-weight: bold;
}
```

这个规则选择紧跟在`<h2>`元素后面的第一个`<p>`元素。

### 通用兄弟选择器

通用兄弟选择器选择指定元素后的所有兄弟元素。

**语法**：
```css
元素 ~ 兄弟 {
  属性: 值;
}
```

**示例**：
```css
h2 ~ p {
  color: gray;
}
```

这个规则选择在`<h2>`元素后的所有`<p>`兄弟元素。

## 属性选择器

属性选择器根据元素的属性或属性值来选择元素。

### 存在属性选择器

选择具有指定属性的元素。

**语法**：
```css
[属性] {
  属性: 值;
}
```

**示例**：
```css
[disabled] {
  opacity: 0.5;
}
```

这个规则选择所有具有`disabled`属性的元素。

### 精确属性值选择器

选择具有指定属性且属性值完全匹配的元素。

**语法**：
```css
[属性="值"] {
  属性: 值;
}
```

**示例**：
```css
[type="text"] {
  border: 1px solid gray;
}
```

这个规则选择所有`type`属性值为`text`的元素。

### 部分属性值选择器

选择属性值包含指定子字符串的元素。

**语法**：
```css
[属性*="值"] {
  属性: 值;
}
```

**示例**：
```css
[class*="btn"] {
  cursor: pointer;
}
```

这个规则选择`class`属性值中包含`btn`的所有元素。

### 开头属性值选择器

选择属性值以指定字符串开头的元素。

**语法**：
```css
[属性^="值"] {
  属性: 值;
}
```

**示例**：
```css
[href^="https"] {
  color: green;
}
```

这个规则选择`href`属性值以`https`开头的所有元素。

### 结尾属性值选择器

选择属性值以指定字符串结尾的元素。

**语法**：
```css
[属性$="值"] {
  属性: 值;
}
```

**示例**：
```css
[href$=".pdf"] {
  background-image: url('pdf-icon.png');
}
```

这个规则选择`href`属性值以`.pdf`结尾的所有元素。

## 伪类选择器

伪类选择器选择处于特定状态的元素。

### 链接伪类

```css
a:link {
  color: blue; /* 未访问的链接 */
}

a:visited {
  color: purple; /* 已访问的链接 */
}

a:hover {
  text-decoration: underline; /* 鼠标悬停时 */
}

a:active {
  color: red; /* 点击时 */
}
```

### 结构伪类

```css
li:first-child {
  font-weight: bold; /* 第一个子元素 */
}

li:last-child {
  border-bottom: none; /* 最后一个子元素 */
}

li:nth-child(odd) {
  background-color: #f2f2f2; /* 奇数子元素 */
}

li:nth-child(even) {
  background-color: #e6e6e6; /* 偶数子元素 */
}

p:first-of-type {
  font-size: larger; /* 同类型的第一个元素 */
}
```

### 表单伪类

```css
input:focus {
  border-color: blue; /* 获得焦点的输入框 */
}

input:disabled {
  background-color: #f2f2f2; /* 禁用的输入框 */
}

input:checked {
  border-color: green; /* 选中的复选框或单选按钮 */
}

input:required {
  border-left: 3px solid red; /* 必填的输入框 */
}
```

## 伪元素选择器

伪元素选择器创建不存在于DOM中的元素。

**语法**：
```css
选择器::伪元素 {
  属性: 值;
}
```

**示例**：
```css
p::first-line {
  font-weight: bold; /* 段落的第一行 */
}

p::first-letter {
  font-size: 2em; /* 段落的第一个字母 */
}

h2::before {
  content: "§ "; /* 在h2前插入内容 */
}

h2::after {
  content: " ⇒"; /* 在h2后插入内容 */
}

::selection {
  background-color: yellow; /* 用户选中的文本 */
}
```

## 选择器组合与优化

### 选择器分组

当多个选择器需要相同的样式时，可以将它们组合在一起，用逗号分隔。

```css
h1, h2, h3 {
  font-family: Arial, sans-serif;
}

.error, .warning, .alert {
  font-weight: bold;
}
```

### 选择器优化

1. **避免过度特定**：过于特定的选择器会增加CSS的复杂性。
   ```css
   /* 不推荐 */
   body div.container ul li a.link { ... }
   
   /* 推荐 */
   .link { ... }
   ```

2. **利用继承**：某些属性会自动继承父元素的值，无需重复设置。
   ```css
   body {
     font-family: Arial, sans-serif; /* 会被所有子元素继承 */
   }
   ```

3. **使用类而非ID**：类可以重用，而ID应该是唯一的。

## 选择器优先级

当多个规则应用于同一元素时，CSS使用优先级规则来决定哪个规则生效。

优先级从高到低：
1. `!important`（尽量避免使用）
2. 内联样式（style属性）
3. ID选择器
4. 类选择器、属性选择器和伪类
5. 元素选择器和伪元素
6. 通用选择器

```css
/* 优先级: 0-0-1 */
p {
  color: black;
}

/* 优先级: 0-1-0 */
.text {
  color: blue;
}

/* 优先级: 1-0-0 */
#unique {
  color: red;
}

/* 优先级: 0-1-1 */
p.text {
  color: green;
}

/* 覆盖所有其他规则 */
p {
  color: purple !important;
}
```

## 实例：综合运用选择器

```html
<!DOCTYPE html>
<html>
<head>
  <title>CSS选择器示例</title>
  <style>
    /* 基本选择器 */
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      color: #333;
    }
    
    /* 组合选择器 */
    article p {
      text-indent: 1em;
    }
    
    article > p {
      margin-bottom: 15px;
    }
    
    h2 + p {
      font-weight: bold;
    }
    
    /* 属性选择器 */
    a[href^="https"] {
      color: green;
    }
    
    input[type="text"] {
      padding: 5px;
      border: 1px solid #ccc;
    }
    
    /* 伪类和伪元素 */
    li:nth-child(odd) {
      background-color: #f2f2f2;
    }
    
    p::first-letter {
      font-size: 1.5em;
      font-weight: bold;
    }
    
    .quote::before {
      content: """;
      font-size: 2em;
      color: #999;
    }
    
    .quote::after {
      content: """;
      font-size: 2em;
      color: #999;
    }
  </style>
</head>
<body>
  <h1>CSS选择器示例</h1>
  
  <article>
    <h2>文章标题</h2>
    <p>这是文章的第一段，紧跟在h2后面，会被加粗。</p>
    <p>这是文章的第二段，有首行缩进。</p>
    <div>
      <p>这是嵌套在div中的段落，有首行缩进但没有下边距。</p>
    </div>
  </article>
  
  <h3>链接示例</h3>
  <a href="https://example.com">安全链接</a>
  <a href="http://example.com">普通链接</a>
  
  <h3>表单示例</h3>
  <input type="text" placeholder="文本输入框">
  <input type="password" placeholder="密码输入框">
  
  <h3>列表示例</h3>
  <ul>
    <li>第一项（奇数，有背景色）</li>
    <li>第二项</li>
    <li>第三项（奇数，有背景色）</li>
    <li>第四项</li>
  </ul>
  
  <p class="quote">这是一段引用文字，前后会有引号。</p>
</body>
</html>
```
## 总结

在本章中，我们学习了：

1. 基本选择器（元素、类、ID、通用）
2. 组合选择器（后代、子、相邻兄弟、通用兄弟）
3. 属性选择器（存在、精确值、部分值、开头值、结尾值）
4. 伪类选择器（链接、结构、表单）
5. 伪元素选择器（::first-line, ::first-letter, ::before, ::after, ::selection）
6. 选择器组合与优化
7. 选择器优先级规则

掌握这些选择器可以让你精确地控制网页中的任何元素，创建更加精细和复杂的样式。

## 练习

1. 创建一个HTML文档，包含各种元素（标题、段落、列表、链接等）
2. 使用不同类型的选择器为元素应用样式
3. 尝试组合多种选择器创建更复杂的样式规则
4. 实验不同的伪类和伪元素
5. 创建一个表格，并使用选择器为奇数行和偶数行应用不同的背景色

## 进一步学习

- [MDN CSS选择器参考](https://developer.mozilla.org/zh-CN/docs/Web/CSS/CSS_Selectors)
- [CSS选择器规范](https://www.w3.org/TR/selectors-3/)
- [CSS选择器测试工具](https://www.w3schools.com/cssref/trysel.asp)
