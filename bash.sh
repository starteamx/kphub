# 创建HTML进阶指南的所有文件
cd /Users/guanrunbai/my/kphub/src/frontend/HTML/进阶指南

# 创建01内容分类.md
cat > 01内容分类.md << 'EOF'
---
title: 内容分类
icon: category
order: 1
---

# HTML内容分类

HTML元素根据其内容模型可以分为不同的类别。理解这些内容分类对于正确使用HTML元素、遵循HTML规范以及创建语义化文档至关重要。本文将详细介绍HTML的内容分类模型。

## 待完善...
EOF

# 创建02块级元素.md
cat > 02块级元素.md << 'EOF'
---
title: 块级元素
icon: square
order: 2
---

# HTML块级元素

块级元素是HTML中的一类重要元素，它们在页面中占据独立的区块，通常在视觉上表现为另起一行。本文将深入探讨块级元素的特性、常见的块级元素以及它们的正确使用方法。

## 待完善...
EOF

# 创建03行级元素.md
cat > 03行级元素.md << 'EOF'
---
title: 行级元素
icon: minus
order: 3
---

# HTML行级元素

行级元素（也称为内联元素）是HTML中的另一类重要元素，它们通常在一行内显示，不会导致文本换行。本文将详细介绍行级元素的特性、常见的行级元素以及它们的正确使用方法。

## 待完善...
EOF

# 创建04怪异模式和标准模式.md
cat > 04怪异模式和标准模式.md << 'EOF'
---
title: 怪异模式和标准模式
icon: code
order: 4
---

# HTML怪异模式和标准模式

浏览器渲染网页时会使用不同的渲染模式，主要包括怪异模式（Quirks Mode）和标准模式（Standards Mode）。这些模式会影响页面的解析和渲染方式，对网页的外观和行为产生重要影响。本文将详细介绍这些模式的区别和使用场景。

## 待完善...
EOF

# 创建05HTML中使用的日期与时间格式.md
cat > 05HTML中使用的日期与时间格式.md << 'EOF'
---
title: HTML中使用的日期与时间格式
icon: calendar
order: 5
---

# HTML中使用的日期与时间格式

在HTML中，日期和时间的表示有特定的格式要求，特别是在使用`<time>`元素和datetime属性时。正确的日期时间格式可以提高网页的语义化和机器可读性。本文将详细介绍HTML中日期和时间的标准格式及其使用方法。

## 待完善...
EOF

# 创建06约束验证.md
cat > 06约束验证.md << 'EOF'
---
title: 约束验证
icon: check-circle
order: 6
---

# HTML约束验证

HTML5引入了强大的表单验证功能，称为约束验证（Constraint Validation）。这使得开发者可以在不依赖JavaScript的情况下，对表单输入进行基本验证。本文将详细介绍HTML约束验证的原理和使用方法。

## 待完善...
EOF

# 创建07微数据.md
cat > 07微数据.md << 'EOF'
---
title: 微数据
icon: database
order: 7
---

# HTML微数据

微数据（Microdata）是一种将机器可读信息嵌入到HTML内容中的方法，它使搜索引擎能够更好地理解网页内容，并可能在搜索结果中显示更丰富的信息。本文将详细介绍HTML微数据的概念和实现方法。

## 待完善...
EOF

# 创建08微格式.md
cat > 08微格式.md << 'EOF'
---
title: 微格式
icon: tags
order: 8
---

# HTML微格式

微格式（Microformats）是一种通过在HTML中添加特定的类名和属性，为网页内容添加语义信息的方法。它们使得网页内容不仅对人类可读，也对机器可读。本文将详细介绍常见的微格式及其实现方法。

## 待完善...
EOF

# 创建09Viewport_meta标签.md
cat > 09Viewport_meta标签.md << 'EOF'
---
title: Viewport meta标签
icon: mobile
order: 9
---

# HTML Viewport meta标签

Viewport meta标签是响应式网页设计中的关键元素，它控制页面在移动设备上的显示方式。正确设置viewport可以确保网页在不同设备上有良好的显示效果。本文将详细介绍viewport meta标签的作用和配置方法。

## 待完善...
EOF

# 创建10允许图片和canvas跨源使用.md
cat > 10允许图片和canvas跨源使用.md << 'EOF'
---
title: 允许图片和canvas跨源使用
icon: image
order: 10
---

# HTML允许图片和canvas跨源使用

在Web开发中，跨源资源共享（CORS）是一个重要的安全概念。对于图片和canvas元素，正确设置跨源属性可以在保证安全的前提下实现跨域资源的使用。本文将详细介绍如何允许图片和canvas跨源使用。

## 待完善...
EOF

echo "所有HTML进阶指南文件已创建完成！"