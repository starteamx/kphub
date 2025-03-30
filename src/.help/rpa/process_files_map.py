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

def get_first_file_path(json_file_path):
    """
    获取当前映射中第一个元素的值（绝对路径）
    
    Args:
        json_file_path (str): JSON文件的路径
        
    Returns:
        str: 第一个文件的绝对路径，如果映射为空则返回None
    """
    try:
        # 读取JSON文件
        with open(json_file_path, 'r', encoding='utf-8') as f:
            file_map = json.load(f)
        
        # 检查映射是否为空
        if not file_map:
            return None
        
        # 获取第一个键
        first_key = next(iter(file_map))
        
        # 获取对应的值（绝对路径）
        first_file_path = file_map[first_key]
        
        return first_file_path
    
    except Exception as e:
        return None

def remove_first_element(json_file_path):
    """
    删除当前映射中的第一个元素并保存更新后的映射
    
    Args:
        json_file_path (str): JSON文件的路径
        
    Returns:
        bool: 操作是否成功
    """
    try:
        # 读取JSON文件
        with open(json_file_path, 'r', encoding='utf-8') as f:
            file_map = json.load(f)
        
        # 检查映射是否为空
        if not file_map:
            return False
        
        # 获取第一个键
        first_key = next(iter(file_map))
        
        # 记录被删除的元素
        removed_value = file_map[first_key]
        
        # 删除第一个元素
        del file_map[first_key]
        
        # 保存更新后的映射，确保中文正确显示
        with open(json_file_path, 'w', encoding='utf-8') as f:
            json.dump(file_map, f, indent=2, ensure_ascii=False)
        
        return True
    
    except Exception as e:
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
            return None
            
        # 读取文件内容
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
            
        return content
        
    except Exception as e:
        return None

def write_clipboard_to_file(file_path, append=False):
    """
    将剪贴板内容写入指定文件
    
    Args:
        file_path (str): 目标文件的绝对路径
        append (bool): 是否追加模式，默认为False（覆盖模式）
        
    Returns:
        bool: 操作是否成功
    """
    try:
        import pyperclip
        
        # 获取剪贴板内容
        content = pyperclip.paste()
        
        # 写入模式选择
        mode = 'a' if append else 'w'
        
        # 写入文件
        with open(file_path, mode, encoding='utf-8') as f:
            f.write(content)
            
        return True
        
    except Exception as e:
        print(f"写入文件失败: {str(e)}")
        return False

def is_json_empty(json_file_path):
    """
    检查JSON文件是否为空
    
    Args:
        json_file_path (str): JSON文件的路径
        
    Returns:
        bool: 如果JSON为空返回True，否则返回False
    """
    try:
        with open(json_file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
            return len(data) == 0
    except Exception as e:
        print(f"检查JSON文件是否为空时发生错误: {str(e)}")
        return True

def main():
    """主函数"""
    # 检查命令行参数
    if len(sys.argv) < 2:
        print("用法: python process_files_map.py [get|remove|read|write] [参数1] [参数2]")
        return
    
    # 获取命令
    command = sys.argv[1].lower()
    
    if command == "get":
        # 获取JSON文件路径（如果提供）
        json_file_path = sys.argv[2]
        
        # 检查JSON文件是否存在
        if not os.path.exists(json_file_path):
            print(f"错误: 文件 {json_file_path} 不存在")
            return
            
        # 获取第一个文件路径
        first_file_path = get_first_file_path(json_file_path)
        if first_file_path:
            # 仅输出路径，方便其他程序使用
            print(first_file_path)
    
    elif command == "remove":
        # 获取JSON文件路径（如果提供）
        json_file_path = sys.argv[2]
        
        # 检查JSON文件是否存在
        if not os.path.exists(json_file_path):
            print(f"错误: 文件 {json_file_path} 不存在")
            return
            
        # 删除第一个元素
        remove_first_element(json_file_path)
    
    elif command == "read":
        # 检查是否提供了文件路径
        if len(sys.argv) < 2:
            print("错误: read命令需要提供文件路径")
            return
            
        # 获取文件路径
        file_path = sys.argv[2]
        
        # 读取指定文件的内容
        content = read_file_content(file_path)
        if content:
            print(content)
    
    elif command == "write":
        # 检查参数
        if len(sys.argv) < 3:
            print("错误: write命令需要提供文件路径")
            return
            
        # 获取文件路径和可选的追加模式参数
        file_path = sys.argv[2]
        append = len(sys.argv) > 3 and sys.argv[3].lower() == 'append'
        
        # 写入剪贴板内容
        if write_clipboard_to_file(file_path, append):
            print(f"已{'追加' if append else '写入'}内容到文件: {file_path}")
        else:
            print("写入失败")
    
    else:
        print(f"未知命令: {command}")
        print("可用命令: get, remove, read <文件路径>, write <文件路径> [append]")

if __name__ == "__main__":
    main()