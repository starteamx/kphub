---
title: syslog协议与实现机制
icon: syslog
order: 3
---

# syslog协议与实现机制

## syslog协议概述

syslog协议是Unix/Linux系统中最基础、最广泛使用的日志协议，最初由Eric Allman在1980年代为Sendmail项目开发，后来成为Unix/Linux系统的标准日志解决方案。该协议定义了日志消息的格式、严重程度分级以及传输机制，为系统和应用程序提供了一个统一的日志记录框架。

syslog协议的核心价值在于它的简单性和通用性，允许各种系统组件和应用程序以标准化的方式生成日志，并将这些日志集中存储和处理。这种集中化的日志管理方式极大地简化了系统管理员的工作，使得日志分析和问题排查变得更加高效。

随着时间的推移，syslog协议经历了多次演进，从最初的非正式规范发展到RFC 3164（BSD syslog协议），再到现代的RFC 5424（syslog协议）标准。这些演进增强了协议的功能，提高了日志消息的结构化程度和可靠性。

## syslog消息格式

### RFC 3164格式（传统格式）

传统的syslog消息格式相对简单，通常包含以下部分：

```
<PRI>时间戳 主机名 标签: 内容
```

其中：
- **PRI**：优先级值，由设施(Facility)和严重性(Severity)计算得出，公式为`PRI = Facility * 8 + Severity`
- **时间戳**：通常格式为"MMM DD HH:MM:SS"，如"Jan 01 12:34:56"
- **主机名**：生成日志的主机名
- **标签**：通常是程序名称，可能包含进程ID，如"sshd[1234]"
- **内容**：实际的日志消息内容

示例：
```
<34>Oct 11 22:14:15 server1 sshd[1234]: Failed password for user root from 192.168.1.100 port 22 ssh2
```

在这个例子中：
- 优先级34表示设施值4（auth）和严重性值2（critical）
- 时间戳是"Oct 11 22:14:15"
- 主机名是"server1"
- 标签是"sshd[1234]"
- 内容是"Failed password for user root from 192.168.1.100 port 22 ssh2"

### RFC 5424格式（现代格式）

RFC 5424定义了更结构化的syslog消息格式：

```
<PRI>VERSION 时间戳 主机名 应用名 进程ID 消息ID 结构化数据 消息
```

其中：
- **PRI**：与RFC 3164相同，由设施和严重性计算得出
- **VERSION**：syslog协议版本，通常为"1"
- **时间戳**：ISO 8601格式的时间戳，包含时区信息
- **主机名**：生成日志的主机名
- **应用名**：生成日志的应用程序名称
- **进程ID**：生成日志的进程ID
- **消息ID**：消息类型的标识符
- **结构化数据**：可选的结构化数据字段，格式为`[ID@企业 名称="值"...]`
- **消息**：实际的日志消息内容

示例：
```
<34>1 2023-10-11T22:14:15.003Z server1 sshd 1234 ID47 [exampleSDID@32473 iut="3" eventSource="Application" eventID="1011"] Failed password for user root from 192.168.1.100 port 22 ssh2
```

RFC 5424格式的主要优势在于：
- 更精确的时间戳（包含毫秒和时区）
- 明确分离的字段（应用名、进程ID等）
- 支持结构化数据，便于机器处理
- 更好的国际化支持（UTF-8编码）

## syslog优先级系统

syslog使用优先级系统来对日志消息进行分类和过滤。优先级由两个组成部分决定：设施(Facility)和严重性(Severity)。

### 设施(Facility)

设施用于标识日志消息的来源类型。标准的设施值包括：

| 数值 | 关键字 | 描述 |
|------|--------|------|
| 0 | kern | 内核消息 |
| 1 | user | 用户级消息 |
| 2 | mail | 邮件系统 |
| 3 | daemon | 系统守护进程 |
| 4 | auth | 安全/认证消息 |
| 5 | syslog | syslogd内部消息 |
| 6 | lpr | 打印系统 |
| 7 | news | 网络新闻系统 |
| 8 | uucp | UUCP子系统 |
| 9 | cron | 计划任务系统 |
| 10 | authpriv | 安全/认证私有消息 |
| 11 | ftp | FTP守护进程 |
| 16-23 | local0-local7 | 本地使用 |

local0到local7（16-23）是为本地自定义用途保留的设施值，通常用于自定义应用程序的日志。

### 严重性(Severity)

严重性用于表示日志消息的重要程度或紧急程度。标准的严重性值从高到低排列如下：

| 数值 | 关键字 | 描述 |
|------|--------|------|
| 0 | emerg | 系统不可用（紧急情况） |
| 1 | alert | 必须立即采取行动 |
| 2 | crit | 临界条件 |
| 3 | err | 错误条件 |
| 4 | warning | 警告条件 |
| 5 | notice | 正常但重要的条件 |
| 6 | info | 信息性消息 |
| 7 | debug | 调试级别消息 |

### 优先级计算

优先级值(PRI)通过以下公式计算：
```
PRI = Facility * 8 + Severity
```

例如，内核(kern)的紧急(emerg)消息的优先级值为：
```
PRI = 0 * 8 + 0 = 0
```

而用户(user)的信息(info)消息的优先级值为：
```
PRI = 1 * 8 + 6 = 14
```

在syslog消息中，优先级值被放在尖括号中作为消息的前缀，如`<14>`。

## syslog传输机制

syslog协议最初设计为使用UDP协议在网络上传输日志消息，但现代实现也支持TCP和其他传输机制。

### UDP传输（传统）

传统的syslog使用UDP协议（通常是端口514）传输日志消息。UDP传输的特点：

- **优点**：
  - 简单且开销低
  - 不会因网络问题阻塞应用程序
  - 适合高吞吐量场景

- **缺点**：
  - 不可靠，消息可能丢失
  - 没有消息确认机制
  - 大消息可能被截断（受限于UDP数据包大小）
  - 无加密，安全性较低

### TCP传输

现代syslog实现支持TCP传输（通常也使用端口514），提供更可靠的日志传输：

- **优点**：
  - 可靠传输，消息不会丢失
  - 支持大消息（不受UDP数据包大小限制）
  - 可以维护消息顺序

- **缺点**：
  - 开销较高
  - 网络问题可能导致应用程序阻塞
  - 默认仍无加密

### TLS/SSL加密传输

为了提高安全性，现代syslog实现支持通过TLS/SSL加密的TCP连接传输日志：

- **优点**：
  - 消息加密，防止窃听
  - 支持身份验证，确保日志来源可信
  - 保持消息完整性

- **缺点**：
  - 配置复杂
  - 性能开销较大
  - 需要管理证书

### RELP（可靠事件日志协议）

RELP (Reliable Event Logging Protocol) 是专为日志传输设计的协议，由rsyslog项目开发：

- **优点**：
  - 专为日志设计的可靠传输
  - 支持确认和重传机制
  - 可与TLS结合使用增强安全性

- **缺点**：
  - 不是所有syslog实现都支持
  - 配置相对复杂

### 本地传输

除了网络传输，syslog还支持本地传输机制：

1. **Unix域套接字**：
   - 通常位于`/dev/log`
   - 用于本地应用程序向syslog守护进程发送日志
   - 比网络套接字更高效

2. **内核日志设备**：
   - 通常是`/proc/kmsg`或`/dev/kmsg`
   - 用于内核向syslog守护进程发送日志

## syslog实现：rsyslog

rsyslog是目前Linux系统中最广泛使用的syslog实现，它是传统syslogd的增强版本，提供了更多功能和更好的性能。

### rsyslog架构

rsyslog采用模块化架构，主要包括以下组件：

1. **输入模块**：负责从各种来源收集日志
   - imuxsock：处理本地Unix套接字输入
   - imklog：处理内核日志输入
   - imudp/imtcp：处理网络UDP/TCP输入
   - imfile：监控文件变化并收集日志
   - imjournal：从systemd journal收集日志

2. **解析器**：解析和标准化日志消息
   - pmrfc3164：解析传统syslog格式
   - pmrfc5424：解析现代syslog格式
   - pmjson：解析JSON格式日志

3. **过滤器**：根据条件过滤日志消息
   - 基于属性的过滤
   - 基于表达式的过滤
   - 基于脚本的过滤（使用RainerScript）

4. **输出模块**：将日志发送到各种目标
   - omfile：写入文件
   - omfwd：转发到远程服务器
   - omdatabase：写入数据库（如MySQL、PostgreSQL）
   - ommongodb：写入MongoDB
   - omelasticsearch：写入Elasticsearch

5. **队列**：管理日志消息的缓冲和处理
   - 内存队列
   - 磁盘队列
   - 直接队列

rsyslog的模块化设计使其非常灵活，可以通过加载不同的模块来扩展功能。

### rsyslog基本配置

rsyslog的主配置文件通常是`/etc/rsyslog.conf`，额外的配置可以放在`/etc/rsyslog.d/`目录下。配置文件由以下几部分组成：

1. **全局指令**：设置rsyslog的全局行为
2. **模块加载**：加载所需的输入/输出模块
3. **模板定义**：定义日志格式模板
4. **规则**：定义日志处理规则

#### 基本配置示例

```
# 加载模块
module(load="imuxsock") # 本地系统日志输入
module(load="imklog")   # 内核日志输入
module(load="imudp")    # UDP输入
input(type="imudp" port="514")

# 全局指令
global(workDirectory="/var/lib/rsyslog")

# 模板定义
template(name="FileFormat" type="string" string="%TIMESTAMP% %HOSTNAME% %syslogtag%%msg%\n")

# 规则
# 将所有紧急消息发送给所有用户
*.emerg                                                 :omusrmsg:*

# 将内核消息记录到/var/log/kern.log
kern.*                                                  /var/log/kern.log

# 将认证相关消息记录到/var/log/auth.log
auth,authpriv.*                                         /var/log/auth.log

# 将邮件相关消息记录到/var/log/mail.log
mail.*                                                  /var/log/mail.log

# 将cron作业消息记录到/var/log/cron.log
cron.*                                                  /var/log/cron.log

# 将所有info级别以上的消息记录到/var/log/messages，但排除mail、auth和cron
*.info;mail.none;auth.none;cron.none                    /var/log/messages

# 将所有debug级别以上的消息发送到远程日志服务器
*.debug                                                 @logserver.example.com:514
```

### rsyslog过滤器语法

rsyslog支持多种过滤器语法，用于选择性地处理日志消息：

1. **传统语法**：基于设施和严重性
   ```
   mail.info                    /var/log/mail.info
   mail.warn                    /var/log/mail.warn
   ```

2. **属性过滤器**：基于消息属性
   ```
   :msg, contains, "error"      /var/log/error.log
   :hostname, isequal, "server1" /var/log/server1.log
   ```

3. **RainerScript过滤器**：使用if-then-else结构
   ```
   if $msg contains 'error' and $syslogfacility-text == 'auth' then {
       action(type="omfile" file="/var/log/auth-errors.log")
   }
   ```

### rsyslog高级特性

#### 模板和属性

rsyslog使用模板定义日志消息的格式。模板可以使用各种属性，如时间戳、主机名、消息内容等：

```
template(name="DynamicFile" type="string" 
         string="/var/log/%HOSTNAME%/%PROGRAMNAME%.log")

*.* action(type="omfile" dynaFile="DynamicFile")
```

这个例子使用动态文件名，根据主机名和程序名创建日志文件。

#### 队列和缓冲

rsyslog支持多种队列类型，用于缓冲和处理日志消息：

```
# 主队列配置
main_queue(
    queue.size="100000"         # 队列最大消息数
    queue.dequeueBatchSize="1000" # 每批处理的消息数
    queue.workerThreads="4"     # 工作线程数
    queue.workerThreadMinimumMessages="10000" # 启动新线程的阈值
    queue.type="FixedArray"     # 队列类型
    queue.timeoutEnqueue="0"    # 入队超时（0表示无限）
)

# 动作队列配置
action(type="omfwd" target="logserver.example.com" port="514" protocol="tcp"
       queue.type="LinkedList"
       queue.size="50000"
       queue.filename="fwdRule1"
       queue.maxdiskspace="2g"
       queue.saveonshutdown="on"
       action.resumeRetryCount="-1"
       action.resumeInterval="30")
```

这个例子配置了主队列和一个动作队列，后者用于转发日志到远程服务器，并在rsyslog关闭时保存队列内容。

#### 日志轮转集成

rsyslog可以与logrotate集成，也可以自行处理日志轮转：

```
# 使用内置轮转
action(type="omfile" file="/var/log/messages"
       fileCreateMode="0644" fileOwner="root" fileGroup="root"
       rotation.size="100M"
       rotation.maxFiles="5")
```

这个配置使日志文件在达到100MB时自动轮转，并保留最多5个旧文件。

#### 远程日志和加密

rsyslog支持通过TLS加密的TCP连接发送和接收日志：

```
# TLS客户端配置
module(load="imtcp")
input(type="imtcp" port="10514")

global(
    defaultNetstreamDriver="gtls"
    defaultNetstreamDriverCAFile="/etc/ssl/certs/ca.pem"
    defaultNetstreamDriverCertFile="/etc/ssl/certs/cert.pem"
    defaultNetstreamDriverKeyFile="/etc/ssl/private/key.pem"
)

action(type="omfwd"
       target="logserver.example.com" port="10514" protocol="tcp"
       streamdriver="gtls" streamdriver.mode="1"
       streamdriver.authmode="anon")
```

这个配置使用TLS加密连接到远程日志服务器。

#### 数据库输出

rsyslog可以将日志直接写入数据库：

```
# MySQL输出
module(load="ommysql")
*.* action(type="ommysql" server="localhost" db="Syslog" uid="rsyslog" pwd="password")

# MongoDB输出
module(load="ommongodb")
*.* action(type="ommongodb" server="localhost" db="logs" collection="syslog")
```

这些配置将日志写入MySQL和MongoDB数据库。

## syslog实现：syslog-ng

syslog-ng是另一个流行的syslog实现，提供了比传统syslogd更强大的功能。它的设计理念是将日志处理视为数据流，从源(sources)收集日志，通过过滤器(filters)处理，然后发送到目标(destinations)。

### syslog-ng架构

syslog-ng的架构包括以下主要组件：

1. **源(Sources)**：定义日志的来源
   - 系统日志源(system())
   - 内部消息源(internal())
   - 文件源(file())
   - 网络源(network(), syslog(), tcp(), udp())

2. **目标(Destinations)**：定义日志的去向
   - 文件目标(file())
   - 程序目标(program())
   - 网络目标(network(), syslog(), tcp(), udp())
   - 数据库目标(sql())

3. **过滤器(Filters)**：根据条件过滤日志
   - 设施/严重性过滤器(facility(), level())
   - 程序过滤器(program())
   - 主机过滤器(host())
   - 消息内容过滤器(match())

4. **日志路径(Log Paths)**：连接源、过滤器和目标，定义日志的流向
   - 可以包含多个源和目标
   - 可以包含多个过滤器
   - 支持分支和条件处理

5. **解析器(Parsers)**：解析和结构化日志消息
   - CSV解析器(csv-parser())
   - DB解析器(db-parser())
   - JSON解析器(json-parser())
   - 正则表达式解析器(regexp-parser())

### syslog-ng基本配置

syslog-ng的主配置文件通常是`/etc/syslog-ng/syslog-ng.conf`。配置文件由以下几部分组成：

1. **全局选项**：设置syslog-ng的全局行为
2. **源定义**：定义日志来源
3. **目标定义**：定义日志去向
4. **过滤器定义**：定义过滤条件
5. **日志路径**：连接源、过滤器和目标

#### 基本配置示例

```
@version: 3.35
@include "scl.conf"

# 全局选项
options {
    chain_hostnames(no);
    create_dirs(yes);
    flush_lines(0);
    log_fifo_size(1000);
    stats_freq(600);
    time_reopen(10);
};

# 源定义
source s_local {
    system();
    internal();
};

source s_network {
    network(
        transport("tcp")
        port(514)
    );
};

# 目标定义
destination d_auth { file("/var/log/auth.log"); };
destination d_syslog { file("/var/log/syslog"); };
destination d_cron { file("/var/log/cron.log"); };
destination d_mail { file("/var/log/mail.log"); };
destination d_remote { network("logserver.example.com" port(514) transport("tcp")); };

# 过滤器定义
filter f_auth { facility(auth, authpriv); };
filter f_cron { facility(cron); };
filter f_mail { facility(mail); };
filter f_emergency { level(emerg); };

# 日志路径
log { source(s_local); filter(f_auth); destination(d_auth); };
log { source(s_local); filter(f_cron); destination(d_cron); };
log { source(s_local); filter(f_mail); destination(d_mail); };
log { source(s_local); filter(f_emergency); destination(d_remote); };
log { source(s_local); destination(d_syslog); };
log { source(s_network); destination(d_syslog); };
```

### syslog-ng过滤器语法

syslog-ng提供了丰富的过滤器语法，用于选择性地处理日志消息：

1. **设施和严重性过滤器**：
   ```
   filter f_important { facility(kern) and level(err..emerg); };
   filter f_auth { facility(auth, authpriv); };
   ```

2. **程序和主机过滤器**：
   ```
   filter f_sshd { program("sshd"); };
   filter f_local { host("localhost"); };
   ```

3. **消息内容过滤器**：
   ```
   filter f_error { match("error" value("MESSAGE")); };
   filter f_login { match("logged in" value("MESSAGE")) or match("session opened" value("MESSAGE")); };
   ```

4. **复合过滤器**：
   ```
   filter f_critical_auth { facility(auth) and level(crit..emerg) and match("failed" value("MESSAGE")); };
   ```

### syslog-ng高级特性

#### 模板和宏

syslog-ng使用模板定义日志消息的格式，可以使用各种宏引用消息的不同部分：

```
template t_standard {
    template("${ISODATE} ${HOST} ${PROGRAM}[${PID}]: ${MESSAGE}\n");
    template_escape(no);
};

destination d_file {
    file("/var/log/messages" template(t_standard));
};
```

这个例子定义了一个标准模板，并在文件目标中使用它。

#### 解析和重写

syslog-ng可以解析和重写日志消息，提取结构化信息：

```
# 解析Apache访问日志
parser p_apache {
    csv-parser(
        columns("APACHE.CLIENT_IP", "APACHE.IDENT_NAME", "APACHE.USER_NAME",
                "APACHE.TIMESTAMP", "APACHE.REQUEST", "APACHE.STATUS",
                "APACHE.CONTENT_LENGTH", "APACHE.REFERER", "APACHE.USER_AGENT")
        delimiters(" ")
        quote-pairs('""[]')
        flags(escape-none)
        template("${APACHE.CLIENT_IP} ${APACHE.IDENT_NAME} ${APACHE.USER_NAME} [${APACHE.TIMESTAMP}] \"${APACHE.REQUEST}\" ${APACHE.STATUS} ${APACHE.CONTENT_LENGTH} \"${APACHE.REFERER}\" \"${APACHE.USER_AGENT}\"")
    );
};

# 重写消息
rewrite r_host {
    set("new-host-name", value("HOST"));
};
```

这个例子定义了一个解析器来处理Apache访问日志，以及一个重写规则来修改主机名。

#### 分类和路由

syslog-ng可以根据消息内容动态分类和路由日志：

```
# 根据程序名分类日志
destination d_by_program {
    file("/var/log/$PROGRAM.log");
};

# 根据主机名和程序名分类日志
destination d_by_host_program {
    file("/var/log/$HOST/$PROGRAM.log" create_dirs(yes));
};

log {
    source(s_local);
    destination(d_by_program);
};
```

这个例子将日志按程序名分类到不同的文件中。

#### 可靠传输和磁盘缓冲

syslog-ng支持可靠传输和磁盘缓冲，确保日志不会丢失：

```
# 磁盘缓冲配置
destination d_remote_reliable {
    network("logserver.example.com" port(514)
            transport("tcp")
            disk-buffer(
                mem-buf-size(10000)
                disk-buf-size(2000000)
                reliable(yes)
            )
    );
};
```

这个配置使用磁盘缓冲区确保即使在网络中断时也不会丢失日志。

#### TLS加密和认证

syslog-ng支持通过TLS加密的连接发送和接收日志：

```
# TLS源配置
source s_tls {
    network(
        port(6514)
        transport("tls")
        tls(
            key-file("/etc/syslog-ng/ssl/server.key")
            cert-file("/etc/syslog-ng/ssl/server.crt")
            ca-dir("/etc/syslog-ng/ssl/ca.d")
            peer-verify(required-trusted)
        )
    );
};

# TLS目标配置
destination d_tls {
    network(
        "logserver.example.com"
        port(6514)
        transport("tls")
        tls(
            key-file("/etc/syslog-ng/ssl/client.key")
            cert-file("/etc/syslog-ng/ssl/client.crt")
            ca-dir("/etc/syslog-ng/ssl/ca.d")
            peer-verify(required-trusted)
        )
    );
};
```

这个配置使用TLS加密和证书认证来保护日志传输。

## rsyslog与syslog-ng比较

rsyslog和syslog-ng是两个最流行的syslog实现，它们各有优缺点：

### 功能比较

| 功能 | rsyslog | syslog-ng |
|------|---------|-----------|
| 基本日志收集 | ✓ | ✓ |
| 网络传输(UDP/TCP) | ✓ | ✓ |
| TLS加密 | ✓ | ✓ |
| 磁盘缓冲 | ✓ | ✓ |
| 数据库输出 | ✓ | ✓ |
| 消息解析 | ✓ | ✓ |
| 消息重写 | ✓ | ✓ |
| 内容过滤 | ✓ | ✓ |
| 高性能设计 | ✓ | ✓ |
| 配置语法 | 多种风格混合 | 一致的C风格 |
| 默认安装 | 大多数发行版 | 需要额外安装 |
| 许可证 | GPL | 开源/商业双许可 |

### 性能比较

在性能方面，rsyslog和syslog-ng都经过了优化，可以处理高吞吐量的日志：

- **rsyslog**：
  - 多线程设计
  - 高效的队列实现
  - 优化的磁盘I/O

- **syslog-ng**：
  - 事件驱动架构
  - 高效的内存管理
  - 优化的消息处理管道

在大多数场景下，两者的性能差异不大，选择哪个更多地取决于功能需求和配置偏好。

### 配置风格比较

两者的配置风格有明显差异：

- **rsyslog**：
  - 混合了传统syslog语法和新的RainerScript语法
  - 配置可能分散在多个文件中
  - 语法相对复杂，有多种表达同一功能的方式

- **syslog-ng**：
  - 一致的C