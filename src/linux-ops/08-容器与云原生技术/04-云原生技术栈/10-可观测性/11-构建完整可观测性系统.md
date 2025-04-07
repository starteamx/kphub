---
title: Prometheus监控体系构建
icon: practice
order: 5
---

# Prometheus监控体系构建

## Prometheus简介

Prometheus是一个开源的系统监控和告警工具包，最初由SoundCloud开发，现在已经成为云原生计算基金会(CNCF)的第二个毕业项目(仅次于Kubernetes)。Prometheus以其强大的多维度数据模型、灵活的查询语言、高效的时间序列数据库和简单可靠的运行方式，成为云原生环境中最流行的监控系统。

### 核心特性

Prometheus具有以下核心特性：

1. **多维数据模型**：基于时间序列数据，由指标名称和键值对标签组成
2. **强大的查询语言PromQL**：允许对收集的时间序列数据进行切片和切块
3. **不依赖分布式存储**：单个服务器节点是自治的
4. **通过HTTP拉取模式采集时间序列数据**
5. **支持通过中间网关推送时间序列数据**
6. **目标通过服务发现或静态配置发现**
7. **支持多种图形和仪表盘**：原生支持Grafana等可视化工具

### 适用场景

Prometheus特别适合以下场景：

- 记录任何纯数字时间序列
- 高动态的面向服务的架构监控
- 多维度数据收集和查询
- 需要快速诊断问题的环境

Prometheus不适合需要百分之百准确性的场景(如按请求计费)，因为它的数据收集模型优先考虑可用性而非准确性。

## Prometheus架构

Prometheus的整体架构包含多个组件，它们协同工作形成一个完整的监控系统。

### 架构组件

```
┌─────────────────────────────────────────────────────────────────────┐
│                                                                     │
│                         Prometheus生态系统                           │
│                                                                     │
├─────────────────┬─────────────────┬─────────────────┬───────────────┤
│                 │                 │                 │               │
│  短期作业导出器  │   服务发现      │   告警管理器    │  可视化工具   │
│  (Pushgateway)  │ (Service Discovery)│(Alertmanager)│ (Grafana等)  │
│                 │                 │                 │               │
└─────────┬───────┴─────────┬───────┴────────┬────────┴───────┬───────┘
          │                 │                │                 │
          │                 │                │                 │
          ▼                 ▼                ▼                 ▼
┌─────────────────────────────────────────────────────────────────────┐
│                                                                     │
│                         Prometheus服务器                            │
│                                                                     │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐ │
│  │             │  │             │  │             │  │             │ │
│  │ 检索        │  │ TSDB        │  │ HTTP服务器  │  │ PromQL      │ │
│  │ (Retrieval) │  │ (存储引擎)  │  │ (API)       │  │ (查询引擎)  │ │
│  │             │  │             │  │             │  │             │ │
│  └─────────────┘  └─────────────┘  └─────────────┘  └─────────────┘ │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
          ▲                 ▲                ▲                 ▲
          │                 │                │                 │
          │                 │                │                 │
          ▼                 ▼                ▼                 ▼
┌─────────────────────────────────────────────────────────────────────┐
│                                                                     │
│                            监控目标                                 │
│                                                                     │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐ │
│  │             │  │             │  │             │  │             │ │
│  │ Node        │  │ Kubernetes  │  │ MySQL       │  │ 自定义应用  │ │
│  │ Exporter    │  │ 组件        │  │ Exporter    │  │ Exporter    │ │
│  │             │  │             │  │             │  │             │ │
│  └─────────────┘  └─────────────┘  └─────────────┘  └─────────────┘ │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

主要组件包括：

1. **Prometheus服务器**：核心组件，负责数据抓取、存储和查询
   - 检索(Retrieval)：负责从监控目标抓取指标数据
   - TSDB(时间序列数据库)：存储所有时间序列数据
   - HTTP服务器：提供API接口，用于查询和管理
   - PromQL查询引擎：处理查询请求

2. **Exporters(导出器)**：将目标系统的指标转换为Prometheus可以抓取的格式
   - Node Exporter：收集主机指标(CPU、内存、磁盘等)
   - MySQL Exporter：收集MySQL数据库指标
   - 其他各种系统和应用的Exporter

3. **Pushgateway**：允许短期作业将指标推送到Prometheus
   - 适用于短期批处理作业
   - 解决了Prometheus拉取模式的局限性

4. **Alertmanager**：处理告警，包括分组、抑制和路由
   - 将告警分组以减少通知数量
   - 支持多种通知方式(邮件、Slack、PagerDuty等)
   - 支持告警静默和抑制

5. **可视化工具**：展示监控数据
   - Prometheus Web UI：简单的内置UI
   - Grafana：功能强大的可视化平台，是最常用的搭配

### 数据流

Prometheus的数据流如下：

1. Prometheus服务器通过HTTP协议定期从配置的目标(如Exporters)拉取指标数据
2. 抓取的数据存储在本地时间序列数据库中
3. 根据配置的规则评估数据，生成新的时间序列或触发告警
4. 告警发送到Alertmanager进行处理
5. 用户通过PromQL查询数据，或通过Grafana等工具可视化数据

### 数据模型

Prometheus的数据模型是其强大功能的基础，它基于时间序列数据，每个时间序列由以下部分组成：

1. **指标名称(Metric Name)**：描述监控指标的一般特征，如`http_requests_total`
2. **标签(Labels)**：键值对，用于区分同一指标的不同维度，如`{method="GET", endpoint="/api/users"}`
3. **时间戳(Timestamp)**：毫秒级Unix时间戳
4. **值(Value)**：64位浮点数

完整的时间序列表示如下：

```
<metric_name>{<label_name>=<label_value>, ...} <value> [<timestamp>]

例如：
http_requests_total{method="GET", endpoint="/api/users", status="200"} 1234 1607673600000
```

## Prometheus部署

### 部署方式

Prometheus支持多种部署方式，根据环境和需求可以选择合适的方式：

1. **二进制部署**：直接在服务器上运行Prometheus二进制文件
2. **Docker容器部署**：使用Docker容器运行Prometheus
3. **Kubernetes部署**：在Kubernetes集群中部署Prometheus
4. **云服务提供商托管服务**：使用AWS、GCP或Azure提供的托管Prometheus服务

### 二进制部署

以Linux系统为例，二进制部署步骤如下：

1. 下载Prometheus二进制文件：

```bash
# 创建目录
mkdir -p /opt/prometheus
cd /opt/prometheus

# 下载Prometheus (以2.40.0版本为例)
wget https://github.com/prometheus/prometheus/releases/download/v2.40.0/prometheus-2.40.0.linux-amd64.tar.gz

# 解压
tar -xvf prometheus-2.40.0.linux-amd64.tar.gz --strip-components=1
```

2. 创建基本配置文件`prometheus.yml`：

```yaml
global:
  scrape_interval: 15s  # 默认抓取间隔
  evaluation_interval: 15s  # 规则评估间隔

# 告警规则文件
rule_files:
  # - "first_rules.yml"
  # - "second_rules.yml"

# 抓取配置
scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']
```

3. 启动Prometheus：

```bash
# 直接启动
./prometheus --config.file=prometheus.yml

# 或者使用systemd管理
cat > /etc/systemd/system/prometheus.service << EOF
[Unit]
Description=Prometheus
Wants=network-online.target
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple
ExecStart=/opt/prometheus/prometheus \
    --config.file=/opt/prometheus/prometheus.yml \
    --storage.tsdb.path=/opt/prometheus/data \
    --web.console.templates=/opt/prometheus/consoles \
    --web.console.libraries=/opt/prometheus/console_libraries

[Install]
WantedBy=multi-user.target
EOF

# 创建用户
useradd --no-create-home --shell /bin/false prometheus

# 设置权限
chown -R prometheus:prometheus /opt/prometheus

# 启动服务
systemctl daemon-reload
systemctl start prometheus
systemctl enable prometheus
```

### Docker容器部署

使用Docker部署Prometheus非常简单：

1. 创建配置文件目录和配置文件：

```bash
mkdir -p /opt/prometheus/config
cat > /opt/prometheus/config/prometheus.yml << EOF
global:
  scrape_interval: 15s
  evaluation_interval: 15s

scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']
EOF
```

2. 启动Prometheus容器：

```bash
docker run -d \
  --name prometheus \
  -p 9090:9090 \
  -v /opt/prometheus/config:/etc/prometheus \
  -v /opt/prometheus/data:/prometheus \
  prom/prometheus:v2.40.0
```

### Kubernetes部署

在Kubernetes中部署Prometheus最常用的方式是使用Prometheus Operator或kube-prometheus-stack：

1. 使用Helm安装kube-prometheus-stack：

```bash
# 添加Prometheus社区Helm仓库
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

# 创建命名空间
kubectl create namespace monitoring

# 安装kube-prometheus-stack
helm install prometheus prometheus-community/kube-prometheus-stack \
  --namespace monitoring \
  --set grafana.enabled=true \
  --set alertmanager.enabled=true
```

2. 验证部署：

```bash
kubectl get pods -n monitoring
```

3. 访问Prometheus UI：

```bash
# 端口转发
kubectl port-forward -n monitoring svc/prometheus-kube-prometheus-prometheus 9090:9090
```

然后在浏览器中访问`http://localhost:9090`。

## Prometheus配置

### 全局配置

Prometheus的全局配置定义了适用于所有其他配置上下文的参数：

```yaml
global:
  # 默认抓取间隔
  scrape_interval: 15s
  
  # 默认抓取超时
  scrape_timeout: 10s
  
  # 规则评估间隔
  evaluation_interval: 15s
  
  # 外部标签，添加到所有时间序列和告警
  external_labels:
    cluster: 'production'
    region: 'us-east-1'
```

### 抓取配置

抓取配置定义了Prometheus如何抓取目标的指标：

```yaml
scrape_configs:
  # 作业名称，将被添加为标签job=<job_name>
  - job_name: 'node_exporter'
    
    # 覆盖全局抓取间隔
    scrape_interval: 5s
    
    # 静态目标配置
    static_configs:
      - targets: ['node-exporter:9100']
        labels:
          env: 'production'
          datacenter: 'dc1'
  
  # 另一个作业示例，使用文件服务发现
  - job_name: 'file_sd_example'
    file_sd_configs:
      - files:
        - 'targets/*.json'
        refresh_interval: 5m
```

### 服务发现

Prometheus支持多种服务发现机制，以下是一些常见的配置：

1. **Kubernetes服务发现**：

```yaml
scrape_configs:
  - job_name: 'kubernetes-pods'
    kubernetes_sd_configs:
      - role: pod
    relabel_configs:
      # 只抓取带有prometheus.io/scrape=true注解的Pod
      - source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_scrape]
        action: keep
        regex: true
      # 设置抓取端口
      - source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_port]
        action: replace
        regex: (\d+)
        target_label: __metrics_path__
        replacement: /metrics
      # 设置Pod名称标签
      - source_labels: [__meta_kubernetes_pod_name]
        action: replace
        target_label: pod_name
```

2. **Consul服务发现**：

```yaml
scrape_configs:
  - job_name: 'consul_services'
    consul_sd_configs:
      - server: 'consul:8500'
        services: []  # 所有服务
    relabel_configs:
      - source_labels: [__meta_consul_service]
        target_label: service
      - source_labels: [__meta_consul_node]
        target_label: node
```

3. **文件服务发现**：

```yaml
scrape_configs:
  - job_name: 'file_sd'
    file_sd_configs:
      - files:
        - 'targets/*.json'
        refresh_interval: 5m
```

文件格式示例(`targets/web-servers.json`)：

```json
[
  {
    "targets": ["web-server-1:9100", "web-server-2:9100"],
    "labels": {
      "env": "production",
      "job": "web-servers"
    }
  }
]
```

### 重标记配置

重标记(Relabeling)是Prometheus强大的功能之一，允许在抓取前动态修改目标和标签：

```yaml
scrape_configs:
  - job_name: 'example'
    static_configs:
      - targets: ['example.com:9100']
    relabel_configs:
      # 保留匹配正则表达式的目标
      - source_labels: [__address__]
        action: keep
        regex: '.*:9100'
      
      # 替换标签值
      - source_labels: [__address__]
        action: replace
        regex: '(.*):9100'
        replacement: '${1}'
        target_label: instance
      
      # 添加静态标签
      - target_label: datacenter
        replacement: 'dc1'
      
      # 删除标签
      - action: labeldrop
        regex: 'temp.*'
```

常用的重标记操作包括：

- `keep`：保留匹配正则表达式的目标
- `drop`：删除匹配正则表达式的目标
- `replace`：替换标签值
- `labelmap`：将匹配正则表达式的标签映射到新标签
- `labeldrop`：删除匹配正则表达式的标签
- `labelkeep`：保留匹配正则表达式的标签

### 告警配置

Prometheus告警配置包括两部分：告警规则和Alertmanager配置。

1. **告警规则**：

创建告警规则文件`alerts.yml`：

```yaml
groups:
  - name: example
    rules:
      - alert: HighCPULoad
        expr: 100 - (avg by(instance) (irate(node_cpu_seconds_total{mode="idle"}[5m])) * 100) > 80
        for: 5m
        labels:
          severity: warning
        annotations:
          summary: "High CPU load (instance {{ $labels.instance }})"
          description: "CPU load is > 80%\n  VALUE = {{ $value }}\n  LABELS: {{ $labels }}"
      
      - alert: HighMemoryLoad
        expr: (node_memory_MemTotal_bytes - node_memory_MemAvailable_bytes) / node_memory_MemTotal_bytes * 100 > 80
        for: 5m
        labels:
          severity: warning
        annotations:
          summary: "High memory load (instance {{ $labels.instance }})"
          description: "Memory load is > 80%\n  VALUE = {{ $value }}\n  LABELS: {{ $labels }}"
```

在`prometheus.yml`中引用告警规则：

```yaml
rule_files:
  - "alerts.yml"
```

2. **Alertmanager配置**：

在`prometheus.yml`中配置Alertmanager：

```yaml
alerting:
  alertmanagers:
    - static_configs:
        - targets:
          - alertmanager:9093
```

### 存储配置

Prometheus存储配置控制时间序列数据的存储方式：

```yaml
storage:
  tsdb:
    # 数据存储路径
    path: /prometheus
    
    # 数据保留时间
    retention.time: 15d
    
    # 数据保留大小
    # retention.size: 50GB
    
    # 是否启用压缩
    # compression: true
```

## 监控目标配置

### Node Exporter

Node Exporter用于收集主机级别的指标，如CPU、内存、磁盘和网络使用情况。

1. 安装Node Exporter：

```bash
# 二进制安装
wget https://github.com/prometheus/node_exporter/releases/download/v1.4.0/node_exporter-1.4.0.linux-amd64.tar.gz
tar -xvf node_exporter-1.4.0.linux-amd64.tar.gz
cd node_exporter-1.4.0.linux-amd64
./node_exporter

# 或使用Docker
docker run -d \
  --name node-exporter \
  --net="host" \
  --pid="host" \
  -v "/:/host:ro,rslave" \
  quay.io/prometheus/node-exporter:latest \
  --path.rootfs=/host
```

2. 在Prometheus中配置Node Exporter：

```yaml
scrape_configs:
  - job_name: 'node'
    static_configs:
      - targets: ['node-exporter:9100']
```

### MySQL Exporter

MySQL Exporter用于收集MySQL数据库的指标。

1. 安装MySQL Exporter：

```bash
# 使用Docker
docker run -d \
  --name mysql-exporter \
  -p 9104:9104 \
  -e DATA_SOURCE_NAME="user:password@(mysql:3306)/" \
  prom/mysqld-exporter
```

2. 在Prometheus中配置MySQL Exporter：

```yaml
scrape_configs:
  - job_name: 'mysql'
    static_configs:
      - targets: ['mysql-exporter:9104']
```

### 自定义应用监控

对于自定义应用，可以使用各种语言的Prometheus客户端库来暴露指标。

1. **Java应用示例**：

添加依赖：

```xml
<dependency>
    <groupId>io.prometheus</groupId>
    <artifactId>simpleclient</artifactId>
    <version>0.16.0</version>
</dependency>
<dependency>
    <groupId>io.prometheus</groupId>
    <artifactId>simpleclient_hotspot</artifactId>
    <version>0.16.0</version>
</dependency>
<dependency>
    <groupId>io.prometheus</groupId>
    <artifactId>simpleclient_httpserver</artifactId>
    <version>0.16.0</version>
</dependency>
```

代码示例：

```java
import io.prometheus.client.Counter;
import io.prometheus.client.Gauge;
import io.prometheus.client.Summary;
import io.prometheus.client.exporter.HTTPServer;
import io.prometheus.client.hotspot.DefaultExports;

public class PrometheusExample {
    // 定义计数器
    static final Counter requestsTotal = Counter.build()
        .name("requests_total")
        .help("Total requests.")
        .labelNames("method", "endpoint")
        .register();
    
    // 定义仪表盘
    static final Gauge inProgressRequests = Gauge.build()
        .name("in_progress_requests")
        .help("In-progress requests.")
        .register();
    
    // 定义摘要
    static final Summary requestLatency = Summary.build()
        .name("request_latency_seconds")
        .help("Request latency in seconds.")
        .quantile(0.5, 0.05)   // 添加50th分位数，误差为5%
        .quantile(0.9, 0.01)   // 添加90th分位数，误差为1%
        .register();
    
    public static void main(String[] args) throws Exception {
        // 暴露JVM指标
        DefaultExports.initialize();
        
        // 启动HTTP服务器暴露指标
        HTTPServer server = new HTTPServer(8080);
        
        // 模拟请求
        while (true) {
            processRequest("GET", "/api/users");
            Thread.sleep(100);
        }
    }
    
    static void processRequest(String method, String endpoint) {
        // 增加计数器
        requestsTotal.labels(method, endpoint).inc();
        
        // 增加进行中请求
        inProgressRequests.inc();
        
        // 记录请求延迟
        Summary.Timer timer = requestLatency.startTimer();
        try {
            // 模拟处理请求
            Thread.sleep((long) (Math.random() * 100));
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            // 减少进行中请求
            inProgressRequests.dec();
            // 停止计时器
            timer.observeDuration();
        }
    }
}
```

2. **Python应用示例**：

安装依赖：

```bash
pip install prometheus-client
```

代码示例：

```python
from prometheus_client import start_http_server, Counter, Gauge, Summary
import random
import time

# 创建指标
REQUEST_COUNT = Counter('request_count', 'App Request Count',
                         ['method', 'endpoint'])
IN_PROGRESS = Gauge('in_progress_requests', 'Number of requests in progress')
REQUEST_LATENCY = Summary('request_latency_seconds', 'Request latency in seconds')

# 处理请求的函数
@IN_PROGRESS.track_inprogress()
@REQUEST_LATENCY.time()
def process_request(method, endpoint):
    # 增加计数器
    REQUEST_COUNT.labels(method=method, endpoint=endpoint).inc()
    # 模拟请求处理
    time.sleep(random.uniform(0.1, 0.3))

if __name__ == '__main__':
    # 启动服务器暴露指标
    start_http_server(8000)
    # 模拟请求
    while True:
        process_request('GET', '/api/users')
        time.sleep(1)
```

3. 在Prometheus中配置自定义应用：

```yaml
scrape_configs:
  - job_name: 'custom_app'
    static_configs:
      - targets: ['custom-app:8080']  # Java应用
      - targets: ['custom-app:8000']  # Python应用
```

## PromQL查询语言

PromQL(Prometheus Query Language)是Prometheus的查询语言，用于选择和聚合时间序列数据。

### 基本查询

1. **选择指标**：

```
# 选择指标
http_requests_total

# 选择带有特定标签的指标
http_requests_total{method="GET"}

# 使用正则表达式匹配标签
http_requests_total{method=~"GET|POST"}

# 排除标签
http_requests_total{method!="DELETE"}
```

2. **范围查询**：

```
# 过去5分钟的数据
http_requests_total[5m]

# 过去1小时的数据，每5分钟一个样本
http_requests_total[1h:5m]
```

### 操作符

1. **算术操作符**：`+`, `-`, `*`, `/`, `%`, `^`

```
# CPU使用率计算
100 - (avg by(instance) (irate(node_cpu_seconds_total{mode="idle"}[5m])) * 100)
```

2. **比较操作符**：`==`, `!=`, `>`, `<`, `>=`, `<=`

```
# 查找CPU使用率超过80%的实例
100 - (avg by(instance) (irate(node_cpu_seconds_total{mode="idle"}[5m])) * 100) > 80
```

3. **逻辑操作符**：`and`, `or`, `unless`

```
# 查找CPU和内存都高的实例
(100 - (avg by(instance) (irate(node_cpu_seconds_total{mode="idle"}[5m])) * 100) > 80)
and
((node_memory_MemTotal_bytes - node_memory_MemAvailable_bytes) / node_memory_MemTotal_bytes * 100 > 80)
```

### 聚合操作符

PromQL支持多种聚合操作符：

```
# 计算所有实例的平均值
avg(http_requests_total)

# 按method标签分组计算总和
sum by(method) (http_requests_total)

# 计算95分位数
quantile(0.95, http_request_duration_seconds)

# 常用聚合操作符
sum, min, max, avg, stddev, stdvar, count, count_values, bottomk, topk, quantile
```

### 函数

PromQL提供了丰富的函数：

1. **速率函数**：

```
# 计算HTTP请求速率(每秒)
rate(http_requests_total[5m])

# 计算瞬时速率，适用于高频变化
irate(http_requests_total[5m])

# 增长量
increase(http_requests_total[1h])
```

2. **预测函数**：

```
# 预测4小时后的值
predict_linear(node_filesystem_free_bytes[1h], 4 * 3600)
```

3. **直方图函数**：

```
# 计算直方图的分位数
histogram_quantile(0.95, sum by(le) (rate(http_request_duration_seconds_bucket[5m])))
```

4. **其他常用函数**：

```
# 标签替换
label_replace(http_requests_total, "service", "$1", "instance", "(.*):.*")

# 时间函数
time()

# 缺失数据处理
absent(nonexistent_metric)
```

## 告警管理

### Alertmanager部署

1. **二进制部署**：

```bash
# 下载Alertmanager
wget https://github.com/prometheus/alertmanager/releases/download/v0.24.0/alertmanager-0.24.0.linux-amd64.tar.gz
tar -xvf alertmanager-0.24.0.linux-amd64.tar.gz
cd alertmanager-0.24.0.linux-amd64

# 创建配置文件
cat > alertmanager.yml << EOF
global:
  resolve_timeout: 5m
  smtp_smarthost: 'smtp.example.org:587'
  smtp_from: 'alertmanager@example.org'
  smtp_auth_username: 'alertmanager'
  smtp_auth_password: 'password'

route:
  group_by: ['alertname']
  group_wait: 30s
  group_interval: 5m
  repeat_interval: 1h
  receiver: 'email'

receivers:
- name: 'email'
  email_configs:
  - to: 'alerts@example.org'
EOF

# 启动Alertmanager
./alertmanager --config.file=alertmanager.yml
```

2. **Docker部署**：

```bash
# 创建配置文件目录
mkdir -p