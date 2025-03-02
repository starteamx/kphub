#!/bin/bash

# 创建CSS进阶指南目录结构和文件头部内容
# 作者: Trae AI
# 日期: $(date +%Y-%m-%d)

# 基础路径
BASE_PATH="/Users/guanrunbai/my/kphub/src/frontend/CSS/进阶指南"

# 创建基础目录
mkdir -p "$BASE_PATH"

# 创建目录结构和文件
create_directory_and_files() {
  local dir_path="$BASE_PATH/$1"
  local dir_title="$2"
  local dir_order="$3"
  mkdir -p "$dir_path"
  
  # 创建目录的README文件
  echo "创建目录README: $dir_path/README.md"
  cat > "$dir_path/README.md" << EOF
---
title: $dir_title
icon: folder
order: $dir_order
---

# $dir_title

本目录包含与$dir_title相关的所有文档，帮助您深入理解这一领域的CSS知识。

## 包含文档
EOF
  
  # 创建目录下的文件
  local file_order=1
  for file_info in "${@:4}"; do
    IFS='|' read -r file_name file_title <<< "$file_info"
    file_path="$dir_path/$file_name"
    
    echo "创建文件: $file_path"
    
    # 更新目录README文件，添加文件链接
    echo "- [${file_title}](./${file_name})" >> "$dir_path/README.md"
    
    # 创建文件并写入头部内容
    cat > "$file_path" << EOF
---
title: ${file_title}
icon: code
order: ${file_order}
---

# $file_title

## 概述

本文将详细介绍$file_title的相关知识，包括基本概念、实际应用以及最佳实践。

## 目录

- [基本概念](#基本概念)
- [实际应用](#实际应用)
- [高级技巧](#高级技巧)
- [浏览器兼容性](#浏览器兼容性)
- [最佳实践](#最佳实践)
- [参考资源](#参考资源)

## 基本概念

EOF
    ((file_order++))
  done
}

# 创建各个模块的目录和文件
echo "开始创建CSS进阶指南目录结构..."

# 01-CSS基础布局
create_directory_and_files "01-CSS基础布局" "CSS基础布局" 1 \
  "01-盒模型基础.md|CSS盒模型基础" \
  "02-流式布局详解.md|CSS流式布局详解" \
  "03-定位与z-index.md|CSS定位与z-index" \
  "04-格式化上下文.md|CSS格式化上下文"

# 02-CSS现代布局
create_directory_and_files "02-CSS现代布局" "CSS现代布局" 2 \
  "01-弹性盒布局.md|CSS弹性盒布局" \
  "02-网格布局.md|CSS网格布局" \
  "03-多列布局.md|CSS多列布局" \
  "04-布局方法对比.md|CSS布局方法对比"

# 03-CSS对齐与尺寸
create_directory_and_files "03-CSS对齐与尺寸" "CSS对齐与尺寸" 3 \
  "01-盒对齐方式.md|CSS盒对齐方式" \
  "02-逻辑属性与值.md|CSS逻辑属性与值" \
  "03-尺寸与数学函数.md|CSS尺寸与数学函数"

# 04-CSS视觉效果
create_directory_and_files "04-CSS视觉效果" "CSS视觉效果" 4 \
  "01-颜色与渐变.md|CSS颜色与渐变" \
  "02-背景与边框.md|CSS背景与边框" \
  "03-变换与过渡.md|CSS变换与过渡" \
  "04-动画效果.md|CSS动画效果" \
  "05-形状与图像.md|CSS形状与图像"

# 05-CSS响应式设计
create_directory_and_files "05-CSS响应式设计" "CSS响应式设计" 5 \
  "01-媒体查询.md|CSS媒体查询" \
  "02-容器查询.md|CSS容器查询" \
  "03-响应式布局策略.md|CSS响应式布局策略" \
  "04-打印样式.md|CSS打印样式"

# 06-CSS高级特性
create_directory_and_files "06-CSS高级特性" "CSS高级特性" 6 \
  "01-CSS嵌套规则.md|CSS嵌套规则" \
  "02-条件规则与特性查询.md|CSS条件规则与特性查询" \
  "03-列表与计数器.md|CSS列表与计数器" \
  "04-滚动吸附.md|CSS滚动吸附" \
  "05-无障碍设计.md|CSS无障碍设计"

# 创建索引文件
cat > "$BASE_PATH/README.md" << EOF
---
title: CSS进阶指南
icon: css
order: 1
---

# CSS进阶指南

本指南提供了全面的CSS进阶知识，帮助开发者掌握现代CSS技术和最佳实践。

## 目录

### 1. CSS基础布局
- [盒模型基础](./01-CSS基础布局/01-盒模型基础.md)
- [流式布局详解](./01-CSS基础布局/02-流式布局详解.md)
- [定位与z-index](./01-CSS基础布局/03-定位与z-index.md)
- [格式化上下文](./01-CSS基础布局/04-格式化上下文.md)

### 2. CSS现代布局
- [弹性盒布局](./02-CSS现代布局/01-弹性盒布局.md)
- [网格布局](./02-CSS现代布局/02-网格布局.md)
- [多列布局](./02-CSS现代布局/03-多列布局.md)
- [布局方法对比](./02-CSS现代布局/04-布局方法对比.md)

### 3. CSS对齐与尺寸
- [盒对齐方式](./03-CSS对齐与尺寸/01-盒对齐方式.md)
- [逻辑属性与值](./03-CSS对齐与尺寸/02-逻辑属性与值.md)
- [尺寸与数学函数](./03-CSS对齐与尺寸/03-尺寸与数学函数.md)

### 4. CSS视觉效果
- [颜色与渐变](./04-CSS视觉效果/01-颜色与渐变.md)
- [背景与边框](./04-CSS视觉效果/02-背景与边框.md)
- [变换与过渡](./04-CSS视觉效果/03-变换与过渡.md)
- [动画效果](./04-CSS视觉效果/04-动画效果.md)
- [形状与图像](./04-CSS视觉效果/05-形状与图像.md)

### 5. CSS响应式设计
- [媒体查询](./05-CSS响应式设计/01-媒体查询.md)
- [容器查询](./05-CSS响应式设计/02-容器查询.md)
- [响应式布局策略](./05-CSS响应式设计/03-响应式布局策略.md)
- [打印样式](./05-CSS响应式设计/04-打印样式.md)

### 6. CSS高级特性
- [CSS嵌套规则](./06-CSS高级特性/01-CSS嵌套规则.md)
- [条件规则与特性查询](./06-CSS高级特性/02-条件规则与特性查询.md)
- [列表与计数器](./06-CSS高级特性/03-列表与计数器.md)
- [滚动吸附](./06-CSS高级特性/04-滚动吸附.md)
- [无障碍设计](./06-CSS高级特性/05-无障碍设计.md)
EOF

echo "CSS进阶指南目录结构创建完成！"
echo "总共创建了25个文档文件、6个目录README文件和1个主README索引文件。"
echo "文件路径: $BASE_PATH"

# 添加执行权限
chmod +x "$0"