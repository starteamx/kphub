#!/bin/bash

# 创建CSS预处理器知识库目录结构的脚本
# 此脚本将在/Users/guanrunbai/my/kphub/src/frontend/CSS/预处理器/目录下创建完整的知识库结构

# 基础路径
BASE_PATH="/Users/guanrunbai/my/kphub/src/frontend/CSS/预处理器"

# 创建基础目录
mkdir -p "$BASE_PATH"
mkdir -p "$BASE_PATH/SCSS-SASS/3. 核心功能"
mkdir -p "$BASE_PATH/SCSS-SASS/4. 高级主题"
mkdir -p "$BASE_PATH/SCSS-SASS/5. 工程实践"
mkdir -p "$BASE_PATH/LESS"

# 创建README.md
cat > "$BASE_PATH/README.md" << 'EOF'
---
title: CSS预处理器
icon: css
order: 1
---

# CSS预处理器

CSS预处理器是一种特殊的编程语言，它扩展了CSS语言，添加了诸如变量、嵌套规则、混入(mixins)、函数等功能，使CSS更加强大和灵活。预处理器可以帮助开发者编写更加结构化、可维护的CSS代码，并提高开发效率。

## 主要预处理器

本目录包含以下主要CSS预处理器的详细介绍：

- **[SCSS/SASS](./SCSS-SASS/)** - 最流行的CSS预处理器，提供了强大的功能和灵活的语法
- **[LESS](./LESS/)** - 一种向后兼容的CSS扩展语言，易于学习，可在浏览器中运行

<!-- 更多内容... -->
EOF

# 创建SCSS/SASS文档
cat > "$BASE_PATH/SCSS-SASS/1. 基础概念.md" << 'EOF'
---
title: 基础概念
icon: css
order: 1
---

# SCSS/SASS基础概念

## Sass/SCSS的定义与历史演进

Sass(Syntactically Awesome Style Sheets)是一种CSS预处理器，最初由Hampton Catlin设计并由Natalie Weizenbaum开发。它于2006年首次发布，是最早的CSS预处理器之一，经过多年发展已成为最流行的CSS扩展语言。

<!-- 更多内容... -->

## .sass与.scss语法差异对比

Sass有两种语法格式：

1. **原始语法(.sass文件)**：使用缩进而非花括号和分号
2. **SCSS语法(.scss文件)**：使用与CSS相似的花括号和分号

<!-- 更多内容... -->

## 预处理器核心价值

Sass/SCSS通过以下核心功能扩展了CSS的能力：

- **变量系统**：定义和重用颜色、字体等值
- **模块化**：将样式分割为多个文件，便于管理
- **代码复用**：通过混入和函数减少重复代码

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/SCSS-SASS/2. 安装与环境配置.md" << 'EOF'
---
title: 安装与环境配置
icon: css
order: 2
---

# SCSS/SASS安装与环境配置

## 多平台安装方法

Sass/SCSS有多种安装方式，适合不同的开发环境和需求：

### npm安装

```bash
npm install -g sass
# 或项目内安装
npm install --save-dev sass
```

<!-- 更多内容... -->

## 编译方式对比

### 命令行编译

```bash
sass input.scss output.css
```

<!-- 更多内容... -->

## 环境问题排查

### 版本冲突

当项目依赖不同版本的Sass时可能出现冲突，解决方法包括：

<!-- 更多内容... -->
EOF

# 创建SCSS/SASS核心功能文档
cat > "$BASE_PATH/SCSS-SASS/3. 核心功能/3.1 变量系统.md" << 'EOF'
---
title: 变量系统
icon: css
order: 1
---

# SCSS/SASS变量系统

## 作用域规则

Sass变量的作用域可以是局部的或全局的：

```scss
$primary-color: #333; // 全局变量

.container {
  $secondary-color: #666; // 局部变量
  color: $primary-color;
  background-color: $secondary-color;
}

// $secondary-color在此处不可用
```

<!-- 更多内容... -->

## 默认值与动态赋值

### !default标志

使用`!default`可以设置变量的默认值，只有当变量未定义或值为null时才会生效：

```scss
$base-color: blue !default;
```

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/SCSS-SASS/3. 核心功能/3.2 嵌套规则.md" << 'EOF'
---
title: 嵌套规则
icon: css
order: 2
---

# SCSS/SASS嵌套规则

## 选择器嵌套的隐式父子关系

Sass允许以嵌套的方式编写CSS选择器，反映HTML的层次结构：

```scss
nav {
  background-color: #333;
  
  ul {
    margin: 0;
    padding: 0;
    list-style: none;
  }
  
  li {
    display: inline-block;
  }
  
  a {
    display: block;
    padding: 6px 12px;
    text-decoration: none;
  }
}
```

<!-- 更多内容... -->

## &符号的进阶用法

`&`符号代表父选择器，可用于创建更复杂的选择器：

```scss
.button {
  &:hover {
    background-color: #0056b3;
  }
  
  &--primary {
    background-color: #007bff;
  }
  
  &--secondary {
    background-color: #6c757d;
  }
}
```

<!-- 更多内容... -->
EOF

# 创建更多SCSS/SASS文档(简化版)
cat > "$BASE_PATH/SCSS-SASS/3. 核心功能/3.3 混入(Mixins).md" << 'EOF'
---
title: 混入(Mixins)
icon: css
order: 3
---

# SCSS/SASS混入(Mixins)

## 参数化模板

Sass混入允许创建可重用的样式片段，支持参数传递：

```scss
@mixin button($bg-color, $text-color: white) {
  background-color: $bg-color;
  color: $text-color;
  padding: 10px 15px;
  border: none;
  border-radius: 4px;
}

.primary-button {
  @include button(#007bff);
}

.secondary-button {
  @include button(#6c757d, #333);
}
```

<!-- 更多内容... -->
EOF

# 创建LESS文档
cat > "$BASE_PATH/LESS/1. 基础语法与核心特性.md" << 'EOF'
---
title: 基础语法与核心特性
icon: css
order: 1
---

# LESS基础语法与核心特性

## 快速入门

### LESS简介

LESS(Leaner Style Sheets)是一种CSS预处理语言，它扩展了CSS，增加了变量、混合、函数等特性。LESS可以运行在客户端或服务器端。

<!-- 更多内容... -->

### 安装与环境配置

LESS可以通过npm安装：

```bash
npm install -g less
```

<!-- 更多内容... -->

### 编译工具

LESS可以通过多种方式编译：

```bash
# 命令行编译
lessc styles.less styles.css
```

<!-- 更多内容... -->

## 核心语法

### 变量系统

LESS使用@符号定义变量：

```less
@primary-color: #007bff;

.button {
  background-color: @primary-color;
  color: white;
}
```

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/LESS/2. 函数库详解.md" << 'EOF'
---
title: 函数库详解
icon: css
order: 2
---

# LESS函数库详解

## 字符串函数

LESS提供了多种处理字符串的函数：

```less
@escaped: escape("a=1");
// 结果: a%3D1

@unescaped: e("a=1");
// 结果: a=1

@replaced: replace("Hello, Mars", "Mars", "World");
// 结果: Hello, World
```

<!-- 更多内容... -->

## 列表函数

LESS提供了处理列表的函数：

```less
@list: "a", "b", "c";
@length: length(@list); // 结果: 3
@item: extract(@list, 2); // 结果: "b"
```

<!-- 更多内容... -->
EOF

# 创建更多LESS文档(简化版)
cat > "$BASE_PATH/LESS/3. 高级特性与模式.md" << 'EOF'
---
title: 高级特性与模式
icon: css
order: 3
---

# LESS高级特性与模式

## 动态规则集

LESS支持分离规则集，可以将规则集赋值给变量：

```less
@detached-ruleset: {
  background-color: red;
  .nested {
    color: white;
  }
};

.component {
  @detached-ruleset();
}
```

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/LESS/4. 工具与工程化.md" << 'EOF'
---
title: 工具与工程化
icon: css
order: 4
---

# LESS工具与工程化

## 编译工具

### Less.js使用详解

Less.js是LESS的官方JavaScript实现，可以在浏览器中直接使用：

```html
<link rel="stylesheet/less" type="text/css" href="styles.less" />
<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/3.11.1/less.min.js"></script>
```

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/LESS/5. 最佳实践.md" << 'EOF'
---
title: 最佳实践
icon: css
order: 5
---

# LESS最佳实践

## 代码组织

### 变量集中管理

推荐将所有变量集中在一个或多个专用文件中：

```less
// variables.less
@primary-color: #007bff;
@secondary-color: #6c757d;
@font-family-base: 'Helvetica Neue', Arial, sans-serif;

// 在其他文件中导入
@import "variables.less";
```

<!-- 更多内容... -->

## 响应式设计

### 断点变量与媒体查询抽象

使用变量和混合来管理响应式断点：

```less
@screen-sm: 576px;
@screen-md: 768px;
@screen-lg: 992px;
@screen-xl: 1200px;

.for-phone-only(@content) {
  @media (max-width: @screen-sm - 1) { @content(); }
}

.for-tablet-up(@content) {
  @media (min-width: @screen-sm) { @content(); }
}
```

<!-- 更多内容... -->

## 主题化方案

### 多主题切换实现

LESS可以通过变量覆盖实现主题切换：

```less
// theme-light.less
@import "variables.less";
@import "components.less";

// theme-dark.less
@primary-color: #375a7f;
@background-color: #222;
@text-color: #fff;
@import "variables.less";
@import "components.less";
```

<!-- 更多内容... -->

## 关键文档定位

### 变量高级用法

关于变量的高级用法，请参考LESS官方文档的"Variables"章节。

<!-- 更多内容... -->
EOF

# 创建其他必要的SCSS/SASS文档
cat > "$BASE_PATH/SCSS-SASS/3. 核心功能/3.4 继承(Extend).md" << 'EOF'
---
title: 继承(Extend)
icon: css
order: 4
---

# SCSS/SASS继承(Extend)

## %placeholder占位符

Sass中的占位符选择器以%开头，只有被@extend时才会生成CSS：

```scss
%button-base {
  padding: 10px 15px;
  border: none;
  border-radius: 4px;
}

.primary-button {
  @extend %button-base;
  background-color: #007bff;
}

.secondary-button {
  @extend %button-base;
  background-color: #6c757d;
}
```

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/SCSS-SASS/3. 核心功能/3.5 函数(Functions).md" << 'EOF'
---
title: 函数(Functions)
icon: css
order: 5
---

# SCSS/SASS函数(Functions)

Sass提供了丰富的内置函数，也支持自定义函数：

```scss
// 自定义函数
@function calculate-width($col-span, $total-cols: 12) {
  @return percentage($col-span / $total-cols);
}

.sidebar {
  width: calculate-width(3); // 25%
}

.main-content {
  width: calculate-width(9); // 75%
}
```

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/SCSS-SASS/3. 核心功能/3.6 模块化.md" << 'EOF'
---
title: 模块化
icon: css
order: 6
---

# SCSS/SASS模块化

## @use vs @import

Sass模块系统推荐使用@use替代@import：

```scss
// _colors.scss
$primary: #007bff;
$secondary: #6c757d;

// main.scss
@use 'colors';
.button {
  background-color: colors.$primary;
  color: white;
}
```

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/SCSS-SASS/3. 核心功能/3.7 控制指令.md" << 'EOF'
---
title: 控制指令
icon: css
order: 7
---

# SCSS/SASS控制指令

## 条件语句(@if/@else)

Sass支持条件逻辑，可以根据条件生成不同的样式：

```scss
$theme: 'dark';

.button {
  @if $theme == 'dark' {
    background-color: #333;
    color: white;
  } @else if $theme == 'light' {
    background-color: #f8f9fa;
    color: #333;
  } @else {
    background-color: #007bff;
    color: white;
  }
}
```

## 循环语句

### @for循环

```scss
@for $i from 1 through 3 {
  .col-#{$i} {
    width: 100% / $i;
  }
}
```

### @each循环

```scss
$colors: (primary: #007bff, secondary: #6c757d, success: #28a745);

@each $name, $color in $colors {
  .text-#{$name} {
    color: $color;
  }
}
```

### @while循环

```scss
$i: 6;
@while $i > 0 {
  .item-#{$i} {
    width: 2em * $i;
  }
  $i: $i - 2;
}
```

<!-- 更多内容... -->
EOF

# 创建高级主题文档
cat > "$BASE_PATH/SCSS-SASS/4. 高级主题/4.1 源码调试与Source Maps.md" << 'EOF'
---
title: 源码调试与Source Maps
icon: css
order: 1
---

# 源码调试与Source Maps

## 浏览器中调试Sass源码

Source Maps允许浏览器开发工具将编译后的CSS映射回原始的Sass源文件，便于调试：

```bash
# 生成带有Source Maps的CSS
sass --source-map input.scss output.css
```

## 配置Source Maps

在项目中配置Source Maps：

```scss
// 在Sass文件中控制Source Maps
@debug "This message will appear in the console";
```

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/SCSS-SASS/4. 高级主题/4.2 性能优化策略.md" << 'EOF'
---
title: 性能优化策略
icon: css
order: 2
---

# 性能优化策略

## 避免嵌套过深

过深的选择器嵌套会导致CSS选择器过长，影响性能：

```scss
// 不推荐
.container {
  .header {
    .navigation {
      .menu {
        .item {
          a {
            color: red;
          }
        }
      }
    }
  }
}

// 推荐
.container .menu-item-link {
  color: red;
}
```

## 减少@extend滥用

过度使用@extend可能导致生成大量的选择器组合：

```scss
// 谨慎使用@extend
%button {
  padding: 10px 15px;
  border-radius: 4px;
}

.primary-button {
  @extend %button;
  background-color: #007bff;
}
```

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/SCSS-SASS/4. 高级主题/4.3 与现代工具链集成.md" << 'EOF'
---
title: 与现代工具链集成
icon: css
order: 3
---

# 与现代工具链集成

## Vite配置

在Vite项目中配置Sass：

```javascript
// vite.config.js
export default {
  css: {
    preprocessorOptions: {
      scss: {
        additionalData: `@import "./src/styles/variables.scss";`
      }
    }
  }
}
```

## Webpack配置

在Webpack项目中配置Sass：

```javascript
// webpack.config.js
module.exports = {
  module: {
    rules: [
      {
        test: /\.scss$/,
        use: [
          'style-loader',
          'css-loader',
          {
            loader: 'sass-loader',
            options: {
              // Sass选项
              sassOptions: {
                includePaths: ['./src/styles']
              }
            }
          }
        ]
      }
    ]
  }
};
```

## PostCSS插件链配合

将Sass与PostCSS插件结合使用：

```javascript
// postcss.config.js
module.exports = {
  plugins: [
    require('autoprefixer'),
    require('cssnano')
  ]
}
```

<!-- 更多内容... -->
EOF

# 创建工程实践文档
cat > "$BASE_PATH/SCSS-SASS/5. 工程实践/5.1 编码规范.md" << 'EOF'
---
title: 编码规范
icon: css
order: 1
---

# 编码规范

## 7-1模式目录结构

7-1模式是一种流行的Sass项目结构组织方式，包含7个文件夹和1个主文件：

```
sass/
|
|– abstracts/
|   |– _variables.scss    # 变量
|   |– _functions.scss    # 函数
|   |– _mixins.scss       # 混入
|   |– _placeholders.scss # 占位符
|
|– base/
|   |– _reset.scss        # 重置/标准化
|   |– _typography.scss   # 排版规则
|
|– components/
|   |– _buttons.scss      # 按钮
|   |– _carousel.scss     # 轮播
|   |– _dropdown.scss     # 下拉菜单
|
|– layout/
|   |– _navigation.scss   # 导航
|   |– _grid.scss         # 网格系统
|   |– _header.scss       # 头部
|   |– _footer.scss       # 底部
|   |– _forms.scss        # 表单
|
|– pages/
|   |– _home.scss         # 首页样式
|   |– _about.scss        # 关于页样式
|
|– themes/
|   |– _theme.scss        # 默认主题
|   |– _admin.scss        # 管理员主题
|
|– vendors/
|   |– _bootstrap.scss    # Bootstrap
|   |– _jquery-ui.scss    # jQuery UI
|
|– main.scss              # 主Sass文件
```

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/SCSS-SASS/5. 工程实践/5.2 框架集成.md" << 'EOF'
---
title: 框架集成
icon: css
order: 2
---

# 框架集成

## React配置示例

在React项目中配置Sass：

```javascript
// 使用Create React App
// 安装依赖
// npm install sass

// 直接导入.scss文件
import './styles.scss';

// 在组件中使用
function App() {
  return (
    <div className="app">
      <button className="button button--primary">点击我</button>
    </div>
  );
}
```

## Vue配置示例

在Vue项目中配置Sass：

```javascript
// vue.config.js
module.exports = {
  css: {
    loaderOptions: {
      sass: {
        additionalData: `@import "@/styles/variables.scss";`
      }
    }
  }
}
```

```vue
<!-- 组件中使用 -->
<template>
  <div class="container">
    <button class="button">点击我</button>
  </div>
</template>

<style lang="scss">
.container {
  .button {
    background-color: $primary-color;
    color: white;
  }
}
</style>
```

<!-- 更多内容... -->
EOF

cat > "$BASE_PATH/SCSS-SASS/5. 工程实践/5.3 常见编译错误解决方案.md" << 'EOF'
---
title: 常见编译错误解决方案
icon: css
order: 3
---

# 常见编译错误解决方案

## 语法错误

### 缺少分号或花括号

```scss
// 错误
.container {
  color: red
  background-color: white

// 正确
.container {
  color: red;
  background-color: white;
}
```

## 路径错误

### 导入文件路径错误

```scss
// 错误
@import "variables"; // 找不到文件

// 正确
@import "./variables"; // 相对路径
// 或
@import "abstracts/variables"; // 从Sass路径查找
```

## 依赖缺失

### 使用未定义的变量

```scss
// 错误
.button {
  color: $primary-color; // 变量未定义
}

// 正确
$primary-color: #007bff;

.button {
  color: $primary-color;
}
```

<!-- 更多内容... -->
EOF

# 创建资源推荐文档
cat > "$BASE_PATH/SCSS-SASS/6. 资源推荐.md" << 'EOF'
---
title: 资源推荐
icon: css
order: 6
---

# 资源推荐

## 官方文档精读

- [Sass官方文档](https://sass-lang.com/documentation/) - 完整的Sass语言参考
- [Sass模块系统](https://sass-lang.com/documentation/modules/) - 详细了解@use和@forward
- [Sass函数库](https://sass-lang.com/documentation/modules/math) - 内置函数参考

## 最佳实践案例库

- [Bootstrap源码分析](https://github.com/twbs/bootstrap) - 学习大型项目如何组织Sass代码
- [Foundation框架](https://github.com/foundation/foundation-sites) - 另一个优秀的Sass项目示例
- [Sass Guidelines](https://sass-guidelin.es/) - 高质量Sass编码指南

## 常见问题FAQ

### 变量不生效

问题：定义的变量在某些地方不可用
解决：检查变量作用域，确保在使用前定义，或使用!global标志

### 编译速度慢

问题：大型项目Sass编译变得缓慢
解决：减少嵌套深度，优化@extend使用，考虑使用Dart Sass

### 中文注释乱码

问题：编译后中文注释显示乱码
解决：确保源文件使用UTF-8编码，并在编译选项中指定编码

<!-- 更多内容... -->
EOF

echo "CSS预处理器知识库目录结构创建完成！"
