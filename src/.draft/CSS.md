https://developer.mozilla.org/zh-CN/docs/Web/CSS

## 常用数据类型

| 数据类型 | 描述 | 示例 |
|---------|------|------|
| [<color>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/color_value) | 表示颜色值 | `#f00`, `rgb(255, 0, 0)`, `red` |
| [<length>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/length) | 表示距离值 | `10px`, `2em`, `5rem` |
| [<percentage>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/percentage) | 表示百分比值 | `50%`, `100%` |
| [<time>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/time) | 表示时间值 | `1s`, `500ms` |
| [<angle>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/angle) | 表示角度值 | `45deg`, `0.25turn`, `1rad` |
| [<string>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/string) | 表示文本字符串 | `"Hello World"`, `'CSS'` |
| [<url>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/url) | 表示资源链接 | `url("image.jpg")` |
| [<integer>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/integer) | 表示整数值 | `1`, `-5`, `100` |
| [<number>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/number) | 表示数字值 | `0.5`, `3`, `-1.2` |

<!-- 此处将根据数据自动生成数据类型表格 -->

## 函数相关数据类型

| 数据类型 | 描述 | 示例 |
|---------|------|------|
| [<gradient>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/gradient) | 表示渐变 | `linear-gradient(to right, red, blue)` |
| [<transform-function>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/transform-function) | 表示变换函数 | `rotate(45deg)`, `scale(1.5)` |
| [<calc-value>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/calc) | 表示计算值 | `calc(100% - 20px)` |

<!-- 此处将根据数据自动生成函数相关数据类型表格 -->

## 布局相关数据类型

| 数据类型 | 描述 | 示例 |
|---------|------|------|
| [<position>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/position_value) | 表示位置值 | `top left`, `center`, `50% 50%` |
| [<ratio>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/ratio) | 表示比例值 | `16/9`, `4/3` |
| [<flex>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/flex_value) | 表示弹性值 | `1`, `2 2 10%` |
| [<grid>](https://developer.mozilla.org/zh-CN/docs/Web/CSS/grid_value) | 表示网格值 | `repeat(3, 1fr)`, `minmax(100px, 1fr)` |

<!-- 此处将根据数据自动生成布局相关数据类型表格 -->

## 使用示例

```css
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
```

## 浏览器兼容性

<!-- 此处将根据数据自动生成兼容性表格 -->

## 相关资源

- [MDN CSS 数据类型](https://developer.mozilla.org/zh-CN/docs/Web/CSS/CSS_Types)
- [CSS 值与单位](https://developer.mozilla.org/zh-CN/docs/Learn/CSS/Building_blocks/Values_and_units)
- [CSS 规范](https://www.w3.org/Style/CSS/)


预处理器/
├── SCSS-SASS/
│   ├── 1. 基础概念
│   ├── 2. 安装与环境配置
│   ├── 3. 核心功能
│   │   ├── 3.1 变量系统
│   │   ├── 3.2 嵌套规则
│   │   ├── 3.3 混入（Mixins）
│   │   ├── 3.4 继承（Extend）
│   │   ├── 3.5 函数（Functions）
│   │   ├── 3.6 模块化（@use与@forward）
│   │   └── 3.7 控制指令（条件/循环）
│   ├── 4. 高级主题
│   │   ├── 4.1 源码调试与Source Maps
│   │   ├── 4.2 性能优化策略
│   │   └── 4.3 与现代工具链集成（Vite/Webpack）
│   ├── 5. 工程实践
│   │   ├── 5.1 编码规范（目录结构、命名约定）
│   │   ├── 5.2 框架集成（React/Vue配置示例）
│   │   └── 5.3 常见编译错误解决方案
│   └── 6. 资源推荐
│       ├── 官方文档精读
│       ├── 最佳实践案例库
│       └── 常见问题FAQ
└── LESS
​关键设计逻辑
1. ​基础概念​（快速建立认知）
Sass/SCSS的定义与历史演进
.sass与.scss语法差异对比（缩进语法 vs 类CSS语法）
预处理器核心价值：变量、模块化、代码复用
2. ​安装与环境配置​（降低上手门槛）
多平台安装：npm (sass)、VS Code插件、独立Dart编译
编译方式对比：命令行编译 vs 构建工具集成
环境问题排查：版本冲突、路径错误处理
3. ​核心功能分层讲解​（渐进式深入）
​变量系统​
作用域规则（局部 vs !global覆盖）
默认值（!default）与动态赋值
​嵌套规则​
选择器嵌套的隐式父子关系
&符号的进阶用法（生成BEM类名）
​混入（Mixins）​
参数化模板：必填参数、默认参数、不定长参数
@content动态内容块（媒体查询封装案例）
​继承（Extend）​
%placeholder占位符的编译优化原理
与混入的性能对比（适用场景分析）
​模块化
@use vs @import的弃用原因（命名空间隔离）
别名配置与私有成员（-前缀变量）
4. ​高级主题​（提升工程效率）
​源码调试：浏览器中直接调试Sass源码（需Source Maps）
​性能优化：避免嵌套过深、减少@extend滥用
​工具链集成：PostCSS插件链配合（Autoprefixer、CSSnano）
5. ​工程实践​（贴近真实开发）
目录结构规范：7-1模式（Base/Components/Utils分层）
React/Vue配置示例：vue.config.js中Sass全局变量注入
编译错误分类：语法错误、路径错误、依赖缺失
6. ​资源推荐​（持续学习引导）
官方文档精读：模块系统、函数库等核心章节
最佳实践案例：Bootstrap源码分析、企业级样式库设计
高频FAQ：变量不生效、编译速度慢、中文注释乱码
以下是基于提供的LESS文档内容整理的二级知识库目录结构：

​LESS知识库目录
一、基础语法与核心特性
​快速入门

LESS简介（CSS扩展语言）
安装与环境配置
编译工具（Less.js、构建工具集成）
​核心语法

变量（Variables）
变量定义与作用域
变量插值（选择器、URL、属性名）
混合（Mixins）
基础混合与参数传递
命名空间与访问符
混合守卫（Guarded Mixins）
嵌套（Nesting）
规则集嵌套
父选择符 & 的用法
运算（Operations）
单位转换与计算规则
颜色运算与函数替代
转义（Escaping）
字符串转义语法 ~""
​高级特性

扩展（Extend）
选择器继承与经典用例
减少CSS体积的优化策略
合并（Merge）
逗号合并与空格合并
条件与循环
守卫表达式（Guards）
递归混合实现循环
二、函数库详解
​字符串函数
escape()、e()、replace() 等
​列表函数
length()、extract()、range()、each()
​数学函数
基础运算（ceil、floor、percentage）
三角函数（sin、cos、atan）
高级运算（sqrt、pow、mod）
​类型判断函数
isnumber()、iscolor()、isunit() 等
​颜色函数
定义函数（rgb()、hsl()、hsv()）
通道操作（hue()、saturation()、alpha()）
颜色混合（mix()、tint()、shade()）
对比度计算（contrast()）
三、高级特性与模式
​动态规则集
分离规则集（Detached Rulesets）
规则集作为参数传递
​映射（Maps）​
使用混合或变量模拟键值对
动态键名访问（@map[@key]）
​模块化与作用域
命名空间管理
私有变量与混合
​媒体查询与冒泡
@media 嵌套与冒泡规则
条件式媒体查询生成
四、工具与工程化
​编译工具
Less.js 使用详解
命令行编译选项
​插件系统
自定义函数开发
插件作用域与安装流程
​性能优化
代码分割与按需加载
缓存策略与编译加速
五、最佳实践
​代码组织
变量集中管理
混合库设计模式
​响应式设计
断点变量与媒体查询抽象
自适应单位计算
​主题化方案
多主题切换实现
动态样式覆盖策略
​关键文档定位
​变量高级用法：链接4 → "Variables"章节
​函数全集：链接3 → 各函数分类说明
​扩展与性能：链接1 → "Extend"与"Merge"部分
​工程化配置：链接4 → "Using Less.js"指南
此目录体系覆盖LESS的核心语法、函数库、高级模式及工程实践，可作为系统学习的结构化路径。


以下是提取的文字部分形成的树形目录：
### CSS 指南
- [指南](/zh-CN/docs/Web/CSS/Guides)
  - **动画**
    - [使用 CSS 动画](/zh-CN/docs/Web/CSS/CSS_animations/Using_CSS_animations)
  - **背景和边框**
    - [多个背景的应用](/zh-CN/docs/Web/CSS/CSS_backgrounds_and_borders/Using_multiple_backgrounds)
    - [调整背景图片的大小](/zh-CN/docs/Web/CSS/CSS_backgrounds_and_borders/Resizing_background_images)
  - **盒对齐**
    - [块布局中的盒对齐方式](/zh-CN/docs/Web/CSS/CSS_box_alignment/Box_alignment_in_block_abspos_tables)
    - [弹性盒布局中的盒对齐方式](/zh-CN/docs/Web/CSS/CSS_box_alignment/Box_alignment_in_flexbox)
    - [Box alignment in grid layout](/en-US/docs/Web/CSS/CSS_box_alignment/Box_alignment_in_grid_layout)（仅限英文）
    - [Box alignment in multi-column layout](/en-US/docs/Web/CSS/CSS_box_alignment/Box_alignment_in_multi-column_layout)（仅限英文）
  - **盒模型**
    - [CSS 基础框盒模型介绍](/zh-CN/docs/Web/CSS/CSS_box_model/Introduction_to_the_CSS_box_model)
    - [掌握外边距折叠](/zh-CN/docs/Web/CSS/CSS_box_model/Mastering_margin_collapsing)
  - **颜色**
    - [为 HTML 元素应用颜色](/zh-CN/docs/Web/CSS/CSS_colors/Applying_color)
    - [Color values](/en-US/docs/Web/CSS/CSS_colors/Color_values)（仅限英文）
    - [Using relative colors](/en-US/docs/Web/CSS/CSS_colors/Relative_colors)（仅限英文）
    - [Using color wisely](/en-US/docs/Web/CSS/CSS_colors/Using_color_wisely)（仅限英文）
    - [无障碍：理解颜色和亮度](/zh-CN/docs/Web/Accessibility/Understanding_Colors_and_Luminance)
    - [Web 无障碍：色彩对比度](/en-US/docs/Web/Accessibility/Understanding_WCAG/Perceivable/Color_contrast)（仅限英文）
  - **多列**
    - [Basic Concepts of Multicol](/zh-CN/docs/Web/CSS/CSS_multicol_layout/Basic_concepts)
    - [多列布局的样式](/zh-CN/docs/Web/CSS/CSS_multicol_layout/Styling_columns)
    - [Spanning and balancing columns](/en-US/docs/Web/CSS/CSS_multicol_layout/Spanning_balancing_columns)（仅限英文）
    - [处理 Multicol 中的溢出](/zh-CN/docs/Web/CSS/CSS_multicol_layout/Handling_overflow_in_multicol_layout)
    - [Handling content breaks in multi-column layout](/en-US/docs/Web/CSS/CSS_multicol_layout/Handling_content_breaks_in_multicol_layout)（仅限英文）
  - **条件规则**
    - [使用特性查询](/zh-CN/docs/Web/CSS/CSS_conditional_rules/Using_feature_queries)
  - **CSS 局限**
    - [使用 CSS 局限](/zh-CN/docs/Web/CSS/CSS_containment/Using_CSS_containment)
    - [CSS 容器查询](/zh-CN/docs/Web/CSS/CSS_containment/Container_queries)
    - [Using container size and style queries](/en-US/docs/Web/CSS/CSS_containment/Container_size_and_style_queries)（仅限英文）
  - **CSS 对象模型视图**
    - [坐标系](/zh-CN/docs/Web/CSS/CSSOM_view/Coordinate_systems)
  - **流式布局**
    - [常规流中的块和内联布局](/zh-CN/docs/Web/CSS/CSS_display/Block_and_inline_layout_in_normal_flow)
    - [应用或脱离流式布局](/zh-CN/docs/Web/CSS/CSS_display/In_flow_and_out_of_flow)
    - [格式化上下文简介](/zh-CN/docs/Web/CSS/CSS_display/Introduction_to_formatting_contexts)
    - [流式布局和书写模式](/zh-CN/docs/Web/CSS/CSS_display/Flow_layout_and_writing_modes)
    - [流式布局和溢出](/zh-CN/docs/Web/CSS/CSS_display/Flow_layout_and_overflow)
    - [Using the multi-keyword syntax with CSS display](/en-US/docs/Web/CSS/CSS_display/multi-keyword_syntax_of_display)（仅限英文）
  - **弹性盒布局**
    - [flex 布局的基本概念](/zh-CN/docs/Web/CSS/CSS_flexible_box_layout/Basic_concepts_of_flexbox)
    - [弹性盒子与其他布局方法的联系](/zh-CN/docs/Web/CSS/CSS_flexible_box_layout/Relationship_of_flexbox_to_other_layout_methods)
    - [对齐弹性容器中的项目](/zh-CN/docs/Web/CSS/CSS_flexible_box_layout/Aligning_items_in_a_flex_container)
    - [Flex 项排序](/zh-CN/docs/Web/CSS/CSS_flexible_box_layout/Ordering_flex_items)
    - [控制弹性元素在主轴上的比例](/zh-CN/docs/Web/CSS/CSS_flexible_box_layout/Controlling_ratios_of_flex_items_along_the_main_axis)
    - [掌握弹性物件的包装](/zh-CN/docs/Web/CSS/CSS_flexible_box_layout/Mastering_wrapping_of_flex_items)
    - [弹性盒子的典型用例](/zh-CN/docs/Web/CSS/CSS_flexible_box_layout/Typical_use_cases_of_flexbox)
  - **字体**
    - [OpenType 字体特性指南](/zh-CN/docs/Web/CSS/CSS_fonts/OpenType_fonts_guide)
    - [Variable fonts guide](/zh-CN/docs/Web/CSS/CSS_fonts/Variable_fonts_guide)
  - **网格布局**
    - [网格布局的基本概念](/zh-CN/docs/Web/CSS/CSS_grid_layout/Basic_concepts_of_grid_layout)
    - [网格布局和其他布局方法的联系](/zh-CN/docs/Web/CSS/CSS_grid_layout/Relationship_of_grid_layout_with_other_layout_methods)
    - [CSS 网格中基于线的定位](/zh-CN/docs/Web/CSS/CSS_grid_layout/Grid_layout_using_line-based_placement)
    - [网格模板区域](/zh-CN/docs/Web/CSS/CSS_grid_layout/Grid_template_areas)
    - [使用命名线布局](/zh-CN/docs/Web/CSS/CSS_grid_layout/Grid_layout_using_named_grid_lines)
    - [CSS 网格布局中的自动定位](/zh-CN/docs/Web/CSS/CSS_grid_layout/Auto-placement_in_grid_layout)
    - [网格布局中的盒模型对齐](/zh-CN/docs/Web/CSS/CSS_grid_layout/Box_alignment_in_grid_layout)
    - [CSS 网格，逻辑值和书写模式](/zh-CN/docs/Web/CSS/CSS_grid_layout/Grids_logical_values_and_writing_modes)
    - [CSS 网格布局和无障碍](/zh-CN/docs/Web/CSS/CSS_grid_layout/Grid_layout_and_accessibility)
    - [利用 CSS 网格布局实现常用布局](/zh-CN/docs/Web/CSS/CSS_grid_layout/Realizing_common_layouts_using_grids)
    - [Subgrid](/en-US/docs/Web/CSS/CSS_grid_layout/Subgrid)（仅限英文）
    - [Masonry layout](/en-US/docs/Web/CSS/CSS_grid_layout/Masonry_layout)（仅限英文，实验性）
  - **图片**
    - [使用 CSS 渐变](/zh-CN/docs/Web/CSS/CSS_images/Using_CSS_gradients)
  - **列表和计数器**
    - [使用 CSS 计数器](/zh-CN/docs/Web/CSS/CSS_counter_styles/Using_CSS_counters)
    - [使列表缩进一致](/zh-CN/docs/Web/CSS/CSS_lists/Consistent_list_indentation)
  - **逻辑属性**
    - [逻辑属性与逻辑值的基本概念](/zh-CN/docs/Web/CSS/CSS_logical_properties_and_values/Basic_concepts_of_logical_properties_and_values)
    - [用于浮动和定位的逻辑属性](/zh-CN/docs/Web/CSS/CSS_logical_properties_and_values/Floating_and_positioning)
    - [用于外边距、边框和内边距的逻辑属性](/zh-CN/docs/Web/CSS/CSS_logical_properties_and_values/Margins_borders_padding)
    - [逻辑尺寸属性](/zh-CN/docs/Web/CSS/CSS_logical_properties_and_values/Sizing)
  - **数学函数**
    - [Using CSS math functions](/en-US/docs/Web/CSS/CSS_Values_and_Units/Using_CSS_math_functions)（仅限英文）
  - **媒体查询**
    - [使用媒体查询](/zh-CN/docs/Web/CSS/CSS_media_queries/Using_media_queries)
    - [Using media queries for accessibility](/en-US/docs/Web/CSS/CSS_media_queries/Using_media_queries_for_accessibility)（仅限英文）
    - [使用编程方法测试媒体查询](/zh-CN/docs/Web/CSS/CSS_media_queries/Testing_media_queries)
    - [打印](/zh-CN/docs/Web/CSS/CSS_media_queries/Printing)
  - **嵌套样式规则**
    - [使用 CSS 嵌套](/zh-CN/docs/Web/CSS/CSS_nesting/Using_CSS_nesting)
    - [CSS at 规则嵌套](/zh-CN/docs/Web/CSS/CSS_nesting/Nesting_at-rules)
    - [CSS 嵌套与优先级](/zh-CN/docs/Web/CSS/CSS_nesting/Nesting_and_specificity)
  - **定位**
    - [理解 CSS 的 z-index 属性](/zh-CN/docs/Web/CSS/CSS_positioned_layout/Understanding_z-index)
  - **滚动吸附**
    - [滚动吸附的基本概念](/zh-CN/docs/Web/CSS/CSS_scroll_snap/Basic_concepts)
  - **形状**
    - [CSS 的图形（Shape）概览](/zh-CN/docs/Web/CSS/CSS_shapes/Overview_of_shapes)
    - [使用 box 值指定形状](/zh-CN/docs/Web/CSS/CSS_shapes/From_box_values)
    - [Basic shapes with shape-outside](/en-US/docs/Web/CSS/CSS_shapes/Basic_shapes)（仅限英文）
    - [Shapes from images](/en-US/docs/Web/CSS/CSS_shapes/Shapes_from_images)（仅限英文）
  - **文本**
    - [Wrapping and breaking text](/en-US/docs/Web/CSS/CSS_text/Wrapping_breaking_text)（仅限英文）
  - **变换**
    - [使用 CSS 变换](/zh-CN/docs/Web/CSS/CSS_transforms/Using_CSS_transforms)
  - **过渡**
    - [使用 CSS 过渡](/zh-CN/docs/Web/CSS/CSS_transitions/Using_CSS_transitions)


好的，以下是根据您提供的内容整理的 JSON 数据，包含目录下的条目及其对应的链接：

```json
{
  "属性": {
    "-moz-*": {
      "-moz-float-edge": "/zh-CN/docs/Web/CSS/-moz-float-edge",
      "-moz-force-broken-image-icon": "/zh-CN/docs/Web/CSS/-moz-force-broken-image-icon",
      "-moz-image-region": "/en-US/docs/Web/CSS/-moz-image-region",
      "-moz-orient": "/en-US/docs/Web/CSS/-moz-orient",
      "-moz-user-focus": "/en-US/docs/Web/CSS/-moz-user-focus",
      "-moz-user-input": "/zh-CN/docs/Web/CSS/-moz-user-input"
    },
    "-webkit-*": {
      "-webkit-border-before": "/zh-CN/docs/Web/CSS/-webkit-border-before",
      "-webkit-box-reflect": "/zh-CN/docs/Web/CSS/-webkit-box-reflect",
      "-webkit-mask-box-image": "/en-US/docs/Web/CSS/-webkit-mask-box-image",
      "-webkit-mask-composite": "/en-US/docs/Web/CSS/-webkit-mask-composite",
      "-webkit-mask-position-x": "/en-US/docs/Web/CSS/-webkit-mask-position-x",
      "-webkit-mask-position-y": "/en-US/docs/Web/CSS/-webkit-mask-position-y",
      "-webkit-mask-repeat-x": "/en-US/docs/Web/CSS/-webkit-mask-repeat-x",
      "-webkit-mask-repeat-y": "/en-US/docs/Web/CSS/-webkit-mask-repeat-y",
      "-webkit-tap-highlight-color": "/zh-CN/docs/Web/CSS/-webkit-tap-highlight-color",
      "-webkit-text-fill-color": "/zh-CN/docs/Web/CSS/-webkit-text-fill-color",
      "-webkit-text-security": "/en-US/docs/Web/CSS/-webkit-text-security",
      "-webkit-text-stroke": "/zh-CN/docs/Web/CSS/-webkit-text-stroke",
      "-webkit-text-stroke-color": "/zh-CN/docs/Web/CSS/-webkit-text-stroke-color",
      "-webkit-text-stroke-width": "/zh-CN/docs/Web/CSS/-webkit-text-stroke-width",
      "-webkit-touch-callout": "/zh-CN/docs/Web/CSS/-webkit-touch-callout"
    },
    "通用": {
      "自定义属性（--*）": "/zh-CN/docs/Web/CSS/--*",
      "accent-color": "/zh-CN/docs/Web/CSS/accent-color",
      "align-content": "/zh-CN/docs/Web/CSS/align-content",
      "align-items": "/zh-CN/docs/Web/CSS/align-items",
      "align-self": "/zh-CN/docs/Web/CSS/align-self",
      "all": "/zh-CN/docs/Web/CSS/all",
      "animation": "/zh-CN/docs/Web/CSS/animation",
      "animation-delay": "/zh-CN/docs/Web/CSS/animation-delay",
      "animation-direction": "/zh-CN/docs/Web/CSS/animation-direction",
      "animation-duration": "/zh-CN/docs/Web/CSS/animation-duration",
      "animation-fill-mode": "/zh-CN/docs/Web/CSS/animation-fill-mode",
      "animation-iteration-count": "/zh-CN/docs/Web/CSS/animation-iteration-count",
      "animation-name": "/zh-CN/docs/Web/CSS/animation-name",
      "animation-play-state": "/zh-CN/docs/Web/CSS/animation-play-state",
      "animation-timing-function": "/zh-CN/docs/Web/CSS/animation-timing-function",
      "appearance": "/zh-CN/docs/Web/CSS/appearance",
      "aspect-ratio": "/zh-CN/docs/Web/CSS/aspect-ratio",
      "backdrop-filter": "/zh-CN/docs/Web/CSS/backdrop-filter",
      "backface-visibility": "/zh-CN/docs/Web/CSS/backface-visibility",
      "background": "/zh-CN/docs/Web/CSS/background",
      "background-attachment": "/zh-CN/docs/Web/CSS/background-attachment",
      "background-blend-mode": "/zh-CN/docs/Web/CSS/background-blend-mode",
      "background-clip": "/zh-CN/docs/Web/CSS/background-clip",
      "background-color": "/zh-CN/docs/Web/CSS/background-color",
      "background-image": "/zh-CN/docs/Web/CSS/background-image",
      "background-origin": "/zh-CN/docs/Web/CSS/background-origin",
      "background-position": "/zh-CN/docs/Web/CSS/background-position",
      "background-position-x": "/zh-CN/docs/Web/CSS/background-position-x",
      "background-position-y": "/zh-CN/docs/Web/CSS/background-position-y",
      "background-repeat": "/zh-CN/docs/Web/CSS/background-repeat",
      "background-size": "/zh-CN/docs/Web/CSS/background-size",
      "block-size": "/zh-CN/docs/Web/CSS/block-size",
      "border": "/zh-CN/docs/Web/CSS/border",
      "border-block": "/zh-CN/docs/Web/CSS/border-block",
      "border-block-color": "/zh-CN/docs/Web/CSS/border-block-color",
      "border-block-end": "/zh-CN/docs/Web/CSS/border-block-end",
      "border-block-end-color": "/zh-CN/docs/Web/CSS/border-block-end-color",
      "border-block-end-style": "/zh-CN/docs/Web/CSS/border-block-end-style",
      "border-block-end-width": "/zh-CN/docs/Web/CSS/border-block-end-width",
      "border-block-start": "/zh-CN/docs/Web/CSS/border-block-start",
      "border-block-start-color": "/zh-CN/docs/Web/CSS/border-block-start-color",
      "border-block-start-style": "/zh-CN/docs/Web/CSS/border-block-start-style",
      "border-block-start-width": "/zh-CN/docs/Web/CSS/border-block-start-width",
      "border-block-style": "/zh-CN/docs/Web/CSS/border-block-style",
      "border-block-width": "/zh-CN/docs/Web/CSS/border-block-width",
      "border-bottom": "/zh-CN/docs/Web/CSS/border-bottom",
      "border-bottom-color": "/zh-CN/docs/Web/CSS/border-bottom-color",
      "border-bottom-left-radius": "/zh-CN/docs/Web/CSS/border-bottom-left-radius",
      "border-bottom-right-radius": "/en-US/docs/Web/CSS/border-bottom-right-radius",
      "border-bottom-style": "/zh-CN/docs/Web/CSS/border-bottom-style",
      "border-bottom-width": "/zh-CN/docs/Web/CSS/border-bottom-width",
      "border-collapse": "/zh-CN/docs/Web/CSS/border-collapse",
      "border-color": "/zh-CN/docs/Web/CSS/border-color",
      "border-end-end-radius": "/zh-CN/docs/Web/CSS/border-end-end-radius",
      "border-end-start-radius": "/zh-CN/docs/Web/CSS/border-end-start-radius",
      "border-image": "/zh-CN/docs/Web/CSS/border-image",
      "border-image-outset": "/zh-CN/docs/Web/CSS/border-image-outset",
      "border-image-repeat": "/zh-CN/docs/Web/CSS/border-image-repeat",
      "border-image-slice": "/zh-CN/docs/Web/CSS/border-image-slice",
      "border-image-source": "/zh-CN/docs/Web/CSS/border-image-source",
      "border-image-width": "/zh-CN/docs/Web/CSS/border-image-width",
      "border-inline": "/zh-CN/docs/Web/CSS/border-inline",
      "border-inline-color": "/zh-CN/docs/Web/CSS/border-inline-color",
      "border-inline-end": "/zh-CN/docs/Web/CSS/border-inline-end",
      "border-inline-end-color": "/zh-CN/docs/Web/CSS/border-inline-end-color",
      "border-inline-end-style": "/zh-CN/docs/Web/CSS/border-inline-end-style",
      "border-inline-end-width": "/zh-CN/docs/Web/CSS/border-inline-end-width",
      "border-inline-start": "/zh-CN/docs/Web/CSS/border-inline-start",
      "border-inline-start-color": "/zh-CN/docs/Web/CSS/border-inline-start-color",
      "border-inline-start-style": "/zh-CN/docs/Web/CSS/border-inline-start-style",
      "border-inline-start-width": "/zh-CN/docs/Web/CSS/border-inline-start-width",
      "border-inline-style": "/zh-CN/docs/Web/CSS/border-inline-style",
      "border-inline-width": "/zh-CN/docs/Web/CSS/border-inline-width",
      "border-left": "/zh-CN/docs/Web/CSS/border-left",
      "border-left-color": "/zh-CN/docs/Web/CSS/border-left-color",
      "border-left-style": "/zh-CN/docs/Web/CSS/border-left-style",
      "border-left-width": "/zh-CN/docs/Web/CSS/border-left-width",
      "border-radius": "/zh-CN/docs/Web/CSS/border-radius",
      "border-right": "/zh-CN/docs/Web/CSS/border-right",
      "border-right-color": "/zh-CN/docs/Web/CSS/border-right-color",
      "border-right-style": "/zh-CN/docs/Web/CSS/border-right-style",
      "border-right-width": "/zh-CN/docs/Web/CSS/border-right-width",
      "border-spacing": "/zh-CN/docs/Web/CSS/border-spacing",
      "border-start-end-radius": "/zh-CN/docs/Web/CSS/border-start-end-radius",
      "border-start-start-radius": "/zh-CN/docs/Web/CSS/border-start-start-radius",
      "border-style": "/zh-CN/docs/Web/CSS/border-style",
      "border-top": "/zh-CN/docs/Web/CSS/border-top",
      "border-top-color": "/zh-CN/docs/Web/CSS/border-top-color",
      "border-top-left-radius": "/zh-CN/docs/Web/CSS/border-top-left-radius",
      "border-top-right-radius": "/zh-CN/docs/Web/CSS/border-top-right-radius",
      "border-top-style": "/zh-CN/docs/Web/CSS/border-top-style",
      "border-top-width": "/zh-CN/docs/Web/CSS/border-top-width",
      "border-width": "/zh-CN/docs/Web/CSS/border-width",
      "bottom": "/zh-CN/docs/Web/CSS/bottom",
      "box-decoration-break": "/zh-CN/docs/Web/CSS/box-decoration-break",
      "box-shadow": "/zh-CN/docs/Web/CSS/box-shadow",
      "box-sizing": "/zh-CN/docs/Web/CSS/box-sizing",
      "break-after": "/zh-CN/docs/Web/CSS/break-after",
      "break-before": "/en-US/docs/Web/CSS/break-before",
      "break-inside": "/zh-CN/docs/Web/CSS/break-inside",
      "caption-side": "/zh-CN/docs/Web/CSS/caption-side",
      "caret-color": "/zh-CN/docs/Web/CSS/caret-color",
      "clear": "/zh-CN/docs/Web/CSS/clear",
      "clip": "/zh-CN/docs/Web/CSS/clip",
      "clip-path": "/zh-CN/docs/Web/CSS/clip-path",
      "clip-rule": "/en-US/docs/Web/CSS/clip-rule",
      "color": "/zh-CN/docs/Web/CSS/color",
      "color-interpolation": "/en-US/docs/Web/CSS/color-interpolation",
      "color-interpolation-filters": "/en-US/docs/Web/CSS/color-interpolation-filters",
      "color-scheme": "/zh-CN/docs/Web/CSS/color-scheme",
      "column-count": "/zh-CN/docs/Web/CSS/column-count",
      "column-fill": "/zh-CN/docs/Web/CSS/column-fill",
      "column-gap": "/zh-CN/docs/Web/CSS/column-gap",
      "column-rule": "/zh-CN/docs/Web/CSS/column-rule",
      "column-rule-color": "/zh-CN/docs/Web/CSS/column-rule-color",
      "column-rule-style": "/zh-CN/docs/Web/CSS/column-rule-style",
      "column-rule-width": "/zh-CN/docs/Web/CSS/column-rule-width",
      "column-span": "/zh-CN/docs/Web/CSS/column-span",
      "column-width": "/en-US/docs/Web/CSS/column-width",
      "columns": "/zh-CN/docs/Web/CSS/columns",
      "contain": "/zh-CN/docs/Web/CSS/contain",
      "contain-intrinsic-block-size": "/zh-CN/docs/Web/CSS/contain-intrinsic-block-size",
      "contain-intrinsic-height": "/zh-CN/docs/Web/CSS/contain-intrinsic-height",
      "contain-intrinsic-inline-size": "/zh-CN/docs/Web/CSS/contain-intrinsic-inline-size",
      "contain-intrinsic-size": "/zh-CN/docs/Web/CSS/contain-intrinsic-size",
      "contain-intrinsic-width": "/zh-CN/docs/Web/CSS/contain-intrinsic-width",
      "content": "/zh-CN/docs/Web/CSS/content",
      "content-visibility": "/zh-CN/docs/Web/CSS/content-visibility",
      "counter-increment": "/zh-CN/docs/Web/CSS/counter-increment",
      "counter-reset": "/zh-CN/docs/Web/CSS/counter-reset",
      "counter-set": "/zh-CN/docs/Web/CSS/counter-set",
      "cursor": "/zh-CN/docs/Web/CSS/cursor",
      "direction": "/zh-CN/docs/Web/CSS/direction",
      "display": "/zh-CN/docs/Web/CSS/display",
      "dominant-baseline": "/en-US/docs/Web/CSS/dominant-baseline",
      "empty-cells": "/zh-CN/docs/Web/CSS/empty-cells",
      "filter": "/zh-CN/docs/Web/CSS/filter",
      "flex": "/zh-CN/docs/Web/CSS/flex",
      "flex-basis": "/zh-CN/docs/Web/CSS/flex-basis",
      "flex-direction": "/zh-CN/docs/Web/CSS/flex-direction",
      "flex-flow": "/zh-CN/docs/Web/CSS/flex-flow",
      "flex-grow": "/zh-CN/docs/Web/CSS/flex-grow",
      "flex-shrink": "/zh-CN/docs/Web/CSS/flex-shrink",
      "flex-wrap": "/zh-CN/docs/Web/CSS/flex-wrap",
      "float": "/zh-CN/docs/Web/CSS/float",
      "font": "/zh-CN/docs/Web/CSS/font",
      "font-family": "/zh-CN/docs/Web/CSS/font-family",
      "font-feature-settings": "/zh-CN/docs/Web/CSS/font-feature-settings",
      "font-kerning": "/zh-CN/docs/Web/CSS/font-kerning",
      "font-language-override": "/zh-CN/docs/Web/CSS/font-language-override",
      "font-optical-sizing": "/en-US/docs/Web/CSS/font-optical-sizing",
      "font-palette": "/zh-CN/docs/Web/CSS/font-palette",
      "font-size": "/zh-CN/docs/Web/CSS/font-size",
      "font-size-adjust": "/zh-CN/docs/Web/CSS/font-size-adjust",
      "font-smooth": "/zh-CN/docs/Web/CSS/font-smooth",
      "font-stretch": "/zh-CN/docs/Web/CSS/font-stretch",
      "font-style": "/zh-CN/docs/Web/CSS/font-style",
      "font-synthesis": "/zh-CN/docs/Web/CSS/font-synthesis",
      "font-variant": "/zh-CN/docs/Web/CSS/font-variant",
      "font-variant-alternates": "/zh-CN/docs/Web/CSS/font-variant-alternates",
      "font-variant-caps": "/zh-CN/docs/Web/CSS/font-variant-caps",
      "font-variant-east-asian": "/en-US/docs/Web/CSS/font-variant-east-asian",
      "font-variant-emoji": "/en-US/docs/Web/CSS/font-variant-emoji",
      "font-variant-ligatures": "/zh-CN/docs/Web/CSS/font-variant-ligatures",
      "font-variant-numeric": "/zh-CN/docs/Web/CSS/font-variant-numeric",
      "font-variant-position": "/zh-CN/docs/Web/CSS/font-variant-position",
      "font-variation-settings": "/zh-CN/docs/Web/CSS/font-variation-settings",
      "font-weight": "/zh-CN/docs/Web/CSS/font-weight",
      "forced-color-adjust": "/zh-CN/docs/Web/CSS/forced-color-adjust",
      "gap": "/zh-CN/docs/Web/CSS/gap",
      "grid": "/zh-CN/docs/Web/CSS/grid",
      "grid-area": "/zh-CN/docs/Web/CSS/grid-area",
      "grid-auto-columns": "/zh-CN/docs/Web/CSS/grid-auto-columns",
      "grid-auto-flow": "/zh-CN/docs/Web/CSS/grid-auto-flow",
      "grid-auto-rows": "/zh-CN/docs/Web/CSS/grid-auto-rows",
      "grid-column": "/zh-CN/docs/Web/CSS/grid-column",
      "grid-column-end": "/en-US/docs/Web/CSS/grid-column-end",
      "grid-column-start": "/en-US/docs/Web/CSS/grid-column-start",
      "grid-row": "/zh-CN/docs/Web/CSS/grid-row",
      "grid-row-end": "/en-US/docs/Web/CSS/grid-row-end",
      "grid-row-start": "/en-US/docs/Web/CSS/grid-row-start",
      "grid-template": "/zh-CN/docs/Web/CSS/grid-template",
      "grid-template-areas": "/zh-CN/docs/Web/CSS/grid-template-areas",
      "grid-template-columns": "/zh-CN/docs/Web/CSS/grid-template-columns",
      "grid-template-rows": "/zh-CN/docs/Web/CSS/grid-template-rows",
      "hanging-punctuation": "/zh-CN/docs/Web/CSS/hanging-punctuation",
      "height": "/zh-CN/docs/Web/CSS/height",
      "hyphenate-character": "/en-US/docs/Web/CSS/hyphenate-character",
      "hyphenate-limit-chars": "/en-US/docs/Web/CSS/hyphenate-limit-chars",
      "hyphens": "/zh-CN/docs/Web/CSS/hyphens",
      "image-orientation": "/zh-CN/docs/Web/CSS/image-orientation",
      "image-rendering": "/zh-CN/docs/Web/CSS/image-rendering",
      "image-resolution": "/en-US/docs/Web/CSS/image-resolution",
      "initial-letter": "/zh-CN/docs/Web/CSS/initial-letter",
      "inline-size": "/zh-CN/docs/Web/CSS/inline-size",
      "inset": "/zh-CN/docs/Web/CSS/inset",
      "inset-block": "/zh-CN/docs/Web/CSS/inset-block",
      "inset-block-end": "/zh-CN/docs/Web/CSS/inset-block-end",
      "inset-block-start": "/zh-CN/docs/Web/CSS/inset-block-start",
      "inset-inline": "/zh-CN/docs/Web/CSS/inset-inline",
      "inset-inline-end": "/zh-CN/docs/Web/CSS/inset-inline-end",
      "inset-inline-start": "/zh-CN/docs/Web/CSS/inset-inline-start",
      "isolation": "/zh-CN/docs/Web/CSS/isolation",
      "justify-content": "/zh-CN/docs/Web/CSS/justify-content",
      "justify-items": "/zh-CN/docs/Web/CSS/justify-items",
      "justify-self": "/zh-CN/docs/Web/CSS/justify-self",
      "left": "/zh-CN/docs/Web/CSS/left",
      "letter-spacing": "/zh-CN/docs/Web/CSS/letter-spacing",
      "line-break": "/zh-CN/docs/Web/CSS/line-break",
      "line-clamp": "/zh-CN/docs/Web/CSS/line-clamp",
      "line-height": "/zh-CN/docs/Web/CSS/line-height",
      "line-height-step": "/en-US/docs/Web/CSS/line-height-step",
      "list-style": "/zh-CN/docs/Web/CSS/list-style",
      "list-style-image": "/zh-CN/docs/Web/CSS/list-style-image",
      "list-style-position": "/zh-CN/docs/Web/CSS/list-style-position",
      "list-style-type": "/zh-CN/docs/Web/CSS/list-style-type",
      "margin": "/zh-CN/docs/Web/CSS/margin",
      "margin-block": "/zh-CN/docs/Web/CSS/margin-block",
      "margin-block-end": "/zh-CN/docs/Web/CSS/margin-block-end",
      "margin-block-start": "/zh-CN/docs/Web/CSS/margin-block-start",
      "margin-bottom": "/zh-CN/docs/Web/CSS/margin-bottom",
      "margin-inline": "/zh-CN/docs/Web/CSS/margin-inline",
      "margin-inline-end": "/zh-CN/docs/Web/CSS/margin-inline-end",
      "margin-inline-start": "/zh-CN/docs/Web/CSS/margin-inline-start",
      "margin-left": "/zh-CN/docs/Web/CSS/margin-left",
      "margin-right": "/zh-CN/docs/Web/CSS/margin-right",
      "margin-top": "/zh-CN/docs/Web/CSS/margin-top",
      "margin-trim": "/en-US/docs/Web/CSS/margin-trim",
      "mask": "/zh-CN/docs/Web/CSS/mask",
      "mask-border": "/zh-CN/docs/Web/CSS/mask-border",
      "mask-border-mode": "/zh-CN/docs/Web/CSS/mask-border-mode",
      "mask-border-outset": "/en-US/docs/Web/CSS/mask-border-outset",
      "mask-border-repeat": "/zh-CN/docs/Web/CSS/mask-border-repeat",
      "mask-border-slice": "/zh-CN/docs/Web/CSS/mask-border-slice",
      "mask-border-source": "/en-US/docs/Web/CSS/mask-border-source",
      "mask-border-width": "/zh-CN/docs/Web/CSS/mask-border-width",
      "mask-clip": "/en-US/docs/Web/CSS/mask-clip",
      "mask-composite": "/en-US/docs/Web/CSS/mask-composite",
      "mask-image": "/zh-CN/docs/Web/CSS/mask-image",
      "mask-mode": "/zh-CN/docs/Web/CSS/mask-mode",
      "mask-origin": "/en-US/docs/Web/CSS/mask-origin",
      "mask-position": "/en-US/docs/Web/CSS/mask-position",
      "mask-repeat": "/zh-CN/docs/Web/CSS/mask-repeat",
      "mask-size": "/en-US/docs/Web/CSS/mask-size",
      "mask-type": "/en-US/docs/Web/CSS/mask-type",
      "math-depth": "/en-US/docs/Web/CSS/math-depth",
      "math-shift": "/en-US/docs/Web/CSS/math-shift",
      "math-style": "/en-US/docs/Web/CSS/math-style",
      "max-block-size": "/en-US/docs/Web/CSS/max-block-size",
      "max-height": "/zh-CN/docs/Web/CSS/max-height",
      "max-inline-size": "/zh-CN/docs/Web/CSS/max-inline-size",
      "max-width": "/zh-CN/docs/Web/CSS/max-width",
      "min-block-size": "/zh-CN/docs/Web/CSS/min-block-size",
      "min-height": "/zh-CN/docs/Web/CSS/min-height",
      "min-inline-size": "/zh-CN/docs/Web/CSS/min-inline-size",
      "min-width": "/zh-CN/docs/Web/CSS/min-width",
      "mix-blend-mode": "/zh-CN/docs/Web/CSS/mix-blend-mode",
      "object-fit": "/zh-CN/docs/Web/CSS/object-fit",
      "object-position": "/zh-CN/docs/Web/CSS/object-position",
      "offset": "/zh-CN/docs/Web/CSS/offset",
      "offset-anchor": "/en-US/docs/Web/CSS/offset-anchor",
      "offset-distance": "/en-US/docs/Web/CSS/offset-distance",
      "offset-path": "/en-US/docs/Web/CSS/offset-path",
      "offset-position": "/en-US/docs/Web/CSS/offset-position",
      "offset-rotate": "/en-US/docs/Web/CSS/offset-rotate",
      "opacity": "/zh-CN/docs/Web/CSS/opacity",
      "order": "/zh-CN/docs/Web/CSS/order",
      "orphans": "/en-US/docs/Web/CSS/orphans",
      "outline": "/zh-CN/docs/Web/CSS/outline",
      "outline-color": "/zh-CN/docs/Web/CSS/outline-color",
      "outline-offset": "/zh-CN/docs/Web/CSS/outline-offset",
      "outline-style": "/zh-CN/docs/Web/CSS/outline-style",
      "outline-width": "/zh-CN/docs/Web/CSS/outline-width",
      "overflow": "/zh-CN/docs/Web/CSS/overflow",
      "overflow-anchor": "/zh-CN/docs/Web/CSS/overflow-anchor",
      "overflow-block": "/zh-CN/docs/Web/CSS/overflow-block",
      "overflow-clip-margin": "/en-US/docs/Web/CSS/overflow-clip-margin",
      "overflow-inline": "/zh-CN/docs/Web/CSS/overflow-inline",
      "overflow-wrap": "/zh-CN/docs/Web/CSS/overflow-wrap",
      "overflow-x": "/zh-CN/docs/Web/CSS/overflow-x",
      "overflow-y": "/zh-CN/docs/Web/CSS/overflow-y",
      "overlay": "/en-US/docs/Web/CSS/overlay",
      "overscroll-behavior": "/zh-CN/docs/Web/CSS/overscroll-behavior",
      "overscroll-behavior-block": "/en-US/docs/Web/CSS/overscroll-behavior-block",
      "overscroll-behavior-inline": "/en-US/docs/Web/CSS/overscroll-behavior-inline",
      "overscroll-behavior-x": "/zh-CN/docs/Web/CSS/overscroll-behavior-x",
      "overscroll-behavior-y": "/zh-CN/docs/Web/CSS/overscroll-behavior-y",
      "padding": "/zh-CN/docs/Web/CSS/padding",
      "padding-block": "/zh-CN/docs/Web/CSS/padding-block",
      "padding-block-end": "/zh-CN/docs/Web/CSS/padding-block-end",
      "padding-block-start": "/zh-CN/docs/Web/CSS/padding-block-start",
      "padding-bottom": "/zh-CN/docs/Web/CSS/padding-bottom",
      "padding-inline": "/zh-CN/docs/Web/CSS/padding-inline",
      "padding-inline-end": "/zh-CN/docs/Web/CSS/padding-inline-end",
      "padding-inline-start": "/zh-CN/docs/Web/CSS/padding-inline-start",
      "padding-left": "/zh-CN/docs/Web/CSS/padding-left",
      "padding-right": "/zh-CN/docs/Web/CSS/padding-right",
      "padding-top": "/zh-CN/docs/Web/CSS/padding-top",
      "page-break-after": "/zh-CN/docs/Web/CSS/page-break-after",
      "page-break-before": "/en-US/docs/Web/CSS/page-break-before",
      "page-break-inside": "/en-US/docs/Web/CSS/page-break-inside",
      "paint-order": "/zh-CN/docs/Web/CSS/paint-order",
      "perspective": "/zh-CN/docs/Web/CSS/perspective",
      "perspective-origin": "/zh-CN/docs/Web/CSS/perspective-origin",
      "place-content": "/zh-CN/docs/Web/CSS/place-content",
      "place-items": "/zh-CN/docs/Web/CSS/place-items",
      "place-self": "/en-US/docs/Web/CSS/place-self",
      "pointer-events": "/zh-CN/docs/Web/CSS/pointer-events",
      "position": "/zh-CN/docs/Web/CSS/position",
      "position-anchor": "/en-US/docs/Web/CSS/position-anchor",
      "position-area": "/en-US/docs/Web/CSS/position-area",
      "position-try": "/en-US/docs/Web/CSS/position-try",
      "position-try-fallbacks": "/en-US/docs/Web/CSS/position-try-fallbacks",
      "position-try-order": "/en-US/docs/Web/CSS/position-try-order",
      "position-visibility": "/en-US/docs/Web/CSS/position-visibility",
      "print-color-adjust": "/zh-CN/docs/Web/CSS/print-color-adjust",
      "quotes": "/zh-CN/docs/Web/CSS/quotes",
      "resize": "/zh-CN/docs/Web/CSS/resize",
      "right": "/zh-CN/docs/Web/CSS/right",
      "rotate": "/zh-CN/docs/Web/CSS/rotate",
      "row-gap": "/zh-CN/docs/Web/CSS/row-gap",
      "ruby-align": "/en-US/docs/Web/CSS/ruby-align",
      "ruby-position": "/en-US/docs/Web/CSS/ruby-position",
      "rx": "/en-US/docs/Web/CSS/rx",
      "ry": "/en-US/docs/Web/CSS/ry",
      "scale": "/zh-CN/docs/Web/CSS/scale",
      "scroll-behavior": "/zh-CN/docs/Web/CSS/scroll-behavior",
      "scroll-margin": "/zh-CN/docs/Web/CSS/scroll-margin",
      "scroll-margin-block": "/zh-CN/docs/Web/CSS/scroll-margin-block",
      "scroll-margin-block-end": "/zh-CN/docs/Web/CSS/scroll-margin-block-end",
      "scroll-margin-block-start": "/zh-CN/docs/Web/CSS/scroll-margin-block-start",
      "scroll-margin-bottom": "/zh-CN/docs/Web/CSS/scroll-margin-bottom",
      "scroll-margin-inline": "/zh-CN/docs/Web/CSS/scroll-margin-inline",
      "scroll-margin-inline-end": "/zh-CN/docs/Web/CSS/scroll-margin-inline-end",
      "scroll-margin-inline-start": "/zh-CN/docs/Web/CSS/scroll-margin-inline-start",
      "scroll-margin-left": "/zh-CN/docs/Web/CSS/scroll-margin-left",
      "scroll-margin-right": "/zh-CN/docs/Web/CSS/scroll-margin-right",
      "scroll-margin-top": "/zh-CN/docs/Web/CSS/scroll-margin-top",
      "scroll-padding": "/zh-CN/docs/Web/CSS/scroll-padding",
      "scroll-padding-block": "/zh-CN/docs/Web/CSS/scroll-padding-block",
      "scroll-padding-block-end": "/zh-CN/docs/Web/CSS/scroll-padding-block-end",
      "scroll-padding-block-start": "/zh-CN/docs/Web/CSS/scroll-padding-block-start",
      "scroll-padding-bottom": "/zh-CN/docs/Web/CSS/scroll-padding-bottom",
      "scroll-padding-inline": "/zh-CN/docs/Web/CSS/scroll-padding-inline",
      "scroll-padding-inline-end": "/zh-CN/docs/Web/CSS/scroll-padding-inline-end",
      "scroll-padding-inline-start": "/zh-CN/docs/Web/CSS/scroll-padding-inline-start",
      "scroll-padding-left": "/zh-CN/docs/Web/CSS/scroll-padding-left",
      "scroll-padding-right": "/zh-CN/docs/Web/CSS/scroll-padding-right",
      "scroll-padding-top": "/zh-CN/docs/Web/CSS/scroll-padding-top",
      "scroll-snap-align": "/zh-CN/docs/Web/CSS/scroll-snap-align",
      "scroll-snap-stop": "/zh-CN/docs/Web/CSS/scroll-snap-stop",
      "scroll-snap-type": "/zh-CN/docs/Web/CSS/scroll-snap-type",
      "scroll-timeline": "/en-US/docs/Web/CSS/scroll-timeline",
      "scroll-timeline-axis": "/en-US/docs/Web/CSS/scroll-timeline-axis",
      "scroll-timeline-name": "/en-US/docs/Web/CSS/scroll-timeline-name",
      "scrollbar-color": "/zh-CN/docs/Web/CSS/scrollbar-color",
      "scrollbar-gutter": "/en-US/docs/Web/CSS/scrollbar-gutter",
      "scrollbar-width": "/zh-CN/docs/Web/CSS/scrollbar-width",
      "shape-image-threshold": "/zh-CN/docs/Web/CSS/shape-image-threshold",
      "shape-margin": "/zh-CN/docs/Web/CSS/shape-margin",
      "shape-outside": "/zh-CN/docs/Web/CSS/shape-outside",
      "shape-rendering": "/en-US/docs/Web/CSS/shape-rendering",
      "speak-as": "/en-US/docs/Web/CSS/speak-as",
      "stop-color": "/en-US/docs/Web/CSS/stop-color",
      "stop-opacity": "/en-US/docs/Web/CSS/stop-opacity",
      "stroke": "/en-US/docs/Web/CSS/stroke",
      "stroke-dasharray": "/en-US/docs/Web/CSS/stroke-dasharray",
      "stroke-dashoffset": "/en-US/docs/Web/CSS/stroke-dashoffset",
      "stroke-linecap": "/en-US/docs/Web/CSS/stroke-linecap",
      "stroke-linejoin": "/en-US/docs/Web/CSS/stroke-linejoin",
      "stroke-miterlimit": "/en-US/docs/Web/CSS/stroke-miterlimit",
      "stroke-opacity": "/en-US/docs/Web/CSS/stroke-opacity",
      "stroke-width": "/en-US/docs/Web/CSS/stroke-width",
      "tab-size": "/zh-CN/docs/Web/CSS/tab-size",
      "table-layout": "/zh-CN/docs/Web/CSS/table-layout",
      "text-align": "/zh-CN/docs/Web/CSS/text-align",
      "text-align-last": "/zh-CN/docs/Web/CSS/text-align-last",
      "text-anchor": "/en-US/docs/Web/CSS/text-anchor",
      "text-box": "/en-US/docs/Web/CSS/text-box",
      "text-box-edge": "/en-US/docs/Web/CSS/text-box-edge",
      "text-box-trim": "/en-US/docs/Web/CSS/text-box-trim",
      "text-combine-upright": "/en-US/docs/Web/CSS/text-combine-upright",
      "text-decoration": "/zh-CN/docs/Web/CSS/text-decoration",
      "text-decoration-color": "/zh-CN/docs/Web/CSS/text-decoration-color",
      "text-decoration-line": "/zh-CN/docs/Web/CSS/text-decoration-line",
      "text-decoration-skip": "/zh-CN/docs/Web/CSS/text-decoration-skip",
      "text-decoration-skip-ink": "/en-US/docs/Web/CSS/text-decoration-skip-ink",
      "text-decoration-style": "/zh-CN/docs/Web/CSS/text-decoration-style",
      "text-decoration-thickness": "/zh-CN/docs/Web/CSS/text-decoration-thickness",
      "text-emphasis": "/zh-CN/docs/Web/CSS/text-emphasis",
      "text-emphasis-color": "/zh-CN/docs/Web/CSS/text-emphasis-color",
      "text-emphasis-position": "/zh-CN/docs/Web/CSS/text-emphasis-position",
      "text-emphasis-style": "/zh-CN/docs/Web/CSS/text-emphasis-style",
      "text-indent": "/zh-CN/docs/Web/CSS/text-indent",
      "text-justify": "/zh-CN/docs/Web/CSS/text-justify",
      "text-orientation": "/zh-CN/docs/Web/CSS/text-orientation",
      "text-overflow": "/zh-CN/docs/Web/CSS/text-overflow",
      "text-rendering": "/zh-CN/docs/Web/CSS/text-rendering",
      "text-shadow": "/zh-CN/docs/Web/CSS/text-shadow",
      "text-size-adjust": "/zh-CN/docs/Web/CSS/text-size-adjust",
      "text-spacing-trim": "/en-US/docs/Web/CSS/text-spacing-trim",
      "text-transform": "/zh-CN/docs/Web/CSS/text-transform",
      "text-underline-offset": "/zh-CN/docs/Web/CSS/text-underline-offset",
      "text-underline-position": "/zh-CN/docs/Web/CSS/text-underline-position",
      "text-wrap": "/en-US/docs/Web/CSS/text-wrap",
      "text-wrap-mode": "/en-US/docs/Web/CSS/text-wrap-mode",
      "text-wrap-style": "/en-US/docs/Web/CSS/text-wrap-style",
      "timeline-scope": "/en-US/docs/Web/CSS/timeline-scope",
      "top": "/zh-CN/docs/Web/CSS/top",
      "touch-action": "/zh-CN/docs/Web/CSS/touch-action",
      "transform": "/zh-CN/docs/Web/CSS/transform",
      "transform-box": "/zh-CN/docs/Web/CSS/transform-box",
      "transform-origin": "/zh-CN/docs/Web/CSS/transform-origin",
      "transform-style": "/zh-CN/docs/Web/CSS/transform-style",
      "transition": "/zh-CN/docs/Web/CSS/transition",
      "transition-behavior": "/en-US/docs/Web/CSS/transition-behavior",
      "transition-delay": "/zh-CN/docs/Web/CSS/transition-delay",
      "transition-duration": "/zh-CN/docs/Web/CSS/transition-duration",
      "transition-property": "/zh-CN/docs/Web/CSS/transition-property",
      "transition-timing-function": "/zh-CN/docs/Web/CSS/transition-timing-function",
      "translate": "/zh-CN/docs/Web/CSS/translate",
      "unicode-bidi": "/zh-CN/docs/Web/CSS/unicode-bidi",
      "user-modify": "/en-US/docs/Web/CSS/user-modify",
      "user-select": "/zh-CN/docs/Web/CSS/user-select",
      "vector-effect": "/en-US/docs/Web/CSS/vector-effect",
      "vertical-align": "/zh-CN/docs/Web/CSS/vertical-align",
      "view-timeline": "/en-US/docs/Web/CSS/view-timeline",
      "view-timeline-axis": "/en-US/docs/Web/CSS/view-timeline-axis",
      "view-timeline-inset": "/en-US/docs/Web/CSS/view-timeline-inset",
      "view-timeline-name": "/en-US/docs/Web/CSS/view-timeline-name",
      "view-transition-name": "/zh-CN/docs/Web/CSS/view-transition-name",
      "visibility": "/zh-CN/docs/Web/CSS/visibility",
      "white-space": "/zh-CN/docs/Web/CSS/white-space",
      "white-space-collapse": "/en-US/docs/Web/CSS/white-space-collapse",
      "widows": "/zh-CN/docs/Web/CSS/widows",
      "width": "/zh-CN/docs/Web/CSS/width",
      "will-change": "/zh-CN/docs/Web/CSS/will-change",
      "word-break": "/zh-CN/docs/Web/CSS/word-break",
      "word-spacing": "/zh-CN/docs/Web/CSS/word-spacing",
      "writing-mode": "/zh-CN/docs/Web/CSS/writing-mode",
      "x": "/en-US/docs/Web/CSS/x",
      "y": "/en-US/docs/Web/CSS/y",
      "z-index": "/zh-CN/docs/Web/CSS/z-index",
      "zoom": "/en-US/docs/Web/CSS/zoom"
    }
  },
  "选择器": {
    "嵌套选择器": "/zh-CN/docs/Web/CSS/Nesting_selector",
    "属性选择器": "/zh-CN/docs/Web/CSS/Attribute_selectors",
    "类选择器": "/zh-CN/docs/Web/CSS/Class_selectors",
    "ID选择器": "/zh-CN/docs/Web/CSS/ID_selectors",
    "类型选择器": "/zh-CN/docs/Web/CSS/Type_selectors",
    "通配选择器": "/zh-CN/docs/Web/CSS/Universal_selectors"
  },
  "关系选择器": {
    "子组合器": "/zh-CN/docs/Web/CSS/Child_combinator",
    "列组合器": "/zh-CN/docs/Web/CSS/Column_combinator",
    "后代选择器": "/zh-CN/docs/Web/CSS/Descendant_combinator",
    "Namespace separator": "/en-US/docs/Web/CSS/Namespace_separator",
    "接续兄弟组合器": "/zh-CN/docs/Web/CSS/Next-sibling_combinator",
    "选择器列表": "/zh-CN/docs/Web/CSS/Selector_list",
    "后续兄弟选择器": "/zh-CN/docs/Web/CSS/Subsequent-sibling_combinator"
  },
  "伪类": {
    ":-moz-*": {
      ":-moz-broken": "/zh-CN/docs/Web/CSS/:-moz-broken",
      ":-moz-drag-over": "/zh-CN/docs/Web/CSS/:-moz-drag-over",
      ":-moz-first-node": "/zh-CN/docs/Web/CSS/:-moz-first-node",
      ":-moz-handler-blocked": "/en-US/docs/Web/CSS/:-moz-handler-blocked",
      ":-moz-handler-crashed": "/en-US/docs/Web/CSS/:-moz-handler-crashed",
      ":-moz-handler-disabled": "/en-US/docs/Web/CSS/:-moz-handler-disabled",
      ":-moz-last-node": "/en-US/docs/Web/CSS/:-moz-last-node",
      ":-moz-loading": "/en-US/docs/Web/CSS/:-moz-loading",
      ":-moz-locale-dir(ltr)": "/en-US/docs/Web/CSS/:-moz-locale-dir_ltr",
      ":-moz-locale-dir(rtl)": "/en-US/docs/Web/CSS/:-moz-locale-dir_rtl",
      ":-moz-only-whitespace": "/zh-CN/docs/Web/CSS/:-moz-only-whitespace",
      ":-moz-submit-invalid": "/en-US/docs/Web/CSS/:-moz-submit-invalid",
      ":-moz-suppressed": "/en-US/docs/Web/CSS/:-moz-suppressed",
      ":-moz-user-disabled": "/en-US/docs/Web/CSS/:-moz-user-disabled",
      ":-moz-window-inactive": "/zh-CN/docs/Web/CSS/:-moz-window-inactive"
    },
    ":active": "/zh-CN/docs/Web/CSS/:active",
    ":any-link": "/zh-CN/docs/Web/CSS/:any-link",
    ":autofill": "/zh-CN/docs/Web/CSS/:autofill",
    ":blank": "/zh-CN/docs/Web/CSS/:blank",
    ":buffering": "/en-US/docs/Web/CSS/:buffering",
    ":checked": "/zh-CN/docs/Web/CSS/:checked",
    ":current": "/en-US/docs/Web/CSS/:current",
    ":default": "/zh-CN/docs/Web/CSS/:default",
    ":defined": "/zh-CN/docs/Web/CSS/:defined",
    ":dir": "/zh-CN/docs/Web/CSS/:dir",
    ":disabled": "/zh-CN/docs/Web/CSS/:disabled",
    ":empty": "/zh-CN/docs/Web/CSS/:empty",
    ":enabled": "/zh-CN/docs/Web/CSS/:enabled",
    ":first": "/zh-CN/docs/Web/CSS/:first",
    ":first-child": "/zh-CN/docs/Web/CSS/:first-child",
    ":first-of-type": "/zh-CN/docs/Web/CSS/:first-of-type",
    ":focus": "/zh-CN/docs/Web/CSS/:focus",
    ":focus-visible": "/zh-CN/docs/Web/CSS/:focus-visible",
    ":focus-within": "/zh-CN/docs/Web/CSS/:focus-within",
    ":fullscreen": "/zh-CN/docs/Web/CSS/:fullscreen",
    ":future": "/en-US/docs/Web/CSS/:future",
    ":has-slotted": "/en-US/docs/Web/CSS/:has-slotted",
    ":has": "/zh-CN/docs/Web/CSS/:has",
    ":host": "/zh-CN/docs/Web/CSS/:host",
    ":host-context": "/zh-CN/docs/Web/CSS/:host-context",
    ":host_function": "/zh-CN/docs/Web/CSS/:host_function",
    ":hover": "/zh-CN/docs/Web/CSS/:hover",
    ":in-range": "/zh-CN/docs/Web/CSS/:in-range",
    ":indeterminate": "/zh-CN/docs/Web/CSS/:indeterminate",
    ":invalid": "/zh-CN/docs/Web/CSS/:invalid",
    ":is": "/zh-CN/docs/Web/CSS/:is",
    ":lang": "/zh-CN/docs/Web/CSS/:lang",
    ":last-child": "/zh-CN/docs/Web/CSS/:last-child",
    ":last-of-type": "/zh-CN/docs/Web/CSS/:last-of-type",
    ":left": "/zh-CN/docs/Web/CSS/:left",
    ":link": "/zh-CN/docs/Web/CSS/:link",
    ":local-link": "/en-US/docs/Web/CSS/:local-link",
    ":modal": "/en-US/docs/Web/CSS/:modal",
    ":muted": "/en-US/docs/Web/CSS/:muted",
    ":not": "/zh-CN/docs/Web/CSS/:not",
    ":nth-child": "/zh-CN/docs/Web/CSS/:nth-child",
    ":nth-last-child": "/zh-CN/docs/Web/CSS/:nth-last-child",
    ":nth-last-of-type": "/zh-CN/docs/Web/CSS/:nth-last-of-type",
    ":nth-of-type": "/zh-CN/docs/Web/CSS/:nth-of-type",
    ":only-child": "/zh-CN/docs/Web/CSS/:only-child",
    ":only-of-type": "/zh-CN/docs/Web/CSS/:only-of-type",
    ":open": "/en-US/docs/Web/CSS/:open",
    ":optional": "/zh-CN/docs/Web/CSS/:optional",
    ":out-of-range": "/zh-CN/docs/Web/CSS/:out-of-range",
    ":past": "/en-US/docs/Web/CSS/:past",
    ":paused": "/zh-CN/docs/Web/CSS/:paused",
    ":picture-in-picture": "/zh-CN/docs/Web/CSS/:picture-in-picture",
    ":placeholder-shown": "/zh-CN/docs/Web/CSS/:placeholder-shown",
    ":playing": "/zh-CN/docs/Web/CSS/:playing",
    ":popover-open": "/en-US/docs/Web/CSS/:popover-open",
    ":read-only": "/zh-CN/docs/Web/CSS/:read-only",
    ":read-write": "/zh-CN/docs/Web/CSS/:read-write",
    ":required": "/zh-CN/docs/Web/CSS/:required",
    ":right": "/zh-CN/docs/Web/CSS/:right",
    ":root": "/zh-CN/docs/Web/CSS/:root",
    ":scope": "/zh-CN/docs/Web/CSS/:scope",
    ":seeking": "/zh-CN/docs/Web/CSS/:seeking",
    ":stalled": "/en-US/docs/Web/CSS/:stalled",
    ":state": "/en-US/docs/Web/CSS/:state",
    ":target": "/zh-CN/docs/Web/CSS/:target",
    ":target-within": "/en-US/docs/Web/CSS/:target-within",
    ":user-invalid": "/en-US/docs/Web/CSS/:user-invalid",
    ":user-valid": "/en-US/docs/Web/CSS/:user-valid",
    ":valid": "/zh-CN/docs/Web/CSS/:valid",
    ":visited": "/zh-CN/docs/Web/CSS/:visited",
    ":volume-locked": "/zh-CN/docs/Web/CSS/:volume-locked",
    ":where": "/zh-CN/docs/Web/CSS/:where"
  },
  "伪元素": {
    "::-moz-*": {
      "::-moz-color-swatch": "/zh-CN/docs/Web/CSS/::-moz-color-swatch",
      "::-moz-focus-inner": "/zh-CN/docs/Web/CSS/::-moz-focus-inner",
      "::-moz-list-bullet": "/zh-CN/docs/Web/CSS/::-moz-list-bullet",
      "::-moz-list-number": "/zh-CN/docs/Web/CSS/::-moz-list-number",
      "::-moz-meter-bar": "/en-US/docs/Web/CSS/::-moz-meter-bar",
      "::-moz-progress-bar": "/zh-CN/docs/Web/CSS/::-moz-progress-bar",
      "::-moz-range-progress": "/zh-CN/docs/Web/CSS/::-moz-range-progress",
      "::-moz-range-thumb": "/en-US/docs/Web/CSS/::-moz-range-thumb",
      "::-moz-range-track": "/en-US/docs/Web/CSS/::-moz-range-track"
    },
    "::-webkit-*": {
      "::-webkit-inner-spin-button": "/en-US/docs/Web/CSS/::-webkit-inner-spin-button",
      "::-webkit-meter-bar": "/en-US/docs/Web/CSS/::-webkit-meter-bar",
      "::-webkit-meter-even-less-good-value": "/en-US/docs/Web/CSS/::-webkit-meter-even-less-good-value",
      "::-webkit-meter-inner-element": "/en-US/docs/Web/CSS/::-webkit-meter-inner-element",
      "::-webkit-meter-optimum-value": "/en-US/docs/Web/CSS/::-webkit-meter-optimum-value",
      "::-webkit-meter-suboptimum-value": "/en-US/docs/Web/CSS/::-webkit-meter-suboptimum-value",
      "::-webkit-progress-bar": "/zh-CN/docs/Web/CSS/::-webkit-progress-bar",
      "::-webkit-progress-inner-element": "/zh-CN/docs/Web/CSS/::-webkit-progress-inner-element",
      "::-webkit-progress-value": "/zh-CN/docs/Web/CSS/::-webkit-progress-value",
      "::-webkit-scrollbar": "/zh-CN/docs/Web/CSS/::-webkit-scrollbar",
      "::-webkit-search-cancel-button": "/en-US/docs/Web/CSS/::-webkit-search-cancel-button",
      "::-webkit-search-results-button": "/en-US/docs/Web/CSS/::-webkit-search-results-button",
      "::-webkit-slider-runnable-track": "/zh-CN/docs/Web/CSS/::-webkit-slider-runnable-track",
      "::-webkit-slider-thumb": "/zh-CN/docs/Web/CSS/::-webkit-slider-thumb"
    },
    "::after": "/zh-CN/docs/Web/CSS/::after",
    "::backdrop": "/zh-CN/docs/Web/CSS/::backdrop",
    "::before": "/zh-CN/docs/Web/CSS/::before",
    "::cue": "/zh-CN/docs/Web/CSS/::cue",
    "::details-content": "/en-US/docs/Web/CSS/::details-content",
    "::file-selector-button": "/zh-CN/docs/Web/CSS/::file-selector-button",
    "::first-letter": "/zh-CN/docs/Web/CSS/::first-letter",
    "::first-line": "/zh-CN/docs/Web/CSS/::first-line",
    "::grammar-error": "/zh-CN/docs/Web/CSS/::grammar-error",
    "::highlight": "/zh-CN/docs/Web/CSS/::highlight",
    "::marker": "/zh-CN/docs/Web/CSS/::marker",
    "::part": "/zh-CN/docs/Web/CSS/::part",
    "::placeholder": "/zh-CN/docs/Web/CSS/::placeholder",
    "::selection": "/zh-CN/docs/Web/CSS/::selection",
    "::slotted": "/zh-CN/docs/Web/CSS/::slotted",
    "::spelling-error": "/zh-CN/docs/Web/CSS/::spelling-error",
    "::target-text": "/zh-CN/docs/Web/CSS/::target-text",
    "::view-transition": "/zh-CN/docs/Web/CSS/::view-transition",
    "::view-transition-group": "/zh-CN/docs/Web/CSS/::view-transition-group",
    "::view-transition-image-pair": "/zh-CN/docs/Web/CSS/::view-transition-image-pair",
    "::view-transition-new": "/zh-CN/docs/Web/CSS/::view-transition-new",
    "::view-transition-old": "/zh-CN/docs/Web/CSS/::view-transition-old"
  },
  "At 规则": {
    "@charset": "/zh-CN/docs/Web/CSS/@charset",
    "@color-profile": "/en-US/docs/Web/CSS/@color-profile",
    "@container": "/en-US/docs/Web/CSS/@container",
    "@counter-style": "/zh-CN/docs/Web/CSS/@counter-style",
    "@document": "/zh-CN/docs/Web/CSS/@document",
    "@font-face": "/zh-CN/docs/Web/CSS/@font-face",
    "@font-feature-values": "/zh-CN/docs/Web/CSS/@font-feature-values",
    "@font-palette-values": "/en-US/docs/Web/CSS/@font-palette-values",
    "@import": "/zh-CN/docs/Web/CSS/@import",
    "@keyframes": "/zh-CN/docs/Web/CSS/@keyframes",
    "@layer": "/zh-CN/docs/Web/CSS/@layer",
    "@media": "/zh-CN/docs/Web/CSS/@media",
    "@namespace": "/zh-CN/docs/Web/CSS/@namespace",
    "@page": "/zh-CN/docs/Web/CSS/@page",
    "@position-try": "/en-US/docs/Web/CSS/@position-try",
    "@property": "/zh-CN/docs/Web/CSS/@property",
    "@scope": "/en-US/docs/Web/CSS/@scope",
    "@starting-style": "/en-US/docs/Web/CSS/@starting-style",
    "@supports": "/zh-CN/docs/Web/CSS/@supports",
    "@view-transition": "/en-US/docs/Web/CSS/@view-transition"
  },
  "函数": {
    "-moz-image-rect": "/zh-CN/docs/Web/CSS/-moz-image-rect",
    "abs": "/en-US/docs/Web/CSS/abs",
    "acos": "/zh-CN/docs/Web/CSS/acos",
    "anchor-size": "/en-US/docs/Web/CSS/anchor-size",
    "anchor": "/en-US/docs/Web/CSS/anchor",
    "asin": "/zh-CN/docs/Web/CSS/asin",
    "atan": "/zh-CN/docs/Web/CSS/atan",
    "atan2": "/zh-CN/docs/Web/CSS/atan2",
    "attr": "/zh-CN/docs/Web/CSS/attr",
    "blur": "/zh-CN/docs/Web/CSS/filter-function/blur",
    "brightness": "/zh-CN/docs/Web/CSS/filter-function/brightness",
    "calc-size": "/en-US/docs/Web/CSS/calc-size",
    "calc": "/zh-CN/docs/Web/CSS/calc",
    "circle": "/zh-CN/docs/Web/CSS/basic-shape/circle",
    "clamp": "/zh-CN/docs/Web/CSS/clamp",
    "color-mix": "/zh-CN/docs/Web/CSS/color_value/color-mix",
    "color": "/en-US/docs/Web/CSS/color_value/color",
    "conic-gradient": "/zh-CN/docs/Web/CSS/gradient/conic-gradient",
    "contrast": "/zh-CN/docs/Web/CSS/filter-function/contrast",
    "cos": "/zh-CN/docs/Web/CSS/cos",
    "counter": "/zh-CN/docs/Web/CSS/counter",
    "counters": "/zh-CN/docs/Web/CSS/counters",
    "cross-fade": "/en-US/docs/Web/CSS/cross-fade",
    "cubic-bezier": "/en-US/docs/Web/CSS/easing-function/cubic-bezier",
    "device-cmyk": "/zh-CN/docs/Web/CSS/color_value/device-cmyk",
    "drop-shadow": "/zh-CN/docs/Web/CSS/filter-function/drop-shadow",
    "element": "/zh-CN/docs/Web/CSS/element",
    "ellipse": "/zh-CN/docs/Web/CSS/basic-shape/ellipse",
    "env": "/zh-CN/docs/Web/CSS/env",
    "exp": "/zh-CN/docs/Web/CSS/exp",
    "fit-content": "/zh-CN/docs/Web/CSS/fit-content_function",
    "grayscale": "/zh-CN/docs/Web/CSS/filter-function/grayscale",
    "hsl": "/zh-CN/docs/Web/CSS/color_value/hsl",
    "hue-rotate": "/en-US/docs/Web/CSS/filter-function/hue-rotate",
    "hwb": "/en-US/docs/Web/CSS/color_value/hwb",
    "hypot": "/zh-CN/docs/Web/CSS/hypot",
    "image-set": "/en-US/docs/Web/CSS/image/image-set",
    "image": "/en-US/docs/Web/CSS/image/image",
    "inset": "/zh-CN/docs/Web/CSS/basic-shape/inset",
    "invert": "/en-US/docs/Web/CSS/filter-function/invert",
    "lab": "/zh-CN/docs/Web/CSS/color_value/lab",
    "layer": "/en-US/docs/Web/CSS/@import/layer_function",
    "lch": "/zh-CN/docs/Web/CSS/color_value/lch",
    "light-dark": "/en-US/docs/Web/CSS/color_value/light-dark",
    "linear-gradient": "/zh-CN/docs/Web/CSS/gradient/linear-gradient",
    "linear": "/en-US/docs/Web/CSS/easing-function/linear",
    "log": "/zh-CN/docs/Web/CSS/log",
    "matrix": "/zh-CN/docs/Web/CSS/transform-function/matrix",
    "matrix3d": "/zh-CN/docs/Web/CSS/transform-function/matrix3d",
    "max": "/zh-CN/docs/Web/CSS/max",
    "min": "/zh-CN/docs/Web/CSS/min",
    "minmax": "/zh-CN/docs/Web/CSS/minmax",
    "mod": "/en-US/docs/Web/CSS/mod",
    "oklab": "/zh-CN/docs/Web/CSS/color_value/oklab",
    "oklch": "/zh-CN/docs/Web/CSS/color_value/oklch",
    "opacity": "/zh-CN/docs/Web/CSS/filter-function/opacity",
    "paint": "/en-US/docs/Web/CSS/image/paint",
    "palette-mix": "/en-US/docs/Web/CSS/font-palette/palette-mix",
    "path": "/zh-CN/docs/Web/CSS/basic-shape/path",
    "perspective": "/zh-CN/docs/Web/CSS/transform-function/perspective",
    "polygon": "/zh-CN/docs/Web/CSS/basic-shape/polygon",
    "pow": "/zh-CN/docs/Web/CSS/pow",
    "radial-gradient": "/zh-CN/docs/Web/CSS/gradient/radial-gradient",
    "ray": "/en-US/docs/Web/CSS/ray",
    "rect": "/zh-CN/docs/Web/CSS/basic-shape/rect",
    "rem": "/en-US/docs/Web/CSS/rem",
    "repeat": "/zh-CN/docs/Web/CSS/repeat",
    "repeating-conic-gradient": "/en-US/docs/Web/CSS/gradient/repeating-conic-gradient",
    "repeating-linear-gradient": "/zh-CN/docs/Web/CSS/gradient/repeating-linear-gradient",
    "repeating-radial-gradient": "/zh-CN/docs/Web/CSS/gradient/repeating-radial-gradient",
    "rgb": "/zh-CN/docs/Web/CSS/color_value/rgb",
    "rotate": "/zh-CN/docs/Web/CSS/transform-function/rotate",
    "rotate3d": "/zh-CN/docs/Web/CSS/transform-function/rotate3d",
    "rotateX": "/zh-CN/docs/Web/CSS/transform-function/rotateX",
    "rotateY": "/zh-CN/docs/Web/CSS/transform-function/rotateY",
    "rotateZ": "/zh-CN/docs/Web/CSS/transform-function/rotateZ",
    "round": "/en-US/docs/Web/CSS/round",
    "saturate": "/en-US/docs/Web/CSS/filter-function/saturate",
    "scale": "/zh-CN/docs/Web/CSS/transform-function/scale",
    "scale3d": "/en-US/docs/Web/CSS/transform-function/scale3d",
    "scaleX": "/zh-CN/docs/Web/CSS/transform-function/scaleX",
    "scaleY": "/en-US/docs/Web/CSS/transform-function/scaleY",
    "scaleZ": "/en-US/docs/Web/CSS/transform-function/scaleZ",
    "scroll": "/en-US/docs/Web/CSS/animation-timeline/scroll",
    "sepia": "/en-US/docs/Web/CSS/filter-function/sepia",
    "shape": "/zh-CN/docs/Web/CSS/basic-shape/shape",
    "sign": "/en-US/docs/Web/CSS/sign",
    "sin": "/zh-CN/docs/Web/CSS/sin",
    "skew": "/zh-CN/docs/Web/CSS/transform-function/skew",
    "skewX": "/zh-CN/docs/Web/CSS/transform-function/skewX",
    "skewY": "/en-US/docs/Web/CSS/transform-function/skewY",
    "sqrt": "/zh-CN/docs/Web/CSS/sqrt",
    "steps": "/en-US/docs/Web/CSS/easing-function/steps",
    "symbols": "/en-US/docs/Web/CSS/symbols",
    "tan": "/zh-CN/docs/Web/CSS/tan",
    "translate": "/zh-CN/docs/Web/CSS/transform-function/translate",
    "translate3d": "/zh-CN/docs/Web/CSS/transform-function/translate3d",
    "translateX": "/zh-CN/docs/Web/CSS/transform-function/translateX",
    "translateY": "/zh-CN/docs/Web/CSS/transform-function/translateY",
    "translateZ": "/en-US/docs/Web/CSS/transform-function/translateZ",
    "url": "/zh-CN/docs/Web/CSS/url_function",
    "var": "/zh-CN/docs/Web/CSS/var",
    "view": "/en-US/docs/Web/CSS/animation-timeline/view",
    "xywh": "/zh-CN/docs/Web/CSS/basic-shape/xywh"
  },
  "类型": {
    "<absolute-size>": "/zh-CN/docs/Web/CSS/absolute-size",
    "<alpha-value>": "/zh-CN/docs/Web/CSS/alpha-value",
    "<angle-percentage>": "/zh-CN/docs/Web/CSS/angle-percentage",
    "<angle>": "/zh-CN/docs/Web/CSS/angle",
    "<baseline-position>": "/en-US/docs/Web/CSS/baseline-position",
    "<basic-shape>": "/zh-CN/docs/Web/CSS/basic-shape",
    "<blend-mode>": "/zh-CN/docs/Web/CSS/blend-mode",
    "<box-edge>": "/zh-CN/docs/Web/CSS/box-edge",
    "<calc-keyword>": "/en-US/docs/Web/CSS/calc-keyword",
    "<calc-sum>": "/en-US/docs/Web/CSS/calc-sum",
    "<color-interpolation-method>": "/zh-CN/docs/Web/CSS/color-interpolation-method",
    "<color>": "/zh-CN/docs/Web/CSS/color_value",
    "<content-distribution>": "/en-US/docs/Web/CSS/content-distribution",
    "<content-position>": "/en-US/docs/Web/CSS/content-position",
    "<custom-ident>": "/zh-CN/docs/Web/CSS/custom-ident",
    "<dashed-ident>": "/en-US/docs/Web/CSS/dashed-ident",
    "<dimension>": "/zh-CN/docs/Web/CSS/dimension",
    "<display-box>": "/zh-CN/docs/Web/CSS/display-box",
    "<display-inside>": "/en-US/docs/Web/CSS/display-inside",
    "<display-internal>": "/zh-CN/docs/Web/CSS/display-internal",
    "<display-legacy>": "/zh-CN/docs/Web/CSS/display-legacy",
    "<display-listitem>": "/en-US/docs/Web/CSS/display-listitem",
    "<display-outside>": "/zh-CN/docs/Web/CSS/display-outside",
    "<easing-function>": "/zh-CN/docs/Web/CSS/easing-function",
    "<filter-function>": "/zh-CN/docs/Web/CSS/filter-function",
    "<flex>": "/zh-CN/docs/Web/CSS/flex_value",
    "<frequency-percentage>": "/en-US/docs/Web/CSS/frequency-percentage",
    "<frequency>": "/zh-CN/docs/Web/CSS/frequency",
    "<generic-family>": "/en-US/docs/Web/CSS/generic-family",
    "<gradient>": "/zh-CN/docs/Web/CSS/gradient",
    "<hex-color>": "/zh-CN/docs/Web/CSS/hex-color",
    "<hue-interpolation-method>": "/zh-CN/docs/Web/CSS/hue-interpolation-method",
    "<hue>": "/en-US/docs/Web/CSS/hue",
    "<ident>": "/en-US/docs/Web/CSS/ident",
    "<image>": "/zh-CN/docs/Web/CSS/image",
    "<integer>": "/zh-CN/docs/Web/CSS/integer",
    "<length-percentage>": "/zh-CN/docs/Web/CSS/length-percentage",
    "<length>": "/zh-CN/docs/Web/CSS/length",
    "<line-style>": "/en-US/docs/Web/CSS/line-style",
    "<named-color>": "/zh-CN/docs/Web/CSS/named-color",
    "<number>": "/zh-CN/docs/Web/CSS/number",
    "<overflow-position>": "/en-US/docs/Web/CSS/overflow-position",
    "<overflow>": "/en-US/docs/Web/CSS/overflow_value",
    "<percentage>": "/zh-CN/docs/Web/CSS/percentage",
    "<position-area>": "/en-US/docs/Web/CSS/position-area_value",
    "<position>": "/zh-CN/docs/Web/CSS/position_value",
    "<ratio>": "/zh-CN/docs/Web/CSS/ratio",
    "<relative-size>": "/zh-CN/docs/Web/CSS/relative-size",
    "<resolution>": "/zh-CN/docs/Web/CSS/resolution",
    "<self-position>": "/en-US/docs/Web/CSS/self-position",
    "<shape>": "/en-US/docs/Web/CSS/shape",
    "<string>": "/zh-CN/docs/Web/CSS/string",
    "<system-color>": "/zh-CN/docs/Web/CSS/system-color",
    "<text-edge>": "/en-US/docs/Web/CSS/text-edge",
    "<time-percentage>": "/zh-CN/docs/Web/CSS/time-percentage",
    "<time>": "/zh-CN/docs/Web/CSS/time",
    "<transform-function>": "/zh-CN/docs/Web/CSS/transform-function",
    "<url>": "/zh-CN/docs/Web/CSS/url_value"
  }
}


CSS 样式基础

CSS 如何运行

让我们开始 CSS 的学习之旅

运用你的新知识

CSS 选择器

属性选择器

伪类和伪元素

关系选择器

盒模型

层叠、优先级与继承

CSS 值和单位

在 CSS 中调整大小

背景与边框

溢出的内容

图像、媒体和表单元素

样式化表格

调试 CSS

基本的 CSS 理解

创建精美的信纸

一个漂亮的盒子

CSS 文本样式

基本文本和字体样式

为列表添加样式

样式化链接

Web 字体

作业：排版社区大学首页

CSS 布局概述

介绍 CSS 布局

浮动

定位

弹性盒子

网格

响应式设计

媒体查询入门指南

作业：基本布局理解，
