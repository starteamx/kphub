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

<!-- 此处将根据数据自动生成属性表格 -->

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
```

## 最佳实践

1. **优先使用标准属性**：尽可能使用标准 CSS 属性，仅在需要兼容特定浏览器时使用前缀属性。
2. **自动添加前缀**：考虑使用 Autoprefixer 等工具自动添加必要的浏览器前缀。
3. **渐进增强**：先使用前缀属性，然后使用标准属性覆盖，确保最新的浏览器使用标准实现。
4. **测试**：在不同的浏览器和设备上测试前缀属性的效果。

## 相关资源

- [MDN WebKit 特定属性](https://developer.mozilla.org/zh-CN/docs/Web/CSS/WebKit_Extensions)
- [Safari CSS 参考](https://developer.apple.com/library/archive/documentation/AppleApplications/Reference/SafariCSSRef/Introduction.html)
- [Can I Use](https://caniuse.com/) - 检查浏览器支持情况
