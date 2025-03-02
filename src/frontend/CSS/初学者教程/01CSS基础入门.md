---
title: CSS基础入门
icon: code
order: 1
---

# CSS基础入门

CSS（层叠样式表）是用于控制网页视觉呈现的语言。本章将介绍CSS的基本概念、工作原理，以及如何将CSS应用到HTML文档中。

## CSS是什么？

CSS（Cascading Style Sheets，层叠样式表）是一种用来描述HTML或XML文档表现形式的样式表语言。CSS描述了元素应该如何在屏幕、纸张或其他媒体上呈现。

CSS的主要优点是将内容（HTML）与表现（CSS）分离，这使得：
- 网页维护变得更加简单
- 不同页面可以共享样式
- 同一页面可以适应不同设备和屏幕尺寸

## CSS如何工作？

浏览器在显示HTML文档时，必须将文档内容与样式信息结合。处理文档的过程如下：

1. 浏览器加载HTML文件（如从网络获取）
2. 将HTML转化为DOM（文档对象模型）
3. 浏览器获取HTML文档链接的大多数资源，如图片、视频和CSS
4. 浏览器解析获取到的CSS，并根据选择器类型将不同的规则应用到对应的DOM节点上
5. DOM树与样式结合形成渲染树，显示在屏幕上

这个过程被称为"关键渲染路径"，理解这个过程有助于编写更高效的CSS代码。

## 将CSS应用到HTML的三种方式

有三种方式可以将CSS应用到HTML文档中：

### 1. 内联样式（Inline Styles）

内联样式直接在HTML元素的`style`属性中定义：

```html
<p style="color: red; font-size: 18px;">这是一个红色的段落，字体大小为18像素。</p>
```

**优点**：立即应用于特定元素
**缺点**：样式与内容混合，难以维护，无法复用

### 2. 内部样式表（Internal Stylesheet）

内部样式表在HTML文档的`<head>`部分使用`<style>`元素定义：

```html
<head>
  <style>
    p {
      color: blue;
      font-size: 16px;
    }
    .highlight {
      background-color: yellow;
    }
  </style>
</head>
```

**优点**：不需要额外的文件，可以使用CSS选择器
**缺点**：只对当前页面有效，无法在多个页面之间共享

### 3. 外部样式表（External Stylesheet）

外部样式表将CSS代码保存在单独的`.css`文件中，然后在HTML文档的`<head>`部分使用`<link>`元素引入：

```html
<head>
  <link rel="stylesheet" href="styles.css">
</head>
```

styles.css文件内容：
```css
p {
  color: green;
  font-size: 14px;
}
.highlight {
  background-color: lightblue;
}
```

**优点**：样式完全与内容分离，可以在多个页面共享，便于维护
**缺点**：需要额外的HTTP请求加载CSS文件

在实际开发中，外部样式表是最常用的方式，因为它提供了最好的可维护性和可重用性。

## CSS基本语法

CSS规则由两个主要部分组成：选择器和声明块。

```css
选择器 {
  属性: 值;
  属性: 值;
}
```

- **选择器**：指定要应用样式的HTML元素
- **声明块**：包含一个或多个声明，每个声明由属性和值组成
- **属性**：要改变的样式特性（如颜色、字体、边距等）
- **值**：属性的设置（如红色、粗体、20像素等）

例如：

```css
p {
  color: blue;
  font-size: 16px;
  line-height: 1.5;
}
```

这个规则选择所有`<p>`元素，并设置文本颜色为蓝色，字体大小为16像素，行高为1.5倍字体大小。

## CSS注释

CSS中的注释以`/*`开始，以`*/`结束：

```css
/* 这是一个CSS注释 */
p {
  color: red; /* 这是行内注释 */
}

/*
  这是一个
  多行注释
*/
```

注释不会影响代码的执行，但可以帮助你和其他开发者理解代码。

## 实例：你的第一个CSS

让我们创建一个简单的HTML文档，并应用一些基本的CSS样式：

```html
<!DOCTYPE html>
<html>
<head>
  <title>我的第一个CSS</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 0;
      padding: 20px;
      background-color: #f4f4f4;
    }
    
    h1 {
      color: #333;
      border-bottom: 2px solid #333;
      padding-bottom: 10px;
    }
    
    p {
      color: #666;
      margin-bottom: 15px;
    }
    
    .highlight {
      background-color: yellow;
      padding: 5px;
    }
    
    #special {
      font-weight: bold;
      color: #009688;
    }
  </style>
</head>
<body>
  <h1>欢迎学习CSS</h1>
  <p>这是一个普通段落。</p>
  <p class="highlight">这是一个高亮段落。</p>
  <p id="special">这是一个特殊段落。</p>
</body>
</html>
```

在这个例子中，我们使用了：
- 元素选择器（`body`, `h1`, `p`）
- 类选择器（`.highlight`）
- ID选择器（`#special`）

## 总结

在本章中，我们学习了：

1. CSS的基本概念和优点
2. CSS的工作原理
3. 三种将CSS应用到HTML的方式
4. CSS的基本语法和注释
5. 一个简单的CSS实例

CSS是一个强大的工具，可以极大地改善网页的外观和用户体验。在接下来的章节中，我们将深入学习CSS选择器、盒模型、布局等更多高级概念。

## 练习

1. 创建一个HTML文件，包含标题、段落和列表元素
2. 使用内部样式表为不同元素应用样式
3. 将内部样式表转换为外部样式表
4. 尝试使用不同的颜色、字体和背景样式