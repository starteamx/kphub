---
title: WebKit 前缀属性
icon: css
order: 2
---

# WebKit 前缀属性 (-webkit-*)

WebKit 前缀属性是特定于基于 WebKit 和 Blink 引擎的浏览器（如 Chrome、Safari）的 CSS 属性，通常以 `-webkit-` 开头。本文档提供了 WebKit 前缀属性的完整参考。

## 属性列表

下面是 WebKit 前缀属性的完整列表，点击属性名可跳转到 MDN 文档查看详细信息。

| 属性名 | 描述 | 标准属性 |
|-------|------|---------|
| [-webkit-appearance](https://developer.mozilla.org/zh-CN/docs/Web/CSS/appearance) | 控制元素的原生外观 | `appearance` |
| [-webkit-font-smoothing](https://developer.mozilla.org/zh-CN/docs/Web/CSS/font-smooth) | 控制文本在 WebKit 浏览器中的字体平滑 | `font-smooth` |
| [-webkit-tap-highlight-color](https://developer.mozilla.org/zh-CN/docs/Web/CSS/-webkit-tap-highlight-color) | 控制移动设备上点击链接时的高亮颜色 | 无标准对应 |
| [-webkit-text-fill-color](https://developer.mozilla.org/zh-CN/docs/Web/CSS/-webkit-text-fill-color) | 控制文本填充颜色 | 无标准对应 |
| [-webkit-text-stroke](https://developer.mozilla.org/zh-CN/docs/Web/CSS/-webkit-text-stroke) | 为文本添加描边 | 无标准对应 |
| [-webkit-overflow-scrolling](https://developer.mozilla.org/zh-CN/docs/Web/CSS/-webkit-overflow-scrolling) | 控制触摸设备上的滚动行为 | 无标准对应 |
| [-webkit-line-clamp](https://developer.mozilla.org/zh-CN/docs/Web/CSS/-webkit-line-clamp) | 限制块容器中文本的行数 | `line-clamp` (草案) |
| [-webkit-box-orient](https://developer.mozilla.org/zh-CN/docs/Web/CSS/box-orient) | 指定盒子的子元素是水平还是垂直排列 | `flex-direction` |
| [-webkit-box-direction](https://developer.mozilla.org/zh-CN/docs/Web/CSS/box-direction) | 指定盒子的子元素的排列方向 | `flex-direction` |
| [-webkit-box-flex](https://developer.mozilla.org/zh-CN/docs/Web/CSS/box-flex) | 指定盒子的弹性 | `flex` |
| [-webkit-box-ordinal-group](https://developer.mozilla.org/zh-CN/docs/Web/CSS/box-ordinal-group) | 指定盒子中子元素的显示顺序 | `order` |
| [-webkit-box-align](https://developer.mozilla.org/zh-CN/docs/Web/CSS/box-align) | 指定盒子中子元素的对齐方式 | `align-items` |
| [-webkit-box-pack](https://developer.mozilla.org/zh-CN/docs/Web/CSS/box-pack) | 指定盒子中子元素的分布方式 | `justify-content` |
| [-webkit-box-shadow](https://developer.mozilla.org/zh-CN/docs/Web/CSS/box-shadow) | 为元素添加阴影效果 | `box-shadow` |
| [-webkit-border-radius](https://developer.mozilla.org/zh-CN/docs/Web/CSS/border-radius) | 设置元素边框圆角 | `border-radius` |
| [-webkit-border-top-left-radius](https://developer.mozilla.org/zh-CN/docs/Web/CSS/border-top-left-radius) | 设置元素左上角边框圆角 | `border-top-left-radius` |
| [-webkit-border-top-right-radius](https://developer.mozilla.org/zh-CN/docs/Web/CSS/border-top-right-radius) | 设置元素右上角边框圆角 | `border-top-right-radius` |
| [-webkit-border-bottom-left-radius](https://developer.mozilla.org/zh-CN/docs/Web/CSS/border-bottom-left-radius) | 设置元素左下角边框圆角 | `border-bottom-left-radius` |
| [-webkit-border-bottom-right-radius](https://developer.mozilla.org/zh-CN/docs/Web/CSS/border-bottom-right-radius) | 设置元素右下角边框圆角 | `border-bottom-right-radius` |
| [-webkit-transition](https://developer.mozilla.org/zh-CN/docs/Web/CSS/transition) | 定义元素状态变化的过渡效果 | `transition` |
| [-webkit-transition-delay](https://developer.mozilla.org/zh-CN/docs/Web/CSS/transition-delay) | 定义过渡效果开始前的延迟时间 | `transition-delay` |
| [-webkit-transition-duration](https://developer.mozilla.org/zh-CN/docs/Web/CSS/transition-duration) | 定义过渡效果的持续时间 | `transition-duration` |
| [-webkit-transition-property](https://developer.mozilla.org/zh-CN/docs/Web/CSS/transition-property) | 指定应用过渡效果的 CSS 属性 | `transition-property` |
| [-webkit-transition-timing-function](https://developer.mozilla.org/zh-CN/docs/Web/CSS/transition-timing-function) | 定义过渡效果的速度曲线 | `transition-timing-function` |
| [-webkit-animation](https://developer.mozilla.org/zh-CN/docs/Web/CSS/animation) | 定义元素的动画效果 | `animation` |
| [-webkit-animation-delay](https://developer.mozilla.org/zh-CN/docs/Web/CSS/animation-delay) | 定义动画开始前的延迟时间 | `animation-delay` |
| [-webkit-animation-direction](https://developer.mozilla.org/zh-CN/docs/Web/CSS/animation-direction) | 定义动画的播放方向 | `animation-direction` |
| [-webkit-animation-duration](https://developer.mozilla.org/zh-CN/docs/Web/CSS/animation-duration) | 定义动画的持续时间 | `animation-duration` |
| [-webkit-animation-fill-mode](https://developer.mozilla.org/zh-CN/docs/Web/CSS/animation-fill-mode) | 定义动画结束后的状态 | `animation-fill-mode` |
| [-webkit-animation-iteration-count](https://developer.mozilla.org/zh-CN/docs/Web/CSS/animation-iteration-count) | 定义动画的播放次数 | `animation-iteration-count` |
| [-webkit-animation-name](https://developer.mozilla.org/zh-CN/docs/Web/CSS/animation-name) | 指定要应用的 @keyframes 动画名称 | `animation-name` |
| [-webkit-animation-play-state](https://developer.mozilla.org/zh-CN/docs/Web/CSS/animation-play-state) | 定义动画的播放状态 | `animation-play-state` |
| [-webkit-animation-timing-function](https://developer.mozilla.org/zh-CN/docs/Web/CSS/animation-timing-function) | 定义动画的速度曲线 | `animation-timing-function` |
| [-webkit-transform](https://developer.mozilla.org/zh-CN/docs/Web/CSS/transform) | 对元素应用 2D 或 3D 变换 | `transform` |
| [-webkit-transform-origin](https://developer.mozilla.org/zh-CN/docs/Web/CSS/transform-origin) | 设置变换的原点 | `transform-origin` |
| [-webkit-transform-style](https://developer.mozilla.org/zh-CN/docs/Web/CSS/transform-style) | 设置元素的子元素是位于 3D 空间中还是平面中 | `transform-style` |
| [-webkit-perspective](https://developer.mozilla.org/zh-CN/docs/Web/CSS/perspective) | 为 3D 变换元素定义透视视图 | `perspective` |
| [-webkit-perspective-origin](https://developer.mozilla.org/zh-CN/docs/Web/CSS/perspective-origin) | 定义 3D 元素的透视视图的原点 | `perspective-origin` |
| [-webkit-backface-visibility](https://developer.mozilla.org/zh-CN/docs/Web/CSS/backface-visibility) | 定义元素背面是否可见 | `backface-visibility` |
| [-webkit-mask](https://developer.mozilla.org/zh-CN/docs/Web/CSS/mask) | 创建一个遮罩层，用于部分或完全隐藏元素 | `mask` |
| [-webkit-mask-image](https://developer.mozilla.org/zh-CN/docs/Web/CSS/mask-image) | 设置用作遮罩层的图像 | `mask-image` |
| [-webkit-mask-position](https://developer.mozilla.org/zh-CN/docs/Web/CSS/mask-position) | 设置遮罩层的位置 | `mask-position` |
| [-webkit-mask-size](https://developer.mozilla.org/zh-CN/docs/Web/CSS/mask-size) | 设置遮罩层的大小 | `mask-size` |
| [-webkit-mask-repeat](https://developer.mozilla.org/zh-CN/docs/Web/CSS/mask-repeat) | 设置遮罩层的重复方式 | `mask-repeat` |
| [-webkit-filter](https://developer.mozilla.org/zh-CN/docs/Web/CSS/filter) | 对元素应用图形效果 | `filter` |
| [-webkit-backdrop-filter](https://developer.mozilla.org/zh-CN/docs/Web/CSS/backdrop-filter) | 对元素背后的区域应用滤镜效果 | `backdrop-filter` |
| [-webkit-user-drag](https://developer.mozilla.org/zh-CN/docs/Web/CSS/-webkit-user-drag) | 控制用户是否可以拖动元素 | 无标准对应 |
| [-webkit-user-modify](https://developer.mozilla.org/zh-CN/docs/Web/CSS/-webkit-user-modify) | 控制用户是否可以修改元素内容 | 无标准对应 |
| [-webkit-user-select](https://developer.mozilla.org/zh-CN/docs/Web/CSS/user-select) | 控制用户是否可以选择文本 | `user-select` |
| [-webkit-touch-callout](https://developer.mozilla.org/zh-CN/docs/Web/CSS/-webkit-touch-callout) | 控制显示元素触摸时的系统默认菜单 | 无标准对应 |

## 使用示例

```css
/* WebKit 前缀属性示例 */
input[type="checkbox"] {
  -webkit-appearance: none; /* 移除 WebKit 浏览器中复选框的默认样式 */
  width: 20px;
  height: 20px;
  background-color: white;
  border: 1px solid gray;
  border-radius: 3px;
}

input[type="checkbox"]:checked {
  background-color: blue;
}

/* 文本描边效果 */
.outlined-text {
  -webkit-text-stroke: 1px black;
  color: white;
}

/* 移动端点击高亮颜色 */
a {
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0); /* 移除点击高亮 */
}

/* iOS 平滑滚动 */
.scroll-container {
  overflow: auto;
  -webkit-overflow-scrolling: touch; /* 启用惯性滚动 */
}

/* 多行文本截断 */
.line-clamp {
  display: -webkit-box;
  -webkit-line-clamp: 3; /* 限制为3行 */
  -webkit-box-orient: vertical;
  overflow: hidden;
}

/* 渐变背景 */
.gradient {
  background: -webkit-linear-gradient(left, #ff0000, #0000ff);
  background: linear-gradient(to right, #ff0000, #0000ff);
}

/* 遮罩效果 */
.masked-element {
  -webkit-mask-image: url('mask.png');
  -webkit-mask-size: cover;
  mask-image: url('mask.png');
  mask-size: cover;
}

/* 滤镜效果 */
.filtered {
  -webkit-filter: blur(5px) brightness(1.2);
  filter: blur(5px) brightness(1.2);
}

/* 背景滤镜 */
.backdrop-filtered {
  -webkit-backdrop-filter: blur(10px);
  backdrop-filter: blur(10px);
  background-color: rgba(255, 255, 255, 0.5);
}

/* 禁止用户拖动 */
img {
  -webkit-user-drag: none;
  user-drag: none;
}

/* 禁止触摸长按菜单 */
.no-callout {
  -webkit-touch-callout: none;
}
```

## 常见应用场景

### 自定义表单元素

WebKit 浏览器允许使用 `-webkit-appearance` 属性完全自定义表单元素的外观：

```css
/* 自定义复选框 */
input[type="checkbox"] {
  -webkit-appearance: none;
  appearance: none;
  width: 20px;
  height: 20px;
  border: 2px solid #555;
  border-radius: 4px;
  position: relative;
}

input[type="checkbox"]:checked {
  background-color: #2196F3;
  border-color: #2196F3;
}

input[type="checkbox"]:checked::after {
  content: '';
  position: absolute;
  left: 6px;
  top: 2px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}

/* 自定义单选按钮 */
input[type="radio"] {
  -webkit-appearance: none;
  appearance: none;
  width: 20px;
  height: 20px;
  border: 2px solid #555;
  border-radius: 50%;
}

input[type="radio"]:checked {
  border: 6px solid #2196F3;
}
/* 自定义选择框 */
select {
  -webkit-appearance: none;
  appearance: none;
  background-color: white;
  border: 2px solid #555;
  border-radius: 4px;
  padding: 8px 12px;
  width: 100%;
  background-image: url("data:image/svg+xml;utf8,<svg fill='black' height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'><path d='M7 10l5 5 5-5z'/></svg>");
  background-repeat: no-repeat;
  background-position: right 8px center;
}
```

### 自定义滚动条

WebKit 浏览器提供了一组特殊的伪元素，允许自定义滚动条的外观：

```css
/* 自定义滚动条 */
.custom-scrollbar::-webkit-scrollbar {
  width: 8px; /* 滚动条宽度 */
}

.custom-scrollbar::-webkit-scrollbar-track {
  background: #f1f1f1; /* 滚动条轨道背景色 */
  border-radius: 10px;
}

.custom-scrollbar::-webkit-scrollbar-thumb {
  background: #888; /* 滚动条滑块颜色 */
  border-radius: 10px;
}

.custom-scrollbar::-webkit-scrollbar-thumb:hover {
  background: #555; /* 鼠标悬停时滑块颜色 */
}

/* 隐藏滚动条但保留功能 */
.hide-scrollbar {
  overflow: auto;
  -ms-overflow-style: none; /* IE 和 Edge */
  scrollbar-width: none; /* Firefox */
}

.hide-scrollbar::-webkit-scrollbar {
  display: none; /* Chrome, Safari 和 Opera */
}
```

### 文本效果

WebKit 提供了一些独特的文本效果属性：

```css
/* 文本描边 */
.text-stroke {
  -webkit-text-stroke: 1px black;
  color: transparent; /* 透明文本，只显示描边 */
}

/* 文本描边 + 填充 */
.text-stroke-fill {
  -webkit-text-stroke: 1px black;
  -webkit-text-fill-color: white; /* 文本填充颜色 */
}

/* 渐变文本 */
.gradient-text {
  background: -webkit-linear-gradient(left, #ff0000, #0000ff);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  
  /* 标准语法（较新的浏览器） */
  background: linear-gradient(to right, #ff0000, #0000ff);
  background-clip: text;
  color: transparent;
}
```

### 移动端优化

WebKit 前缀属性在移动端开发中尤为重要：

```css
/* 移动端优化 */
.mobile-optimized {
  /* 禁用点击高亮 */
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
  
  /* 禁用长按菜单 */
  -webkit-touch-callout: none;
  
  /* 启用平滑滚动 */
  -webkit-overflow-scrolling: touch;
  
  /* 禁止选择文本 */
  -webkit-user-select: none;
  user-select: none;
  
  /* 禁止拖动图像等元素 */
  -webkit-user-drag: none;
}

/* 适配不同设备像素比的图像 */
.retina-image {
  -webkit-image-set(
    url('image.png') 1x,
    url('image@2x.png') 2x,
    url('image@3x.png') 3x
  );
  image-set(
    url('image.png') 1x,
    url('image@2x.png') 2x,
    url('image@3x.png') 3x
  );
}
```

### 高级视觉效果

WebKit 前缀属性可以创建各种高级视觉效果：

```css
/* 毛玻璃效果 */
.frosted-glass {
  background-color: rgba(255, 255, 255, 0.2);
  -webkit-backdrop-filter: blur(10px);
  backdrop-filter: blur(10px);
}

/* 图像滤镜 */
.filtered-image {
  -webkit-filter: sepia(50%) contrast(150%) saturate(200%);
  filter: sepia(50%) contrast(150%) saturate(200%);
  transition: -webkit-filter 0.3s, filter 0.3s;
}

.filtered-image:hover {
  -webkit-filter: none;
  filter: none;
}

/* 3D 翻转卡片 */
.card-container {
  -webkit-perspective: 1000px;
  perspective: 1000px;
}

.card {
  width: 100%;
  height: 100%;
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
  -webkit-transition: -webkit-transform 0.6s;
  transition: transform 0.6s;
}

.card.flipped {
  -webkit-transform: rotateY(180deg);
  transform: rotateY(180deg);
}

.card-front, .card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.card-back {
  -webkit-transform: rotateY(180deg);
  transform: rotateY(180deg);
}
```

## 历史与现状

WebKit 前缀属性最初是为了实现尚未标准化的 CSS 特性而创建的。随着 Web 标准的发展，许多带有 `-webkit-` 前缀的属性已经有了对应的标准属性。

### 浏览器支持情况

| 浏览器 | 引擎 | 支持 WebKit 前缀 |
|-------|------|-----------------|
| Chrome | Blink (WebKit 分支) | 是 |
| Safari | WebKit | 是 |
| Firefox | Gecko | 部分支持 (为兼容性) |
| Edge (新版) | Blink | 是 |
| Edge (旧版) | EdgeHTML | 部分支持 |
| Opera (新版) | Blink | 是 |
| iOS Safari | WebKit | 是 |
| Android Browser | WebKit/Blink | 是 |

### 使用趋势

- **早期（2000 年代中期至 2010 年代初）**：大量使用前缀属性以支持新特性
- **中期（2010 年代）**：同时使用前缀属性和标准属性以确保兼容性
- **现在**：主要使用标准属性，仅在需要支持特定功能或旧版浏览器时使用前缀属性

值得注意的是，由于 WebKit/Blink 引擎的广泛使用，某些 `-webkit-` 前缀属性（如 `-webkit-line-clamp`）即使没有标准对应属性，也被广泛使用并得到了良好的支持。

## 常见问题与解决方案

### 1. 多行文本截断

**问题**：如何在 WebKit 浏览器中实现多行文本截断？

**解决方案**：
```css
.line-clamp {
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
  overflow: hidden;
}
```

### 2. 移动设备上的点击高亮

**问题**：如何移除移动设备上点击元素时的高亮效果？

**解决方案**：
```css
* {
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
```

### 3. iOS 设备上的滚动问题

**问题**：如何在 iOS 设备上实现平滑滚动？

**解决方案**：
```css
.scroll-container {
  overflow: auto;
  -webkit-overflow-scrolling: touch;
}
```

### 4. 自定义滚动条

**问题**：如何在 WebKit 浏览器中自定义滚动条？

**解决方案**：
```css
/* 基本自定义 */
::-webkit-scrollbar {
  width: 10px;
}

::-webkit-scrollbar-track {
  background: #f1f1f1;
}

::-webkit-scrollbar-thumb {
  background: #888;
}

::-webkit-scrollbar-thumb:hover {
  background: #555;
}
```

## 最佳实践

1. **优先使用标准属性**：尽可能使用标准 CSS 属性，仅在需要兼容特定浏览器时使用前缀属性。
2. **自动添加前缀**：考虑使用 Autoprefixer 等工具自动添加必要的浏览器前缀。
3. **渐进增强**：先使用前缀属性，然后使用标准属性覆盖，确保最新的浏览器使用标准实现。
4. **测试**：在不同的浏览器和设备上测试前缀属性的效果。
5. **关注废弃情况**：定期检查前缀属性的支持状态，及时更新代码以使用标准属性。
6. **使用特性检测**：在可能的情况下，使用 `@supports` 规则检测浏览器对标准属性的支持。

```css
/* 使用 @supports 进行特性检测 */
@supports (backdrop-filter: blur(10px)) {
  .frosted-glass {
    backdrop-filter: blur(10px);
  }
}

@supports not (backdrop-filter: blur(10px)) {
  .frosted-glass {
    /* 回退样式 */
    background-color: rgba(255, 255, 255, 0.8);
  }
}
```

## 使用工具

### Autoprefixer

Autoprefixer 是一个流行的 PostCSS 插件，可以根据 Can I Use 的数据自动添加浏览器前缀。

```bash
# 使用 npm 安装 Autoprefixer
npm install autoprefixer --save-dev
```

配置示例（在 `postcss.config.js` 中）：

```javascript
module.exports = {
  plugins: [
    require('autoprefixer')({
      browsers: ['last 2 versions', '> 1%', 'iOS >= 8', 'Safari >= 8']
    })
  ]
}
```

### 在线工具

- [Autoprefixer Online](https://autoprefixer.github.io/) - 在线添加浏览器前缀
- [Can I Use](https://caniuse.com/) - 检查浏览器支持情况
- [CSS3 Generator](https://css3generator.com/) - 生成带前缀的 CSS3 代码

## 相关资源

- [MDN WebKit 特定属性](https://developer.mozilla.org/zh-CN/docs/Web/CSS/WebKit_Extensions)
- [Safari CSS 参考](https://developer.apple.com/library/archive/documentation/AppleApplications/Reference/SafariCSSRef/Introduction.html)
- [Can I Use](https://caniuse.com/) - 检查浏览器支持情况
- [WebKit CSS 属性参考](https://webkit.org/blog/7929/designing-websites-for-iphone-x/)
- [Chrome 开发者工具](https://developer.chrome.com/docs/devtools/) - 调试 CSS 的有用工具
- [PostCSS 和 Autoprefixer](https://github.com/postcss/autoprefixer) - 自动添加浏览器前缀的工具