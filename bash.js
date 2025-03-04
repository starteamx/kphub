/**
 * CSS 参考文档生成脚本
 * 
 * 此脚本用于生成 CSS 参考文档的基本结构，包括：
 * - 参考目录的 README.md
 * - 各个分类的参考文档
 * 
 * 使用方法：node generate-css-reference.js
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

// 获取当前文件的目录路径
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// 基础路径
const BASE_PATH = '/Users/guanrunbai/my/kphub/src/frontend/CSS/参考';

// MDN 基础 URL
const MDN_BASE_URL = 'https://developer.mozilla.org';

// 确保目录存在
function ensureDirectoryExists(dirPath) {
  if (!fs.existsSync(dirPath)) {
    fs.mkdirSync(dirPath, { recursive: true });
  }
}

// 创建参考目录结构
function createReferenceStructure() {
  ensureDirectoryExists(BASE_PATH);
  
  // 创建子目录
  const directories = [
    '01-属性',
    '02-选择器',
    '03-伪类和伪元素',
    '04-At规则',
    '05-函数',
    '06-数据类型',
    '07-浏览器特定前缀'
  ];
  
  directories.forEach(dir => {
    ensureDirectoryExists(path.join(BASE_PATH, dir));
  });
}

// 生成 README.md
function generateReadme() {
  const readmePath = path.join(BASE_PATH, 'README.md');
  const content = `---
title: CSS 参考
icon: css
order: 7
---

# CSS 参考

本节提供了 CSS（层叠样式表）的全面参考资料，包括属性、选择器、伪类、伪元素、@规则、函数和数据类型等。

## 内容结构

- [CSS 属性](./01-属性/)：CSS 属性的详细参考，包括布局、盒模型、文本、背景等分类。
- [CSS 选择器](./02-选择器/)：各种 CSS 选择器的用法和示例。
- [CSS 伪类和伪元素](./03-伪类和伪元素/)：伪类和伪元素的完整列表和用法说明。
- [CSS @规则](./04-At规则/)：所有 CSS @规则的详细说明。
- [CSS 函数](./05-函数/)：CSS 中可用的各种函数，如计算函数、颜色函数等。
- [CSS 数据类型](./06-数据类型/)：CSS 中使用的数据类型的详细说明。
- [浏览器特定前缀](./07-浏览器特定前缀/)：浏览器特定的 CSS 属性前缀参考。

## 资源来源

本参考资料主要基于 [MDN Web 文档](${MDN_BASE_URL})，并根据实际开发需求进行了整理和补充。

## 使用说明

每个参考页面都包含属性/选择器/函数的语法、值、示例和浏览器兼容性信息。您可以通过侧边栏导航或页面内搜索快速找到所需信息。

## 注意事项

- 本参考资料会定期更新，以反映最新的 CSS 规范和浏览器支持情况。
- 对于实验性或草案阶段的特性，会在文档中特别标注。
- 浏览器兼容性信息仅供参考，实际使用时请根据目标用户的浏览器分布进行测试。
`;

  fs.writeFileSync(readmePath, content);
}

// 生成属性参考文档
function generatePropertyReferences() {
  const categories = [
    {
      name: '布局属性',
      filename: '01-布局属性.md',
      description: '控制元素布局的属性，包括 display、position、flex、grid 等。'
    },
    {
      name: '盒模型属性',
      filename: '02-盒模型属性.md',
      description: '与盒模型相关的属性，包括 margin、padding、border、width、height 等。'
    },
    {
      name: '文本和字体属性',
      filename: '03-文本和字体属性.md',
      description: '控制文本和字体显示的属性，包括 font、text、line 等相关属性。'
    },
    {
      name: '背景和颜色属性',
      filename: '04-背景和颜色属性.md',
      description: '控制元素背景和颜色的属性，包括 background、color 等。'
    },
    {
      name: '变换和动画属性',
      filename: '05-变换和动画属性.md',
      description: '控制元素变换和动画效果的属性，包括 transform、transition、animation 等。'
    },
    {
      name: '其他属性',
      filename: '06-其他属性.md',
      description: '其他不属于以上分类的 CSS 属性。'
    }
  ];
  
  categories.forEach(category => {
    const filePath = path.join(BASE_PATH, '01-属性', category.filename);
    const content = `---
title: ${category.name}
icon: css
order: ${category.filename.split('-')[0]}
---

# ${category.name}

${category.description}

## 属性列表

下面是${category.name}的完整列表，点击属性名可跳转到 MDN 文档查看详细信息。

| 属性名 | 描述 | 语法 |
|-------|------|------|
| [属性名](${MDN_BASE_URL}/path/to/property) | 属性描述 | \`属性: 值\` |

<!-- 此处将根据数据自动生成属性表格 -->

## 使用示例

\`\`\`css
/* ${category.name}示例 */
selector {
  property: value;
}
\`\`\`

## 浏览器兼容性

<!-- 此处将根据数据自动生成兼容性表格 -->

## 相关资源

- [MDN CSS 参考](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Reference)
- [CSS 规范](https://www.w3.org/Style/CSS/)
`;

    fs.writeFileSync(filePath, content);
  });
}

// 生成选择器参考文档
function generateSelectorReferences() {
  const filePath = path.join(BASE_PATH, '02-选择器', '01-选择器参考.md');
  const content = `---
title: CSS 选择器参考
icon: css
order: 1
---

# CSS 选择器参考

CSS 选择器用于选择要应用样式的 HTML 元素。本文档提供了 CSS 选择器的完整参考。

## 基本选择器

| 选择器 | 描述 | 示例 |
|-------|------|------|
| [通配选择器](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Universal_selectors) | 选择所有元素 | \`*\` |
| [类型选择器](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Type_selectors) | 选择指定类型的元素 | \`div\` |
| [类选择器](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Class_selectors) | 选择具有指定类的元素 | \`.classname\` |
| [ID 选择器](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/ID_selectors) | 选择具有指定 ID 的元素 | \`#idname\` |
| [属性选择器](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Attribute_selectors) | 选择具有指定属性的元素 | \`[attr=value]\` |

<!-- 此处将根据数据自动生成选择器表格 -->

## 关系选择器

| 选择器 | 描述 | 示例 |
|-------|------|------|
| [后代选择器](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Descendant_combinator) | 选择元素的后代 | \`div p\` |
| [子组合器](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Child_combinator) | 选择元素的直接子元素 | \`div > p\` |
| [相邻兄弟组合器](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Next-sibling_combinator) | 选择紧接在另一元素后的元素 | \`div + p\` |
| [后续兄弟选择器](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Subsequent-sibling_combinator) | 选择前一个元素之后的所有兄弟元素 | \`div ~ p\` |

<!-- 此处将根据数据自动生成关系选择器表格 -->

## 使用示例

\`\`\`css
/* 基本选择器示例 */
* { margin: 0; padding: 0; } /* 通配选择器 */
div { color: blue; } /* 类型选择器 */
.highlight { background-color: yellow; } /* 类选择器 */
#header { height: 80px; } /* ID 选择器 */
[type="text"] { border: 1px solid gray; } /* 属性选择器 */

/* 关系选择器示例 */
article p { line-height: 1.6; } /* 后代选择器 */
ul > li { list-style-type: square; } /* 子组合器 */
h2 + p { font-weight: bold; } /* 相邻兄弟组合器 */
h2 ~ p { color: gray; } /* 后续兄弟选择器 */
\`\`\`

## 浏览器兼容性

<!-- 此处将根据数据自动生成兼容性表格 -->

## 相关资源

- [MDN CSS 选择器](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/CSS_Selectors)
- [CSS 选择器规范](https://www.w3.org/TR/selectors/)
`;

  fs.writeFileSync(filePath, content);
}

// 生成伪类和伪元素参考文档
function generatePseudoReferences() {
  // 伪类文档
  const pseudoClassPath = path.join(BASE_PATH, '03-伪类和伪元素', '01-伪类.md');
  const pseudoClassContent = `---
title: CSS 伪类
icon: css
order: 1
---

# CSS 伪类

CSS 伪类是添加到选择器的关键字，用于指定所选元素的特殊状态。本文档提供了 CSS 伪类的完整参考。

## 常用伪类

| 伪类 | 描述 | 示例 |
|------|------|------|
| [:hover](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:hover) | 鼠标悬停在元素上时 | \`a:hover\` |
| [:active](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:active) | 元素被激活时（如点击） | \`button:active\` |
| [:focus](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:focus) | 元素获得焦点时 | \`input:focus\` |
| [:visited](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:visited) | 已访问的链接 | \`a:visited\` |
| [:first-child](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:first-child) | 作为第一个子元素的元素 | \`li:first-child\` |

<!-- 此处将根据数据自动生成伪类表格 -->

## 结构性伪类

| 伪类 | 描述 | 示例 |
|------|------|------|
| [:nth-child()](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:nth-child) | 匹配特定位置的子元素 | \`tr:nth-child(odd)\` |
| [:nth-of-type()](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:nth-of-type) | 匹配特定类型和位置的元素 | \`p:nth-of-type(2)\` |
| [:last-child](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:last-child) | 作为最后一个子元素的元素 | \`li:last-child\` |
| [:only-child](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:only-child) | 作为唯一子元素的元素 | \`div:only-child\` |
| [:empty](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:empty) | 没有子元素的元素 | \`p:empty\` |

<!-- 此处将根据数据自动生成结构性伪类表格 -->

## 表单相关伪类

| 伪类 | 描述 | 示例 |
|------|------|------|
| [:checked](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:checked) | 选中的表单元素 | \`input:checked\` |
| [:disabled](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:disabled) | 禁用的表单元素 | \`button:disabled\` |
| [:valid](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:valid) | 内容有效的表单元素 | \`input:valid\` |
| [:invalid](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:invalid) | 内容无效的表单元素 | \`input:invalid\` |
| [:required](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:required) | 必填的表单元素 | \`input:required\` |
| [:optional](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:optional) | 非必填的表单元素 | \`input:optional\` |
| [:focus-within](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/:focus-within) | 包含获得焦点的子元素的元素 | \`form:focus-within\` |

<!-- 此处将根据数据自动生成表单相关伪类表格 -->

## 使用示例

\`\`\`css
/* 常用伪类示例 */
a:hover { text-decoration: underline; }
button:active { transform: translateY(1px); }
input:focus { border-color: blue; }

/* 结构性伪类示例 */
li:first-child { font-weight: bold; }
tr:nth-child(even) { background-color: #f2f2f2; }
p:last-child { margin-bottom: 0; }

/* 表单相关伪类示例 */
input:required { border-left: 4px solid red; }
input:valid { border-left: 4px solid green; }
input:invalid { background-color: #fff0f0; }
\`\`\`

## 浏览器兼容性

<!-- 此处将根据数据自动生成兼容性表格 -->

## 相关资源

- [MDN CSS 伪类](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Pseudo-classes)
- [CSS 选择器规范](https://www.w3.org/TR/selectors/)
`;

  fs.writeFileSync(pseudoClassPath, pseudoClassContent);
  
  // 伪元素文档
  const pseudoElementPath = path.join(BASE_PATH, '03-伪类和伪元素', '02-伪元素.md');
  const pseudoElementContent = `---
title: CSS 伪元素
icon: css
order: 2
---

# CSS 伪元素

CSS 伪元素是添加到选择器的关键字，用于设置所选元素特定部分的样式。本文档提供了 CSS 伪元素的完整参考。

## 常用伪元素

| 伪元素 | 描述 | 示例 |
|--------|------|------|
| [::before](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/::before) | 在元素内容之前插入内容 | \`p::before\` |
| [::after](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/::after) | 在元素内容之后插入内容 | \`p::after\` |
| [::first-letter](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/::first-letter) | 选择元素的第一个字母 | \`p::first-letter\` |
| [::first-line](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/::first-line) | 选择元素的第一行 | \`p::first-line\` |
| [::selection](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/::selection) | 选择用户选中的部分 | \`p::selection\` |
| [::placeholder](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/::placeholder) | 选择表单元素的占位符文本 | \`input::placeholder\` |
| [::marker](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/::marker) | 选择列表项的标记 | \`li::marker\` |

<!-- 此处将根据数据自动生成伪元素表格 -->

## 使用示例

\`\`\`css
/* ::before 和 ::after 示例 */
.quote::before {
  content: '"';
  font-size: 2em;
  color: #999;
}

.quote::after {
  content: '"';
  font-size: 2em;
  color: #999;
}

/* ::first-letter 和 ::first-line 示例 */
p::first-letter {
  font-size: 2em;
  font-weight: bold;
  color: #900;
}

p::first-line {
  font-variant: small-caps;
}

/* ::selection 示例 */
::selection {
  background-color: #ffb7b7;
  color: #333;
}

/* ::placeholder 示例 */
input::placeholder {
  color: #999;
  font-style: italic;
}

/* ::marker 示例 */
li::marker {
  color: #900;
  font-weight: bold;
}
\`\`\`

## 浏览器兼容性

<!-- 此处将根据数据自动生成兼容性表格 -->

## 相关资源

- [MDN CSS 伪元素](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Pseudo-elements)
- [CSS 选择器规范](https://www.w3.org/TR/selectors/)
`;

  fs.writeFileSync(pseudoElementPath, pseudoElementContent);
}

// 生成 At 规则参考文档
function generateAtRuleReferences() {
  const filePath = path.join(BASE_PATH, '04-At规则', '01-At规则参考.md');
  const content = `---
title: CSS @规则参考
icon: css
order: 1
---

# CSS @规则参考

CSS @规则是用于指示 CSS 如何表现的特殊语句。本文档提供了 CSS @规则的完整参考。

## 常用 @规则

| @规则 | 描述 | 示例 |
|-------|------|------|
| [@media](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/@media) | 根据媒体查询结果应用样式 | \`@media screen and (max-width: 600px) { ... }\` |
| [@import](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/@import) | 导入其他样式表 | \`@import url("styles.css");\` |
| [@font-face](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/@font-face) | 定义可下载的自定义字体 | \`@font-face { font-family: 'MyFont'; src: url('myfont.woff2'); }\` |
| [@keyframes](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/@keyframes) | 定义动画关键帧 | \`@keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }\` |
| [@supports](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/@supports) | 根据浏览器对 CSS 特性的支持情况应用样式 | \`@supports (display: grid) { ... }\` |

<!-- 此处将根据数据自动生成 @规则表格 -->

## 其他 @规则

| @规则 | 描述 | 示例 |
|-------|------|------|
| [@charset](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/@charset) | 指定样式表的字符编码 | \`@charset "UTF-8";\` |
| [@page](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/@page) | 定义打印文档时的页面样式 | \`@page { margin: 2cm; }\` |
| [@namespace](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/@namespace) | 定义 XML 命名空间 | \`@namespace url(http://www.w3.org/1999/xhtml);\` |
| [@counter-style](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/@counter-style) | 定义自定义计数器样式 | \`@counter-style circled-alpha { ... }\` |
| [@property](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/@property) | 定义自定义 CSS 属性 | \`@property --my-color { syntax: '<color>'; inherits: false; initial-value: #c0ffee; }\` |
| [@layer](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/@layer) | 声明级联层，控制样式优先级 | \`@layer framework, custom;\` |

<!-- 此处将根据数据自动生成其他 @规则表格 -->

## 使用示例

\`\`\`css
/* @media 示例 */
@media screen and (max-width: 768px) {
  body {
    font-size: 14px;
  }
  
  .sidebar {
    display: none;
  }
}

/* @font-face 示例 */
@font-face {
  font-family: 'MyCustomFont';
  src: url('fonts/mycustomfont.woff2') format('woff2'),
       url('fonts/mycustomfont.woff') format('woff');
  font-weight: normal;
  font-style: normal;
  font-display: swap;
}

/* @keyframes 示例 */
@keyframes slideIn {
  0% {
    transform: translateX(-100%);
    opacity: 0;
  }
  100% {
    transform: translateX(0);
    opacity: 1;
  }
}

.animated {
  animation: slideIn 0.5s ease-out forwards;
}

/* @supports 示例 */
@supports (display: grid) {
  .container {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 20px;
  }
}

@supports not (display: grid) {
  .container {
    display: flex;
    flex-wrap: wrap;
  }
  
  .container > * {
    width: calc(33.333% - 20px);
    margin: 10px;
  }
}
\`\`\`

## 浏览器兼容性

<!-- 此处将根据数据自动生成兼容性表格 -->

## 相关资源

- [MDN CSS @规则](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/At-rule)
- [CSS 规范](https://www.w3.org/Style/CSS/)
`;

  fs.writeFileSync(filePath, content);
}

// 生成函数参考文档
function generateFunctionReferences() {
  const categories = [
    {
      name: '颜色函数',
      filename: '01-颜色函数.md',
      description: '用于定义和操作颜色的函数，如 rgb()、hsl()、rgba() 等。'
    },
    {
      name: '数学和计算函数',
      filename: '02-数学和计算函数.md',
      description: '用于执行数学计算的函数，如 calc()、min()、max() 等。'
    },
    {
      name: '变换函数',
      filename: '03-变换函数.md',
      description: '用于变换元素的函数，如 translate()、rotate()、scale() 等。'
    },
    {
      name: '图形函数',
      filename: '04-图形函数.md',
      description: '用于创建图形效果的函数，如 linear-gradient()、radial-gradient() 等。'
    },
    {
      name: '其他函数',
      filename: '05-其他函数.md',
      description: '其他类型的 CSS 函数，如 url()、var()、attr() 等。'
    }
  ];
  
  categories.forEach(category => {
    const filePath = path.join(BASE_PATH, '05-函数', category.filename);
    const content = `---
title: ${category.name}
icon: css
order: ${category.filename.split('-')[0]}
---

# ${category.name}

${category.description}

## 函数列表

下面是${category.name}的完整列表，点击函数名可跳转到 MDN 文档查看详细信息。

| 函数名 | 描述 | 语法 |
|-------|------|------|
| [函数名](${MDN_BASE_URL}/path/to/function) | 函数描述 | \`函数名(参数)\` |

<!-- 此处将根据数据自动生成函数表格 -->

## 使用示例

\`\`\`css
/* ${category.name}示例 */
selector {
  property: function(parameters);
}
\`\`\`

## 浏览器兼容性

<!-- 此处将根据数据自动生成兼容性表格 -->

## 相关资源

- [MDN CSS 函数](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/CSS_Functions)
- [CSS 规范](https://www.w3.org/Style/CSS/)
`;

    fs.writeFileSync(filePath, content);
  });
}

// 生成数据类型参考文档
function generateDataTypeReferences() {
  const filePath = path.join(BASE_PATH, '06-数据类型', '01-数据类型参考.md');
  const content = `---
title: CSS 数据类型参考
icon: css
order: 1
---

# CSS 数据类型参考

CSS 数据类型定义了 CSS 属性可以接受的值的类型。本文档提供了 CSS 数据类型的完整参考。

## 常用数据类型

| 数据类型 | 描述 | 示例 |
|---------|------|------|
| [<color>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/color_value) | 表示颜色值 | \`#f00\`, \`rgb(255, 0, 0)\`, \`red\` |
| [<length>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/length) | 表示距离值 | \`10px\`, \`2em\`, \`5rem\` |
| [<percentage>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/percentage) | 表示百分比值 | \`50%\`, \`100%\` |
| [<time>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/time) | 表示时间值 | \`1s\`, \`500ms\` |
| [<angle>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/angle) | 表示角度值 | \`45deg\`, \`0.25turn\`, \`1rad\` |
| [<string>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/string) | 表示文本字符串 | \`"Hello World"\`, \`'CSS'\` |
| [<url>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/url) | 表示资源链接 | \`url("image.jpg")\` |
| [<integer>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/integer) | 表示整数值 | \`1\`, \`-5\`, \`100\` |
| [<number>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/number) | 表示数字值 | \`0.5\`, \`3\`, \`-1.2\` |

<!-- 此处将根据数据自动生成数据类型表格 -->

## 函数相关数据类型

| 数据类型 | 描述 | 示例 |
|---------|------|------|
| [<gradient>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/gradient) | 表示渐变 | \`linear-gradient(to right, red, blue)\` |
| [<transform-function>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/transform-function) | 表示变换函数 | \`rotate(45deg)\`, \`scale(1.5)\` |
| [<calc-value>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/calc) | 表示计算值 | \`calc(100% - 20px)\` |

<!-- 此处将根据数据自动生成函数相关数据类型表格 -->

## 布局相关数据类型

| 数据类型 | 描述 | 示例 |
|---------|------|------|
| [<position>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/position_value) | 表示位置值 | \`top left\`, \`center\`, \`50% 50%\` |
| [<ratio>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/ratio) | 表示比例值 | \`16/9\`, \`4/3\` |
| [<flex>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/flex_value) | 表示弹性值 | \`1\`, \`2 2 10%\` |
| [<grid>](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/grid_value) | 表示网格值 | \`repeat(3, 1fr)\`, \`minmax(100px, 1fr)\` |

<!-- 此处将根据数据自动生成布局相关数据类型表格 -->

## 使用示例

\`\`\`css
/* 颜色数据类型示例 */
.box {
  color: #ff0000;
  background-color: rgba(0, 0, 255, 0.5);
  border-color: hsl(120, 100%, 50%);
}

/* 长度数据类型示例 */
.container {
  width: 100px;
  margin: 1em;
  padding: 2rem;
  border-width: 0.25em;
}

/* 时间和角度数据类型示例 */
.animated {
  transition: all 0.5s ease;
  transform: rotate(45deg);
  animation-duration: 2s;
}

/* 计算值示例 */
.responsive {
  width: calc(100% - 40px);
  height: calc(100vh - 80px);
  font-size: calc(1rem + 1vw);
}
\`\`\`

## 浏览器兼容性

<!-- 此处将根据数据自动生成兼容性表格 -->

## 相关资源

- [MDN CSS 数据类型](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/CSS_Types)
- [CSS 值与单位](${MDN_BASE_URL}/zh-CN/docs/Learn/CSS/Building_blocks/Values_and_units)
- [CSS 规范](https://www.w3.org/Style/CSS/)
`;

  fs.writeFileSync(filePath, content);
}

// 生成浏览器特定前缀属性参考文档
function generateVendorPrefixReferences() {
  // Mozilla 前缀
  const mozFilePath = path.join(BASE_PATH, '07-浏览器特定前缀', '01-Mozilla前缀.md');
  const mozContent = `---
title: Mozilla 前缀属性
icon: css
order: 1
---

# Mozilla 前缀属性 (-moz-*)

Mozilla 前缀属性是特定于 Firefox 浏览器的 CSS 属性，通常以 \`-moz-\` 开头。本文档提供了 Mozilla 前缀属性的完整参考。

## 属性列表

下面是 Mozilla 前缀属性的完整列表，点击属性名可跳转到 MDN 文档查看详细信息。

| 属性名 | 描述 | 标准属性 |
|-------|------|---------|
| [-moz-appearance](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/-moz-appearance) | 控制元素的原生外观 | \`appearance\` |
| [-moz-user-select](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/user-select) | 控制用户是否可以选择文本 | \`user-select\` |
| [-moz-osx-font-smoothing](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/font-smooth) | 控制文本在 macOS 上的字体平滑 | \`font-smooth\` |

<!-- 此处将根据数据自动生成属性表格 -->

## 使用示例

\`\`\`css
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
\`\`\`

## 最佳实践

1. **优先使用标准属性**：尽可能使用标准 CSS 属性，仅在需要兼容旧版浏览器时使用前缀属性。
2. **自动添加前缀**：考虑使用 Autoprefixer 等工具自动添加必要的浏览器前缀。
3. **渐进增强**：先使用前缀属性，然后使用标准属性覆盖，确保最新的浏览器使用标准实现。

## 相关资源

- [MDN Mozilla 特定属性](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Mozilla_Extensions)
- [Can I Use](https://caniuse.com/) - 检查浏览器支持情况
`;

  fs.writeFileSync(mozFilePath, mozContent);
  
  // WebKit 前缀
  const webkitFilePath = path.join(BASE_PATH, '07-浏览器特定前缀', '02-WebKit前缀.md');
  const webkitContent = `---
title: WebKit 前缀属性
icon: css
order: 2
---

# WebKit 前缀属性 (-webkit-*)

WebKit 前缀属性是特定于基于 WebKit 和 Blink 引擎的浏览器（如 Chrome、Safari）的 CSS 属性，通常以 \`-webkit-\` 开头。本文档提供了 WebKit 前缀属性的完整参考。

## 属性列表

下面是 WebKit 前缀属性的完整列表，点击属性名可跳转到 MDN 文档查看详细信息。

| 属性名 | 描述 | 标准属性 |
|-------|------|---------|
| [-webkit-appearance](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/appearance) | 控制元素的原生外观 | \`appearance\` |
| [-webkit-font-smoothing](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/font-smooth) | 控制文本在 WebKit 浏览器中的字体平滑 | \`font-smooth\` |
| [-webkit-tap-highlight-color](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/-webkit-tap-highlight-color) | 控制移动设备上点击链接时的高亮颜色 | 无标准对应 |
| [-webkit-text-fill-color](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/-webkit-text-fill-color) | 控制文本填充颜色 | 无标准对应 |
| [-webkit-text-stroke](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/-webkit-text-stroke) | 为文本添加描边 | 无标准对应 |
| [-webkit-overflow-scrolling](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/-webkit-overflow-scrolling) | 控制触摸设备上的滚动行为 | 无标准对应 |

<!-- 此处将根据数据自动生成属性表格 -->

## 使用示例

\`\`\`css
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
\`\`\`

## 最佳实践

1. **优先使用标准属性**：尽可能使用标准 CSS 属性，仅在需要兼容特定浏览器时使用前缀属性。
2. **自动添加前缀**：考虑使用 Autoprefixer 等工具自动添加必要的浏览器前缀。
3. **渐进增强**：先使用前缀属性，然后使用标准属性覆盖，确保最新的浏览器使用标准实现。
4. **测试**：在不同的浏览器和设备上测试前缀属性的效果。

## 相关资源

- [MDN WebKit 特定属性](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/WebKit_Extensions)
- [Safari CSS 参考](https://developer.apple.com/library/archive/documentation/AppleApplications/Reference/SafariCSSRef/Introduction.html)
- [Can I Use](https://caniuse.com/) - 检查浏览器支持情况
`;

  fs.writeFileSync(webkitFilePath, webkitContent);
  
  // 其他浏览器前缀
  const otherFilePath = path.join(BASE_PATH, '07-浏览器特定前缀', '03-其他浏览器前缀.md');
  const otherContent = `---
title: 其他浏览器前缀属性
icon: css
order: 3
---

# 其他浏览器前缀属性

除了 Mozilla (-moz-) 和 WebKit (-webkit-) 前缀外，还有其他浏览器特定的前缀属性。本文档提供了这些前缀属性的参考。

## Microsoft 前缀 (-ms-*)

Microsoft 前缀属性是特定于 Internet Explorer 和早期 Edge 浏览器的 CSS 属性，通常以 \`-ms-\` 开头。

| 属性名 | 描述 | 标准属性 |
|-------|------|---------|
| [-ms-transform](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/transform) | 控制元素的变换 | \`transform\` |
| [-ms-filter](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/filter) | 应用视觉效果 | \`filter\` |
| [-ms-flex](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/flex) | 控制弹性布局 | \`flex\` |
| [-ms-user-select](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/user-select) | 控制用户是否可以选择文本 | \`user-select\` |

<!-- 此处将根据数据自动生成 Microsoft 前缀属性表格 -->

## Opera 前缀 (-o-*)

Opera 前缀属性是特定于旧版 Opera 浏览器的 CSS 属性，通常以 \`-o-\` 开头。现代 Opera 浏览器基于 Chromium，使用 -webkit- 前缀。

| 属性名 | 描述 | 标准属性 |
|-------|------|---------|
| [-o-transform](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/transform) | 控制元素的变换 | \`transform\` |
| [-o-transition](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/transition) | 控制属性变化的过渡效果 | \`transition\` |
| [-o-animation](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/animation) | 控制元素的动画 | \`animation\` |

<!-- 此处将根据自动生成 Opera 前缀属性表格 -->

## 使用示例

\`\`\`css
/* Microsoft 前缀属性示例 */
.ie-flex-container {
  display: -ms-flexbox; /* IE 10 */
  -ms-flex-direction: row;
}

.ie-transform {
  -ms-transform: rotate(45deg); /* IE 9 */
}

/* Opera 前缀属性示例（旧版 Opera） */
.opera-animation {
  -o-animation: fadeIn 1s ease-in; /* 旧版 Opera */
}

/* 跨浏览器兼容性示例 */
.cross-browser {
  /* 变换 */
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -o-transform: rotate(45deg);
  transform: rotate(45deg);
  
  /* 过渡 */
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  transition: all 0.3s ease;
}
\`\`\`

## 最佳实践

1. **使用 Autoprefixer**：手动添加所有浏览器前缀很容易出错且难以维护。使用 Autoprefixer 等工具可以根据目标浏览器自动添加必要的前缀。

2. **按顺序添加前缀**：如果手动添加前缀，请按照以下顺序添加，确保标准属性位于最后（这样在支持标准属性的浏览器中会覆盖前缀版本）：
   \`\`\`css
   .element {
     -webkit-property: value;
     -moz-property: value;
     -ms-property: value;
     -o-property: value;
     property: value;
   }
  \`\`\`

3. **避免过度使用**：只在必要时使用前缀属性。随着浏览器标准的发展，许多前缀属性已经不再需要。

4. **查询兼容性**：使用 [Can I Use](https://caniuse.com/) 等工具检查属性的浏览器支持情况，确定是否需要使用前缀。

## 相关资源

- [MDN CSS 浏览器兼容性](${MDN_BASE_URL}/zh-CN/docs/Web/CSS/Browser_compatibility)
- [Autoprefixer](https://github.com/postcss/autoprefixer)
- [Can I Use](https://caniuse.com/)
- [CSS 前缀指南](https://developer.mozilla.org/zh-CN/docs/Glossary/Vendor_Prefix)
`;

  fs.writeFileSync(otherFilePath, otherContent);
}

// 主函数
function main() {
  // 创建目录结构
  createReferenceStructure();
  
  // 生成文档
  generateReadme();
  generatePropertyReferences();
  generateSelectorReferences();
  generatePseudoReferences();
  generateAtRuleReferences();
  generateFunctionReferences();
  generateDataTypeReferences();
  generateVendorPrefixReferences();
  
  console.log('CSS 参考文档生成完成！');
}

// 执行主函数
main();