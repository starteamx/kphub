/**
 * 文件路径映射生成脚本
 * 
 * 此脚本用于遍历指定路径的文件夹，获取所有文件，
 * 并生成一个JSON文件，其中key是文件的相对路径，value是文件的全路径
 * 只有行数超过指定阈值的文件才会被包含
 * 
 * 使用方法：node file-length-to-json.js <目标文件夹路径> <输出JSON文件路径> <最小行数阈值>
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

// 获取当前文件的目录路径
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// 获取项目根目录路径
function findRootDir(startDir) {
  let currentDir = startDir;
  while (currentDir !== path.parse(currentDir).root) {
    if (fs.existsSync(path.join(currentDir, 'package.json'))) {
      return currentDir;
    }
    currentDir = path.dirname(currentDir);
  }
  throw new Error('找不到项目根目录（package.json 所在目录）');
}

const rootDir = findRootDir(__dirname);

const projectDir = "C:\\project\\kphub\\";
const defaultTargetDir = path.join(projectDir, "src\\linux-ops");
const defaultOutputFile = path.join(projectDir, "src\\.help\\rpa\\files-map.json");
const defaultMinLines = 200; // 默认最小行数阈值

// 解析命令行参数
const args = process.argv.slice(2);
const targetDir = args[0] || defaultTargetDir; // 默认为当前目录下的src文件夹
const outputFile = args[1] || defaultOutputFile; // 默认输出文件名
const minLines = parseInt(args[2]) || defaultMinLines; // 默认最小行数阈值

// 存储文件映射的对象
const filesMap = {};

/**
 * 获取文件的行数
 * @param {string} filePath - 文件路径
 * @returns {number} 文件行数
 */
function getFileLineCount(filePath) {
  try {
    const content = fs.readFileSync(filePath, 'utf8');
    return content.split('\n').length;
  } catch (error) {
    console.error(`读取文件 ${filePath} 行数时出错:`, error.message);
    return 0;
  }
}

/**
 * 递归遍历目录并收集文件信息
 * @param {string} dir - 要遍历的目录路径
 */
function traverseDirectory(dir) {
  try {
    // 读取目录内容
    const files = fs.readdirSync(dir);
    
    // 遍历目录中的每个文件/文件夹
    for (const file of files) {
      const fullPath = path.join(dir, file);
      const stats = fs.statSync(fullPath);
      
      if (stats.isDirectory()) {
        // 如果是目录，递归遍历
        traverseDirectory(fullPath);
      } else {
        // 获取文件行数
        const lineCount = getFileLineCount(fullPath);
        
        // 只有当文件行数小过阈值时才添加到映射对象
        if (lineCount < minLines) {
          const relativePath = path.relative(rootDir, fullPath);
          filesMap[relativePath] = relativePath;
          console.log(`添加文件: ${relativePath} (${lineCount} 行)`);
        }
      }
    }
  } catch (error) {
    console.error(`遍历目录 ${dir} 时出错:`, error.message);
  }
}

/**
 * 将文件映射保存为JSON文件
 * @param {Object} map - 文件映射对象
 * @param {string} outputPath - 输出文件路径
 */
function saveMapToJson(map, outputPath) {
  try {
    // 确保输出目录存在
    const outputDir = path.dirname(outputPath);
    if (!fs.existsSync(outputDir)) {
      fs.mkdirSync(outputDir, { recursive: true });
    }
    
    // 将对象转换为JSON字符串并写入文件
    const jsonContent = JSON.stringify(map, null, 2); // 使用2个空格缩进，使JSON更易读
    fs.writeFileSync(outputPath, jsonContent);
    
    console.log(`文件映射已保存到: ${outputPath}`);
    console.log(`共找到 ${Object.keys(map).length} 个超过 ${minLines} 行的文件`);
  } catch (error) {
    console.error(`保存JSON文件时出错:`, error.message);
  }
}

// 主函数
function main() {
  console.log(`开始遍历目录: ${targetDir}`);
  console.log(`最小行数阈值: ${minLines}`);
  
  // 检查目标目录是否存在
  if (!fs.existsSync(targetDir)) {
    console.error(`错误: 目录 ${targetDir} 不存在`);
    process.exit(1);
  }
  
  // 遍历目录
  traverseDirectory(targetDir);
  
  // 保存结果到JSON文件
  saveMapToJson(filesMap, outputFile);
}

// 执行主函数
main();