---
title: Mozilla 前缀属性
icon: css
order: 1
---

# Mozilla 前缀属性 (-moz-*)

Mozilla 前缀属性是特定于 Firefox 浏览器的 CSS 属性，通常以 `-moz-` 开头。本文档提供了 Mozilla 前缀属性的完整参考。

## 属性列表

下面是 Mozilla 前缀属性的完整列表，点击属性名可跳转到 MDN 文档查看详细信息。

| 属性名 | 描述 | 标准属性 |
|-------|------|---------|
| [-moz-appearance](https://developer.mozilla.org/zh-CN/docs/Web/CSS/-moz-appearance) | 控制元素的原生外观 | `appearance` |
| [-moz-user-select](https://developer.mozilla.org/zh-CN/docs/Web/CSS/user-select) | 控制用户是否可以选择文本 | `user-select` |
| [-moz-osx-font-smoothing](https://developer.mozilla.org/zh-CN/docs/Web/CSS/font-smooth) | 控制文本在 macOS 上的字体平滑 | `font-smooth` |

<!-- 此处将根据数据自动生成属性表格 -->

## 使用示例

```css
/* Mozilla 前缀属性示例 */
button {
  -moz-appearance: none; /* 移除 Firefox 中按钮的默认样式 */
}

.no-select {
  -moz-user-select: none; /* 在 Firefox 中禁止文本选择 */
}

/* 推荐：同时使用标准属性和前缀属性 */
button {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
}
```

## 最佳实践

1. **优先使用标准属性**：尽可能使用标准 CSS 属性，仅在需要兼容旧版浏览器时使用前缀属性。
2. **自动添加前缀**：考虑使用 Autoprefixer 等工具自动添加必要的浏览器前缀。
3. **渐进增强**：先使用前缀属性，然后使用标准属性覆盖，确保最新的浏览器使用标准实现。

## 相关资源

- [MDN Mozilla 特定属性](https://developer.mozilla.org/zh-CN/docs/Web/CSS/Mozilla_Extensions)
- [Can I Use](https://caniuse.com/) - 检查浏览器支持情况
