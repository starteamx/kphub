---
title: 第一个Shell脚本编写
icon: practice
order: 5
---

# 第一个Shell脚本编写

本文将指导读者编写并运行第一个Shell脚本，介绍脚本文件的创建、权限设置、执行方式等基础知识，帮助初学者快速入门Shell脚本编程。

## 创建第一个Shell脚本

让我们从一个简单的"Hello World"脚本开始，体验Shell脚本的基本结构和执行过程。

### 步骤1：创建脚本文件

使用文本编辑器创建一个新文件，命名为`hello.sh`：

```bash
#!/bin/bash

# 这是我的第一个Shell脚本
echo "Hello, World!"
echo "当前日期是: $(date)"
echo "当前用户是: $USER"
```

这个简单的脚本包含了以下几个部分：

1. **Shebang行**（`#!/bin/bash`）：指定使用bash解释器执行脚本
2. **注释**：以`#`开头的行是注释，不会被执行
3. **命令**：`echo`命令用于输出文本
4. **命令替换**：`$(date)`会被替换为`date`命令的输出
5. **变量引用**：`$USER`会被替换为当前用户名
