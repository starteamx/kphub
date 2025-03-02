---
title: Input类型
icon: form
order: 4
---

# HTML Input类型参考

Input元素是HTML表单中最重要的元素之一。本文档提供了所有input类型的详细参考信息。

## 文本输入类型

| 类型 | 描述 | 示例 | 参考链接 |
| ---- | ---- | ---- | -------- |
| `text` | 基本的单行文本输入字段 | `<input type="text">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/text) |
| `password` | 密码输入字段，字符会被遮盖 | `<input type="password">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/password) |
| `email` | 用于输入电子邮件地址的字段 | `<input type="email">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/email) |
| `search` | 搜索框，可能带有清除按钮 | `<input type="search">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/search) |
| `tel` | 用于输入电话号码的字段 | `<input type="tel">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/tel) |
| `url` | 用于输入URL的字段 | `<input type="url">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/url) |

## 数值输入类型

| 类型 | 描述 | 示例 | 参考链接 |
| ---- | ---- | ---- | -------- |
| `number` | 用于输入数字的字段 | `<input type="number">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/number) |
| `range` | 滑块控件，用于输入特定范围内的数值 | `<input type="range">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/range) |

## 日期和时间输入类型

| 类型 | 描述 | 示例 | 参考链接 |
| ---- | ---- | ---- | -------- |
| `date` | 用于输入日期（年、月、日）的控件 | `<input type="date">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/date) |
| `time` | 用于输入时间（小时、分钟）的控件 | `<input type="time">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/time) |
| `datetime-local` | 用于输入日期和时间的控件 | `<input type="datetime-local">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/datetime-local) |
| `month` | 用于输入年和月的控件 | `<input type="month">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/month) |
| `week` | 用于输入年和周数的控件 | `<input type="week">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/week) |

## 选择输入类型

| 类型 | 描述 | 示例 | 参考链接 |
| ---- | ---- | ---- | -------- |
| `checkbox` | 复选框，允许选择多个选项 | `<input type="checkbox">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/checkbox) |
| `radio` | 单选按钮，只允许选择一个选项 | `<input type="radio">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/radio) |
| `color` | 颜色选择器 | `<input type="color">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/color) |
| `file` | 文件上传控件 | `<input type="file">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/file) |

## 按钮类型

| 类型 | 描述 | 示例 | 参考链接 |
| ---- | ---- | ---- | -------- |
| `button` | 普通按钮，无默认行为 | `<input type="button" value="点击">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/button) |
| `submit` | 提交表单的按钮 | `<input type="submit" value="提交">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/submit) |
| `reset` | 重置表单的按钮 | `<input type="reset" value="重置">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/reset) |
| `image` | 图像形式的提交按钮 | `<input type="image" src="button.png">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/image) |

## 特殊类型

| 类型 | 描述 | 示例 | 参考链接 |
| ---- | ---- | ---- | -------- |
| `hidden` | 不显示的输入字段，但会随表单提交 | `<input type="hidden">` | [MDN文档](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input/hidden) |

## 使用建议

1. 选择合适的输入类型可以提供更好的用户体验和表单验证
2. 移动设备会根据输入类型显示不同的虚拟键盘
3. 不同浏览器对HTML5输入类型的支持程度不同，应进行兼容性测试
4. 结合`required`、`pattern`等属性可以增强表单验证功能

## 相关资源

- [HTML表单指南](https://developer.mozilla.org/zh-CN/docs/Learn/Forms)
- [HTML表单验证](https://developer.mozilla.org/zh-CN/docs/Learn/Forms/Form_validation)
- [HTML Input元素](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/input)