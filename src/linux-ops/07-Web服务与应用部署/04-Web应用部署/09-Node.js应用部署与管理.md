---
title: Node.js应用部署与管理  
icon: practice  
order: 9  
---

# Node.js应用部署与管理  

Node.js应用的部署与管理是确保应用稳定运行、高效扩展和安全可靠的关键环节。本文将详细介绍从环境准备到容器化部署的完整流程，帮助开发者构建生产级Node.js应用。

## 1. 环境准备  

在部署Node.js应用前，需要准备适当的运行环境，包括Node.js运行时和相关配置。

### 1.1 Node.js安装  

Node.js可以通过多种方式安装，但推荐使用Node Version Manager (NVM)进行安装和版本管理，这样可以轻松切换不同版本的Node.js。

```powershell
# 使用nvm安装Node.js
wsl curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# 加载NVM环境
wsl source ~/.bashrc

# 查看可用的Node.js版本
wsl nvm list-remote

# 安装特定版本的Node.js
wsl nvm install 18.16.0

# 设置为默认版本
wsl nvm alias default 18.16.0

# 切换到已安装的版本
wsl nvm use 18.16.0

# 验证安装
wsl node --version
wsl npm --version
```

对于Windows环境，也可以直接使用官方安装包：

```powershell
# 下载并安装Node.js
Invoke-WebRequest -Uri https://nodejs.org/dist/v18.16.0/node-v18.16.0-x64.msi -OutFile node.msi
Start-Process msiexec.exe -ArgumentList '/i', 'node.msi', '/quiet', '/norestart' -Wait
Remove-Item node.msi

# 验证安装
node --version
npm --version
```

### 1.2 环境变量配置  

正确配置环境变量对于应用的运行至关重要，特别是区分开发环境和生产环境。

```powershell
# 设置生产环境变量
$env:NODE_ENV = "production"
$env:PORT = "3000"

# 将环境变量永久保存到系统（Windows）
[System.Environment]::SetEnvironmentVariable("NODE_ENV", "production", "Machine")
[System.Environment]::SetEnvironmentVariable("PORT", "3000", "Machine")

# 创建.env文件管理环境变量
@"
NODE_ENV=production
PORT=3000
DB_HOST=localhost
DB_PORT=5432
DB_USER=appuser
DB_PASS=apppassword
JWT_SECRET=your-secret-key
REDIS_URL=redis://localhost:6379
"@ | Out-File -FilePath "c:\project\kphub\.env" -Encoding utf8
```

推荐使用dotenv库来加载.env文件中的环境变量：

```javascript:c:\project\kphub\config\env.js
// 加载环境变量
require('dotenv').config();

// 导出配置
module.exports = {
  nodeEnv: process.env.NODE_ENV || 'development',
  port: parseInt(process.env.PORT, 10) || 3000,
  database: {
    host: process.env.DB_HOST || 'localhost',
    port: parseInt(process.env.DB_PORT, 10) || 5432,
    user: process.env.DB_USER,
    password: process.env.DB_PASS
  },
  jwtSecret: process.env.JWT_SECRET,
  redisUrl: process.env.REDIS_URL
};
```

## 2. 应用部署  

应用部署涉及代码准备、依赖安装和启动配置等多个环节。

### 2.1 项目依赖安装  

在生产环境中，应只安装必要的生产依赖，避免开发依赖带来的安全风险和资源浪费。

```powershell
# 进入项目目录
cd c:\project\kphub

# 安装生产依赖
wsl npm install --production

# 或使用npm ci确保依赖版本一致性（推荐用于生产部署）
wsl npm ci --production

# 检查并修复依赖问题
wsl npm audit fix

# 生成package-lock.json以锁定依赖版本
wsl npm install --package-lock-only
```

### 2.2 启动脚本配置  

在package.json中配置启动脚本，便于统一管理应用的启动方式。

```json:c:\project\kphub\package.json
{
  "name": "kphub-application",
  "version": "1.0.0",
  "description": "Knowledge Platform Hub Application",
  "main": "app.js",
  "scripts": {
    "start": "node app.js",
    "dev": "nodemon app.js",
    "prod": "NODE_ENV=production node app.js",
    "pm2:start": "pm2 start ecosystem.config.js --env production",
    "pm2:restart": "pm2 restart ecosystem.config.js --env production",
    "pm2:stop": "pm2 stop ecosystem.config.js",
    "pm2:delete": "pm2 delete ecosystem.config.js",
    "pm2:logs": "pm2 logs",
    "pm2:monitor": "pm2 monit",
    "test": "jest",
    "lint": "eslint ."
  },
  "dependencies": {
    "express": "^4.18.2",
    "dotenv": "^16.0.3",
    "helmet": "^6.1.5",
    "winston": "^3.8.2",
    "mongoose": "^7.1.0",
    "pm2": "^5.3.0"
  },
  "devDependencies": {
    "nodemon": "^2.0.22",
    "jest": "^29.5.0",
    "eslint": "^8.39.0"
  },
  "engines": {
    "node": ">=18.0.0"
  }
}
```

创建PM2的配置文件，实现更精细的进程管理：

```javascript:c:\project\kphub\ecosystem.config.js
module.exports = {
  apps: [{
    name: 'kphub-app',
    script: 'app.js',
    instances: 'max',
    autorestart: true,
    watch: false,
    max_memory_restart: '1G',
    env: {
      NODE_ENV: 'development'
    },
    env_production: {
      NODE_ENV: 'production',
      PORT: 3000
    },
    log_date_format: 'YYYY-MM-DD HH:mm:ss',
    error_file: 'logs/error.log',
    out_file: 'logs/output.log',
    merge_logs: true,
    time: true
  }]
};
```

### 2.3 构建与打包

对于使用TypeScript或需要构建步骤的项目，应在部署前完成构建：

```powershell
# TypeScript项目构建
wsl npm run build

# 创建部署包
wsl npm pack

# 或使用webpack打包
wsl npm run webpack:prod
```

构建配置示例（TypeScript项目）：

```json:c:\project\kphub\tsconfig.json
{
  "compilerOptions": {
    "target": "es2020",
    "module": "commonjs",
    "outDir": "./dist",
    "rootDir": "./src",
    "strict": true,
    "esModuleInterop": true,
    "skipLibCheck": true,
    "forceConsistentCasingInFileNames": true
  },
  "include": ["src/**/*"],
  "exclude": ["node_modules", "**/*.test.ts"]
}
```

## 3. 进程管理  

Node.js应用在生产环境中需要可靠的进程管理，以确保应用持续运行并能自动恢复。

### 3.1 PM2基础使用  

PM2是Node.js应用最常用的进程管理工具，提供了进程守护、负载均衡和运行时监控等功能。

```powershell
# 全局安装PM2
wsl npm install -g pm2

# 基本启动应用
wsl pm2 start app.js --name "kphub-app"

# 使用集群模式启动（自动负载均衡）
wsl pm2 start app.js -i max --name "kphub-app"

# 使用特定实例数量
wsl pm2 start app.js -i 4 --name "kphub-app"

# 使用配置文件启动
wsl pm2 start ecosystem.config.js --env production

# 重启应用
wsl pm2 restart kphub-app

# 停止应用
wsl pm2 stop kphub-app

# 删除应用
wsl pm2 delete kphub-app
```

### 3.2 PM2高级配置与管理  

PM2提供了丰富的管理功能，可以满足复杂的生产环境需求。

```powershell
# 查看应用列表及状态
wsl pm2 list

# 查看特定应用详情
wsl pm2 show kphub-app

# 实时监控资源使用
wsl pm2 monit

# 查看日志
wsl pm2 logs kphub-app

# 查看最近100行日志并添加时间戳
wsl pm2 logs --timestamp --lines 100

# 设置开机自启动
wsl pm2 startup
wsl pm2 save

# 更新PM2
wsl pm2 update

# 生成启动脚本
wsl pm2 startup systemd -u username --hp /home/username
```

PM2的Web界面监控（PM2 Plus）：

```powershell
# 连接到PM2 Plus
wsl pm2 plus
```

### 3.3 进程崩溃自动恢复

配置Node.js应用在崩溃时自动重启，确保服务可用性：

```javascript:c:\project\kphub\app.js
// 处理未捕获的异常
process.on('uncaughtException', (err) => {
  console.error('未捕获的异常:', err);
  // 记录错误日志
  // 执行必要的清理操作
  // 在生产环境中，可能需要通知管理员
  
  // 如果使用PM2，可以让PM2负责重启进程
  // 如果不使用PM2，可以选择退出进程
  // process.exit(1);
});

// 处理未处理的Promise拒绝
process.on('unhandledRejection', (reason, promise) => {
  console.error('未处理的Promise拒绝:', reason);
  // 记录错误日志
});
```

## 4. 负载均衡  

负载均衡是提高Node.js应用性能和可用性的关键技术，可以通过内置的集群模式或外部工具实现。

### 4.1 集群模式配置  

Node.js内置的cluster模块可以创建多个工作进程，充分利用多核CPU。

```javascript:c:\project\kphub\app.js
const cluster = require('cluster');
const os = require('os');
const numCPUs = os.cpus().length;

if (cluster.isMaster) {
  console.log(`主进程 ${process.pid} 正在运行`);
  
  // 记录工作进程退出情况
  cluster.on('exit', (worker, code, signal) => {
    console.log(`工作进程 ${worker.process.pid} 已退出，退出码: ${code}, 信号: ${signal}`);
    console.log('启动新的工作进程...');
    cluster.fork();
  });
  
  // 创建工作进程
  for (let i = 0; i < numCPUs; i++) {
    cluster.fork();
  }
} else {
  // 工作进程可以共享任何TCP连接
  // 在本例中，它是一个HTTP服务器
  const express = require('express');
  const app = express();
  
  app.get('/', (req, res) => {
    res.send(`工作进程 ${process.pid} 处理了请求`);
  });
  
  const PORT = process.env.PORT || 3000;
  app.listen(PORT, () => {
    console.log(`工作进程 ${process.pid} 已启动，监听端口: ${PORT}`);
  });
}
```

### 4.2 Nginx反向代理  

Nginx是一个高性能的HTTP和反向代理服务器，可以为Node.js应用提供负载均衡、SSL终止和静态资源服务等功能。

```nginx:c:\project\kphub\conf\nginx\node_app.conf
# 定义上游服务器组
upstream node_app {
  # 简单轮询
  server 127.0.0.1:3000;
  server 127.0.0.1:3001;
  server 127.0.0.1:3002;
  server 127.0.0.1:3003;
  
  # 可选配置：
  # 最少连接
  # least_conn;
  
  # IP哈希（会话保持）
  # ip_hash;
  
  # 加权轮询
  # server 127.0.0.1:3000 weight=3;
  # server 127.0.0.1:3001 weight=1;
  
  # 连接超时
  # server 127.0.0.1:3000 max_fails=3 fail_timeout=30s;
  
  # 备用服务器
  # server 127.0.0.1:3004 backup;
}

# HTTP服务器配置
server {
  listen 80;
  server_name app.example.com;
  
  # 重定向到HTTPS
  return 301 https://$host$request_uri;
}

# HTTPS服务器配置
server {
  listen 443 ssl http2;
  server_name app.example.com;
  
  # SSL配置
  ssl_certificate /etc/nginx/ssl/app.example.com.crt;
  ssl_certificate_key /etc/nginx/ssl/app.example.com.key;
  ssl_protocols TLSv1.2 TLSv1.3;
  ssl_prefer_server_ciphers on;
  ssl_ciphers 'ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384';
  ssl_session_cache shared:SSL:10m;
  ssl_session_timeout 10m;
  
  # 静态文件服务
  location /static/ {
    alias /var/www/app/static/;
    expires 30d;
    add_header Cache-Control "public, max-age=2592000";
    access_log off;
  }
  
  # API请求代理
  location /api/ {
    proxy_pass http://node_app;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_cache_bypass $http_upgrade;
    
    # 超时设置
    proxy_connect_timeout 5s;
    proxy_send_timeout 60s;
    proxy_read_timeout 60s;
    
    # 缓冲设置
    proxy_buffering on;
    proxy_buffer_size 16k;
    proxy_buffers 4 32k;
    proxy_busy_buffers_size 64k;
  }
  
  # 前端应用
  location / {
    proxy_pass http://node_app;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_cache_bypass $http_upgrade;
  }
  
  # 健康检查端点
  location /health {
    proxy_pass http://node_app/health;
    access_log off;
    proxy_cache_bypass 1;
    proxy_no_cache 1;
  }
}
```

### 4.3 应用层负载均衡

在应用代码中实现负载均衡，适用于微服务架构：

```javascript:c:\project\kphub\utils\loadBalancer.js
const axios = require('axios');

class LoadBalancer {
  constructor(serviceUrls) {
    this.serviceUrls = serviceUrls;
    this.currentIndex = 0;
  }
  
  // 简单轮询算法
  getNextServer() {
    const server = this.serviceUrls[this.currentIndex];
    this.currentIndex = (this.currentIndex + 1) % this.serviceUrls.length;
    return server;
  }
  
  // 发送请求到下一个可用服务器
  async sendRequest(path, method = 'GET', data = null) {
    const maxRetries = this.serviceUrls.length;
    let retries = 0;
    let lastError;
    
    while (retries < maxRetries) {
      const serverUrl = this.getNextServer();
      try {
        const response = await axios({
          url: `${serverUrl}${path}`,
          method,
          data,
          timeout: 5000
        });
        return response.data;
      } catch (error) {
        lastError = error;
        retries++;
        console.warn(`服务器 ${serverUrl} 请求失败，尝试下一个服务器`);
      }
    }
    
    throw new Error(`所有服务器都无法响应: ${lastError.message}`);
  }
}

module.exports = new LoadBalancer([
  'http://service1:3000',
  'http://service2:3000',
  'http://service3:3000'
]);
```

## 5. 日志管理  

完善的日志管理对于问题排查和系统监控至关重要。

### 5.1 日志框架配置  

使用Winston等专业日志框架，实现结构化日志和多目标输出。

```javascript:c:\project\kphub\utils\logger.js
const winston = require('winston');
const path = require('path');
const fs = require('fs');

// 确保日志目录存在
const logDir = path.join(__dirname, '../logs');
if (!fs.existsSync(logDir)) {
  fs.mkdirSync(logDir, { recursive: true });
}

// 定义日志格式
const logFormat = winston.format.combine(
  winston.format.timestamp({ format: 'YYYY-MM-DD HH:mm:ss' }),
  winston.format.errors({ stack: true }),
  winston.format.splat(),
  winston.format.json()
);

// 创建logger实例
const logger = winston.createLogger({
  level: process.env.NODE_ENV === 'production' ? 'info' : 'debug',
  format: logFormat,
  defaultMeta: { service: 'kphub-app' },
  transports: [
    // 写入所有日志到combined.log
    new winston.transports.File({ 
      filename: path.join(logDir, 'combined.log'),
      maxsize: 5242880, // 5MB
      maxFiles: 5,
    }),
    // 写入错误日志到error.log
    new winston.transports.File({ 
      filename: path.join(logDir, 'error.log'), 
      level: 'error',
      maxsize: 5242880, // 5MB
      maxFiles: 5,
    }),
    // 开发环境下输出到控制台
    ...(process.env.NODE_ENV !== 'production' ? [
      new winston.transports.Console({
        format: winston.format.combine(
          winston.format.colorize(),
          winston.format.simple()
        )
      })
    ] : [])
  ],
  // 处理未捕获的异常和Promise拒绝
  exceptionHandlers: [
    new winston.transports.File({ 
      filename: path.join(logDir, 'exceptions.log'),
      maxsize: 5242880, // 5MB
      maxFiles: 5,
    })
  ],
  rejectionHandlers: [
    new winston.transports.File({ 
      filename: path.join(logDir, 'rejections.log'),
      maxsize: 5242880, // 5MB
      maxFiles: 5,
    })
  ]
});

// 生产环境下也可以输出到控制台，便于容器环境查看日志
if (process.env.NODE_ENV === 'production' && process.env.CONSOLE_LOG === 'true') {
  logger.add(new winston.transports.Console({
    format: winston.format.combine(
      winston.format.timestamp(),
      winston.format.json()
    )
  }));
}

// 创建Express中间件
logger.expressMiddleware = function(req, res, next) {
  const start = Date.now();
  
  // 请求完成后记录日志
  res.on('finish', () => {
    const duration = Date.now() - start;
    logger.info({
      method: req.method,
      url: req.originalUrl || req.url,
      status: res.statusCode,
      duration: `${duration}ms`,
      userAgent: req.get('user-agent'),
      ip: req.ip || req.connection.remoteAddress
    });
  });
  
  next();
};

module.exports = logger;
```

在应用中使用日志：

```javascript:c:\project\kphub\app.js
const express = require('express');
const logger = require('./utils/logger');

const app = express();

// 使用日志中间件
app.use(logger.expressMiddleware);

app.get('/', (req, res) => {
  logger.debug('处理首页请求');
  res.send('Hello World!');
});

app.get('/error', (req, res) => {
  try {
    // 模拟错误
    throw new Error('测试错误');
  } catch (err) {
    logger.error('发生错误:', err);
    res.status(500).send('服务器错误');
  }
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  logger.info(`服务器已启动，监听端口: ${PORT}`);
});
```

### 5.2 PM2日志配置  

PM2提供了内置的日志管理功能，可以与应用日志系统协同工作。

```powershell
# 查看日志
wsl pm2 logs

# 查看特定应用的日志
wsl pm2 logs kphub-app

# 查看最近100行日志并添加时间戳
wsl pm2 logs --timestamp --lines 100

# 清空日志
wsl pm2 flush

# 重载日志（关闭并重新打开日志文件）
wsl pm2 reloadLogs
```

### 5.3 日志轮转  

定期轮转日志文件，防止单个日志文件过大，便于管理和分析。

```powershell
# 安装PM2日志轮转模块
wsl pm2 install pm2-logrotate

# 配置日志轮转
wsl pm2 set pm2-logrotate:max_size 10M
wsl pm2 set pm2-logrotate:retain 10
wsl pm2 set pm2-logrotate:compress true
wsl pm2 set pm2-logrotate:dateFormat YYYY-MM-DD_HH-mm-ss
wsl pm2 set pm2-logrotate:workerInterval 30
wsl pm2 set pm2-logrotate:rotateInterval '0 0 * * *'
```

对于不使用PM2的环境，可以使用系统的logrotate工具：

```powershell
# 创建logrotate配置文件
@"
c:/project/kphub/logs/*.log {
    daily
    rotate 10
    compress
    delaycompress
    missingok
    notifempty
    create 0640 username groupname
    sharedscripts
    postrotate
        # 可以在这里添加日志轮转后的操作
    endscript
}
"@ | Out-File -FilePath "c:\project\kphub\logrotate.conf" -Encoding utf8
```

### 5.4 集中式日志管理

对于分布式系统，建议使用ELK(Elasticsearch, Logstash, Kibana)或EFK(Elasticsearch, Fluentd, Kibana)进行集中式日志管理：

```javascript:c:\project\kphub\utils\elasticLogger.js
const winston = require('winston');
const { ElasticsearchTransport } = require('winston-elasticsearch');

// Elasticsearch传输配置
const esTransport = new ElasticsearchTransport({
  level: 'info',
  clientOpts: {
    node: 'http://elasticsearch:9200',
    auth: {
      username: 'elastic',
      password: 'password'
    }
  },
  indexPrefix: 'kphub-logs'
});

// 添加到现有logger
const logger = require('./logger');
logger.add(esTransport);

module.exports = logger;
```

## 6. 性能监控  

监控应用性能对于及时发现问题和优化系统至关重要。

### 6.1 内置监控  

使用Node.js内置模块监控基本性能指标。

```javascript:c:\project\kphub\utils\monitor.js
const os = require('os');
const process = require('process');
const EventEmitter = require('events');
const logger = require('./logger');

class SystemMonitor extends EventEmitter {
  constructor(interval = 60000) {
    super();
    this.interval = interval;
    this.timer = null;
    this.metrics = {
      startTime: Date.now(),
      lastSampleTime: null,
      cpu: {
        system: 0,
        user: 0,
        total: 0
      },
      memory: {
        rss: 0,
        heapTotal: 0,
        heapUsed: 0,
        external: 0
      },
      os: {
        totalMem: os.totalmem(),
        freeMem: 0,
        loadAvg: [0, 0, 0],
        uptime: 0
      },
      process: {
        uptime: 0
      }
    };
  }
  
  start() {
    if (this.timer) {
      return;
    }
    
    // 初始采集
    this.collectMetrics();
    
    // 定时采集
    this.timer = setInterval(() => {
      this.collectMetrics();
    }, this.interval);
    
    // 确保定时器不阻止进程退出
    this.timer.unref();
    
    logger.info('系统监控已启动，采集间隔: ' + this.interval + 'ms');
  }
  
  stop() {
    if (this.timer) {
      clearInterval(this.timer);
      this.timer = null;
      logger.info('系统监控已停止');
    }
  }
  
  collectMetrics() {
    // 更新采集时间
    this.metrics.lastSampleTime = Date.now();
    
    // 采集进程内存使用
    const memoryUsage = process.memoryUsage();
    this.metrics.memory = {
      rss: memoryUsage.rss / 1024 / 1024,
      heapTotal: memoryUsage.heapTotal / 1024 / 1024,
      heapUsed: memoryUsage.heapUsed / 1024 / 1024,
      external: memoryUsage.external / 1024 / 1024
    };
    
    // 采集CPU使用
    const cpuUsage = process.cpuUsage();
    this.metrics.cpu = {
      system: cpuUsage.system / 1000000,
      user: cpuUsage.user / 1000000,
      total: (cpuUsage.system + cpuUsage.user) / 1000000
    };
    
    // 采集OS信息
    this.metrics.os = {
      totalMem: os.totalmem() / 1024 / 1024,
      freeMem: os.freemem() / 1024 / 1024,
      loadAvg: os.loadavg(),
      uptime: os.uptime()
    };
    
    // 采集进程信息
    this.metrics.process = {
      uptime: process.uptime()
    };
    
    // 发出事件
    this.emit('metrics', this.metrics);
    
    // 记录日志
    logger.debug('系统指标:', {
      memory: this.metrics.memory,
      cpu: this.metrics.cpu,
      loadAvg: this.metrics.os.loadAvg
    });
    
    // 检查内存使用是否超过阈值
    const memoryUsagePercent = (1 - this.metrics.os.freeMem / this.metrics.os.totalMem) * 100;
    if (memoryUsagePercent > 90) {
      logger.warn('系统内存使用率过高:', memoryUsagePercent.toFixed(2) + '%');
      this.emit('highMemoryUsage', memoryUsagePercent);
    }
    
让我继续完成Node.js应用部署与管理的文档内容：

### 6.1 内置监控（续）

```javascript:c:\project\kphub\utils\monitor.js
    // 检查CPU负载是否过高
    if (this.metrics.os.loadAvg[0] > os.cpus().length * 0.8) {
      logger.warn('CPU负载过高:', this.metrics.os.loadAvg[0].toFixed(2));
      this.emit('highCpuLoad', this.metrics.os.loadAvg[0]);
    }
  }
  
  getMetrics() {
    return {
      ...this.metrics,
      uptime: (Date.now() - this.metrics.startTime) / 1000
    };
  }
  
  // 提供HTTP端点的中间件
  metricsMiddleware() {
    return (req, res) => {
      res.json(this.getMetrics());
    };
  }
}

// 创建单例
const monitor = new SystemMonitor();

module.exports = monitor;
```

在应用中使用监控模块：

```javascript:c:\project\kphub\app.js
const express = require('express');
const monitor = require('./utils/monitor');
const logger = require('./utils/logger');

const app = express();

// 启动监控
monitor.start();

// 监控事件处理
monitor.on('highMemoryUsage', (percentage) => {
  // 可以在这里添加告警逻辑，如发送邮件或短信
  logger.warn(`内存使用率过高: ${percentage.toFixed(2)}%`);
});

// 添加监控端点
app.get('/metrics', monitor.metricsMiddleware());

// 应用关闭时停止监控
process.on('SIGTERM', () => {
  monitor.stop();
  // 其他清理工作...
});
```

### 6.2 外部监控工具  

除了内置监控，还可以使用专业的Node.js性能分析工具进行更深入的监控。

```powershell
# 安装性能分析工具
wsl npm install -g clinic

# 使用Doctor分析整体性能
wsl clinic doctor -- node app.js

# 使用Bubbleprof分析异步操作
wsl clinic bubbleprof -- node app.js

# 使用Flame分析CPU使用
wsl clinic flame -- node app.js

# 使用Heapprofiler分析内存使用
wsl clinic heapprofiler -- node app.js
```

集成APM(应用性能监控)工具：

```javascript:c:\project\kphub\utils\apm.js
// 使用New Relic APM
require('newrelic');

// 或使用Elastic APM
const apm = require('elastic-apm-node').start({
  serviceName: 'kphub-app',
  serverUrl: 'http://apm-server:8200',
  environment: process.env.NODE_ENV
});

module.exports = apm;
```

### 6.3 健康检查端点

实现健康检查API，便于负载均衡器和容器编排系统监控应用状态：

```javascript:c:\project\kphub\routes\health.js
const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');
const redis = require('../utils/redis');
const monitor = require('../utils/monitor');

// 简单健康检查
router.get('/health', (req, res) => {
  res.status(200).json({ status: 'UP' });
});

// 详细健康检查
router.get('/health/details', async (req, res) => {
  try {
    // 检查数据库连接
    const dbStatus = mongoose.connection.readyState === 1 ? 'UP' : 'DOWN';
    
    // 检查Redis连接
    let redisStatus = 'DOWN';
    try {
      await redis.ping();
      redisStatus = 'UP';
    } catch (err) {
      // Redis连接失败
    }
    
    // 获取系统指标
    const metrics = monitor.getMetrics();
    
    // 组装健康状态
    const health = {
      status: dbStatus === 'UP' && redisStatus === 'UP' ? 'UP' : 'DOWN',
      components: {
        database: {
          status: dbStatus
        },
        redis: {
          status: redisStatus
        },
        diskSpace: {
          status: 'UP',
          details: {
            // 这里可以添加磁盘空间检查
          }
        }
      },
      metrics: {
        memory: metrics.memory,
        cpu: metrics.cpu,
        uptime: metrics.uptime
      }
    };
    
    // 设置适当的状态码
    const statusCode = health.status === 'UP' ? 200 : 503;
    res.status(statusCode).json(health);
  } catch (err) {
    res.status(500).json({
      status: 'DOWN',
      error: err.message
    });
  }
});

module.exports = router;
```

## 7. 安全加固  

Node.js应用在生产环境中需要多层次的安全防护。

### 7.1 依赖安全检查  

定期检查和更新依赖，防止已知漏洞。

```powershell
# 审计依赖漏洞
wsl npm audit

# 修复漏洞
wsl npm audit fix

# 强制修复，可能会更新主版本
wsl npm audit fix --force

# 生成详细报告
wsl npm audit --json > c:\project\kphub\security-audit.json

# 检查过时的依赖
wsl npm outdated

# 安装依赖更新工具
wsl npm install -g npm-check-updates

# 检查可更新的依赖
wsl ncu

# 更新package.json中的依赖版本
wsl ncu -u

# 更新依赖
wsl npm update
```

创建自动化安全检查脚本：

```javascript:c:\project\kphub\scripts\security-check.js
const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

// 执行npm audit并获取结果
try {
  console.log('执行依赖安全审计...');
  const auditOutput = execSync('npm audit --json', { encoding: 'utf8' });
  const auditResult = JSON.parse(auditOutput);
  
  // 保存审计结果
  const reportPath = path.join(__dirname, '../reports/security');
  if (!fs.existsSync(reportPath)) {
    fs.mkdirSync(reportPath, { recursive: true });
  }
  
  const timestamp = new Date().toISOString().replace(/:/g, '-');
  fs.writeFileSync(
    path.join(reportPath, `audit-${timestamp}.json`),
    JSON.stringify(auditResult, null, 2)
  );
  
  // 分析结果
  const vulnerabilities = auditResult.vulnerabilities || {};
  const totalVulnerabilities = Object.values(vulnerabilities).reduce(
    (sum, severity) => sum + severity.length,
    0
  );
  
  if (totalVulnerabilities > 0) {
    console.log(`发现 ${totalVulnerabilities} 个安全漏洞:`);
    
    // 按严重程度分类
    const severityLevels = ['critical', 'high', 'moderate', 'low'];
    severityLevels.forEach(level => {
      const vulns = vulnerabilities[level] || [];
      if (vulns.length > 0) {
        console.log(`- ${level}: ${vulns.length} 个`);
      }
    });
    
    // 尝试自动修复
    console.log('\n尝试自动修复漏洞...');
    try {
      execSync('npm audit fix', { stdio: 'inherit' });
      console.log('自动修复完成，请重新运行审计检查确认修复效果');
    } catch (fixError) {
      console.error('自动修复失败，可能需要手动处理:', fixError.message);
      console.log('考虑运行 npm audit fix --force (可能会更新主版本)');
    }
  } else {
    console.log('未发现安全漏洞，依赖状态良好！');
  }
} catch (error) {
  console.error('安全审计失败:', error.message);
  process.exit(1);
}
```

### 7.2 HTTP头安全  

使用Helmet中间件加固HTTP头，防止常见的Web攻击。

```javascript:c:\project\kphub\middlewares\security.js
const helmet = require('helmet');
const rateLimit = require('express-rate-limit');
const xss = require('xss-clean');
const hpp = require('hpp');
const cors = require('cors');
const mongoSanitize = require('express-mongo-sanitize');

module.exports = (app) => {
  // 设置安全HTTP头
  app.use(helmet());
  
  // 配置内容安全策略
  app.use(
    helmet.contentSecurityPolicy({
      directives: {
        defaultSrc: ["'self'"],
        scriptSrc: ["'self'", "'unsafe-inline'", 'cdn.jsdelivr.net'],
        styleSrc: ["'self'", "'unsafe-inline'", 'cdn.jsdelivr.net'],
        imgSrc: ["'self'", 'data:', 'cdn.jsdelivr.net'],
        connectSrc: ["'self'", 'api.example.com'],
        fontSrc: ["'self'", 'cdn.jsdelivr.net'],
        objectSrc: ["'none'"],
        mediaSrc: ["'self'"],
        frameSrc: ["'none'"],
      },
    })
  );
  
  // 启用跨域资源共享（根据需要配置）
  app.use(
    cors({
      origin: ['https://example.com', 'https://www.example.com'],
      methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
      allowedHeaders: ['Content-Type', 'Authorization'],
      credentials: true,
      maxAge: 86400 // 预检请求缓存24小时
    })
  );
  
  // 限制请求速率，防止暴力攻击
  const apiLimiter = rateLimit({
    windowMs: 15 * 60 * 1000, // 15分钟
    max: 100, // 每个IP最多100个请求
    standardHeaders: true,
    legacyHeaders: false,
    message: '请求过于频繁，请稍后再试'
  });
  app.use('/api/', apiLimiter);
  
  // 登录接口更严格的限制
  const loginLimiter = rateLimit({
    windowMs: 60 * 60 * 1000, // 1小时
    max: 10, // 每个IP最多10次尝试
    standardHeaders: true,
    legacyHeaders: false,
    message: '登录尝试次数过多，请1小时后再试'
  });
  app.use('/api/auth/login', loginLimiter);
  
  // 防止XSS攻击
  app.use(xss());
  
  // 防止HTTP参数污染
  app.use(hpp());
  
  // 防止NoSQL注入
  app.use(mongoSanitize());
  
  // 防止点击劫持
  app.use((req, res, next) => {
    res.setHeader('X-Frame-Options', 'DENY');
    next();
  });
  
  return app;
};
```

在应用中使用安全中间件：

```javascript:c:\project\kphub\app.js
const express = require('express');
const securityMiddleware = require('./middlewares/security');

const app = express();

// 应用安全中间件
securityMiddleware(app);

// 其他应用配置...
```

### 7.3 认证与授权

实现安全的认证和授权机制：

```javascript:c:\project\kphub\middlewares\auth.js
const jwt = require('jsonwebtoken');
const { promisify } = require('util');
const User = require('../models/User');
const logger = require('../utils/logger');

// JWT验证中间件
exports.protect = async (req, res, next) => {
  try {
    // 1) 获取token
    let token;
    if (
      req.headers.authorization &&
      req.headers.authorization.startsWith('Bearer')
    ) {
      token = req.headers.authorization.split(' ')[1];
    } else if (req.cookies && req.cookies.jwt) {
      token = req.cookies.jwt;
    }
    
    if (!token) {
      return res.status(401).json({
        status: 'error',
        message: '您未登录，请先登录'
      });
    }
    
    // 2) 验证token
    const decoded = await promisify(jwt.verify)(token, process.env.JWT_SECRET);
    
    // 3) 检查用户是否仍然存在
    const currentUser = await User.findById(decoded.id);
    if (!currentUser) {
      return res.status(401).json({
        status: 'error',
        message: '此token对应的用户不存在'
      });
    }
    
    // 4) 检查用户是否在token签发后更改了密码
    if (currentUser.changedPasswordAfter(decoded.iat)) {
      return res.status(401).json({
        status: 'error',
        message: '用户近期修改了密码，请重新登录'
      });
    }
    
    // 将用户信息添加到请求对象
    req.user = currentUser;
    next();
  } catch (err) {
    logger.error('认证失败:', err);
    return res.status(401).json({
      status: 'error',
      message: '认证失败，请重新登录'
    });
  }
};

// 角色授权中间件
exports.restrictTo = (...roles) => {
  return (req, res, next) => {
    if (!req.user) {
      return res.status(401).json({
        status: 'error',
        message: '未认证用户'
      });
    }
    
    if (!roles.includes(req.user.role)) {
      return res.status(403).json({
        status: 'error',
        message: '您没有权限执行此操作'
      });
    }
    
    next();
  };
};
```

### 7.4 数据加密与敏感信息保护

保护敏感数据和密码：

```javascript:c:\project\kphub\utils\crypto.js
const crypto = require('crypto');
const bcrypt = require('bcrypt');

// 哈希密码
exports.hashPassword = async (password) => {
  return await bcrypt.hash(password, 12);
};

// 验证密码
exports.verifyPassword = async (candidatePassword, userPassword) => {
  return await bcrypt.compare(candidatePassword, userPassword);
};

// 生成随机令牌
exports.createToken = () => {
  return crypto.randomBytes(32).toString('hex');
};

// 加密敏感数据
exports.encrypt = (text, secretKey) => {
  const iv = crypto.randomBytes(16);
  const cipher = crypto.createCipheriv(
    'aes-256-cbc',
    Buffer.from(secretKey, 'hex'),
    iv
  );
  let encrypted = cipher.update(text, 'utf8', 'hex');
  encrypted += cipher.final('hex');
  return {
    iv: iv.toString('hex'),
    encryptedData: encrypted
  };
};

// 解密敏感数据
exports.decrypt = (encryptedData, iv, secretKey) => {
  const decipher = crypto.createDecipheriv(
    'aes-256-cbc',
    Buffer.from(secretKey, 'hex'),
    Buffer.from(iv, 'hex')
  );
  let decrypted = decipher.update(encryptedData, 'hex', 'utf8');
  decrypted += decipher.final('utf8');
  return decrypted;
};
```

## 8. 容器化部署  

容器化部署提供了一致的运行环境和简化的部署流程。

### 8.1 Dockerfile配置  

创建优化的Node.js应用Dockerfile：

```dockerfile:c:\project\kphub\Dockerfile
# 构建阶段
FROM node:18-alpine AS builder

# 设置工作目录
WORKDIR /app

# 复制package.json和package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm ci --production

# 如果有构建步骤（如TypeScript编译）
COPY tsconfig.json ./
COPY src/ ./src/
RUN npm run build

# 运行阶段
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 设置环境变量
ENV NODE_ENV=production
ENV PORT=3000

# 从构建阶段复制依赖和构建产物
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist
COPY package.json ./

# 复制配置文件和其他资源
COPY .env.example ./.env
COPY public/ ./public/

# 创建非root用户
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nodejs -u 1001 -G nodejs

# 设置目录权限
RUN chown -R nodejs:nodejs /app

# 切换到非root用户
USER nodejs

# 暴露端口
EXPOSE 3000

# 健康检查
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget -q -O - http://localhost:3000/health || exit 1

# 启动应用
CMD ["node", "dist/app.js"]
```

### 8.2 Docker Compose配置

使用Docker Compose管理多容器应用：

```yaml:c:\project\kphub\docker-compose.yml
version: '3.8'

services:
  app:
    build:
      context: .
      dockerfile: Dockerfile
    image: kphub-app:latest
    container_name: kphub-app
    restart: unless-stopped
    ports:
      - "3000:3000"
    environment:
      - NODE_ENV=production
      - PORT=3000
      - DB_HOST=mongodb
      - DB_PORT=27017
      - DB_NAME=kphub
      - DB_USER=kphub_user
      - DB_PASS=kphub_password
      - REDIS_URL=redis://redis:6379
    depends_on:
      - mongodb
      - redis
    networks:
      - kphub-network
    volumes:
      - app-logs:/app/logs
    healthcheck:
      test: ["CMD", "wget", "-q", "-O", "-", "http://localhost:3000/health"]
      interval: 30s
      timeout: 5s
      retries: 3
      start_period: 10s

  mongodb:
    image: mongo:5.0
    container_name: kphub-mongodb
    restart: unless-stopped
    environment:
      - MONGO_INITDB_ROOT_USERNAME=kphub_user
      - MONGO_INITDB_ROOT_PASSWORD=kphub_password
      - MONGO_INITDB_DATABASE=kphub
    volumes:
      - mongodb-data:/data/db
      - ./init-mongo.js:/docker-entrypoint-initdb.d/init-mongo.js:ro
    networks:
      - kphub-network
    healthcheck:
      test: echo 'db.runCommand("ping").ok' | mongo mongodb:27017/kphub --quiet
      interval: 30s
      timeout: 5s
      retries: 3
      start_period: 10s

  redis:
    image: redis:6-alpine
    container_name: kphub-redis
    restart: unless-stopped
    command: redis-server --appendonly yes
    volumes:
      - redis-data:/data
    networks:
      - kphub-network
    healthcheck:
      test: ["CMD", "redis-cli", "ping"]
      interval: 30s
      timeout: 5s
      retries: 3
      start_period: 10s

  nginx:
    image: nginx:1.21-alpine
    container_name: kphub-nginx
    restart: unless-stopped
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - ./nginx/conf:/etc/nginx/conf.d:ro
      - ./nginx/ssl:/etc/nginx/ssl:ro
      - ./public:/var/www/html:ro
    depends_on:
      - app
    networks:
      - kphub-network
    healthcheck:
      test: ["CMD", "wget", "-q", "-O", "-", "http://localhost/health"]
      interval: 30s
      timeout: 5s
      retries: 3
      start_period: 10s

networks:
  kphub-network:
    driver: bridge

volumes:
  app-logs:
  mongodb-data:
  redis-data:
```

### 8.3 Kubernetes部署  

使用Kubernetes进行容器编排和自动扩展：

```yaml:c:\project\kphub\k8s\deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: kphub-app
  namespace: kphub
  labels:
    app: kphub-app
spec:
  replicas: 3
  selector:
    matchLabels:
      app: kphub-app
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxSurge: 1
      maxUnavailable: 0
  template:
    metadata:
      labels:
        app: kphub-app
    spec:
      containers:
      - name: kphub-app
        image: kphub-app:latest
        imagePullPolicy: Always
        ports:
        - containerPort: 3000
          name: http
        env:
        - name: NODE_ENV
          value: "production"
        - name: PORT
          value: "3000"
        - name: DB_HOST
          valueFrom:
            configMapKeyRef:
              name: kphub-config
              key: db_host
        - name: DB_PORT
          valueFrom:
            configMapKeyRef:
              name: kphub-config
              key: db_port
        - name: DB_NAME
          valueFrom:
            configMapKeyRef:
              name: kphub-config
              key: db_name
        - name: DB_USER
          valueFrom:
            secretKeyRef:
              name: kphub-secrets
              key: db_user
        - name: DB_PASS
          valueFrom:
            secretKeyRef:
              name: kphub-secrets
              key: db_pass
        - name: REDIS_URL
          valueFrom:
            configMapKeyRef:
              name: kphub-config
              key: redis_url
        resources:
          limits:
            cpu: "500m"
            memory: "512Mi"
          requests:
            cpu: "200m"
            memory: "256Mi"
        livenessProbe:
          httpGet:
            path: /health
            port: http
          initialDelaySeconds: 30
          periodSeconds: 10
          timeoutSeconds: 5
          failureThreshold: 3
        readinessProbe:
          httpGet:
            path: /health
            port: http
          initialDelaySeconds: 5
          periodSeconds: 10
          timeoutSeconds: 2
          failureThreshold: 3
        volumeMounts:
        - name: logs
          mountPath: /app/logs
      volumes:
      - name: logs
        persistentVolumeClaim:
          claimName: kphub-logs-pvc
```

服务配置：

```yaml:c:\project\kphub\k8s\service.yaml
apiVersion: v1
kind: Service
metadata:
  name: kphub-app
  namespace: kphub
  labels:
    app: kphub-app
spec:
  selector:
    app: kphub-app
  ports:
  - port: 80
    targetPort: 3000
    name: http
  type: ClusterIP
```

Ingress配置：

```yaml:c:\project\kphub\k8s\ingress.yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: kphub-ingress
  namespace: kphub
  annotations:
    kubernetes.io/ingress.class: "nginx"
    cert-manager.io/cluster-issuer: "letsencrypt-prod"
    nginx.ingress.kubernetes.io/ssl-redirect: "true"
    nginx.ingress.kubernetes.io/proxy-body-size: "10m"
spec:
  tls:
  - hosts:
    - app.example.com
    secretName: kphub-tls
  rules:
  - host: app.example.com
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: kphub-app
            port:
              number: 80
```

ConfigMap和Secret：

```yaml:c:\project\kphub\k8s\configmap.yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: kphub-config
  namespace: kphub
data:
  db_host: "mongodb-service"
  db_port: "27017"
  db_name: "kphub"
  redis_url: "redis://redis-service:6379"
```

```yaml:c:\project\kphub\k8s\secret.yaml
apiVersion: v1
kind: Secret
metadata:
  name: kphub-secrets
  namespace: kphub
type: Opaque
data:
  db_user: a3BodWJfdXNlcg==  # base64编码的kphub_user
  db_pass: a3BodWJfcGFzc3dvcmQ=  # base64编码的kphub_password
  jwt_secret: c2VjcmV0LWtleS1mb3Itand0LXRva2Vu  # base64编码的jwt密钥
```

水平自动扩展：

```yaml:c:\project\kphub\k8s\hpa.yaml
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
  name: kphub-app-hpa
  namespace: kphub
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: kphub-app
  minReplicas: 2
  maxReplicas: 10
  metrics:
  - type: Resource
    resource:
      name: cpu
      target:
        type: Utilization
        averageUtilization: 70
  - type: Resource
    resource:
      name: memory
      target:
        type: Utilization
        averageUtilization: 80
  behavior:
    scaleDown:
      stabilizationWindowSeconds: 300
      policies:
      - type: Percent
        value: 50
        periodSeconds: 60
    scaleUp:
      stabilizationWindowSeconds: 0
      policies:
      - type: Percent
        value: 100
        periodSeconds: 60
      - type: Pods
        value: 4
        periodSeconds: 60
      selectPolicy: Max
```

## 9. 持续集成与部署(CI/CD)

实现自动化的构建、测试和部署流程。

### 9.1 GitHub Actions配置

```yaml:c:\project\kphub\.github\workflows\ci-cd.yml
name: Node.js CI/CD Pipeline

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main, develop ]

jobs:
  test:
    name: Test
    runs-on: ubuntu-latest
    
    services:
      mongodb:
        image: mongo:5.0
        ports:
          - 27017:27017
      redis:
        image: redis:6-alpine
        ports:
          - 6379:6379
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Setup Node.js
      uses: actions/setup-node@v3
      with:
        node-version: '18'
        cache: 'npm'
    
    - name: Install dependencies
      run: npm ci
    
    - name: Lint code
      run: npm run lint
    
    - name: Run tests
      run: npm test
      env:
        NODE_ENV: test
        DB_HOST: localhost
        DB_PORT: 27017
        DB_NAME: kphub_test
        REDIS_URL: redis://localhost:6379
    
    - name: Upload test coverage
      uses: actions/upload-artifact@v3
      with:
        name: coverage
        path: coverage/
  
  build:
    name: Build
    needs: test
    runs-on: ubuntu-latest
    if: github.event_name == 'push'
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Setup Node.js
      uses: actions/setup-node@v3
      with:
        node-version: '18'
        cache: 'npm'
    
    - name: Install dependencies
      run: npm ci
    
    - name: Build application
      run: npm run build
    
    - name: Run security audit
      run: npm audit --production
    
    - name: Build Docker image
      run: |
        docker build -t kphub-app:${{ github.sha }} .
        docker tag kphub-app:${{ github.sha }} kphub-app:latest
    
    - name: Save Docker image
      run: docker save kphub-app:latest | gzip > kphub-app.tar.gz
    
    - name: Upload Docker image
      uses: actions/upload-artifact@v3
      with:
        name: docker-image
        path: kphub-app.tar.gz
  
  deploy-staging:
    name: Deploy to Staging
    needs: build
    runs-on: ubuntu-latest
    if: github.event_name == 'push' && github.ref == 'refs/heads/develop'
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Download Docker image
      uses: actions/download-artifact@v3
      with:
        name: docker-image
    
    -
让我继续完成Node.js应用部署与管理的文档内容：

## 9. 持续集成与部署(CI/CD)（续）

### 9.1 GitHub Actions配置（续）

```yaml:c:\project\kphub\.github\workflows\ci-cd.yml
  deploy-staging:
    name: Deploy to Staging
    needs: build
    runs-on: ubuntu-latest
    if: github.event_name == 'push' && github.ref == 'refs/heads/develop'
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Download Docker image
      uses: actions/download-artifact@v3
      with:
        name: docker-image
    
    - name: Load Docker image
      run: gunzip -c kphub-app.tar.gz | docker load
    
    - name: Configure AWS credentials
      uses: aws-actions/configure-aws-credentials@v1
      with:
        aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
        aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
        aws-region: us-east-1
    
    - name: Login to Amazon ECR
      id: login-ecr
      uses: aws-actions/amazon-ecr-login@v1
    
    - name: Push to Amazon ECR
      env:
        ECR_REGISTRY: ${{ steps.login-ecr.outputs.registry }}
        ECR_REPOSITORY: kphub-app
        IMAGE_TAG: ${{ github.sha }}
      run: |
        docker tag kphub-app:latest $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG
        docker tag kphub-app:latest $ECR_REGISTRY/$ECR_REPOSITORY:staging
        docker push $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG
        docker push $ECR_REGISTRY/$ECR_REPOSITORY:staging
    
    - name: Deploy to EKS
      run: |
        aws eks update-kubeconfig --name kphub-cluster --region us-east-1
        kubectl set image deployment/kphub-app kphub-app=$ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG -n kphub-staging
        kubectl rollout status deployment/kphub-app -n kphub-staging
  
  deploy-production:
    name: Deploy to Production
    needs: build
    runs-on: ubuntu-latest
    if: github.event_name == 'push' && github.ref == 'refs/heads/main'
    environment: production
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Download Docker image
      uses: actions/download-artifact@v3
      with:
        name: docker-image
    
    - name: Load Docker image
      run: gunzip -c kphub-app.tar.gz | docker load
    
    - name: Configure AWS credentials
      uses: aws-actions/configure-aws-credentials@v1
      with:
        aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
        aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
        aws-region: us-east-1
    
    - name: Login to Amazon ECR
      id: login-ecr
      uses: aws-actions/amazon-ecr-login@v1
    
    - name: Push to Amazon ECR
      env:
        ECR_REGISTRY: ${{ steps.login-ecr.outputs.registry }}
        ECR_REPOSITORY: kphub-app
        IMAGE_TAG: ${{ github.sha }}
      run: |
        docker tag kphub-app:latest $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG
        docker tag kphub-app:latest $ECR_REGISTRY/$ECR_REPOSITORY:production
        docker push $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG
        docker push $ECR_REGISTRY/$ECR_REPOSITORY:production
    
    - name: Deploy to EKS
      run: |
        aws eks update-kubeconfig --name kphub-cluster --region us-east-1
        kubectl set image deployment/kphub-app kphub-app=$ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG -n kphub-production
        kubectl rollout status deployment/kphub-app -n kphub-production
```

### 9.2 Jenkins Pipeline配置

对于使用Jenkins的团队，可以创建Jenkinsfile实现CI/CD流程：

```groovy:c:\project\kphub\Jenkinsfile
pipeline {
    agent {
        docker {
            image 'node:18-alpine'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    
    environment {
        NODE_ENV = 'test'
        DOCKER_REGISTRY = 'registry.example.com'
        APP_NAME = 'kphub-app'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Install Dependencies') {
            steps {
                sh 'npm ci'
            }
        }
        
        stage('Lint') {
            steps {
                sh 'npm run lint'
            }
        }
        
        stage('Test') {
            steps {
                sh 'npm test'
            }
            post {
                always {
                    junit 'test-results/*.xml'
                    publishHTML(target: [
                        allowMissing: false,
                        alwaysLinkToLastBuild: true,
                        keepAll: true,
                        reportDir: 'coverage',
                        reportFiles: 'index.html',
                        reportName: 'Coverage Report'
                    ])
                }
            }
        }
        
        stage('Security Audit') {
            steps {
                sh 'npm audit --production'
            }
        }
        
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        
        stage('Docker Build') {
            steps {
                sh "docker build -t ${DOCKER_REGISTRY}/${APP_NAME}:${env.BUILD_NUMBER} ."
                sh "docker tag ${DOCKER_REGISTRY}/${APP_NAME}:${env.BUILD_NUMBER} ${DOCKER_REGISTRY}/${APP_NAME}:latest"
            }
        }
        
        stage('Docker Push') {
            when {
                anyOf {
                    branch 'main'
                    branch 'develop'
                }
            }
            steps {
                withCredentials([string(credentialsId: 'docker-registry-token', variable: 'DOCKER_TOKEN')]) {
                    sh "echo ${DOCKER_TOKEN} | docker login ${DOCKER_REGISTRY} -u jenkins --password-stdin"
                    sh "docker push ${DOCKER_REGISTRY}/${APP_NAME}:${env.BUILD_NUMBER}"
                    sh "docker push ${DOCKER_REGISTRY}/${APP_NAME}:latest"
                }
            }
        }
        
        stage('Deploy to Staging') {
            when {
                branch 'develop'
            }
            steps {
                withKubeConfig([credentialsId: 'kubeconfig']) {
                    sh "kubectl set image deployment/${APP_NAME} ${APP_NAME}=${DOCKER_REGISTRY}/${APP_NAME}:${env.BUILD_NUMBER} -n kphub-staging"
                    sh "kubectl rollout status deployment/${APP_NAME} -n kphub-staging"
                }
            }
        }
        
        stage('Deploy to Production') {
            when {
                branch 'main'
            }
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    input message: '确认部署到生产环境?', ok: '部署'
                }
                withKubeConfig([credentialsId: 'kubeconfig']) {
                    sh "kubectl set image deployment/${APP_NAME} ${APP_NAME}=${DOCKER_REGISTRY}/${APP_NAME}:${env.BUILD_NUMBER} -n kphub-production"
                    sh "kubectl rollout status deployment/${APP_NAME} -n kphub-production"
                }
            }
            post {
                success {
                    slackSend(
                        color: 'good',
                        message: "部署成功: ${APP_NAME} 版本 ${env.BUILD_NUMBER} 已部署到生产环境"
                    )
                }
                failure {
                    slackSend(
                        color: 'danger',
                        message: "部署失败: ${APP_NAME} 版本 ${env.BUILD_NUMBER} 部署到生产环境失败"
                    )
                }
            }
        }
    }
    
    post {
        always {
            cleanWs()
        }
    }
}
```

### 9.3 自动化测试与质量控制

在CI/CD流程中集成自动化测试和代码质量检查：

```javascript:c:\project\kphub\jest.config.js
module.exports = {
  testEnvironment: 'node',
  coverageDirectory: 'coverage',
  collectCoverageFrom: [
    'src/**/*.js',
    '!src/**/*.test.js',
    '!**/node_modules/**',
    '!**/vendor/**'
  ],
  coverageThreshold: {
    global: {
      statements: 80,
      branches: 70,
      functions: 80,
      lines: 80
    }
  },
  testMatch: ['**/__tests__/**/*.js', '**/?(*.)+(spec|test).js'],
  testPathIgnorePatterns: ['/node_modules/', '/dist/'],
  reporters: [
    'default',
    ['jest-junit', {
      outputDirectory: 'test-results',
      outputName: 'junit.xml'
    }]
  ]
};
```

```json:c:\project\kphub\.eslintrc.json
{
  "env": {
    "node": true,
    "es2021": true,
    "jest": true
  },
  "extends": [
    "eslint:recommended",
    "plugin:node/recommended"
  ],
  "parserOptions": {
    "ecmaVersion": 2021
  },
  "rules": {
    "node/exports-style": ["error", "module.exports"],
    "node/file-extension-in-import": ["error", "always"],
    "node/prefer-global/buffer": ["error", "always"],
    "node/prefer-global/console": ["error", "always"],
    "node/prefer-global/process": ["error", "always"],
    "node/prefer-global/url-search-params": ["error", "always"],
    "node/prefer-global/url": ["error", "always"],
    "node/prefer-promises/dns": "error",
    "node/prefer-promises/fs": "error",
    "no-console": "warn",
    "no-unused-vars": ["error", { "argsIgnorePattern": "^_" }],
    "semi": ["error", "always"],
    "quotes": ["error", "single"]
  }
}
```

## 10. 灾难恢复与备份

确保数据安全和系统可恢复性。

### 10.1 数据库备份策略

创建MongoDB数据库备份脚本：

```javascript:c:\project\kphub\scripts\backup-mongodb.js
const { exec } = require('child_process');
const fs = require('fs');
const path = require('path');
const util = require('util');
const execPromise = util.promisify(exec);

// 配置
const config = {
  dbHost: process.env.DB_HOST || 'localhost',
  dbPort: process.env.DB_PORT || '27017',
  dbName: process.env.DB_NAME || 'kphub',
  dbUser: process.env.DB_USER,
  dbPassword: process.env.DB_PASS,
  backupDir: process.env.BACKUP_DIR || path.join(__dirname, '../backups/mongodb'),
  retentionDays: parseInt(process.env.RETENTION_DAYS || '7', 10)
};

// 确保备份目录存在
if (!fs.existsSync(config.backupDir)) {
  fs.mkdirSync(config.backupDir, { recursive: true });
}

// 生成备份文件名
const timestamp = new Date().toISOString().replace(/:/g, '-').replace(/\..+/, '');
const backupFileName = `${config.dbName}_${timestamp}.gz`;
const backupFilePath = path.join(config.backupDir, backupFileName);

// 构建mongodump命令
let command = `mongodump --host ${config.dbHost} --port ${config.dbPort} --db ${config.dbName} --gzip --archive=${backupFilePath}`;

// 如果提供了认证信息，添加到命令中
if (config.dbUser && config.dbPassword) {
  command += ` --username ${config.dbUser} --password ${config.dbPassword} --authenticationDatabase admin`;
}

async function runBackup() {
  try {
    console.log(`开始备份数据库 ${config.dbName} 到 ${backupFilePath}...`);
    const { stdout, stderr } = await execPromise(command);
    
    if (stderr && !stderr.includes('writing')) {
      console.error('备份过程中出现警告:', stderr);
    }
    
    console.log('数据库备份成功:', backupFilePath);
    console.log(stdout);
    
    // 清理旧备份
    await cleanupOldBackups();
    
    return { success: true, filePath: backupFilePath };
  } catch (error) {
    console.error('备份失败:', error.message);
    return { success: false, error: error.message };
  }
}

async function cleanupOldBackups() {
  try {
    console.log(`清理超过 ${config.retentionDays} 天的旧备份...`);
    
    const files = fs.readdirSync(config.backupDir);
    const now = Date.now();
    let deletedCount = 0;
    
    for (const file of files) {
      if (!file.endsWith('.gz')) continue;
      
      const filePath = path.join(config.backupDir, file);
      const stats = fs.statSync(filePath);
      const fileAge = (now - stats.mtime.getTime()) / (1000 * 60 * 60 * 24);
      
      if (fileAge > config.retentionDays) {
        fs.unlinkSync(filePath);
        console.log(`已删除旧备份: ${file}`);
        deletedCount++;
      }
    }
    
    console.log(`清理完成，共删除 ${deletedCount} 个旧备份`);
  } catch (error) {
    console.error('清理旧备份失败:', error.message);
  }
}

// 执行备份
runBackup().then(result => {
  if (result.success) {
    process.exit(0);
  } else {
    process.exit(1);
  }
});
```

### 10.2 自动备份计划

使用Windows计划任务设置自动备份：

```powershell:c:\project\kphub\scripts\setup-backup-task.ps1
# 设置自动备份计划任务
$taskName = "KPHub-MongoDB-Backup"
$taskDescription = "KPHub MongoDB 数据库自动备份"
$scriptPath = "c:\project\kphub\scripts\run-backup.ps1"
$workingDir = "c:\project\kphub"

# 创建运行备份的PowerShell脚本
@"
# 设置环境变量
`$env:DB_HOST = "localhost"
`$env:DB_PORT = "27017"
`$env:DB_NAME = "kphub"
`$env:DB_USER = "kphub_user"
`$env:DB_PASS = "kphub_password"
`$env:BACKUP_DIR = "c:\project\kphub\backups\mongodb"
`$env:RETENTION_DAYS = "7"

# 运行Node.js备份脚本
node c:\project\kphub\scripts\backup-mongodb.js

# 记录备份结果
if (`$LASTEXITCODE -eq 0) {
    Add-Content -Path "c:\project\kphub\logs\backup.log" -Value "`$(Get-Date) - 备份成功"
} else {
    Add-Content -Path "c:\project\kphub\logs\backup.log" -Value "`$(Get-Date) - 备份失败，错误代码: `$LASTEXITCODE"
}
"@ | Out-File -FilePath $scriptPath -Encoding utf8

# 创建计划任务
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`"" -WorkingDirectory $workingDir
$trigger = New-ScheduledTaskTrigger -Daily -At "3:00AM"
$settings = New-ScheduledTaskSettingsSet -StartWhenAvailable -DontStopOnIdleEnd -ExecutionTimeLimit (New-TimeSpan -Hours 1)

# 注册任务
Register-ScheduledTask -TaskName $taskName -Description $taskDescription -Action $action -Trigger $trigger -Settings $settings -User "SYSTEM" -Force

Write-Host "已创建自动备份计划任务: $taskName"
Write-Host "备份将每天凌晨3点执行"
```

### 10.3 灾难恢复流程

创建数据库恢复脚本：

```javascript:c:\project\kphub\scripts\restore-mongodb.js
const { exec } = require('child_process');
const fs = require('fs');
const path = require('path');
const util = require('util');
const execPromise = util.promisify(exec);
const readline = require('readline');

// 配置
const config = {
  dbHost: process.env.DB_HOST || 'localhost',
  dbPort: process.env.DB_PORT || '27017',
  dbName: process.env.DB_NAME || 'kphub',
  dbUser: process.env.DB_USER,
  dbPassword: process.env.DB_PASS,
  backupDir: process.env.BACKUP_DIR || path.join(__dirname, '../backups/mongodb')
};

// 创建命令行交互
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

async function promptForBackupFile() {
  // 列出可用的备份文件
  const files = fs.readdirSync(config.backupDir)
    .filter(file => file.endsWith('.gz'))
    .sort((a, b) => {
      const statA = fs.statSync(path.join(config.backupDir, a));
      const statB = fs.statSync(path.join(config.backupDir, b));
      return statB.mtime.getTime() - statA.mtime.getTime(); // 按时间降序排列
    });
  
  if (files.length === 0) {
    console.error('没有找到备份文件');
    process.exit(1);
  }
  
  console.log('可用的备份文件:');
  files.forEach((file, index) => {
    const stats = fs.statSync(path.join(config.backupDir, file));
    console.log(`${index + 1}. ${file} (${stats.mtime.toLocaleString()})`);
  });
  
  return new Promise((resolve) => {
    rl.question('请选择要恢复的备份文件编号: ', (answer) => {
      const index = parseInt(answer, 10) - 1;
      if (isNaN(index) || index < 0 || index >= files.length) {
        console.error('无效的选择');
        process.exit(1);
      }
      resolve(path.join(config.backupDir, files[index]));
    });
  });
}

async function confirmRestore() {
  return new Promise((resolve) => {
    rl.question(`警告: 这将覆盖数据库 ${config.dbName} 中的所有数据。确定要继续吗? (yes/no): `, (answer) => {
      resolve(answer.toLowerCase() === 'yes');
    });
  });
}

async function restoreDatabase(backupFile) {
  // 构建mongorestore命令
  let command = `mongorestore --host ${config.dbHost} --port ${config.dbPort} --db ${config.dbName} --gzip --archive=${backupFile} --drop`;
  
  // 如果提供了认证信息，添加到命令中
  if (config.dbUser && config.dbPassword) {
    command += ` --username ${config.dbUser} --password ${config.dbPassword} --authenticationDatabase admin`;
  }
  
  try {
    console.log(`开始从 ${backupFile} 恢复数据库...`);
    const { stdout, stderr } = await execPromise(command);
    
    if (stderr && !stderr.includes('done')) {
      console.warn('恢复过程中出现警告:', stderr);
    }
    
    console.log('数据库恢复成功!');
    console.log(stdout);
    return true;
  } catch (error) {
    console.error('恢复失败:', error.message);
    return false;
  }
}

async function main() {
  try {
    const backupFile = await promptForBackupFile();
    const confirmed = await confirmRestore();
    
    if (!confirmed) {
      console.log('操作已取消');
      process.exit(0);
    }
    
    const success = await restoreDatabase(backupFile);
    rl.close();
    
    if (success) {
      process.exit(0);
    } else {
      process.exit(1);
    }
  } catch (error) {
    console.error('发生错误:', error.message);
    rl.close();
    process.exit(1);
  }
}

main();
```

## 11. 监控与告警

实现全面的应用监控和告警系统。

### 11.1 Prometheus监控配置

创建Prometheus指标导出器：

```javascript:c:\project\kphub\utils\prometheus.js
const promClient = require('prom-client');
const express = require('express');

// 创建注册表
const register = new promClient.Registry();

// 添加默认指标
promClient.collectDefaultMetrics({ register });

// 自定义指标
const httpRequestDurationMicroseconds = new promClient.Histogram({
  name: 'http_request_duration_seconds',
  help: 'HTTP请求持续时间（秒）',
  labelNames: ['method', 'route', 'status_code'],
  buckets: [0.01, 0.05, 0.1, 0.5, 1, 2, 5, 10]
});

const httpRequestCounter = new promClient.Counter({
  name: 'http_requests_total',
  help: 'HTTP请求总数',
  labelNames: ['method', 'route', 'status_code']
});

const activeConnections = new promClient.Gauge({
  name: 'http_active_connections',
  help: '当前活跃连接数'
});

const databaseOperationDuration = new promClient.Histogram({
  name: 'database_operation_duration_seconds',
  help: '数据库操作持续时间（秒）',
  labelNames: ['operation', 'collection'],
  buckets: [0.001, 0.005, 0.01, 0.05, 0.1, 0.5, 1]
});

const memoryUsage = new promClient.Gauge({
  name: 'nodejs_memory_usage_bytes',
  help: 'Node.js进程内存使用情况',
  labelNames: ['type']
});

// 注册自定义指标
register.registerMetric(httpRequestDurationMicroseconds);
register.registerMetric(httpRequestCounter);
register.registerMetric(activeConnections);
register.registerMetric(databaseOperationDuration);
register.registerMetric(memoryUsage);

// 更新内存使用指标
function updateMemoryMetrics() {
  const memUsage = process.memoryUsage();
  memoryUsage.set({ type: 'rss' }, memUsage.rss);
  memoryUsage.set({ type: 'heapTotal' }, memUsage.heapTotal);
  memoryUsage.set({ type: 'heapUsed' }, memUsage.heapUsed);
  memoryUsage.set({ type: 'external' }, memUsage.external);
}

// 定期更新内存指标
setInterval(updateMemoryMetrics, 10000);
updateMemoryMetrics(); // 初始化

// 创建中间件
function prometheusMiddleware(req, res, next) {
  // 增加活跃连接数
  activeConnections.inc();
  
  // 记录请求开始时间
  const start = Date.now();
  
  // 请求结束时更新指标
  res.on('finish', () => {
    // 减少活跃连接数
    activeConnections.dec();
    
    // 获取路由路径（如果可用）
    const route = req.route ? req.route.path : req.path;
    
    // 记录请求持续时间
    const duration = (Date.now() - start) / 1000;
    httpRequestDurationMicroseconds
      .labels(req.method, route, res.statusCode)
      .observe(duration);
    
    // 增加请求计数
    httpRequestCounter
      .labels(req.method, route, res.statusCode)
      .inc();
  });
  
  next();
}

// 创建指标端点
function createMetricsRoute() {
  const router = express.Router();
  
  router.get('/metrics', async (req, res) => {
    res.set('Content-Type', register.contentType);
    res.end(await register.metrics());
  });
  
  return router;
}

module.exports = {
  register,
  prometheusMiddleware,
  createMetricsRoute,
  metrics: {
    httpRequestDurationMicroseconds,
    httpRequestCounter,
    activeConnections,
    databaseOperationDuration,
    memoryUsage
  }
};
```

在应用中集成Prometheus监控：

```javascript:c:\project\kphub\app.js
const express = require('express');
const { prometheusMiddleware, createMetricsRoute } = require('./utils/prometheus');

const app = express();

// 应用Prometheus中间件（应在其他中间件之前）
app.use(prometheusMiddleware);

// 其他中间件和路由...

// 添加指标端点
app.use(createMetricsRoute());
```

### 11.2 Grafana仪表盘配置

创建Grafana仪表盘配置文件：

```json:c:\project\kphub\monitoring\grafana-dashboard.json
{
  "annotations": {
    "list": [
      {
        "builtIn": 1,
        "datasource": "-- Grafana --",
        "enable": true,
        "hide": true,
        "iconColor": "rgba(0, 211, 255, 1)",
        "name": "Annotations & Alerts",
        "type": "dashboard"
      }
    ]
  },
  "editable": true,
  "gnetId": null,
  "graphTooltip": 0,
  "id": 1,
  "links": [],
  "panels": [
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Prometheus",
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "fill": 1,
      "fillGradient": 0,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 0
      },
      "hiddenSeries": false,
      "id": 2,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "nullPointMode": "null",
      "options": {
        "alertThreshold": true
      },
      "percentage": false,
      "pluginVersion": "7.3.7",
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "rate(http_requests_total[1m])",
          "interval": "",
          "legendFormat": "{{method}} {{route}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "请求速率",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Prometheus",
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "fill": 1,
      "fillGradient": 0,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 0
      },
      "hiddenSeries": false,
      "id": 4,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
让我继续完成Node.js应用部署与管理的文档内容：

```json:c:\project\kphub\monitoring\grafana-dashboard.json
      "lines": true,
      "linewidth": 1,
      "nullPointMode": "null",
      "options": {
        "alertThreshold": true
      },
      "percentage": false,
      "pluginVersion": "7.3.7",
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "histogram_quantile(0.95, sum(rate(http_request_duration_seconds_bucket[5m])) by (le, route))",
          "interval": "",
          "legendFormat": "{{route}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "请求响应时间 (P95)",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "s",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "datasource": "Prometheus",
      "fieldConfig": {
        "defaults": {
          "custom": {},
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 0,
        "y": 8
      },
      "id": 6,
      "options": {
        "reduceOptions": {
          "calcs": [
            "mean"
          ],
          "fields": "",
          "values": false
        },
        "showThresholdLabels": false,
        "showThresholdMarkers": true
      },
      "pluginVersion": "7.3.7",
      "targets": [
        {
          "expr": "http_active_connections",
          "interval": "",
          "legendFormat": "",
          "refId": "A"
        }
      ],
      "timeFrom": null,
      "timeShift": null,
      "title": "活跃连接数",
      "type": "gauge"
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Prometheus",
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "fill": 1,
      "fillGradient": 0,
      "gridPos": {
        "h": 8,
        "w": 18,
        "x": 6,
        "y": 8
      },
      "hiddenSeries": false,
      "id": 8,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "nullPointMode": "null",
      "options": {
        "alertThreshold": true
      },
      "percentage": false,
      "pluginVersion": "7.3.7",
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "nodejs_memory_usage_bytes",
          "interval": "",
          "legendFormat": "{{type}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "内存使用",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "bytes",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    }
  ],
  "refresh": "5s",
  "schemaVersion": 26,
  "style": "dark",
  "tags": [],
  "templating": {
    "list": []
  },
  "time": {
    "from": "now-15m",
    "to": "now"
  },
  "timepicker": {},
  "timezone": "",
  "title": "Node.js应用监控",
  "uid": "node-app-dashboard",
  "version": 1
}
```

### 11.3 告警配置

创建Prometheus告警规则：

```yaml:c:\project\kphub\monitoring\prometheus-alerts.yml
groups:
- name: node-app-alerts
  rules:
  - alert: HighRequestLatency
    expr: histogram_quantile(0.95, sum(rate(http_request_duration_seconds_bucket[5m])) by (le, route)) > 1
    for: 5m
    labels:
      severity: warning
    annotations:
      summary: "高请求延迟 ({{ $labels.route }})"
      description: "路由 {{ $labels.route }} 的P95请求延迟超过1秒，当前值: {{ $value }}s"

  - alert: HighErrorRate
    expr: sum(rate(http_requests_total{status_code=~"5.."}[5m])) / sum(rate(http_requests_total[5m])) > 0.05
    for: 5m
    labels:
      severity: critical
    annotations:
      summary: "高错误率"
      description: "HTTP 5xx错误率超过5%，当前值: {{ $value | humanizePercentage }}"

  - alert: HighMemoryUsage
    expr: nodejs_memory_usage_bytes{type="heapUsed"} / nodejs_memory_usage_bytes{type="heapTotal"} > 0.9
    for: 5m
    labels:
      severity: warning
    annotations:
      summary: "高内存使用"
      description: "Node.js堆内存使用率超过90%，当前值: {{ $value | humanizePercentage }}"

  - alert: InstanceDown
    expr: up{job="node-app"} == 0
    for: 1m
    labels:
      severity: critical
    annotations:
      summary: "实例宕机"
      description: "实例 {{ $labels.instance }} 已宕机超过1分钟"

  - alert: TooManyConnections
    expr: http_active_connections > 100
    for: 5m
    labels:
      severity: warning
    annotations:
      summary: "连接数过高"
      description: "活跃连接数超过100，当前值: {{ $value }}"
```

### 11.4 集成告警通知

创建告警通知脚本：

```javascript:c:\project\kphub\utils\alertNotifier.js
const axios = require('axios');
const nodemailer = require('nodemailer');

class AlertNotifier {
  constructor(config) {
    this.config = config || {};
    
    // 初始化邮件发送器
    if (this.config.email) {
      this.emailTransporter = nodemailer.createTransport({
        host: this.config.email.host,
        port: this.config.email.port,
        secure: this.config.email.secure,
        auth: {
          user: this.config.email.user,
          pass: this.config.email.password
        }
      });
    }
  }
  
  /**
   * 发送告警通知
   * @param {Object} alert 告警信息
   * @param {string} alert.name 告警名称
   * @param {string} alert.severity 严重程度
   * @param {string} alert.message 告警消息
   * @param {string} alert.description 详细描述
   * @param {Object} alert.data 附加数据
   */
  async sendAlert(alert) {
    try {
      const promises = [];
      
      // 发送邮件通知
      if (this.config.email && this.config.email.enabled) {
        promises.push(this.sendEmailAlert(alert));
      }
      
      // 发送Slack通知
      if (this.config.slack && this.config.slack.enabled) {
        promises.push(this.sendSlackAlert(alert));
      }
      
      // 发送钉钉通知
      if (this.config.dingtalk && this.config.dingtalk.enabled) {
        promises.push(this.sendDingTalkAlert(alert));
      }
      
      // 发送企业微信通知
      if (this.config.wechat && this.config.wechat.enabled) {
        promises.push(this.sendWeChatAlert(alert));
      }
      
      // 等待所有通知发送完成
      await Promise.all(promises);
      console.log(`告警 "${alert.name}" 已通知所有配置的渠道`);
      return true;
    } catch (error) {
      console.error('发送告警通知失败:', error);
      return false;
    }
  }
  
  /**
   * 发送邮件告警
   */
  async sendEmailAlert(alert) {
    if (!this.emailTransporter) {
      throw new Error('邮件发送器未初始化');
    }
    
    const mailOptions = {
      from: this.config.email.from,
      to: this.config.email.to,
      subject: `[${alert.severity.toUpperCase()}] ${alert.name}`,
      html: `
        <h2>${alert.message}</h2>
        <p><strong>严重程度:</strong> ${alert.severity}</p>
        <p><strong>时间:</strong> ${new Date().toLocaleString()}</p>
        <p><strong>描述:</strong> ${alert.description}</p>
        ${alert.data ? `<pre>${JSON.stringify(alert.data, null, 2)}</pre>` : ''}
      `
    };
    
    return this.emailTransporter.sendMail(mailOptions);
  }
  
  /**
   * 发送Slack告警
   */
  async sendSlackAlert(alert) {
    const color = this.getSeverityColor(alert.severity);
    
    const message = {
      text: `[${alert.severity.toUpperCase()}] ${alert.name}`,
      attachments: [
        {
          color: color,
          title: alert.message,
          text: alert.description,
          fields: [
            {
              title: '严重程度',
              value: alert.severity,
              short: true
            },
            {
              title: '时间',
              value: new Date().toLocaleString(),
              short: true
            }
          ],
          footer: 'KPHub监控系统'
        }
      ]
    };
    
    return axios.post(this.config.slack.webhookUrl, message);
  }
  
  /**
   * 发送钉钉告警
   */
  async sendDingTalkAlert(alert) {
    const message = {
      msgtype: 'markdown',
      markdown: {
        title: `[${alert.severity.toUpperCase()}] ${alert.name}`,
        text: `
### ${alert.message}

**严重程度:** ${alert.severity}  
**时间:** ${new Date().toLocaleString()}  
**描述:** ${alert.description}  

${alert.data ? '```\n' + JSON.stringify(alert.data, null, 2) + '\n```' : ''}
        `
      }
    };
    
    return axios.post(this.config.dingtalk.webhookUrl, message);
  }
  
  /**
   * 发送企业微信告警
   */
  async sendWeChatAlert(alert) {
    const message = {
      msgtype: 'markdown',
      markdown: {
        content: `
**[${alert.severity.toUpperCase()}] ${alert.name}**

${alert.message}

>严重程度: ${alert.severity}  
>时间: ${new Date().toLocaleString()}  
>描述: ${alert.description}
        `
      }
    };
    
    return axios.post(this.config.wechat.webhookUrl, message);
  }
  
  /**
   * 根据严重程度获取颜色
   */
  getSeverityColor(severity) {
    switch (severity.toLowerCase()) {
      case 'critical':
        return '#FF0000'; // 红色
      case 'warning':
        return '#FFA500'; // 橙色
      case 'info':
        return '#0000FF'; // 蓝色
      default:
        return '#808080'; // 灰色
    }
  }
}

module.exports = AlertNotifier;
```

配置告警通知：

```javascript:c:\project\kphub\config\alertConfig.js
module.exports = {
  email: {
    enabled: true,
    host: 'smtp.example.com',
    port: 587,
    secure: false,
    user: 'alerts@example.com',
    password: 'your-password',
    from: 'KPHub监控 <alerts@example.com>',
    to: 'admin@example.com, oncall@example.com'
  },
  slack: {
    enabled: true,
    webhookUrl: 'https://hooks.slack.com/services/TXXXXXXXX/BXXXXXXXX/XXXXXXXXXXXXXXXXXXXXXXXX'
  },
  dingtalk: {
    enabled: true,
    webhookUrl: 'https://oapi.dingtalk.com/robot/send?access_token=XXXXXXXXXXXXXXXXXXXXXXXX'
  },
  wechat: {
    enabled: true,
    webhookUrl: 'https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX'
  }
};
```

## 12. 自动化运维

实现自动化运维脚本，提高运维效率。

### 12.1 自动化部署脚本

创建自动化部署脚本：

```powershell:c:\project\kphub\scripts\deploy.ps1
param (
    [string]$Environment = "staging",
    [string]$Version = "latest",
    [switch]$Force = $false
)

# 配置
$config = @{
    staging = @{
        server = "staging-server.example.com"
        user = "deploy"
        appDir = "/var/www/kphub"
        backupDir = "/var/backups/kphub"
        pm2Config = "ecosystem.config.js"
    }
    production = @{
        server = "prod-server.example.com"
        user = "deploy"
        appDir = "/var/www/kphub"
        backupDir = "/var/backups/kphub"
        pm2Config = "ecosystem.config.js"
    }
}

# 验证环境
if (-not $config.ContainsKey($Environment)) {
    Write-Error "无效的环境: $Environment. 可用环境: $($config.Keys -join ', ')"
    exit 1
}

$envConfig = $config[$Environment]

# 确认部署
if ($Environment -eq "production" -and -not $Force) {
    $confirmation = Read-Host "您正在部署到生产环境。确定要继续吗? (y/n)"
    if ($confirmation -ne "y") {
        Write-Host "部署已取消"
        exit 0
    }
}

# 开始部署
Write-Host "开始部署到 $Environment 环境..."

try {
    # 构建应用
    Write-Host "构建应用..."
    npm run build
    if ($LASTEXITCODE -ne 0) {
        throw "构建失败"
    }
    
    # 创建部署包
    Write-Host "创建部署包..."
    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    $packageName = "kphub_${Environment}_${Version}_${timestamp}.tar.gz"
    $packagePath = ".\dist\$packageName"
    
    # 确保目录存在
    if (-not (Test-Path ".\dist")) {
        New-Item -ItemType Directory -Path ".\dist" | Out-Null
    }
    
    # 打包文件
    tar -czf $packagePath --exclude="node_modules" --exclude=".git" --exclude="logs" .
    if ($LASTEXITCODE -ne 0) {
        throw "打包失败"
    }
    
    # 上传到服务器
    Write-Host "上传部署包到服务器..."
    scp $packagePath "$($envConfig.user)@$($envConfig.server):$($envConfig.appDir)/packages/"
    if ($LASTEXITCODE -ne 0) {
        throw "上传失败"
    }
    
    # 执行远程部署脚本
    Write-Host "在服务器上执行部署..."
    $remoteCommands = @"
#!/bin/bash
set -e

# 进入应用目录
cd $($envConfig.appDir)

# 解压部署包
mkdir -p packages
cd packages
tar -xzf $packageName -C ../deploy-temp

# 备份当前版本
timestamp=\$(date +%Y%m%d_%H%M%S)
if [ -d "../current" ]; then
  mkdir -p $($envConfig.backupDir)
  cp -r ../current $($envConfig.backupDir)/backup_\$timestamp
fi

# 安装依赖
cd ../deploy-temp
npm ci --production

# 切换到新版本
cd ..
rm -rf previous
if [ -d "current" ]; then
  mv current previous
fi
mv deploy-temp current

# 重启应用
cd current
pm2 reload $($envConfig.pm2Config) --env $Environment

# 清理
cd ..
rm -f packages/$packageName
"@
    
    $remoteScript = "deploy_$timestamp.sh"
    $remoteScriptPath = "$($envConfig.user)@$($envConfig.server):/tmp/$remoteScript"
    
    # 创建临时脚本
    $remoteCommands | Out-File -FilePath ".\dist\$remoteScript" -Encoding utf8
    
    # 上传脚本
    scp ".\dist\$remoteScript" $remoteScriptPath
    if ($LASTEXITCODE -ne 0) {
        throw "上传部署脚本失败"
    }
    
    # 执行脚本
    ssh "$($envConfig.user)@$($envConfig.server)" "chmod +x /tmp/$remoteScript && /tmp/$remoteScript"
    if ($LASTEXITCODE -ne 0) {
        throw "远程部署失败"
    }
    
    # 清理临时文件
    Remove-Item ".\dist\$remoteScript" -Force
    
    Write-Host "部署成功完成!" -ForegroundColor Green
} catch {
    Write-Error "部署失败: $_"
    exit 1
}
```

### 12.2 自动化健康检查

创建健康检查脚本：

```javascript:c:\project\kphub\scripts\health-check.js
const axios = require('axios');
const fs = require('fs');
const path = require('path');
const { promisify } = require('util');
const writeFileAsync = promisify(fs.writeFile);
const AlertNotifier = require('../utils/alertNotifier');
const alertConfig = require('../config/alertConfig');

// 配置
const config = {
  environments: {
    staging: {
      url: 'https://staging-api.example.com/health',
      timeout: 5000
    },
    production: {
      url: 'https://api.example.com/health',
      timeout: 5000
    }
  },
  checkInterval: 60000, // 1分钟
  logDir: path.join(__dirname, '../logs/health-checks'),
  alertThreshold: 3 // 连续失败次数触发告警
};

// 确保日志目录存在
if (!fs.existsSync(config.logDir)) {
  fs.mkdirSync(config.logDir, { recursive: true });
}

// 初始化告警通知器
const notifier = new AlertNotifier(alertConfig);

// 状态跟踪
const status = {
  staging: {
    lastStatus: null,
    failureCount: 0,
    lastChecked: null,
    alertSent: false
  },
  production: {
    lastStatus: null,
    failureCount: 0,
    lastChecked: null,
    alertSent: false
  }
};

/**
 * 执行健康检查
 */
async function runHealthCheck(env) {
  const envConfig = config.environments[env];
  const envStatus = status[env];
  
  try {
    console.log(`[${new Date().toISOString()}] 检查 ${env} 环境健康状态...`);
    
    // 发送请求
    const response = await axios.get(envConfig.url, {
      timeout: envConfig.timeout,
      headers: {
        'User-Agent': 'KPHub-HealthCheck/1.0'
      }
    });
    
    // 检查响应
    const isHealthy = response.status === 200 && response.data.status === 'UP';
    
    // 更新状态
    envStatus.lastChecked = new Date();
    
    if (isHealthy) {
      // 健康状态
      if (envStatus.lastStatus === false) {
        // 从故障恢复
        console.log(`[${env}] 服务已恢复正常运行`);
        
        // 发送恢复通知
        if (envStatus.alertSent) {
          await notifier.sendAlert({
            name: `${env}环境健康检查`,
            severity: 'info',
            message: `${env}环境服务已恢复`,
            description: `${env}环境的健康检查已恢复正常响应。`,
            data: {
              environment: env,
              recoveredAt: new Date().toISOString(),
              downtime: Math.round((new Date() - envStatus.lastChecked) / 1000) + '秒'
            }
          });
          envStatus.alertSent = false;
        }
      }
      
      envStatus.lastStatus = true;
      envStatus.failureCount = 0;
      
      // 记录健康日志
      await logHealthStatus(env, true, response.data);
    } else {
      // 不健康状态
      handleUnhealthyStatus(env, `服务返回非健康状态: ${response.data.status}`, response.data);
    }
  } catch (error) {
    // 请求失败
    handleUnhealthyStatus(env, `健康检查请求失败: ${error.message}`);
  }
}

/**
 * 处理不健康状态
 */
async function handleUnhealthyStatus(env, reason, data = null) {
  const envStatus = status[env];
  
  envStatus.lastStatus = false;
  envStatus.failureCount++;
  envStatus.lastChecked = new Date();
  
  console.error(`[${env}] ${reason}`);
  
  // 记录不健康日志
  await logHealthStatus(env, false, data, reason);
  
  // 检查是否需要发送告警
  if (envStatus.failureCount >= config.alertThreshold && !envStatus.alertSent) {
    console.error(`[${env}] 连续 ${envStatus.failureCount} 次检查失败，发送告警通知`);
    
    await notifier.sendAlert({
      name: `${env}环境健康检查失败`,
      severity: 'critical',
      message: `${env}环境服务不可用`,
      description: `${env}环境连续 ${envStatus.failureCount} 次健康检查失败。最后错误: ${reason}`,
      data: {
        environment: env,
        failureCount: envStatus.failureCount,
        lastChecked: envStatus.lastChecked.toISOString(),
        reason: reason,
        responseData: data
      }
    });
    
    envStatus.alertSent = true;
  }
}

/**
 * 记录健康状态
 */
async function logHealthStatus(env, isHealthy, data, error = null) {
  const timestamp = new Date().toISOString().replace(/:/g, '-').split('.')[0];
  const logFile = path.join(config.logDir, `${env}_${timestamp}_${isHealthy ? 'healthy' : 'unhealthy'}.json`);
  
  const logData = {
    timestamp: new Date().toISOString(),
    environment: env,
    status: isHealthy ? 'healthy' : 'unhealthy',
    data: data,
    error: error
  };
  
  await writeFileAsync(logFile, JSON.stringify(logData, null, 2));
}

/**
 * 启动健康检查
 */
function startHealthChecks() {
  console.log('启动健康检查服务...');
  
  // 立即执行一次检查
  Object.keys(config.environments).forEach(env => {
    runHealthCheck(env).catch(err => {
      console.error(`执行 ${env} 环境健康检查时出错:`, err);
    });
  });
  
  // 设置定时检查
  setInterval(() => {
    Object.keys(config.environments).forEach(env => {
      runHealthCheck(env).catch(err => {
        console.error(`执行 ${env} 环境健康检查时出错:`, err);
      });
    });
  }, config.checkInterval);
}

// 启动健康检查
startHealthChecks();
```

### 12.3 自动化日志分析

创建日志分析脚本：

```javascript:c:\project\kphub\scripts\log-analyzer.js
const fs = require('fs');
const path = require('path');
const readline = require('readline');
const { promisify } = require('util');
const readdir = promisify(fs.readdir);
const stat = promisify(fs.stat);
const writeFile = promisify(fs.writeFile);

// 配置
const config = {
  logDir: path.join(__dirname, '../logs'),
  outputDir: path.join(__dirname, '../reports/logs'),
  patterns: {
    error: /error|exception|fail|fatal/i,
    warning: /warn|deprecat/i,
    slowRequest: /request.*took.*(\d+)ms/i
  },
  thresholds: {
    slowRequest: 1000 // 1秒
  }
};

// 确保输出目录存在
if (!fs.existsSync(config.outputDir)) {
  fs.mkdirSync(config.outputDir, { recursive: true });
}

// 分析结果
const results = {
  totalLogs: 0,
  errorCount: 0,
  warningCount: 0,
  slowRequestCount: 0,
  errors: [],
  warnings: [],
  slowRequests: [],
  topErrors: {},
  topEndpoints: {},
  responseTimeDistribution: {
    '<100ms': 0,
    '100-500ms': 0,
    '500-1000ms': 0,
    '1-2s': 0,
    '2-5s': 0,
    '>5s': 0
  }
};

/**
 * 递归获取所有日志文件
 */
async function getLogFiles(dir) {
  const files = await readdir(dir);
  const logFiles = [];
  
  for (const file of files) {
    const filePath = path.join(dir, file);
    const stats = await stat(filePath);
    
    if (stats.isDirectory()) {
      const subDirFiles = await getLogFiles(filePath);
      logFiles.push(...subDirFiles);
    } else if (file.endsWith('.log') || file.endsWith('.json')) {
      logFiles.push(filePath);
    }
  }
  
  return logFiles;
}

/**
 * 分析日志文件
 */
async function analyzeLogFile(filePath) {
  const fileStream = fs.createReadStream(filePath);
  const rl = readline.createInterface({
    input: fileStream,
    crlfDelay: Infinity
  });
  
  for await (const line of rl) {
    results.totalLogs++;
    
    try {
      // 尝试解析JSON
      let logEntry;
      try {
        logEntry = JSON.parse(line);
      } catch (e) {
        // 不是JSON格式，使用原始行
        logEntry = { message: line };
      }
      
      const message = logEntry.message || line;
      
      // 检查错误
      if (config.patterns.error.test(message) || (logEntry.level && logEntry.level === 'error')) {
        results.errorCount++;
        results.errors.push({
          timestamp: logEntry.
让我继续完成Node.js应用部署与管理的文档内容：

```javascript:c:\project\kphub\scripts\log-analyzer.js
      // 检查错误
      if (config.patterns.error.test(message) || (logEntry.level && logEntry.level === 'error')) {
        results.errorCount++;
        results.errors.push({
          timestamp: logEntry.timestamp || new Date().toISOString(),
          message: message,
          file: path.basename(filePath),
          stack: logEntry.stack || null
        });
        
        // 统计错误类型
        const errorType = extractErrorType(message);
        results.topErrors[errorType] = (results.topErrors[errorType] || 0) + 1;
      }
      
      // 检查警告
      if (config.patterns.warning.test(message) || (logEntry.level && logEntry.level === 'warn')) {
        results.warningCount++;
        results.warnings.push({
          timestamp: logEntry.timestamp || new Date().toISOString(),
          message: message,
          file: path.basename(filePath)
        });
      }
      
      // 检查慢请求
      const slowRequestMatch = config.patterns.slowRequest.exec(message);
      if (slowRequestMatch) {
        const duration = parseInt(slowRequestMatch[1], 10);
        
        // 统计响应时间分布
        if (duration < 100) {
          results.responseTimeDistribution['<100ms']++;
        } else if (duration < 500) {
          results.responseTimeDistribution['100-500ms']++;
        } else if (duration < 1000) {
          results.responseTimeDistribution['500-1000ms']++;
        } else if (duration < 2000) {
          results.responseTimeDistribution['1-2s']++;
        } else if (duration < 5000) {
          results.responseTimeDistribution['2-5s']++;
        } else {
          results.responseTimeDistribution['>5s']++;
        }
        
        // 记录慢请求
        if (duration > config.thresholds.slowRequest) {
          results.slowRequestCount++;
          
          // 提取端点
          const endpoint = extractEndpoint(message);
          results.topEndpoints[endpoint] = (results.topEndpoints[endpoint] || 0) + 1;
          
          results.slowRequests.push({
            timestamp: logEntry.timestamp || new Date().toISOString(),
            duration: duration,
            endpoint: endpoint,
            message: message
          });
        }
      }
    } catch (error) {
      console.error(`分析日志行时出错: ${error.message}`);
    }
  }
}

/**
 * 从错误消息中提取错误类型
 */
function extractErrorType(message) {
  // 尝试匹配常见错误类型
  const errorTypeMatch = message.match(/([A-Za-z]+Error):|TypeError:|SyntaxError:|ReferenceError:|RangeError:/);
  if (errorTypeMatch) {
    return errorTypeMatch[1] || errorTypeMatch[0].replace(':', '');
  }
  
  // 如果没有匹配到标准错误类型，尝试提取关键词
  const keywords = ['failed', 'timeout', 'connection', 'database', 'validation', 'unauthorized'];
  for (const keyword of keywords) {
    if (message.toLowerCase().includes(keyword)) {
      return `${keyword.charAt(0).toUpperCase() + keyword.slice(1)}Error`;
    }
  }
  
  return 'UnknownError';
}

/**
 * 从请求日志中提取端点
 */
function extractEndpoint(message) {
  // 尝试匹配URL路径
  const urlMatch = message.match(/GET|POST|PUT|DELETE|PATCH\s+([^\s]+)/);
  if (urlMatch) {
    return urlMatch[1];
  }
  
  // 尝试匹配路由路径
  const routeMatch = message.match(/route:\s*([^\s,]+)/);
  if (routeMatch) {
    return routeMatch[1];
  }
  
  return 'unknown-endpoint';
}

/**
 * 生成分析报告
 */
async function generateReport() {
  // 排序结果
  results.errors = results.errors.slice(0, 100); // 限制错误数量
  results.warnings = results.warnings.slice(0, 100); // 限制警告数量
  results.slowRequests = results.slowRequests.sort((a, b) => b.duration - a.duration).slice(0, 100); // 按持续时间排序并限制数量
  
  // 转换topErrors为排序数组
  const topErrorsArray = Object.entries(results.topErrors)
    .map(([type, count]) => ({ type, count }))
    .sort((a, b) => b.count - a.count);
  
  // 转换topEndpoints为排序数组
  const topEndpointsArray = Object.entries(results.topEndpoints)
    .map(([endpoint, count]) => ({ endpoint, count }))
    .sort((a, b) => b.count - a.count);
  
  // 创建HTML报告
  const timestamp = new Date().toISOString().replace(/:/g, '-').split('.')[0];
  const reportPath = path.join(config.outputDir, `log-analysis-${timestamp}.html`);
  
  const htmlReport = `
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>日志分析报告 - ${timestamp}</title>
  <style>
    body { font-family: Arial, sans-serif; line-height: 1.6; margin: 0; padding: 20px; color: #333; }
    h1, h2, h3 { color: #2c3e50; }
    .container { max-width: 1200px; margin: 0 auto; }
    .summary { display: flex; flex-wrap: wrap; margin-bottom: 20px; }
    .summary-item { background: #f8f9fa; border-radius: 4px; padding: 15px; margin: 10px; flex: 1; min-width: 200px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); }
    .summary-item h3 { margin-top: 0; }
    .error { color: #e74c3c; }
    .warning { color: #f39c12; }
    .success { color: #27ae60; }
    table { width: 100%; border-collapse: collapse; margin-bottom: 20px; }
    th, td { padding: 12px 15px; text-align: left; border-bottom: 1px solid #ddd; }
    th { background-color: #f8f9fa; }
    tr:hover { background-color: #f5f5f5; }
    .chart { height: 300px; margin-bottom: 30px; }
    pre { background: #f8f9fa; padding: 10px; border-radius: 4px; overflow-x: auto; }
  </style>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
  <div class="container">
    <h1>日志分析报告</h1>
    <p>生成时间: ${new Date().toLocaleString()}</p>
    
    <div class="summary">
      <div class="summary-item">
        <h3>总日志条数</h3>
        <p>${results.totalLogs}</p>
      </div>
      <div class="summary-item">
        <h3>错误数</h3>
        <p class="error">${results.errorCount}</p>
      </div>
      <div class="summary-item">
        <h3>警告数</h3>
        <p class="warning">${results.warningCount}</p>
      </div>
      <div class="summary-item">
        <h3>慢请求数</h3>
        <p>${results.slowRequestCount}</p>
      </div>
    </div>
    
    <h2>错误类型分布</h2>
    <div class="chart">
      <canvas id="errorChart"></canvas>
    </div>
    
    <h2>响应时间分布</h2>
    <div class="chart">
      <canvas id="responseTimeChart"></canvas>
    </div>
    
    <h2>最慢的端点</h2>
    <table>
      <thead>
        <tr>
          <th>端点</th>
          <th>慢请求数</th>
        </tr>
      </thead>
      <tbody>
        ${topEndpointsArray.slice(0, 10).map(item => `
          <tr>
            <td>${item.endpoint}</td>
            <td>${item.count}</td>
          </tr>
        `).join('')}
      </tbody>
    </table>
    
    <h2>最近的错误</h2>
    <table>
      <thead>
        <tr>
          <th>时间</th>
          <th>错误类型</th>
          <th>消息</th>
        </tr>
      </thead>
      <tbody>
        ${results.errors.slice(0, 20).map(error => `
          <tr>
            <td>${new Date(error.timestamp).toLocaleString()}</td>
            <td class="error">${extractErrorType(error.message)}</td>
            <td>${error.message}</td>
          </tr>
        `).join('')}
      </tbody>
    </table>
    
    <h2>最慢的请求</h2>
    <table>
      <thead>
        <tr>
          <th>时间</th>
          <th>端点</th>
          <th>持续时间</th>
        </tr>
      </thead>
      <tbody>
        ${results.slowRequests.slice(0, 20).map(req => `
          <tr>
            <td>${new Date(req.timestamp).toLocaleString()}</td>
            <td>${req.endpoint}</td>
            <td>${req.duration}ms</td>
          </tr>
        `).join('')}
      </tbody>
    </table>
  </div>
  
  <script>
    // 错误类型图表
    const errorCtx = document.getElementById('errorChart').getContext('2d');
    new Chart(errorCtx, {
      type: 'bar',
      data: {
        labels: ${JSON.stringify(topErrorsArray.slice(0, 10).map(item => item.type))},
        datasets: [{
          label: '错误数量',
          data: ${JSON.stringify(topErrorsArray.slice(0, 10).map(item => item.count))},
          backgroundColor: 'rgba(231, 76, 60, 0.7)',
          borderColor: 'rgba(231, 76, 60, 1)',
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
    });
    
    // 响应时间分布图表
    const responseTimeCtx = document.getElementById('responseTimeChart').getContext('2d');
    new Chart(responseTimeCtx, {
      type: 'pie',
      data: {
        labels: Object.keys(${JSON.stringify(results.responseTimeDistribution)}),
        datasets: [{
          data: Object.values(${JSON.stringify(results.responseTimeDistribution)}),
          backgroundColor: [
            'rgba(46, 204, 113, 0.7)',
            'rgba(52, 152, 219, 0.7)',
            'rgba(155, 89, 182, 0.7)',
            'rgba(241, 196, 15, 0.7)',
            'rgba(230, 126, 34, 0.7)',
            'rgba(231, 76, 60, 0.7)'
          ]
        }]
      }
    });
  </script>
</body>
</html>
  `;
  
  await writeFile(reportPath, htmlReport);
  console.log(`分析报告已生成: ${reportPath}`);
  
  // 生成JSON报告
  const jsonReportPath = path.join(config.outputDir, `log-analysis-${timestamp}.json`);
  await writeFile(jsonReportPath, JSON.stringify({
    summary: {
      totalLogs: results.totalLogs,
      errorCount: results.errorCount,
      warningCount: results.warningCount,
      slowRequestCount: results.slowRequestCount
    },
    topErrors: topErrorsArray,
    topEndpoints: topEndpointsArray,
    responseTimeDistribution: results.responseTimeDistribution,
    errors: results.errors.slice(0, 100),
    slowRequests: results.slowRequests.slice(0, 100)
  }, null, 2));
  
  console.log(`JSON报告已生成: ${jsonReportPath}`);
  
  return reportPath;
}

/**
 * 主函数
 */
async function main() {
  try {
    console.log('开始分析日志文件...');
    
    // 获取所有日志文件
    const logFiles = await getLogFiles(config.logDir);
    console.log(`找到 ${logFiles.length} 个日志文件`);
    
    // 分析每个日志文件
    for (const filePath of logFiles) {
      console.log(`分析文件: ${filePath}`);
      await analyzeLogFile(filePath);
    }
    
    // 生成报告
    const reportPath = await generateReport();
    
    console.log('日志分析完成!');
    console.log(`总日志条数: ${results.totalLogs}`);
    console.log(`错误数: ${results.errorCount}`);
    console.log(`警告数: ${results.warningCount}`);
    console.log(`慢请求数: ${results.slowRequestCount}`);
    
    return reportPath;
  } catch (error) {
    console.error('日志分析失败:', error);
    throw error;
  }
}

// 如果直接运行脚本
if (require.main === module) {
  main().catch(err => {
    console.error('脚本执行失败:', err);
    process.exit(1);
  });
}

module.exports = { main };
```

## 13. 性能优化

提高Node.js应用性能的关键策略和实践。

### 13.1 内存泄漏检测

创建内存泄漏检测工具：

```javascript:c:\project\kphub\utils\memoryLeakDetector.js
const v8 = require('v8');
const fs = require('fs');
const path = require('path');
const { promisify } = require('util');
const writeFile = promisify(fs.writeFile);
const mkdir = promisify(fs.mkdir);

class MemoryLeakDetector {
  constructor(options = {}) {
    this.options = {
      interval: options.interval || 30000, // 30秒
      threshold: options.threshold || 0.1, // 10%增长阈值
      heapDumpEnabled: options.heapDumpEnabled !== false,
      heapDumpPath: options.heapDumpPath || path.join(process.cwd(), 'heapdumps'),
      maxHeapDumps: options.maxHeapDumps || 3,
      logger: options.logger || console
    };
    
    this.isRunning = false;
    this.intervalId = null;
    this.heapStats = [];
    this.heapDumpCount = 0;
    this.lastHeapDumpTime = 0;
    
    // 确保堆转储目录存在
    if (this.options.heapDumpEnabled) {
      if (!fs.existsSync(this.options.heapDumpPath)) {
        fs.mkdirSync(this.options.heapDumpPath, { recursive: true });
      }
    }
  }
  
  /**
   * 启动内存泄漏检测
   */
  start() {
    if (this.isRunning) {
      this.options.logger.warn('内存泄漏检测器已经在运行');
      return;
    }
    
    this.isRunning = true;
    this.options.logger.info('启动内存泄漏检测器');
    
    // 立即收集一次
    this.collectHeapStats();
    
    // 设置定期收集
    this.intervalId = setInterval(() => {
      this.collectHeapStats();
    }, this.options.interval);
    
    // 防止定时器阻止进程退出
    this.intervalId.unref();
  }
  
  /**
   * 停止内存泄漏检测
   */
  stop() {
    if (!this.isRunning) {
      return;
    }
    
    clearInterval(this.intervalId);
    this.intervalId = null;
    this.isRunning = false;
    this.options.logger.info('停止内存泄漏检测器');
  }
  
  /**
   * 收集堆内存统计信息
   */
  collectHeapStats() {
    // 强制垃圾回收
    if (global.gc) {
      global.gc();
    }
    
    // 获取堆统计信息
    const stats = v8.getHeapStatistics();
    const memoryUsage = process.memoryUsage();
    
    const heapStat = {
      timestamp: Date.now(),
      totalHeapSize: stats.total_heap_size,
      usedHeapSize: stats.used_heap_size,
      heapSizeLimit: stats.heap_size_limit,
      totalHeapSizeExecutable: stats.total_heap_size_executable,
      totalPhysicalSize: stats.total_physical_size,
      totalAvailableSize: stats.total_available_size,
      mallocedMemory: stats.malloced_memory,
      peakMallocedMemory: stats.peak_malloced_memory,
      rss: memoryUsage.rss,
      heapTotal: memoryUsage.heapTotal,
      heapUsed: memoryUsage.heapUsed,
      external: memoryUsage.external,
      arrayBuffers: memoryUsage.arrayBuffers || 0
    };
    
    this.heapStats.push(heapStat);
    
    // 保留最近的100个样本
    if (this.heapStats.length > 100) {
      this.heapStats.shift();
    }
    
    // 检查是否有内存泄漏
    this.checkForLeaks(heapStat);
  }
  
  /**
   * 检查是否有内存泄漏
   */
  checkForLeaks(currentStat) {
    if (this.heapStats.length < 3) {
      return; // 需要至少3个样本才能检测趋势
    }
    
    // 计算最近3个样本的平均增长率
    const samples = this.heapStats.slice(-3);
    let growthRate = 0;
    
    for (let i = 1; i < samples.length; i++) {
      const prevUsed = samples[i-1].heapUsed;
      const currUsed = samples[i].heapUsed;
      const sampleGrowthRate = (currUsed - prevUsed) / prevUsed;
      growthRate += sampleGrowthRate;
    }
    
    growthRate = growthRate / (samples.length - 1);
    
    // 如果增长率超过阈值，可能存在内存泄漏
    if (growthRate > this.options.threshold) {
      this.options.logger.warn(`检测到可能的内存泄漏! 增长率: ${(growthRate * 100).toFixed(2)}%`);
      this.options.logger.warn(`当前堆内存使用: ${(currentStat.heapUsed / 1024 / 1024).toFixed(2)} MB`);
      
      // 创建堆转储
      this.createHeapDump();
    }
  }
  
  /**
   * 创建堆转储
   */
  async createHeapDump() {
    if (!this.options.heapDumpEnabled) {
      return;
    }
    
    // 限制堆转储频率，至少间隔5分钟
    const now = Date.now();
    if (now - this.lastHeapDumpTime < 5 * 60 * 1000) {
      this.options.logger.info('跳过堆转储，因为距离上次转储时间不足5分钟');
      return;
    }
    
    // 限制堆转储数量
    if (this.heapDumpCount >= this.options.maxHeapDumps) {
      this.options.logger.info(`跳过堆转储，已达到最大数量限制 (${this.options.maxHeapDumps})`);
      return;
    }
    
    try {
      this.lastHeapDumpTime = now;
      this.heapDumpCount++;
      
      const timestamp = new Date().toISOString().replace(/:/g, '-');
      const heapDumpPath = path.join(this.options.heapDumpPath, `heapdump-${timestamp}.heapsnapshot`);
      
      this.options.logger.info(`创建堆转储: ${heapDumpPath}`);
      
      // 使用v8.writeHeapSnapshot创建堆转储
      const result = v8.writeHeapSnapshot(heapDumpPath);
      
      if (result) {
        this.options.logger.info(`堆转储已创建: ${heapDumpPath}`);
        
        // 保存当前内存使用情况
        const statsPath = path.join(this.options.heapDumpPath, `heapstats-${timestamp}.json`);
        await writeFile(statsPath, JSON.stringify({
          timestamp: now,
          stats: this.heapStats.slice(-10), // 保存最近10个样本
          processInfo: {
            pid: process.pid,
            uptime: process.uptime(),
            version: process.version,
            memoryUsage: process.memoryUsage()
          }
        }, null, 2));
        
        this.options.logger.info(`内存统计信息已保存: ${statsPath}`);
      } else {
        this.options.logger.error('创建堆转储失败');
      }
    } catch (error) {
      this.options.logger.error('创建堆转储时出错:', error);
    }
  }
  
  /**
   * 获取内存使用报告
   */
  getMemoryReport() {
    if (this.heapStats.length === 0) {
      return {
        current: null,
        trend: null,
        samples: []
      };
    }
    
    const current = this.heapStats[this.heapStats.length - 1];
    
    // 计算趋势
    let trend = null;
    if (this.heapStats.length >= 2) {
      const first = this.heapStats[0];
      const last = current;
      const timeDiff = (last.timestamp - first.timestamp) / 1000; // 秒
      const heapDiff = last.heapUsed - first.heapUsed;
      trend = {
        period: timeDiff,
        growth: heapDiff,
        growthRate: heapDiff / first.heapUsed,
        growthPerSecond: heapDiff / timeDiff
      };
    }
    
    return {
      current: {
        timestamp: new Date(current.timestamp).toISOString(),
        heapUsed: current.heapUsed,
        heapTotal: current.heapTotal,
        rss: current.rss,
        external: current.external
      },
      trend,
      samples: this.heapStats.map(stat => ({
        timestamp: new Date(stat.timestamp).toISOString(),
        heapUsed: stat.heapUsed,
        rss: stat.rss
      }))
    };
  }
}

module.exports = MemoryLeakDetector;
```

在应用中使用内存泄漏检测器：

```javascript:c:\project\kphub\app.js
const express = require('express');
const MemoryLeakDetector = require('./utils/memoryLeakDetector');
const logger = require('./utils/logger');

const app = express();

// 初始化内存泄漏检测器
const memoryLeakDetector = new MemoryLeakDetector({
  interval: 60000, // 1分钟
  threshold: 0.05, // 5%增长阈值
  logger: logger
});

// 启动检测器
memoryLeakDetector.start();

// 添加内存使用情况端点
app.get('/debug/memory', (req, res) => {
  res.json(memoryLeakDetector.getMemoryReport());
});

// 应用关闭时停止检测器
process.on('SIGTERM', () => {
  memoryLeakDetector.stop();
  // 其他清理工作...
});
```

### 13.2 CPU分析

创建CPU分析工具：

```javascript:c:\project\kphub\utils\cpuProfiler.js
const v8Profiler = require('v8-profiler-next');
const fs = require('fs');
const path = require('path');
const { promisify } = require('util');
const writeFile = promisify(fs.writeFile);
const mkdir = promisify(fs.mkdir);

class CpuProfiler {
  constructor(options = {}) {
    this.options = {
      duration: options.duration || 30000, // 30秒
      profileDir: options.profileDir || path.join(process.cwd(), 'profiles'),
      logger: options.logger || console
    };
    
    this.isRunning = false;
    this.currentProfileName = null;
    
    // 确保配置文件目录存在
    if (!fs.existsSync(this.options.profileDir)) {
      fs.mkdirSync(this.options.profileDir, { recursive: true });
    }
  }
  
  /**
   * 启动CPU分析
   * @param {string} name 分析名称
   * @param {number} duration 分析持续时间（毫秒）
   * @returns {Promise<string>} 分析文件路径
   */
  async startProfiling(name, duration) {
    if (this.isRunning) {
      throw new Error('CPU分析器已经在运行');
    }
    
    this.isRunning = true;
    
    // 生成分析名称
    const timestamp = Date.now();
    const profileName = name || `cpu-profile-${timestamp}`;
    this.currentProfileName = profileName;
    
    // 设置分析持续时间
    const profileDuration = duration || this.options.duration;
    
    this.options.logger.info(`开始CPU分析: ${profileName}, 持续时间: ${profileDuration}ms`);
    
    // 启动分析
    v8Profiler.startProfiling(profileName, true);
    
    // 设置定时器停止分析
    return new Promise((resolve, reject) => {
      setTimeout(async () => {
        try {
          const filePath = await this.stopProfiling();
          resolve(filePath);
        } catch (error) {
          reject(error);
        }
      }, profileDuration);
    });
  }
  
  /**
   * 停止CPU分析
   * @returns {Promise<string>} 分析文件路径
   */
  async stopProfiling() {
    if (!this.isRunning) {
      throw new Error('CPU分析器未运行');
    }
    
    try {
      // 停止分析
      const profile = v8Profiler.stopProfiling(this.currentProfileName);
      
      // 生成文件名
      const timestamp = new Date().toISOString().replace(/:/g, '-');
      const fileName = `${this.currentProfileName}-${timestamp}.cpuprofile`;
      const filePath = path.join(this.options.profileDir, fileName);
      
      // 导出分析结果
      const profileJson = JSON.stringify(profile);
      await writeFile(filePath, profileJson);
      
      // 释放分析对象
      profile.delete();
      
      this.options.logger.info(`CPU分析已完成并保存到: ${filePath}`);
      this.isRunning = false;
      this.currentProfileName = null;
      
      return filePath;
    } catch (error) {
      this.options.logger.error('停止CPU分析时出错:', error);
      this.isRunning = false;
      this.currentProfileName = null;
      throw error;
    }
  }
  
  /**
   * 创建分析端点中间件
   */
  createProfileEndpoint() {
    return async (req, res) => {
      try {
        const { name, duration } = req.query;
        
        if (this.isRunning) {
          return res.status(400).json({
            error: 'CPU分析器已经在运行'
          });
        }
        
        // 启动分析
        const profileDuration = duration ? parseInt(duration, 10) : this.options.duration;
        const filePath = await this.startProfiling(name, profileDuration);
        
        res.json({
          message: `CPU分析已启动，将在 ${profileDuration}ms 后完成`,
          profileName: this.currentProfileName,
          estimatedCompletionTime: new Date(Date.now() + profileDuration).toISOString(),
          resultPath: filePath
        });
      } catch (error) {
        this.options.logger.error('CPU分析端点出错:', error);
        res.status(500).json({
          error: '启动CPU分析失败',
          message: error.message
        });
      }
    };
  }
}

module.exports = CpuProfiler;
```

在应用中使用CPU分析器：

```javascript:c:\project\kphub\app.js
const express = require('express');
const CpuProfiler = require('./utils/cpuProfiler');
const logger = require('./utils/logger');

const app = express();

// 初始化CPU分析器
const cpuProfiler = new CpuProfiler({
  duration: 30000, // 30秒
  logger: logger
});

// 添加CPU分析端点
app.get
让我继续完成Node.js应用部署与管理的文档内容：

```javascript:c:\project\kphub\app.js
// 添加CPU分析端点
app.get('/debug/cpu-profile', cpuProfiler.createProfileEndpoint());

// 添加手动触发GC的端点（仅在开发环境中启用）
if (process.env.NODE_ENV === 'development') {
  app.get('/debug/gc', (req, res) => {
    if (global.gc) {
      global.gc();
      res.json({ success: true, message: '垃圾回收已触发' });
    } else {
      res.status(400).json({ 
        success: false, 
        message: '无法触发垃圾回收，请使用 --expose-gc 参数启动Node.js' 
      });
    }
  });
}
```

### 13.3 数据库性能优化

创建MongoDB性能优化工具：

```javascript:c:\project\kphub\utils\mongoOptimizer.js
const mongoose = require('mongoose');

class MongoOptimizer {
  constructor(options = {}) {
    this.options = {
      logger: options.logger || console,
      slowQueryThreshold: options.slowQueryThreshold || 100, // 毫秒
      indexSuggestions: options.indexSuggestions !== false,
      queryStats: options.queryStats !== false
    };
    
    this.queryStats = {
      totalQueries: 0,
      slowQueries: 0,
      queriesByCollection: {},
      slowQueriesByCollection: {},
      recentSlowQueries: []
    };
    
    // 保留最近100个慢查询
    this.maxRecentSlowQueries = 100;
  }
  
  /**
   * 初始化MongoDB优化器
   */
  init() {
    if (!mongoose.connection.db) {
      throw new Error('MongoDB连接未初始化');
    }
    
    this.setupQueryProfiler();
    
    this.options.logger.info('MongoDB优化器已初始化');
    return this;
  }
  
  /**
   * 设置查询分析器
   */
  setupQueryProfiler() {
    // 监听所有查询
    mongoose.connection.on('query', (query) => {
      const startTime = Date.now();
      const collection = query.collection;
      const operation = query.operation;
      
      // 更新查询统计
      this.queryStats.totalQueries++;
      this.queryStats.queriesByCollection[collection] = (this.queryStats.queriesByCollection[collection] || 0) + 1;
      
      // 监听查询完成
      mongoose.connection.once('query:' + query.requestId, () => {
        const duration = Date.now() - startTime;
        
        // 检查是否是慢查询
        if (duration >= this.options.slowQueryThreshold) {
          this.queryStats.slowQueries++;
          this.queryStats.slowQueriesByCollection[collection] = (this.queryStats.slowQueriesByCollection[collection] || 0) + 1;
          
          // 记录慢查询
          const slowQuery = {
            timestamp: new Date(),
            collection,
            operation,
            query: query.query,
            options: query.options,
            duration
          };
          
          this.queryStats.recentSlowQueries.unshift(slowQuery);
          
          // 限制慢查询数量
          if (this.queryStats.recentSlowQueries.length > this.maxRecentSlowQueries) {
            this.queryStats.recentSlowQueries.pop();
          }
          
          this.options.logger.warn(`慢查询: ${collection}.${operation} - ${duration}ms`);
          
          // 如果启用了索引建议，分析查询并提供建议
          if (this.options.indexSuggestions) {
            this.suggestIndexes(collection, query.query);
          }
        }
      });
    });
  }
  
  /**
   * 为查询建议索引
   */
  async suggestIndexes(collection, query) {
    try {
      // 简单的索引建议逻辑
      const fields = this.extractQueryFields(query);
      
      if (fields.length > 0) {
        // 检查是否已经有索引
        const indexes = await mongoose.connection.db.collection(collection).indexes();
        const existingIndexFields = indexes.map(index => Object.keys(index.key));
        
        // 检查每个字段是否已经有索引
        const missingIndexes = fields.filter(field => {
          return !existingIndexFields.some(indexFields => 
            indexFields.length === 1 && indexFields[0] === field
          );
        });
        
        if (missingIndexes.length > 0) {
          this.options.logger.info(`建议为集合 ${collection} 的字段 ${missingIndexes.join(', ')} 创建索引`);
        }
      }
    } catch (error) {
      this.options.logger.error('建议索引时出错:', error);
    }
  }
  
  /**
   * 从查询中提取字段
   */
  extractQueryFields(query, prefix = '') {
    const fields = [];
    
    for (const key in query) {
      if (key === '$or' || key === '$and') {
        // 处理逻辑操作符
        for (const subQuery of query[key]) {
          fields.push(...this.extractQueryFields(subQuery, prefix));
        }
      } else if (key.startsWith('$')) {
        // 跳过其他操作符
        continue;
      } else {
        // 添加字段
        const fieldName = prefix ? `${prefix}.${key}` : key;
        
        if (typeof query[key] === 'object' && query[key] !== null && !Array.isArray(query[key])) {
          // 检查是否是嵌套查询或操作符
          const hasOperator = Object.keys(query[key]).some(k => k.startsWith('$'));
          
          if (hasOperator) {
            // 如果有操作符，添加当前字段
            fields.push(fieldName);
          } else {
            // 否则递归处理嵌套字段
            fields.push(...this.extractQueryFields(query[key], fieldName));
          }
        } else {
          // 简单字段
          fields.push(fieldName);
        }
      }
    }
    
    return fields;
  }
  
  /**
   * 获取查询统计信息
   */
  getQueryStats() {
    return {
      totalQueries: this.queryStats.totalQueries,
      slowQueries: this.queryStats.slowQueries,
      slowQueryPercentage: this.queryStats.totalQueries > 0 
        ? (this.queryStats.slowQueries / this.queryStats.totalQueries * 100).toFixed(2) + '%'
        : '0%',
      queriesByCollection: this.queryStats.queriesByCollection,
      slowQueriesByCollection: this.queryStats.slowQueriesByCollection,
      recentSlowQueries: this.queryStats.recentSlowQueries.slice(0, 20) // 只返回最近20个
    };
  }
  
  /**
   * 分析集合索引
   */
  async analyzeIndexes() {
    try {
      const collections = await mongoose.connection.db.collections();
      const result = [];
      
      for (const collection of collections) {
        const collectionName = collection.collectionName;
        const indexes = await collection.indexes();
        const stats = await collection.stats();
        
        result.push({
          collection: collectionName,
          documentCount: stats.count,
          indexCount: indexes.length,
          indexes: indexes.map(index => ({
            name: index.name,
            fields: index.key,
            unique: !!index.unique,
            sparse: !!index.sparse,
            background: !!index.background
          })),
          sizeInBytes: stats.size,
          avgDocumentSizeInBytes: stats.avgObjSize
        });
      }
      
      return result;
    } catch (error) {
      this.options.logger.error('分析索引时出错:', error);
      throw error;
    }
  }
  
  /**
   * 创建索引分析端点中间件
   */
  createIndexAnalysisEndpoint() {
    return async (req, res) => {
      try {
        const indexAnalysis = await this.analyzeIndexes();
        res.json(indexAnalysis);
      } catch (error) {
        res.status(500).json({
          error: '分析索引失败',
          message: error.message
        });
      }
    };
  }
  
  /**
   * 创建查询统计端点中间件
   */
  createQueryStatsEndpoint() {
    return (req, res) => {
      res.json(this.getQueryStats());
    };
  }
}

module.exports = MongoOptimizer;
```

在应用中使用MongoDB优化器：

```javascript:c:\project\kphub\app.js
const express = require('express');
const mongoose = require('mongoose');
const MongoOptimizer = require('./utils/mongoOptimizer');
const logger = require('./utils/logger');

const app = express();

// 初始化MongoDB优化器
mongoose.connection.once('open', () => {
  const mongoOptimizer = new MongoOptimizer({
    logger: logger,
    slowQueryThreshold: 100 // 100ms
  }).init();
  
  // 添加MongoDB分析端点
  app.get('/debug/mongo/indexes', mongoOptimizer.createIndexAnalysisEndpoint());
  app.get('/debug/mongo/queries', mongoOptimizer.createQueryStatsEndpoint());
});
```

### 13.4 负载测试工具

创建负载测试脚本：

```javascript:c:\project\kphub\scripts\load-test.js
const autocannon = require('autocannon');
const fs = require('fs');
const path = require('path');
const { promisify } = require('util');
const writeFile = promisify(fs.writeFile);
const mkdir = promisify(fs.mkdir);

// 配置
const config = {
  outputDir: path.join(__dirname, '../reports/load-tests'),
  defaultDuration: 30, // 秒
  defaultConnections: 100,
  defaultPipelining: 1,
  defaultTimeout: 10 // 秒
};

// 确保输出目录存在
if (!fs.existsSync(config.outputDir)) {
  fs.mkdirSync(config.outputDir, { recursive: true });
}

/**
 * 运行负载测试
 */
async function runLoadTest(options) {
  const testOptions = {
    url: options.url,
    method: options.method || 'GET',
    body: options.body,
    headers: options.headers || {},
    duration: options.duration || config.defaultDuration,
    connections: options.connections || config.defaultConnections,
    pipelining: options.pipelining || config.defaultPipelining,
    timeout: options.timeout || config.defaultTimeout,
    title: options.title || `Load Test - ${options.url}`,
    json: options.json !== false
  };
  
  console.log(`开始负载测试: ${testOptions.title}`);
  console.log(`URL: ${testOptions.url}`);
  console.log(`持续时间: ${testOptions.duration}秒`);
  console.log(`并发连接: ${testOptions.connections}`);
  
  return new Promise((resolve, reject) => {
    const instance = autocannon(testOptions, (err, result) => {
      if (err) {
        console.error('负载测试失败:', err);
        return reject(err);
      }
      
      console.log('负载测试完成');
      resolve(result);
    });
    
    // 打印进度
    autocannon.track(instance, {
      renderProgressBar: true,
      renderResultsTable: true,
      renderLatencyTable: true
    });
    
    // 允许通过Ctrl+C终止测试
    process.once('SIGINT', () => {
      instance.stop();
    });
  });
}

/**
 * 保存测试结果
 */
async function saveTestResults(results, options) {
  const timestamp = new Date().toISOString().replace(/:/g, '-').split('.')[0];
  const title = options.title || `load-test-${timestamp}`;
  const fileName = `${title.replace(/\s+/g, '-').toLowerCase()}-${timestamp}.json`;
  const filePath = path.join(config.outputDir, fileName);
  
  // 添加元数据
  const resultsWithMeta = {
    meta: {
      timestamp: new Date().toISOString(),
      options: options,
      summary: {
        url: options.url,
        method: options.method || 'GET',
        duration: options.duration || config.defaultDuration,
        connections: options.connections || config.defaultConnections,
        requestsPerSecond: Math.round(results.requests.average),
        latencyAvg: results.latency.average,
        latencyP99: results.latency.p99,
        errors: results.errors,
        timeouts: results.timeouts,
        statusCodeDistribution: results.statusCodeStats
      }
    },
    results: results
  };
  
  await writeFile(filePath, JSON.stringify(resultsWithMeta, null, 2));
  console.log(`测试结果已保存到: ${filePath}`);
  
  return filePath;
}

/**
 * 生成HTML报告
 */
async function generateHtmlReport(results, options) {
  const timestamp = new Date().toISOString().replace(/:/g, '-').split('.')[0];
  const title = options.title || `load-test-${timestamp}`;
  const fileName = `${title.replace(/\s+/g, '-').toLowerCase()}-${timestamp}.html`;
  const filePath = path.join(config.outputDir, fileName);
  
  // 创建状态码分布数据
  const statusCodes = Object.entries(results.statusCodeStats || {}).map(([code, count]) => ({
    code,
    count
  }));
  
  // 创建延迟分布数据
  const latencyData = [
    { label: 'Min', value: results.latency.min },
    { label: 'Avg', value: results.latency.average },
    { label: 'Max', value: results.latency.max },
    { label: 'P50', value: results.latency.p50 },
    { label: 'P90', value: results.latency.p90 },
    { label: 'P99', value: results.latency.p99 }
  ];
  
  const htmlReport = `
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>负载测试报告 - ${title}</title>
  <style>
    body { font-family: Arial, sans-serif; line-height: 1.6; margin: 0; padding: 20px; color: #333; }
    h1, h2, h3 { color: #2c3e50; }
    .container { max-width: 1200px; margin: 0 auto; }
    .summary { display: flex; flex-wrap: wrap; margin-bottom: 20px; }
    .summary-item { background: #f8f9fa; border-radius: 4px; padding: 15px; margin: 10px; flex: 1; min-width: 200px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); }
    .summary-item h3 { margin-top: 0; }
    .error { color: #e74c3c; }
    .warning { color: #f39c12; }
    .success { color: #27ae60; }
    table { width: 100%; border-collapse: collapse; margin-bottom: 20px; }
    th, td { padding: 12px 15px; text-align: left; border-bottom: 1px solid #ddd; }
    th { background-color: #f8f9fa; }
    tr:hover { background-color: #f5f5f5; }
    .chart { height: 300px; margin-bottom: 30px; }
    pre { background: #f8f9fa; padding: 10px; border-radius: 4px; overflow-x: auto; }
  </style>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
  <div class="container">
    <h1>负载测试报告</h1>
    <p>测试时间: ${new Date().toLocaleString()}</p>
    
    <div class="summary">
      <div class="summary-item">
        <h3>URL</h3>
        <p>${options.url}</p>
      </div>
      <div class="summary-item">
        <h3>方法</h3>
        <p>${options.method || 'GET'}</p>
      </div>
      <div class="summary-item">
        <h3>持续时间</h3>
        <p>${options.duration || config.defaultDuration}秒</p>
      </div>
      <div class="summary-item">
        <h3>并发连接</h3>
        <p>${options.connections || config.defaultConnections}</p>
      </div>
    </div>
    
    <div class="summary">
      <div class="summary-item">
        <h3>每秒请求数</h3>
        <p class="success">${Math.round(results.requests.average)}</p>
      </div>
      <div class="summary-item">
        <h3>平均延迟</h3>
        <p>${results.latency.average.toFixed(2)}ms</p>
      </div>
      <div class="summary-item">
        <h3>P99延迟</h3>
        <p>${results.latency.p99.toFixed(2)}ms</p>
      </div>
      <div class="summary-item">
        <h3>错误数</h3>
        <p class="${results.errors ? 'error' : 'success'}">${results.errors || 0}</p>
      </div>
    </div>
    
    <h2>延迟分布</h2>
    <div class="chart">
      <canvas id="latencyChart"></canvas>
    </div>
    
    <h2>状态码分布</h2>
    <div class="chart">
      <canvas id="statusCodeChart"></canvas>
    </div>
    
    <h2>详细结果</h2>
    <table>
      <tr>
        <th>指标</th>
        <th>值</th>
      </tr>
      <tr>
        <td>总请求数</td>
        <td>${results.requests.total}</td>
      </tr>
      <tr>
        <td>每秒请求数 (平均)</td>
        <td>${results.requests.average.toFixed(2)}</td>
      </tr>
      <tr>
        <td>每秒请求数 (最大)</td>
        <td>${results.requests.max}</td>
      </tr>
      <tr>
        <td>总数据传输</td>
        <td>${(results.throughput.total / 1024 / 1024).toFixed(2)} MB</td>
      </tr>
      <tr>
        <td>每秒数据传输 (平均)</td>
        <td>${(results.throughput.average / 1024 / 1024).toFixed(2)} MB/s</td>
      </tr>
      <tr>
        <td>错误数</td>
        <td>${results.errors || 0}</td>
      </tr>
      <tr>
        <td>超时数</td>
        <td>${results.timeouts || 0}</td>
      </tr>
      <tr>
        <td>非2xx响应数</td>
        <td>${results.non2xx || 0}</td>
      </tr>
    </table>
  </div>
  
  <script>
    // 延迟分布图表
    const latencyCtx = document.getElementById('latencyChart').getContext('2d');
    new Chart(latencyCtx, {
      type: 'bar',
      data: {
        labels: ${JSON.stringify(latencyData.map(item => item.label))},
        datasets: [{
          label: '延迟 (ms)',
          data: ${JSON.stringify(latencyData.map(item => item.value))},
          backgroundColor: 'rgba(52, 152, 219, 0.7)',
          borderColor: 'rgba(52, 152, 219, 1)',
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
    });
    
    // 状态码分布图表
    const statusCodeCtx = document.getElementById('statusCodeChart').getContext('2d');
    new Chart(statusCodeCtx, {
      type: 'pie',
      data: {
        labels: ${JSON.stringify(statusCodes.map(item => `HTTP ${item.code}`))},
        datasets: [{
          data: ${JSON.stringify(statusCodes.map(item => item.count))},
          backgroundColor: [
            'rgba(46, 204, 113, 0.7)',
            'rgba(52, 152, 219, 0.7)',
            'rgba(155, 89, 182, 0.7)',
            'rgba(241, 196, 15, 0.7)',
            'rgba(230, 126, 34, 0.7)',
            'rgba(231, 76, 60, 0.7)'
          ]
        }]
      }
    });
  </script>
</body>
</html>
  `;
  
  await writeFile(filePath, htmlReport);
  console.log(`HTML报告已生成: ${filePath}`);
  
  return filePath;
}

/**
 * 主函数
 */
async function main() {
  // 从命令行参数获取配置
  const args = process.argv.slice(2);
  const url = args[0];
  
  if (!url) {
    console.error('请提供要测试的URL');
    console.error('用法: node load-test.js <url> [options]');
    console.error('选项:');
    console.error('  --duration=<seconds>    测试持续时间（秒）');
    console.error('  --connections=<number>  并发连接数');
    console.error('  --method=<method>       HTTP方法（GET, POST等）');
    console.error('  --body=<json>           请求体（JSON字符串）');
    console.error('  --title=<title>         测试标题');
    process.exit(1);
  }
  
  // 解析选项
  const options = {
    url,
    method: 'GET',
    duration: config.defaultDuration,
    connections: config.defaultConnections
  };
  
  for (let i = 1; i < args.length; i++) {
    const arg = args[i];
    
    if (arg.startsWith('--duration=')) {
      options.duration = parseInt(arg.split('=')[1], 10);
    } else if (arg.startsWith('--connections=')) {
      options.connections = parseInt(arg.split('=')[1], 10);
    } else if (arg.startsWith('--method=')) {
      options.method = arg.split('=')[1].toUpperCase();
    } else if (arg.startsWith('--body=')) {
      try {
        options.body = JSON.parse(arg.split('=')[1]);
      } catch (e) {
        console.error('无效的JSON请求体');
        process.exit(1);
      }
    } else if (arg.startsWith('--title=')) {
      options.title = arg.split('=')[1];
    }
  }
  
  try {
    // 运行负载测试
    const results = await runLoadTest(options);
    
    // 保存结果
    await saveTestResults(results, options);
    
    // 生成HTML报告
    await generateHtmlReport(results, options);
    
    console.log('负载测试完成');
  } catch (error) {
    console.error('负载测试失败:', error);
    process.exit(1);
  }
}

// 如果直接运行脚本
if (require.main === module) {
  main().catch(err => {
    console.error('脚本执行失败:', err);
    process.exit(1);
  });
}

module.exports = {
  runLoadTest,
  saveTestResults,
  generateHtmlReport
};
```

## 14. 安全最佳实践

实施Node.js应用安全最佳实践。

### 14.1 安全中间件

创建安全中间件：

```javascript:c:\project\kphub\middleware\security.js
const helmet = require('helmet');
const rateLimit = require('express-rate-limit');
const slowDown = require('express-slow-down');
const xss = require('xss-clean');
const hpp = require('hpp');
const cors = require('cors');
const { v4: uuidv4 } = require('uuid');

/**
 * 配置安全中间件
 * @param {Object} app Express应用实例
 * @param {Object} options 配置选项
 */
function setupSecurityMiddleware(app, options = {}) {
  const config = {
    // Helmet配置
    helmet: options.helmet !== false,
    helmetOptions: options.helmetOptions || {},
    
    // CORS配置
    cors: options.cors !== false,
    corsOptions: options.corsOptions || {
      origin: options.corsOrigin || '*',
      methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
      preflightContinue: false,
      optionsSuccessStatus: 204
    },
    
    // 速率限制配置
    rateLimit: options.rateLimit !== false,
    rateLimitOptions: options.rateLimitOptions || {
      windowMs: 15 * 60 * 1000, // 15分钟
      max: 100, // 每个IP限制100个请求
      standardHeaders: true,
      legacyHeaders: false,
      message: '请求过于频繁，请稍后再试'
    },
    
    // 请求减速配置
    slowDown: options.slowDown !== false,
    slowDownOptions: options.slowDownOptions || {
      windowMs: 15 * 60 * 1000, // 15分钟
      delayAfter: 50, // 50个请求后开始减速
      delayMs: 500 // 每个请求增加500ms延迟
    },
    
    // XSS防护
    xss: options.xss !== false,
    
    // HTTP参数污染防护
    hpp: options.hpp !== false,
    
    // 请求ID
    requestId: options.requestId !== false
  };
  
  // 添加Helmet（HTTP头安全）
  if (config.helmet) {
    app.use(helmet(config.helmetOptions));
  }
  
  // 添加CORS
  if (config.cors) {
    app.use(cors(config.corsOptions));
  }
  
  // 添加速率限制
  if (config.rateLimit) {
    app.use(rateLimit(config.rateLimitOptions));
  }
  
  // 添加请求减速
  if (config.slowDown) {
    app.use(slowDown(config.slowDownOptions));
  }
  
  // 添加XSS防护
  if (config.xss) {
    app.use(xss());
  }
  
  // 添加HTTP参数污染防护
  if (config.hpp) {
    app.use(hpp());
  }
  
  // 添加请求ID
  if (config.requestId) {
    app.use((req, res, next) => {
      req.id = req.headers['x-request-id'] || uuidv4();
      res.setHeader('X-Request-ID', req.id);
      next();
    });
  }
  
  return app;
}

module.exports = setupSecurityMiddleware;
```

在应用中使用安全中间件：

```javascript:c:\project\kphub\app.js
const express = require('express');
const setupSecurityMiddleware = require('./middleware/security');

const app = express();

// 设置安全中间件
setupSecurityMiddleware(app, {
  helmet: true,
  helmetOptions: {
    contentSecurityPolicy: {
      directives: {
        defaultSrc: ["'self'"],
        scriptSrc: ["'self'", "'unsafe-inline'", 'cdn.jsdelivr.net'],
        styleSrc: ["'self'", "'unsafe-inline'", 'cdn.jsdelivr.net'],
        imgSrc: ["'self'", 'data:'],
        connectSrc: ["'self'", 'api.example.com'],
        fontSrc: ["'self'", 'fonts.googleapis.com', 'fonts.gstatic.com'],
        objectSrc: ["'none'"],
        upgradeInsecureRequests: []
      }
    }
  },
  cors: true,
  corsOptions: {
    origin: ['https://example.com', 'https://www.example.com'],
    credentials: true
  },
  rateLimit: true,
  rateLimitOptions: {
    windowMs: 15 * 60 * 1000,
    max: 100,
    standardHeaders: true,
    legacyHeaders: false
  }
});
```

### 14.2 安全检查工具

创建安全检查脚本：

```javascript:c:\project\kphub\scripts\security-check.js
const { exec } = require('child_process');
const fs = require('fs');
const path = require('path');
const util = require('util');
const execPromise = util.promisify(exec);
const writeFile = promisify(fs.writeFile);
const mkdir = promisify(fs.mkdir);

// 配置
const config = {
  outputDir: path.join(__dirname, '../reports/security'),
  checks: {
    npmAudit: true,
    snyk: false, // 需要Snyk CLI和账号
    dependencyCheck: false, // 需要安装OWASP Dependency Check
    eslintSecurity: true,
    secretsScanning: true
  }
让我继续完成Node.js应用部署与管理的文档内容：

```javascript:c:\project\kphub\scripts\security-check.js
// 配置
const config = {
  outputDir: path.join(__dirname, '../reports/security'),
  checks: {
    npmAudit: true,
    snyk: false, // 需要Snyk CLI和账号
    dependencyCheck: false, // 需要安装OWASP Dependency Check
    eslintSecurity: true,
    secretsScanning: true
  },
  secretPatterns: [
    { name: 'AWS访问密钥', regex: /AKIA[0-9A-Z]{16}/ },
    { name: 'AWS秘钥', regex: /[0-9a-zA-Z/+]{40}/ },
    { name: 'GitHub Token', regex: /github_pat_[0-9a-zA-Z_]{82}/ },
    { name: 'SSH私钥', regex: /-----BEGIN( RSA| OPENSSH| DSA| EC)? PRIVATE KEY( BLOCK)?-----/ },
    { name: 'API密钥格式', regex: /(api|token|key|secret|password|credential)[\"']?\s*[:=]\s*[\"'][0-9a-zA-Z]{16,}[\"']/ },
    { name: '环境变量中的密钥', regex: /(GITHUB|GITLAB|NPM|API|TOKEN|KEY|SECRET|PASSWORD|CREDENTIAL)_?TOKEN[\w]*\s*=\s*.+/ }
  ]
};

// 确保输出目录存在
if (!fs.existsSync(config.outputDir)) {
  fs.mkdirSync(config.outputDir, { recursive: true });
}

/**
 * 运行npm audit检查
 */
async function runNpmAudit() {
  console.log('运行npm audit安全检查...');
  
  try {
    const { stdout, stderr } = await execPromise('npm audit --json');
    
    // 解析结果
    const auditResult = JSON.parse(stdout);
    
    // 保存结果
    const timestamp = new Date().toISOString().replace(/:/g, '-').split('.')[0];
    const filePath = path.join(config.outputDir, `npm-audit-${timestamp}.json`);
    await writeFile(filePath, JSON.stringify(auditResult, null, 2));
    
    // 生成摘要
    const summary = {
      timestamp: new Date().toISOString(),
      vulnerabilities: {
        total: auditResult.metadata.vulnerabilities.total,
        critical: auditResult.metadata.vulnerabilities.critical,
        high: auditResult.metadata.vulnerabilities.high,
        moderate: auditResult.metadata.vulnerabilities.moderate,
        low: auditResult.metadata.vulnerabilities.low,
        info: auditResult.metadata.vulnerabilities.info
      },
      dependencies: {
        total: auditResult.metadata.totalDependencies,
        audited: auditResult.metadata.totalDependencies
      }
    };
    
    console.log('npm audit检查完成');
    console.log(`发现 ${summary.vulnerabilities.total} 个漏洞`);
    console.log(`- 严重: ${summary.vulnerabilities.critical}`);
    console.log(`- 高危: ${summary.vulnerabilities.high}`);
    console.log(`- 中危: ${summary.vulnerabilities.moderate}`);
    console.log(`- 低危: ${summary.vulnerabilities.low}`);
    
    return {
      success: true,
      summary,
      reportPath: filePath
    };
  } catch (error) {
    // npm audit如果发现漏洞会返回非零退出码，但我们仍然需要解析结果
    try {
      const auditResult = JSON.parse(error.stdout);
      
      // 保存结果
      const timestamp = new Date().toISOString().replace(/:/g, '-').split('.')[0];
      const filePath = path.join(config.outputDir, `npm-audit-${timestamp}.json`);
      await writeFile(filePath, JSON.stringify(auditResult, null, 2));
      
      // 生成摘要
      const summary = {
        timestamp: new Date().toISOString(),
        vulnerabilities: {
          total: auditResult.metadata.vulnerabilities.total,
          critical: auditResult.metadata.vulnerabilities.critical,
          high: auditResult.metadata.vulnerabilities.high,
          moderate: auditResult.metadata.vulnerabilities.moderate,
          low: auditResult.metadata.vulnerabilities.low,
          info: auditResult.metadata.vulnerabilities.info
        },
        dependencies: {
          total: auditResult.metadata.totalDependencies,
          audited: auditResult.metadata.totalDependencies
        }
      };
      
      console.log('npm audit检查完成（发现漏洞）');
      console.log(`发现 ${summary.vulnerabilities.total} 个漏洞`);
      console.log(`- 严重: ${summary.vulnerabilities.critical}`);
      console.log(`- 高危: ${summary.vulnerabilities.high}`);
      console.log(`- 中危: ${summary.vulnerabilities.moderate}`);
      console.log(`- 低危: ${summary.vulnerabilities.low}`);
      
      return {
        success: true,
        summary,
        reportPath: filePath
      };
    } catch (parseError) {
      console.error('npm audit检查失败:', error.message);
      return {
        success: false,
        error: error.message
      };
    }
  }
}

/**
 * 运行ESLint安全检查
 */
async function runEslintSecurity() {
  console.log('运行ESLint安全检查...');
  
  try {
    // 确保安装了eslint-plugin-security
    try {
      await execPromise('npm list eslint-plugin-security');
    } catch (error) {
      console.log('安装eslint-plugin-security...');
      await execPromise('npm install --save-dev eslint-plugin-security');
    }
    
    // 创建临时ESLint配置
    const eslintConfig = {
      "env": {
        "node": true,
        "es6": true
      },
      "plugins": [
        "security"
      ],
      "extends": [
        "plugin:security/recommended"
      ]
    };
    
    const configPath = path.join(__dirname, '../.eslintrc-security.json');
    await writeFile(configPath, JSON.stringify(eslintConfig, null, 2));
    
    // 运行ESLint
    const { stdout, stderr } = await execPromise('npx eslint --config .eslintrc-security.json --format json "**/*.js" --ignore-pattern "node_modules/" --ignore-pattern "dist/"');
    
    // 删除临时配置
    fs.unlinkSync(configPath);
    
    // 解析结果
    let eslintResults;
    if (stdout.trim()) {
      eslintResults = JSON.parse(stdout);
    } else {
      eslintResults = [];
    }
    
    // 保存结果
    const timestamp = new Date().toISOString().replace(/:/g, '-').split('.')[0];
    const filePath = path.join(config.outputDir, `eslint-security-${timestamp}.json`);
    await writeFile(filePath, JSON.stringify(eslintResults, null, 2));
    
    // 生成摘要
    let totalIssues = 0;
    const issuesByRule = {};
    
    for (const result of eslintResults) {
      totalIssues += result.messages.length;
      
      for (const message of result.messages) {
        if (!issuesByRule[message.ruleId]) {
          issuesByRule[message.ruleId] = 0;
        }
        issuesByRule[message.ruleId]++;
      }
    }
    
    const summary = {
      timestamp: new Date().toISOString(),
      totalIssues,
      issuesByRule
    };
    
    console.log('ESLint安全检查完成');
    console.log(`发现 ${totalIssues} 个安全问题`);
    
    for (const [rule, count] of Object.entries(issuesByRule)) {
      console.log(`- ${rule}: ${count}`);
    }
    
    return {
      success: true,
      summary,
      reportPath: filePath
    };
  } catch (error) {
    console.error('ESLint安全检查失败:', error.message);
    return {
      success: false,
      error: error.message
    };
  }
}

/**
 * 扫描代码中的敏感信息
 */
async function scanForSecrets() {
  console.log('扫描代码中的敏感信息...');
  
  try {
    const results = [];
    
    // 递归扫描目录
    async function scanDirectory(dir) {
      const files = await fs.promises.readdir(dir);
      
      for (const file of files) {
        const filePath = path.join(dir, file);
        const stat = await fs.promises.stat(filePath);
        
        if (stat.isDirectory()) {
          // 跳过node_modules和.git目录
          if (file !== 'node_modules' && file !== '.git' && file !== 'dist') {
            await scanDirectory(filePath);
          }
        } else if (stat.isFile()) {
          // 只扫描文本文件
          const ext = path.extname(file).toLowerCase();
          const textExtensions = ['.js', '.ts', '.json', '.yml', '.yaml', '.env', '.md', '.txt', '.html', '.css', '.jsx', '.tsx'];
          
          if (textExtensions.includes(ext) || !ext) {
            await scanFile(filePath);
          }
        }
      }
    }
    
    // 扫描单个文件
    async function scanFile(filePath) {
      const content = await fs.promises.readFile(filePath, 'utf8');
      const lines = content.split('\n');
      
      for (let i = 0; i < lines.length; i++) {
        const line = lines[i];
        
        for (const pattern of config.secretPatterns) {
          if (pattern.regex.test(line)) {
            results.push({
              file: filePath,
              line: i + 1,
              pattern: pattern.name,
              content: line.trim()
            });
          }
        }
      }
    }
    
    // 开始扫描
    await scanDirectory(path.join(__dirname, '..'));
    
    // 保存结果
    const timestamp = new Date().toISOString().replace(/:/g, '-').split('.')[0];
    const filePath = path.join(config.outputDir, `secrets-scan-${timestamp}.json`);
    await writeFile(filePath, JSON.stringify(results, null, 2));
    
    console.log('敏感信息扫描完成');
    console.log(`发现 ${results.length} 个潜在的敏感信息`);
    
    return {
      success: true,
      summary: {
        timestamp: new Date().toISOString(),
        totalSecrets: results.length,
        secretsByPattern: results.reduce((acc, result) => {
          acc[result.pattern] = (acc[result.pattern] || 0) + 1;
          return acc;
        }, {})
      },
      reportPath: filePath
    };
  } catch (error) {
    console.error('敏感信息扫描失败:', error.message);
    return {
      success: false,
      error: error.message
    };
  }
}

/**
 * 生成安全检查报告
 */
async function generateReport(results) {
  const timestamp = new Date().toISOString().replace(/:/g, '-').split('.')[0];
  const filePath = path.join(config.outputDir, `security-report-${timestamp}.html`);
  
  // 计算总体安全评分
  let score = 100;
  let criticalIssues = 0;
  let highIssues = 0;
  let moderateIssues = 0;
  let lowIssues = 0;
  
  if (results.npmAudit && results.npmAudit.success) {
    criticalIssues += results.npmAudit.summary.vulnerabilities.critical;
    highIssues += results.npmAudit.summary.vulnerabilities.high;
    moderateIssues += results.npmAudit.summary.vulnerabilities.moderate;
    lowIssues += results.npmAudit.summary.vulnerabilities.low;
    
    // 根据漏洞严重程度减分
    score -= results.npmAudit.summary.vulnerabilities.critical * 10;
    score -= results.npmAudit.summary.vulnerabilities.high * 5;
    score -= results.npmAudit.summary.vulnerabilities.moderate * 2;
    score -= results.npmAudit.summary.vulnerabilities.low * 0.5;
  }
  
  if (results.eslintSecurity && results.eslintSecurity.success) {
    // 每个ESLint安全问题减1分
    score -= results.eslintSecurity.summary.totalIssues;
    moderateIssues += results.eslintSecurity.summary.totalIssues;
  }
  
  if (results.secretsScan && results.secretsScan.success) {
    // 每个敏感信息减10分
    score -= results.secretsScan.summary.totalSecrets * 10;
    criticalIssues += results.secretsScan.summary.totalSecrets;
  }
  
  // 确保分数在0-100之间
  score = Math.max(0, Math.min(100, score));
  
  // 确定安全等级
  let securityGrade;
  if (score >= 90) {
    securityGrade = 'A';
  } else if (score >= 80) {
    securityGrade = 'B';
  } else if (score >= 70) {
    securityGrade = 'C';
  } else if (score >= 60) {
    securityGrade = 'D';
  } else {
    securityGrade = 'F';
  }
  
  // 生成HTML报告
  const htmlReport = `
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>安全检查报告 - ${timestamp}</title>
  <style>
    body { font-family: Arial, sans-serif; line-height: 1.6; margin: 0; padding: 20px; color: #333; }
    h1, h2, h3 { color: #2c3e50; }
    .container { max-width: 1200px; margin: 0 auto; }
    .summary { display: flex; flex-wrap: wrap; margin-bottom: 20px; }
    .summary-item { background: #f8f9fa; border-radius: 4px; padding: 15px; margin: 10px; flex: 1; min-width: 200px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); }
    .summary-item h3 { margin-top: 0; }
    .score { font-size: 48px; font-weight: bold; text-align: center; margin: 20px 0; }
    .score-a { color: #27ae60; }
    .score-b { color: #2ecc71; }
    .score-c { color: #f39c12; }
    .score-d { color: #e67e22; }
    .score-f { color: #e74c3c; }
    .error { color: #e74c3c; }
    .warning { color: #f39c12; }
    .success { color: #27ae60; }
    table { width: 100%; border-collapse: collapse; margin-bottom: 20px; }
    th, td { padding: 12px 15px; text-align: left; border-bottom: 1px solid #ddd; }
    th { background-color: #f8f9fa; }
    tr:hover { background-color: #f5f5f5; }
    .chart { height: 300px; margin-bottom: 30px; }
    pre { background: #f8f9fa; padding: 10px; border-radius: 4px; overflow-x: auto; }
  </style>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
  <div class="container">
    <h1>安全检查报告</h1>
    <p>生成时间: ${new Date().toLocaleString()}</p>
    
    <div class="summary">
      <div class="summary-item">
        <h3>安全评分</h3>
        <div class="score score-${securityGrade.toLowerCase()}">${Math.round(score)}</div>
        <p style="text-align: center;">安全等级: ${securityGrade}</p>
      </div>
      <div class="summary-item">
        <h3>问题汇总</h3>
        <p class="error">严重: ${criticalIssues}</p>
        <p class="error">高危: ${highIssues}</p>
        <p class="warning">中危: ${moderateIssues}</p>
        <p>低危: ${lowIssues}</p>
      </div>
    </div>
    
    <h2>依赖漏洞检查</h2>
    ${results.npmAudit && results.npmAudit.success ? `
    <table>
      <tr>
        <th>严重程度</th>
        <th>数量</th>
      </tr>
      <tr>
        <td class="error">严重</td>
        <td>${results.npmAudit.summary.vulnerabilities.critical}</td>
      </tr>
      <tr>
        <td class="error">高危</td>
        <td>${results.npmAudit.summary.vulnerabilities.high}</td>
      </tr>
      <tr>
        <td class="warning">中危</td>
        <td>${results.npmAudit.summary.vulnerabilities.moderate}</td>
      </tr>
      <tr>
        <td>低危</td>
        <td>${results.npmAudit.summary.vulnerabilities.low}</td>
      </tr>
      <tr>
        <td>信息</td>
        <td>${results.npmAudit.summary.vulnerabilities.info}</td>
      </tr>
    </table>
    <p><a href="${results.npmAudit.reportPath}" target="_blank">查看详细报告</a></p>
    ` : `
    <p class="error">依赖漏洞检查失败或未运行</p>
    `}
    
    <h2>代码安全检查</h2>
    ${results.eslintSecurity && results.eslintSecurity.success ? `
    <p>发现 ${results.eslintSecurity.summary.totalIssues} 个安全问题</p>
    <table>
      <tr>
        <th>规则</th>
        <th>数量</th>
      </tr>
      ${Object.entries(results.eslintSecurity.summary.issuesByRule).map(([rule, count]) => `
      <tr>
        <td>${rule}</td>
        <td>${count}</td>
      </tr>
      `).join('')}
    </table>
    <p><a href="${results.eslintSecurity.reportPath}" target="_blank">查看详细报告</a></p>
    ` : `
    <p class="error">代码安全检查失败或未运行</p>
    `}
    
    <h2>敏感信息扫描</h2>
    ${results.secretsScan && results.secretsScan.success ? `
    <p>发现 ${results.secretsScan.summary.totalSecrets} 个潜在的敏感信息</p>
    <table>
      <tr>
        <th>类型</th>
        <th>数量</th>
      </tr>
      ${Object.entries(results.secretsScan.summary.secretsByPattern).map(([pattern, count]) => `
      <tr>
        <td>${pattern}</td>
        <td>${count}</td>
      </tr>
      `).join('')}
    </table>
    <p><a href="${results.secretsScan.reportPath}" target="_blank">查看详细报告</a></p>
    ` : `
    <p class="error">敏感信息扫描失败或未运行</p>
    `}
    
    <h2>安全建议</h2>
    <ul>
      ${criticalIssues > 0 ? `<li class="error">立即修复严重漏洞</li>` : ''}
      ${highIssues > 0 ? `<li class="error">尽快修复高危漏洞</li>` : ''}
      ${results.npmAudit && results.npmAudit.success && results.npmAudit.summary.vulnerabilities.total > 0 ? `<li>运行 <code>npm audit fix</code> 修复可自动修复的依赖漏洞</li>` : ''}
      ${results.eslintSecurity && results.eslintSecurity.success && results.eslintSecurity.summary.totalIssues > 0 ? `<li>修复代码中的安全问题</li>` : ''}
      ${results.secretsScan && results.secretsScan.success && results.secretsScan.summary.totalSecrets > 0 ? `<li class="error">立即移除代码中的敏感信息，并轮换已泄露的密钥</li>` : ''}
      <li>定期更新依赖包</li>
      <li>使用安全的编码实践</li>
      <li>实施安全审查流程</li>
    </ul>
  </div>
  
  <script>
    // 可以添加交互式图表
  </script>
</body>
</html>
  `;
  
  await writeFile(filePath, htmlReport);
  console.log(`安全报告已生成: ${filePath}`);
  
  return filePath;
}

/**
 * 主函数
 */
async function main() {
  try {
    console.log('开始安全检查...');
    
    const results = {};
    
    // 运行npm audit
    if (config.checks.npmAudit) {
      results.npmAudit = await runNpmAudit();
    }
    
    // 运行ESLint安全检查
    if (config.checks.eslintSecurity) {
      results.eslintSecurity = await runEslintSecurity();
    }
    
    // 扫描敏感信息
    if (config.checks.secretsScanning) {
      results.secretsScan = await scanForSecrets();
    }
    
    // 生成报告
    const reportPath = await generateReport(results);
    
    console.log('安全检查完成!');
    console.log(`报告已保存到: ${reportPath}`);
    
    return reportPath;
  } catch (error) {
    console.error('安全检查失败:', error);
    throw error;
  }
}

// 如果直接运行脚本
if (require.main === module) {
  main().catch(err => {
    console.error('脚本执行失败:', err);
    process.exit(1);
  });
}

module.exports = { main };
```

### 14.3 安全配置检查清单

创建安全配置检查清单：

```markdown:c:\project\kphub\docs\security-checklist.md
# Node.js应用安全配置检查清单

## 1. 依赖管理

- [ ] 使用`npm audit`定期检查依赖漏洞
- [ ] 设置自动化流程定期更新依赖
- [ ] 使用`package-lock.json`或`yarn.lock`锁定依赖版本
- [ ] 考虑使用`npm-shrinkwrap.json`在生产环境中锁定依赖
- [ ] 使用可信的依赖包，检查包的下载量和维护状态
- [ ] 避免使用已废弃或不再维护的包

## 2. 代码安全

- [ ] 使用ESLint与security插件进行安全检查
- [ ] 实施代码审查流程，特别关注安全问题
- [ ] 避免使用`eval()`和不安全的动态代码执行
- [ ] 避免使用`child_process.exec()`执行不受信任的命令
- [ ] 使用参数化查询防止SQL注入
- [ ] 避免在代码中硬编码敏感信息
- [ ] 使用安全的随机数生成器（`crypto.randomBytes()`）
- [ ] 避免原型污染漏洞
- [ ] 使用`Object.freeze()`防止配置对象被修改

## 3. 认证与授权

- [ ] 实施强密码策略
- [ ] 使用安全的密码哈希算法（如bcrypt）
- [ ] 实施多因素认证
- [ ] 使用JWT或类似机制进行无状态认证
- [ ] 设置合理的令牌过期时间
- [ ] 实施基于角色的访问控制
- [ ] 使用CSRF令牌防止跨站请求伪造
- [ ] 实施登录尝试限制
- [ ] 安全存储会话数据
- [ ] 在注销时正确销毁会话

## 4. 数据验证与清理

- [ ] 验证所有用户输入
- [ ] 使用验证库（如Joi、express-validator）
- [ ] 实施输入长度限制
- [ ] 对输出进行编码防止XSS攻击
- [ ] 使用内容安全策略（CSP）
- [ ] 验证上传文件的类型和内容
- [ ] 限制上传文件大小
- [ ] 使用安全的JSON解析选项

## 5. HTTP安全

- [ ] 使用HTTPS
- [ ] 配置安全的TLS设置
- [ ] 设置安全相关的HTTP头（使用helmet）
- [ ] 实施适当的CORS策略
- [ ] 使用安全的Cookie设置（httpOnly, secure, SameSite）
- [ ] 实施速率限制防止暴力攻击
- [ ] 不暴露敏感的错误信息
- [ ] 移除不必要的HTTP头（如X-Powered-By）
- [ ] 考虑使用HTTP严格传输安全（HSTS）

## 6. 日志与监控

- [ ] 实施安全事件日志记录
- [ ] 不记录敏感信息
- [ ] 保护日志文件免受未授权访问
- [ ] 使用集中式日志管理
- [ ] 监控异常行为
- [ ] 设置安全警报
- [ ] 定期审查日志
- [ ] 实施入侵检测系统

## 7. 服务器配置

- [ ] 以最小权限运行Node.js应用
- [ ] 使用反向代理（如Nginx）
- [ ] 配置适当的文件权限
- [ ] 禁用不必要的服务
- [ ] 定期更新服务器软件
- [ ] 使用防火墙限制访问
- [ ] 考虑使用容器化（Docker）增强隔离
- [ ] 实施网络分段

## 8. 错误处理

- [ ] 实施全局错误处理
- [ ] 不向用户暴露敏感的错误详情
- [ ] 记录错误但不泄露敏感信息
- [ ] 优雅处理未捕获的异常
- [ ] 处理拒绝的Promise
- [ ] 设置适当的超时

## 9. 密钥管理

- [ ] 使用环境变量存储敏感配置
- [ ] 考虑使用密钥管理服务
- [ ] 定期轮换密钥和证书
- [ ] 不在代码仓库中存储敏感信息
- [ ] 使用.env文件并将其添加到.gitignore
- [ ] 考虑使用HashiCorp Vault等工具

## 10. 安全测试

- [ ] 执行定期安全审计
- [ ] 进行渗透测试
- [ ] 使用自动化安全扫描工具
- [ ] 实施持续安全集成
- [ ] 进行代码安全审查
- [ ] 测试常见漏洞（OWASP Top 10）

## 11. 部署安全

- [ ] 使用CI/CD流水线进行安全检查
- [ ] 在部署前进行安全测试
- [ ] 实施蓝绿部署或金丝雀发布
- [ ] 备份数据和配置
- [ ] 制定回滚计划
- [ ] 保护CI/CD环境

## 12. 业务逻辑安全

- [ ] 防止业务逻辑漏洞
- [ ] 实施适当的访问控制
- [ ] 验证关键业务流程
- [ ] 防止自动化攻击
- [ ] 实施交易限制
- [ ] 监控异常交易模式

## 13. 第三方集成安全

- [ ] 验证第三方API调用
- [ ] 限制第三方服务的权限
- [ ] 监控第三方服务的使用
- [ ] 实施超时和重试策略
- [ ] 考虑使用API网关

## 14. 灾难恢复

- [ ] 制定灾难恢复计划
- [ ] 定期备份数据
- [ ] 测试恢复流程
- [ ] 文档化应急响应程序
- [ ] 设置高可用性配置

## 15. 合规性

- [ ] 确保符合相关法规（如GDPR、CCPA）
- [ ] 实施数据保护措施
- [ ] 获取必要的用户同意
- [ ] 提供隐私政策
- [
让我继续完成Node.js应用部署与管理的文档内容：

```markdown:c:\project\kphub\docs\security-checklist.md
- [ ] 确保符合相关法规（如GDPR、CCPA）
- [ ] 实施数据保护措施
- [ ] 获取必要的用户同意
- [ ] 提供隐私政策
- [ ] 定期审查合规性要求
- [ ] 记录数据处理活动
```

## 15. 容器化与微服务架构

在现代Node.js应用开发中，容器化和微服务架构已成为主流部署方式。

### 15.1 Docker容器化

创建基本的Dockerfile：

```dockerfile:c:\project\kphub\Dockerfile
# 使用官方Node.js镜像作为基础镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 安装应用依赖
# 首先复制package.json和package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm ci --only=production

# 复制应用代码
COPY . .

# 设置环境变量
ENV NODE_ENV=production
ENV PORT=3000

# 暴露端口
EXPOSE 3000

# 设置健康检查
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/health || exit 1

# 使用非root用户运行应用
USER node

# 启动应用
CMD ["node", "server.js"]
```

创建Docker Compose配置：

```yaml:c:\project\kphub\docker-compose.yml
version: '3.8'

services:
  app:
    build: .
    image: kphub-app
    container_name: kphub-app
    restart: unless-stopped
    ports:
      - "3000:3000"
    environment:
      - NODE_ENV=production
      - MONGODB_URI=mongodb://mongo:27017/kphub
      - REDIS_URL=redis://redis:6379
    depends_on:
      - mongo
      - redis
    networks:
      - kphub-network
    volumes:
      - ./logs:/app/logs
    healthcheck:
      test: ["CMD", "wget", "--no-verbose", "--tries=1", "--spider", "http://localhost:3000/health"]
      interval: 30s
      timeout: 10s
      retries: 3
      start_period: 10s

  mongo:
    image: mongo:5
    container_name: kphub-mongo
    restart: unless-stopped
    volumes:
      - mongo-data:/data/db
    networks:
      - kphub-network
    healthcheck:
      test: echo 'db.runCommand("ping").ok' | mongo localhost:27017/test --quiet
      interval: 10s
      timeout: 5s
      retries: 3
      start_period: 10s

  redis:
    image: redis:6-alpine
    container_name: kphub-redis
    restart: unless-stopped
    volumes:
      - redis-data:/data
    networks:
      - kphub-network
    healthcheck:
      test: ["CMD", "redis-cli", "ping"]
      interval: 10s
      timeout: 5s
      retries: 3
      start_period: 10s

  nginx:
    image: nginx:alpine
    container_name: kphub-nginx
    restart: unless-stopped
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - ./nginx/conf.d:/etc/nginx/conf.d
      - ./nginx/ssl:/etc/nginx/ssl
      - ./nginx/logs:/var/log/nginx
    depends_on:
      - app
    networks:
      - kphub-network

networks:
  kphub-network:
    driver: bridge

volumes:
  mongo-data:
  redis-data:
```

创建Nginx配置：

```nginx:c:\project\kphub\nginx\conf.d\default.conf
server {
    listen 80;
    server_name localhost;

    # 重定向HTTP到HTTPS
    location / {
        return 301 https://$host$request_uri;
    }
}

server {
    listen 443 ssl;
    server_name localhost;

    # SSL配置
    ssl_certificate /etc/nginx/ssl/server.crt;
    ssl_certificate_key /etc/nginx/ssl/server.key;
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers HIGH:!aNULL:!MD5;
    ssl_prefer_server_ciphers on;
    ssl_session_cache shared:SSL:10m;
    ssl_session_timeout 10m;

    # 安全头
    add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;
    add_header X-Content-Type-Options nosniff;
    add_header X-Frame-Options SAMEORIGIN;
    add_header X-XSS-Protection "1; mode=block";
    add_header Content-Security-Policy "default-src 'self'; script-src 'self' 'unsafe-inline' cdn.jsdelivr.net; style-src 'self' 'unsafe-inline' cdn.jsdelivr.net; img-src 'self' data:; font-src 'self'; connect-src 'self'";

    # 日志配置
    access_log /var/log/nginx/access.log;
    error_log /var/log/nginx/error.log;

    # 代理到Node.js应用
    location / {
        proxy_pass http://app:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_cache_bypass $http_upgrade;
        proxy_read_timeout 90;
    }

    # 静态文件
    location /static/ {
        alias /app/public/;
        expires 30d;
        add_header Cache-Control "public, max-age=2592000";
    }

    # 健康检查端点
    location /health {
        proxy_pass http://app:3000/health;
        proxy_http_version 1.1;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    # 错误页面
    error_page 404 /404.html;
    location = /404.html {
        root /app/public;
    }

    error_page 500 502 503 504 /50x.html;
    location = /50x.html {
        root /app/public;
    }
}
```

### 15.2 Kubernetes部署

创建Kubernetes部署配置：

```yaml:c:\project\kphub\k8s\deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: kphub-app
  namespace: kphub
  labels:
    app: kphub
    component: api
spec:
  replicas: 3
  selector:
    matchLabels:
      app: kphub
      component: api
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxSurge: 1
      maxUnavailable: 0
  template:
    metadata:
      labels:
        app: kphub
        component: api
    spec:
      containers:
      - name: kphub-app
        image: ${DOCKER_REGISTRY}/kphub-app:${IMAGE_TAG}
        imagePullPolicy: Always
        ports:
        - containerPort: 3000
          name: http
        env:
        - name: NODE_ENV
          value: "production"
        - name: PORT
          value: "3000"
        - name: MONGODB_URI
          valueFrom:
            secretKeyRef:
              name: kphub-secrets
              key: mongodb-uri
        - name: REDIS_URL
          valueFrom:
            secretKeyRef:
              name: kphub-secrets
              key: redis-url
        - name: JWT_SECRET
          valueFrom:
            secretKeyRef:
              name: kphub-secrets
              key: jwt-secret
        resources:
          requests:
            cpu: 100m
            memory: 256Mi
          limits:
            cpu: 500m
            memory: 512Mi
        livenessProbe:
          httpGet:
            path: /health
            port: http
          initialDelaySeconds: 30
          periodSeconds: 10
          timeoutSeconds: 5
          failureThreshold: 3
        readinessProbe:
          httpGet:
            path: /health/ready
            port: http
          initialDelaySeconds: 5
          periodSeconds: 10
          timeoutSeconds: 5
          failureThreshold: 3
        volumeMounts:
        - name: logs
          mountPath: /app/logs
      volumes:
      - name: logs
        emptyDir: {}
```

创建Kubernetes服务配置：

```yaml:c:\project\kphub\k8s\service.yaml
apiVersion: v1
kind: Service
metadata:
  name: kphub-app
  namespace: kphub
  labels:
    app: kphub
    component: api
spec:
  selector:
    app: kphub
    component: api
  ports:
  - port: 80
    targetPort: 3000
    name: http
  type: ClusterIP
```

创建Kubernetes Ingress配置：

```yaml:c:\project\kphub\k8s\ingress.yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: kphub-ingress
  namespace: kphub
  annotations:
    kubernetes.io/ingress.class: "nginx"
    cert-manager.io/cluster-issuer: "letsencrypt-prod"
    nginx.ingress.kubernetes.io/ssl-redirect: "true"
    nginx.ingress.kubernetes.io/proxy-body-size: "10m"
    nginx.ingress.kubernetes.io/proxy-connect-timeout: "30"
    nginx.ingress.kubernetes.io/proxy-read-timeout: "30"
    nginx.ingress.kubernetes.io/proxy-send-timeout: "30"
spec:
  tls:
  - hosts:
    - api.kphub.example.com
    secretName: kphub-tls
  rules:
  - host: api.kphub.example.com
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: kphub-app
            port:
              name: http
```

创建Kubernetes配置映射：

```yaml:c:\project\kphub\k8s\configmap.yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: kphub-config
  namespace: kphub
data:
  NODE_ENV: "production"
  LOG_LEVEL: "info"
  ENABLE_METRICS: "true"
  CORS_ORIGIN: "https://kphub.example.com"
  API_RATE_LIMIT: "100"
  API_RATE_LIMIT_WINDOW_MS: "900000"
```

创建Kubernetes密钥：

```yaml:c:\project\kphub\k8s\secret.yaml
apiVersion: v1
kind: Secret
metadata:
  name: kphub-secrets
  namespace: kphub
type: Opaque
data:
  # 这些值需要使用base64编码
  mongodb-uri: bW9uZ29kYjovL3VzZXJuYW1lOnBhc3N3b3JkQG1vbmdvLmt1YmVybmV0ZXMuc3ZjLmNsdXN0ZXIubG9jYWw6MjcwMTcva3BodWI=
  redis-url: cmVkaXM6Ly9yZWRpcy5rdWJlcm5ldGVzLnN2Yy5jbHVzdGVyLmxvY2FsOjYzNzk=
  jwt-secret: c3VwZXJzZWNyZXRqd3RrZXk=
```

创建Kubernetes水平自动缩放配置：

```yaml:c:\project\kphub\k8s\hpa.yaml
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
  name: kphub-app-hpa
  namespace: kphub
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: kphub-app
  minReplicas: 2
  maxReplicas: 10
  metrics:
  - type: Resource
    resource:
      name: cpu
      target:
        type: Utilization
        averageUtilization: 70
  - type: Resource
    resource:
      name: memory
      target:
        type: Utilization
        averageUtilization: 80
  behavior:
    scaleDown:
      stabilizationWindowSeconds: 300
      policies:
      - type: Percent
        value: 10
        periodSeconds: 60
    scaleUp:
      stabilizationWindowSeconds: 0
      policies:
      - type: Percent
        value: 100
        periodSeconds: 60
      - type: Pods
        value: 4
        periodSeconds: 60
      selectPolicy: Max
```

### 15.3 CI/CD流水线

创建GitHub Actions工作流配置：

```yaml:c:\project\kphub\.github\workflows\ci-cd.yaml
name: CI/CD Pipeline

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main, develop ]

jobs:
  test:
    name: Test
    runs-on: ubuntu-latest
    
    services:
      mongodb:
        image: mongo:5
        ports:
          - 27017:27017
      
      redis:
        image: redis:6
        ports:
          - 6379:6379
    
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      
      - name: Setup Node.js
        uses: actions/setup-node@v3
        with:
          node-version: '18'
          cache: 'npm'
      
      - name: Install dependencies
        run: npm ci
      
      - name: Lint code
        run: npm run lint
      
      - name: Run tests
        run: npm test
        env:
          NODE_ENV: test
          MONGODB_URI: mongodb://localhost:27017/kphub_test
          REDIS_URL: redis://localhost:6379
      
      - name: Run security audit
        run: npm audit --audit-level=high
      
      - name: Upload test coverage
        uses: actions/upload-artifact@v3
        with:
          name: coverage
          path: coverage/
  
  build:
    name: Build
    needs: test
    runs-on: ubuntu-latest
    if: github.event_name == 'push'
    
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      
      - name: Set up Docker Buildx
        uses: docker/setup-buildx-action@v2
      
      - name: Login to Docker Hub
        uses: docker/login-action@v2
        with:
          username: ${{ secrets.DOCKER_HUB_USERNAME }}
          password: ${{ secrets.DOCKER_HUB_TOKEN }}
      
      - name: Extract metadata
        id: meta
        uses: docker/metadata-action@v4
        with:
          images: yourusername/kphub-app
          tags: |
            type=ref,event=branch
            type=sha,format=short
      
      - name: Build and push Docker image
        uses: docker/build-push-action@v4
        with:
          context: .
          push: true
          tags: ${{ steps.meta.outputs.tags }}
          labels: ${{ steps.meta.outputs.labels }}
          cache-from: type=registry,ref=yourusername/kphub-app:buildcache
          cache-to: type=registry,ref=yourusername/kphub-app:buildcache,mode=max
  
  deploy-staging:
    name: Deploy to Staging
    needs: build
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/develop'
    
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      
      - name: Set up kubectl
        uses: azure/setup-kubectl@v3
        with:
          version: 'latest'
      
      - name: Set up Kustomize
        uses: imranismail/setup-kustomize@v2
        with:
          kustomize-version: '4.5.7'
      
      - name: Configure AWS credentials
        uses: aws-actions/configure-aws-credentials@v2
        with:
          aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: us-east-1
      
      - name: Update kubeconfig
        run: aws eks update-kubeconfig --name kphub-cluster --region us-east-1
      
      - name: Update Kubernetes manifests
        run: |
          cd k8s/overlays/staging
          kustomize edit set image yourusername/kphub-app=yourusername/kphub-app:sha-${{ github.sha }}
      
      - name: Deploy to Kubernetes
        run: |
          kustomize build k8s/overlays/staging | kubectl apply -f -
          kubectl rollout status deployment/kphub-app -n kphub-staging --timeout=300s
      
      - name: Run smoke tests
        run: |
          sleep 30
          curl -s -o /dev/null -w "%{http_code}" https://api-staging.kphub.example.com/health | grep 200
  
  deploy-production:
    name: Deploy to Production
    needs: build
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/main'
    environment:
      name: production
      url: https://api.kphub.example.com
    
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      
      - name: Set up kubectl
        uses: azure/setup-kubectl@v3
        with:
          version: 'latest'
      
      - name: Set up Kustomize
        uses: imranismail/setup-kustomize@v2
        with:
          kustomize-version: '4.5.7'
      
      - name: Configure AWS credentials
        uses: aws-actions/configure-aws-credentials@v2
        with:
          aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: us-east-1
      
      - name: Update kubeconfig
        run: aws eks update-kubeconfig --name kphub-cluster --region us-east-1
      
      - name: Update Kubernetes manifests
        run: |
          cd k8s/overlays/production
          kustomize edit set image yourusername/kphub-app=yourusername/kphub-app:sha-${{ github.sha }}
      
      - name: Deploy to Kubernetes
        run: |
          kustomize build k8s/overlays/production | kubectl apply -f -
          kubectl rollout status deployment/kphub-app -n kphub --timeout=300s
      
      - name: Run smoke tests
        run: |
          sleep 30
          curl -s -o /dev/null -w "%{http_code}" https://api.kphub.example.com/health | grep 200
      
      - name: Create GitHub Release
        uses: softprops/action-gh-release@v1
        with:
          tag_name: v${{ github.run_number }}
          name: Release v${{ github.run_number }}
          body: |
            ## 部署到生产环境
            
            提交: ${{ github.sha }}
            
            ### 变更日志
            
            ${{ github.event.head_commit.message }}
          draft: false
          prerelease: false
```

## 16. 总结与最佳实践

Node.js应用部署与管理是一个复杂的过程，涉及多个方面的考虑。以下是一些关键的最佳实践总结：

### 16.1 开发最佳实践

1. **代码质量**
   - 使用ESLint和Prettier保持代码质量和一致性
   - 实施单元测试和集成测试
   - 使用TypeScript提高代码可维护性
   - 遵循SOLID原则和设计模式

2. **依赖管理**
   - 定期更新依赖
   - 锁定依赖版本
   - 使用npm audit检查安全漏洞
   - 避免使用过多依赖

3. **错误处理**
   - 实施全局错误处理
   - 使用结构化日志记录
   - 监控未捕获的异常
   - 优雅处理进程终止

### 16.2 部署最佳实践

1. **环境配置**
   - 使用环境变量管理配置
   - 区分开发、测试和生产环境
   - 使用配置验证
   - 保护敏感配置

2. **容器化**
   - 使用Docker构建轻量级容器
   - 实施多阶段构建
   - 使用非root用户运行应用
   - 扫描容器漏洞

3. **编排与扩展**
   - 使用Kubernetes进行容器编排
   - 实施水平自动缩放
   - 使用滚动更新策略
   - 配置资源限制和请求

### 16.3 监控与运维最佳实践

1. **监控**
   - 实施应用性能监控
   - 收集业务指标
   - 设置适当的告警
   - 使用分布式追踪

2. **日志管理**
   - 集中化日志收集
   - 结构化日志格式
   - 实施日志轮转
   - 保护日志中的敏感信息

3. **性能优化**
   - 识别并解决内存泄漏
   - 优化数据库查询
   - 实施缓存策略
   - 使用负载测试验证性能

### 16.4 安全最佳实践

1. **应用安全**
   - 实施输入验证
   - 使用安全的HTTP头
   - 防止常见的Web漏洞
   - 定期进行安全审计

2. **认证与授权**
   - 使用安全的认证机制
   - 实施细粒度的访问控制
   - 保护敏感API端点
   - 使用安全的会话管理

3. **数据保护**
   - 加密敏感数据
   - 实施数据备份策略
   - 遵循数据保护法规
   - 安全处理用户数据

### 16.5 持续集成与部署

1. **CI/CD流水线**
   - 自动化构建和测试
   - 实施代码质量检查
   - 自动化部署流程
   - 实施环境隔离

2. **发布策略**
   - 使用蓝绿部署或金丝雀发布
   - 实施回滚机制
   - 版本控制和标记
   - 维护变更日志

通过遵循这些最佳实践，可以构建高质量、安全、可靠的Node.js应用，并确保其在生产环境中的稳定运行。