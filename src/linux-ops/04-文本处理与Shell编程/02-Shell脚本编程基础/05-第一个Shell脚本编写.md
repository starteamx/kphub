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

### 步骤2：设置执行权限

在Windows系统中，如果你使用WSL（Windows Subsystem for Linux）或Git Bash等环境，需要为脚本文件添加执行权限：

```bash
chmod +x hello.sh
```

如果你在纯Windows环境中使用PowerShell或CMD，则不需要设置执行权限，但需要确保你有正确的执行策略设置。

### 步骤3：执行脚本

有多种方式可以执行Shell脚本：

#### 方式1：使用解释器直接执行

```bash
bash hello.sh
```

这种方式不需要脚本有执行权限，也不需要shebang行。

#### 方式2：使用相对路径执行

```bash
./hello.sh
```

这种方式需要脚本有执行权限，且shebang行正确指定解释器。

#### 方式3：使用绝对路径执行

```bash
C:\path\to\hello.sh
```

或在类Unix环境中：

```bash
/path/to/hello.sh
```

#### 方式4：在Windows中使用关联程序执行

在Windows中，你可以将`.sh`文件关联到Git Bash或其他Shell环境，然后双击文件执行。

## 理解脚本执行过程

当你执行一个Shell脚本时，系统会按照以下步骤处理：

1. **解释器确定**：系统首先根据shebang行或执行命令确定使用哪个解释器
2. **脚本加载**：解释器将脚本文件加载到内存
3. **语法解析**：解释器解析脚本内容，检查语法错误
4. **命令执行**：解释器按顺序执行脚本中的每条命令
5. **结果返回**：脚本执行完毕后返回退出状态码

## 编写更复杂的脚本

让我们编写一个稍微复杂一点的脚本，展示更多Shell编程特性：

```bash
#!/bin/bash

# 脚本名称: info.sh
# 描述: 显示系统和用户信息
# 作者: Your Name
# 日期: 2023-06-01

# 定义颜色常量
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 显示带颜色的标题
echo -e "${BLUE}=== 系统信息报告 ===${NC}"

# 获取并显示当前日期和时间
current_date=$(date "+%Y-%m-%d %H:%M:%S")
echo -e "${GREEN}当前时间:${NC} $current_date"

# 获取并显示用户信息
echo -e "${GREEN}当前用户:${NC} $USER"
echo -e "${GREEN}主目录:${NC} $HOME"

# 获取并显示系统信息
echo -e "${YELLOW}=== 操作系统信息 ===${NC}"
if [ -f /etc/os-release ]; then
    # Linux系统
    os_name=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d= -f2 | tr -d '"')
    echo -e "${GREEN}操作系统:${NC} $os_name"
elif [ "$(uname)" == "Darwin" ]; then
    # macOS系统
    os_name=$(sw_vers -productName)
    os_version=$(sw_vers -productVersion)
    echo -e "${GREEN}操作系统:${NC} $os_name $os_version"
elif [ "$(uname -s)" == "Windows_NT" ]; then
    # Windows系统
    os_name="Windows"
    echo -e "${GREEN}操作系统:${NC} $os_name"
else
    echo -e "${RED}无法确定操作系统类型${NC}"
fi

# 获取并显示磁盘使用情况
echo -e "${YELLOW}=== 磁盘使用情况 ===${NC}"
if command -v df &> /dev/null; then
    df -h | grep -v "tmpfs" | grep -v "udev"
else
    echo -e "${RED}无法获取磁盘信息，df命令不可用${NC}"
fi

# 获取并显示内存使用情况
echo -e "${YELLOW}=== 内存使用情况 ===${NC}"
if command -v free &> /dev/null; then
    free -h
elif [ "$(uname)" == "Darwin" ]; then
    # macOS系统使用vm_stat
    echo "总物理内存: $(sysctl -n hw.memsize | awk '{print $0/1024/1024/1024 " GB"}')"
    vm_stat | perl -ne '/page size of (\d+)/ and $size=$1; /Pages free: (\d+)/ and printf("空闲内存: %.2f GB\n", $1 * $size / 1024 / 1024 / 1024);'
elif [ "$(uname -s)" == "Windows_NT" ]; then
    # Windows系统
    echo -e "${RED}在Windows中获取内存信息需要使用wmic命令${NC}"
    echo "请使用: wmic OS get FreePhysicalMemory,TotalVisibleMemorySize /Value"
else
    echo -e "${RED}无法获取内存信息${NC}"
fi

# 检查并显示网络连接
echo -e "${YELLOW}=== 网络连接状态 ===${NC}"
if ping -c 1 google.com &> /dev/null; then
    echo -e "${GREEN}互联网连接:${NC} 正常"
else
    echo -e "${RED}互联网连接:${NC} 异常"
fi

# 显示脚本执行完成信息
echo -e "${BLUE}=== 信息收集完成 ===${NC}"

# 退出脚本，返回成功状态码
exit 0
```

这个脚本展示了以下Shell编程特性：

1. **脚本头部注释**：包含脚本名称、描述、作者和日期
2. **颜色输出**：使用ANSI转义序列为输出添加颜色
3. **变量定义与使用**：定义变量并在脚本中使用
4. **命令替换**：使用`$(command)`获取命令输出
5. **条件判断**：使用`if-elif-else`结构进行条件判断
6. **命令存在性检查**：使用`command -v`检查命令是否可用
7. **管道和过滤**：使用`|`连接命令，使用`grep`过滤输出
8. **退出状态码**：使用`exit`命令返回状态码

## 脚本调试技巧

编写Shell脚本时，调试是必不可少的步骤。以下是一些常用的调试技巧：

### 使用-x选项启用调试模式

```bash
bash -x hello.sh
```

或在脚本内部启用：

```bash
#!/bin/bash
set -x  # 启用调试模式
echo "Hello, World!"
set +x  # 禁用调试模式
```

### 使用-v选项显示脚本执行过程

```bash
bash -v hello.sh
```

### 使用echo语句进行调试

```bash
#!/bin/bash
echo "DEBUG: 变量值为 $variable"
```

### 使用自定义调试函数

```bash
#!/bin/bash

# 调试函数
debug() {
    [ "$DEBUG" = "true" ] && echo "DEBUG: $*"
}

# 设置调试模式
DEBUG=true

# 使用调试函数
debug "开始执行脚本"
variable="test"
debug "变量值为: $variable"
```

## 脚本错误处理

良好的错误处理是编写健壮Shell脚本的关键。以下是一些错误处理技巧：

### 使用set -e启用错误检测

```bash
#!/bin/bash
set -e  # 遇到错误时立即退出

# 如果这个命令失败，脚本将立即退出
non_existent_command

echo "这行不会执行"
```

### 使用trap捕获错误

```bash
#!/bin/bash

# 错误处理函数
error_handler() {
    echo "错误: 脚本在第 $1 行发生错误" >&2
    exit 1
}

# 设置错误陷阱
trap 'error_handler $LINENO' ERR

# 测试错误处理
echo "开始执行"
non_existent_command  # 这将触发错误处理
echo "这行不会执行"
```

### 检查命令执行状态

```bash
#!/bin/bash

# 执行命令并检查状态
if ! mkdir -p /tmp/test; then
    echo "无法创建目录" >&2
    exit 1
fi

# 或者使用 && 和 || 操作符
mkdir -p /tmp/test && echo "目录创建成功" || echo "目录创建失败"
```

## 脚本参数处理

Shell脚本可以接收并处理命令行参数，这使得脚本更加灵活和可重用。

### 基本参数访问

```bash
#!/bin/bash

echo "脚本名称: $0"
echo "第一个参数: $1"
echo "第二个参数: $2"
echo "所有参数: $@"
echo "参数个数: $#"
```

执行：`bash script.sh arg1 arg2 arg3`

### 使用shift命令处理参数

```bash
#!/bin/bash

echo "处理所有参数:"
while [ $# -gt 0 ]; do
    echo "当前参数: $1"
    shift  # 移除第一个参数
done
```

### 使用getopts处理选项

```bash
#!/bin/bash

# 默认值
verbose=false
output_file=""

# 解析选项
while getopts "vo:h" opt; do
    case $opt in
        v)
            verbose=true
            ;;
        o)
            output_file="$OPTARG"
            ;;
        h)
            echo "用法: $0 [-v] [-o 输出文件] [文件...]"
            exit 0
            ;;
        \?)
            echo "无效选项: -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "选项 -$OPTARG 需要参数." >&2
            exit 1
            ;;
    esac
done

# 移除已处理的选项
shift $((OPTIND-1))

# 显示设置
echo "详细模式: $verbose"
echo "输出文件: ${output_file:-标准输出}"
echo "剩余参数: $@"
```

执行：`bash script.sh -v -o output.txt file1.txt file2.txt`

## 实用脚本示例

以下是一些实用的Shell脚本示例，可以作为学习和参考：

### 文件备份脚本

```bash
#!/bin/bash

# 备份脚本
# 用法: backup.sh 源目录 目标目录

# 检查参数
if [ $# -ne 2 ]; then
    echo "用法: $0 源目录 目标目录"
    exit 1
fi

# 获取参数
source_dir="$1"
target_dir="$2"
date_suffix=$(date +%Y%m%d_%H%M%S)
backup_file="backup_${date_suffix}.tar.gz"

# 检查源目录是否存在
if [ ! -d "$source_dir" ]; then
    echo "错误: 源目录不存在: $source_dir"
    exit 1
fi

# 创建目标目录(如果不存在)
if [ ! -d "$target_dir" ]; then
    mkdir -p "$target_dir" || {
        echo "错误: 无法创建目标目录: $target_dir"
        exit 1
    }
fi

# 执行备份
echo "开始备份: $source_dir -> $target_dir/$backup_file"
tar -czf "$target_dir/$backup_file" -C "$(dirname "$source_dir")" "$(basename "$source_dir")" || {
    echo "错误: 备份失败"
    exit 1
}

echo "备份完成: $target_dir/$backup_file"
exit 0
```

### 批量文件重命名脚本

```bash
#!/bin/bash

# 批量文件重命名脚本
# 用法: rename.sh 目录 旧模式 新模式

# 检查参数
if [ $# -ne 3 ]; then
    echo "用法: $0 目录 旧模式 新模式"
    echo "例如: $0 /path/to/files .jpg .jpeg"
    exit 1
fi

# 获取参数
directory="$1"
old_pattern="$2"
new_pattern="$3"

# 检查目录是否存在
if [ ! -d "$directory" ]; then
    echo "错误: 目录不存在: $directory"
    exit 1
fi

# 计数器
count=0

# 遍历目录中的文件
for file in "$directory"/*"$old_pattern"; do
    # 检查文件是否存在(处理无匹配情况)
    if [ ! -f "$file" ]; then
        echo "警告: 没有找到匹配 *$old_pattern 的文件"
        exit 0
    fi
    
    # 生成新文件名
    new_file="${file%$old_pattern}$new_pattern"
    
    # 重命名文件
    mv "$file" "$new_file" && {
        echo "重命名: $file -> $new_file"
        count=$((count + 1))
    } || {
        echo "错误: 无法重命名 $file"
    }
done

echo "完成: 已重命名 $count 个文件"
exit 0
```

### 系统监控脚本

```bash
#!/bin/bash

# 系统监控脚本
# 用法: monitor.sh [间隔秒数] [次数]

# 默认值
interval=5
count=10

# 获取参数
if [ $# -ge 1 ]; then
    interval="$1"
fi

if [ $# -ge 2 ]; then
    count="$2"
fi

# 检查参数是否为数字
if ! [[ "$interval" =~ ^[0-9]+$ ]]; then
    echo "错误: 间隔必须是数字"
    exit 1
fi

if ! [[ "$count" =~ ^[0-9]+$ ]]; then
    echo "错误: 次数必须是数字"
    exit 1
fi

# 显示监控信息
echo "系统监控开始 (间隔: ${interval}秒, 次数: $count)"
echo "按 Ctrl+C 停止监控"
echo "----------------------------------------"

# 监控循环
for ((i=1; i<=count; i++)); do
    # 显示时间
    date "+%Y-%m-%d %H:%M:%S"
    
    # 显示CPU使用率
    echo "CPU使用率:"
    if command -v mpstat &> /dev/null; then
        mpstat | grep -A 5 "%usr" | tail -n 1
    else
        top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "CPU使用率: " 100 - $1 "%"}'
    fi
    
    # 显示内存使用情况
    echo "内存使用情况:"
    if command -v free &> /dev/null; then
        free -h | grep -E "Mem|内存"
    fi
    
    # 显示磁盘使用情况
    echo "磁盘使用情况:"
    df -h | grep -vE "tmpfs|udev"
    
    # 显示负载情况
    echo "系统负载:"
    uptime
    
    echo "----------------------------------------"
    
    # 如果不是最后一次，则等待
    if [ $i -lt $count ]; then
        sleep "$interval"
    fi
done

echo "监控完成"
exit 0
```

## 脚本最佳实践

编写Shell脚本时，遵循以下最佳实践可以提高脚本的质量和可维护性：

### 1. 始终包含shebang行

```bash
#!/bin/bash
```

或者更具可移植性的：

```bash
#!/usr/bin/env bash
```

### 2. 添加脚本文档

```bash
#!/bin/bash
#
# 名称: script.sh
# 描述: 这个脚本的用途
# 作者: Your Name
# 日期: 2023-06-01
# 用法: ./script.sh [选项] 参数
```

### 3. 使用有意义的变量名

```bash
# 好的命名
user_name="John"
log_file="/var/log/app.log"
max_retry_count=5

# 避免的命名
u="John"        # 太简短，不清晰
LogFile="/var/log/app.log"  # 不一致的大小写
```

### 4. 使用函数组织代码

```bash
#!/bin/bash

# 显示帮助信息
show_help() {
    echo "用法: $0 [选项] 参数"
    echo "选项:"
    echo "  -h, --help    显示帮助信息"
    echo "  -v, --verbose 显示详细输出"
}

# 处理文件
process_file() {
    local file="$1"
    echo "处理文件: $file"
    # 处理逻辑...
}

# 主函数
main() {
    # 主要逻辑...
    process_file "example.txt"
}

# 执行主函数
main "$@"
```

### 5. 错误处理和退出状态

```bash
#!/bin/bash

# 启用错误检测
set -e

# 错误处理函数
error_exit() {
    echo "错误: $1" >&2
    exit 1
}

# 使用错误处理
if [ ! -f "$config_file" ]; then
    error_exit "配置文件不存在: $config_file"
fi

# 成功完成
echo "操作成功完成"
exit 0
```

### 6. 安全地处理文件路径和变量

```bash
#!/bin/bash

# 引用变量避免单词分割和通配符展开
file_name="my file.txt"
if [ -f "$file_name" ]; then
    echo "文件存在: $file_name"
fi

# 安全地处理文件路径
safe_rm() {
    local file="$1"
    if [ -f "$file" ]; then
        rm "$file"
    else
        echo "警告: 文件不存在: $file"
    fi
}
```

### 7. 使用临时文件

```bash
#!/bin/bash

# 创建临时文件
temp_file=$(mktemp) || {
    echo "无法创建临时文件" >&2
    exit 1
}

# 确保退出时删除临时文件
trap "rm -f '$temp_file'" EXIT

# 使用临时文件
echo "数据" > "$temp_file"
cat "$temp_file"
```

## 结论

通过本文的学习，你已经掌握了Shell脚本编写的基础知识，包括创建脚本文件、设置执行权限、执行脚本、调试技巧、错误处理、参数处理等内容。你还学习了一些实用的脚本示例和最佳实践，这些将帮助你编写出高质量的Shell脚本。

Shell脚本是系统管理和自动化任务的强大工具，随着你的不断实践和学习，你将能够编写更加复杂和实用的脚本来解决各种问题。记住，最好的学习方法是实践，尝试修改和扩展本文中的示例，创建自己的脚本来满足特定需求。

祝你在Shell脚本编程的旅程中取得成功！