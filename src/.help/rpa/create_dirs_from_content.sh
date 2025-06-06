#!/bin/bash

SCRIPT_FILE="/Users/guanrunbai/my/kphub/src/.help/rpa/category_bash_oc.sh"
BASE_DIR="/Users/guanrunbai/my/kphub/src/object-c"

if [ ! -f "$SCRIPT_FILE" ]; then
    echo "错误: 文件 $SCRIPT_FILE 不存在"
    exit 1
fi

echo "正在从 $SCRIPT_FILE 提取目录路径..."
grep -oE 'cat > "[^"]+' "$SCRIPT_FILE" | sed 's/cat > "//' | while read -r file_path; do
    if [ -z "$file_path" ]; then
        echo "警告: 找到空的文件路径，跳过..."
        continue
    fi

    # 1. 将路径中的 BASE_DIR 替换为变量形式（用于实际操作）
    dir_path=$(echo "$file_path" | sed "s|^${BASE_DIR}|\$BASE_DIR|")
    dir_path=$(dirname "$dir_path")  # 提取替换后的目录路径

    # 2. 展开 $BASE_DIR 变量为实际值（兼容动态变量）
    eval "expanded_dir=\"$dir_path\""  # 解析 $BASE_DIR 为真实路径

    # 调试信息
    echo "提取的文件路径: $file_path"
    echo "替换后的目录路径: $dir_path"
    echo "实际创建的目录路径: $expanded_dir"

    # 3. 创建目录（使用展开后的真实路径）
    if [ ! -d "$expanded_dir" ]; then
        echo "创建目录: $expanded_dir"
        mkdir -p "$expanded_dir" && echo "成功" || echo "失败"
    else
        echo "目录已存在: $expanded_dir"
    fi
done

echo "目录创建完成"