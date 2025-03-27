"""
处理文件映射脚本

此脚本用于处理files-map.json文件，提供两个主要功能：
1. 获取当前映射中第一个元素的值（绝对路径）
2. 删除当前的第一个元素并保存更新后的映射
3. 读取指定文件的内容
4. 读取知识规则文件的内容
"""

import json
import os
import sys

# 文件路径
JSON_FILE_PATH = "C:\\project\\kphub\\src\\.help\\files-map.json"
KNOWLEDGE_RULES_PATH = "C:\\project\\kphub\\src\\.help\\knowdge_rules.md"

def get_first_file_path():
    """
    获取当前映射中第一个元素的值（绝对路径）
    
    Returns:
        str: 第一个文件的绝对路径，如果映射为空则返回None
    """
    try:
        # 读取JSON文件
        with open(JSON_FILE_PATH, 'r', encoding='utf-8') as f:
            file_map = json.load(f)
        
        # 检查映射是否为空
        if not file_map:
            print("文件映射为空")
            return None
        
        # 获取第一个键
        first_key = next(iter(file_map))
        
        # 获取对应的值（绝对路径）
        first_file_path = file_map[first_key]
        
        print(f"获取到第一个文件: {first_key} -> {first_file_path}")
        return first_file_path
    
    except Exception as e:
        print(f"获取第一个文件路径时出错: {e}")
        return None

def remove_first_element():
    """
    删除当前映射中的第一个元素并保存更新后的映射
    
    Returns:
        bool: 操作是否成功
    """
    try:
        # 读取JSON文件
        with open(JSON_FILE_PATH, 'r', encoding='utf-8') as f:
            file_map = json.load(f)
        
        # 检查映射是否为空
        if not file_map:
            print("文件映射为空，无法删除元素")
            return False
        
        # 获取第一个键
        first_key = next(iter(file_map))
        
        # 记录被删除的元素
        removed_value = file_map[first_key]
        
        # 删除第一个元素
        del file_map[first_key]
        
        # 保存更新后的映射
        with open(JSON_FILE_PATH, 'w', encoding='utf-8') as f:
            json.dump(file_map, f, indent=2)
        
        print(f"已删除第一个元素: {first_key} -> {removed_value}")
        print(f"剩余元素数量: {len(file_map)}")
        return True
    
    except Exception as e:
        print(f"删除第一个元素时出错: {e}")
        return False

def read_file_content(file_path):
    """
    读取指定文件的内容
    
    Args:
        file_path (str): 文件的绝对路径
        
    Returns:
        str: 文件内容，如果读取失败则返回None
    """
    try:
        # 检查文件是否存在
        if not os.path.exists(file_path):
            print(f"错误: 文件 {file_path} 不存在")
            return None
            
        # 读取文件内容
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
            
        return content
        
    except Exception as e:
        print(f"读取文件内容时出错: {e}")
        return None

def get_knowledge_rules():
    """
    读取知识规则文件的内容
    
    Returns:
        str: 知识规则文件的内容，如果读取失败则返回None
    """
    return read_file_content(KNOWLEDGE_RULES_PATH)

def main():
    """主函数"""
    # 检查命令行参数
    if len(sys.argv) < 2:
        print("用法: python process_files_map.py [get|remove|read|rules]")
        return
    
    # 检查JSON文件是否存在
    if not os.path.exists(JSON_FILE_PATH) and sys.argv[1].lower() not in ["read", "rules"]:
        print(f"错误: 文件 {JSON_FILE_PATH} 不存在")
        return
    
    # 根据命令行参数执行相应的操作
    command = sys.argv[1].lower()
    
    if command == "get":
        # 获取第一个文件路径
        first_file_path = get_first_file_path()
        if first_file_path:
            # 仅输出路径，方便其他程序使用
            print(first_file_path)
    
    elif command == "remove":
        # 删除第一个元素
        remove_first_element()
    
    elif command == "read" and len(sys.argv) >= 3:
        # 读取指定文件的内容
        file_path = sys.argv[2]
        content = read_file_content(file_path)
        if content:
            print(content)
    
    elif command == "rules":
        # 读取知识规则文件的内容
        rules = get_knowledge_rules()
        if rules:
            print(rules)
    
    else:
        print(f"未知命令: {command}")
        print("可用命令: get, remove, read <文件路径>, rules")

if __name__ == "__main__":
    main()