---
title: Playbook编写与执行
icon: practice
order: 7
---

# Playbook编写与执行

Playbook是Ansible的核心功能，本文将详细介绍Playbook的YAML语法、结构组成和执行流程，以及任务定义、处理程序和标签等高级特性，通过实际案例帮助读者掌握Playbook的编写和执行技巧。

## 1. Playbook基础概念

### 1.1 什么是Playbook

Playbook是Ansible的配置、部署和编排语言。它们以YAML格式编写，描述了一系列有序的任务，这些任务将在指定的主机或主机组上执行。Playbook不仅可以定义要执行的操作，还可以指定操作的执行方式和条件。

与ad-hoc命令相比，Playbook具有以下优势：
- **可重复性**：可以多次执行相同的操作
- **可版本控制**：可以将Playbook纳入版本控制系统
- **复杂性**：可以处理复杂的部署和配置任务
- **组织性**：可以将相关任务组织在一起
- **可读性**：使用YAML格式，易于阅读和理解

### 1.2 Playbook与ad-hoc命令的区别

| 特性 | ad-hoc命令 | Playbook |
|------|------------|----------|
| 用途 | 简单的一次性任务 | 复杂的多步骤操作 |
| 格式 | 命令行参数 | YAML文件 |
| 复杂度 | 低 | 高 |
| 可重用性 | 低 | 高 |
| 版本控制 | 困难 | 容易 |
| 适用场景 | 检查状态、简单更新 | 应用部署、系统配置 |

### 1.3 Playbook的基本结构

一个基本的Playbook包含以下元素：

```yaml
---
# Playbook开始标记
- name: 第一个play的名称
  hosts: webservers
  vars:
    http_port: 80
  tasks:
    - name: 确保Apache已安装
      ansible.builtin.yum:
        name: httpd
        state: present

    - name: 确保Apache正在运行
      ansible.builtin.service:
        name: httpd
        state: started
        enabled: yes

- name: 第二个play的名称
  hosts: databases
  tasks:
    - name: 确保PostgreSQL已安装
      ansible.builtin.yum:
        name: postgresql
        state: present
```

在这个例子中：
- 一个Playbook包含多个play
- 每个play包含主机组、变量和任务
- 每个任务使用一个模块并提供必要的参数

## 2. YAML语法基础

### 2.1 YAML简介

YAML（YAML Ain't Markup Language）是一种人类可读的数据序列化格式，被设计为对人类友好且易于阅读。Ansible使用YAML作为Playbook的格式，因此理解YAML语法对于编写Playbook至关重要。

### 2.2 YAML基本语法规则

1. **缩进**：YAML使用缩进表示层级关系，通常使用2个空格
2. **冒号**：键值对使用冒号分隔，格式为`key: value`
3. **短横线**：列表项使用短横线开头，格式为`- item`
4. **注释**：使用井号`#`表示注释
5. **数据类型**：支持字符串、数字、布尔值、列表和字典等数据类型

### 2.3 YAML中的数据类型

#### 2.3.1 标量（Scalars）

```yaml
# 字符串
name: John Doe

# 数字
age: 30
price: 19.99

# 布尔值
is_active: true
has_access: false

# 空值
address: null
```

#### 2.3.2 列表（Lists）

```yaml
# 简单列表
fruits:
  - apple
  - banana
  - cherry

# 行内列表
colors: [red, green, blue]

# 复杂列表
users:
  - name: John
    age: 30
  - name: Jane
    age: 25
```

#### 2.3.3 字典（Dictionaries）

```yaml
# 嵌套字典
person:
  name: John Doe
  age: 30
  address:
    street: 123 Main St
    city: Anytown
    zip: 12345

# 行内字典
user: {name: John, age: 30}
```

### 2.4 YAML常见陷阱和注意事项

1. **缩进问题**：不一致的缩进会导致解析错误
2. **冒号后的空格**：冒号后必须有空格
3. **引号使用**：包含特殊字符的字符串应使用引号
4. **布尔值**：`yes`/`no`、`true`/`false`、`on`/`off`都可以表示布尔值
5. **多行字符串**：使用`|`或`>`处理多行字符串

```yaml
# 使用 | 保留换行符
description: |
  这是一段
  多行文本
  每行结束都有换行符

# 使用 > 折叠换行符
address: >
  123 Main Street
  Anytown, USA
  12345
  # 最终会变成一行，换行符被替换为空格
```

## 3. Playbook结构详解

### 3.1 Play结构

Play是Playbook的基本单位，定义了要在哪些主机上执行哪些任务。一个完整的play结构如下：

```yaml
- name: Play名称
  hosts: 目标主机或主机组
  become: yes/no
  become_user: 用户名
  vars:
    变量1: 值1
    变量2: 值2
  vars_files:
    - 变量文件1
    - 变量文件2
  tasks:
    - name: 任务1名称
      模块名:
        参数1: 值1
        参数2: 值2
      
    - name: 任务2名称
      模块名:
        参数1: 值1
        参数2: 值2
  handlers:
    - name: 处理程序1名称
      模块名:
        参数1: 值1
        参数2: 值2
```

### 3.2 Play常用指令

#### 3.2.1 hosts

指定要执行任务的目标主机或主机组：

```yaml
hosts: webservers          # 指定主机组
hosts: web1.example.com    # 指定单个主机
hosts: webservers:dbservers # 指定多个主机组
hosts: all                 # 所有主机
hosts: "webservers:&production" # 组的交集
hosts: "webservers:!excluded"   # 排除特定组
```

#### 3.2.2 become和权限提升

用于在远程主机上提升权限：

```yaml
become: yes                # 启用权限提升
become_user: postgres      # 提升为指定用户
become_method: sudo        # 权限提升方法（sudo, su, pfexec, doas, pbrun, dzdo, ksu）
```

#### 3.2.3 变量定义

在play中定义变量：

```yaml
vars:
  http_port: 80
  max_clients: 200

vars_files:
  - vars/common.yml
  - vars/{{ environment }}.yml

vars_prompt:
  - name: username
    prompt: "请输入用户名"
    private: no
  
  - name: password
    prompt: "请输入密码"
    private: yes
```

#### 3.2.4 条件和循环

使用条件控制任务执行：

```yaml
tasks:
  - name: 安装Apache（Debian系统）
    apt:
      name: apache2
      state: present
    when: ansible_os_family == "Debian"
  
  - name: 安装Apache（RedHat系统）
    yum:
      name: httpd
      state: present
    when: ansible_os_family == "RedHat"
```

使用循环重复执行任务：

```yaml
tasks:
  - name: 创建多个用户
    user:
      name: "{{ item.name }}"
      state: present
      groups: "{{ item.groups }}"
    loop:
      - { name: 'john', groups: 'users' }
      - { name: 'jane', groups: 'users,sudo' }
```

### 3.3 任务（Tasks）

任务是play中的基本执行单元，每个任务调用一个Ansible模块：

```yaml
tasks:
  - name: 确保Apache已安装
    ansible.builtin.yum:
      name: httpd
      state: present
    tags: install
    
  - name: 复制配置文件
    ansible.builtin.template:
      src: templates/httpd.conf.j2
      dest: /etc/httpd/conf/httpd.conf
    notify: restart apache
    tags: configure
```

任务属性：
- **name**：任务描述（可选但强烈推荐）
- **模块名**：要使用的Ansible模块
- **参数**：模块所需的参数
- **tags**：标签，用于选择性执行
- **notify**：触发处理程序
- **register**：将任务结果保存到变量
- **when**：条件执行
- **loop/with_items**：循环执行

### 3.4 处理程序（Handlers）

处理程序是特殊的任务，只有在被通知时才会执行：

```yaml
tasks:
  - name: 复制配置文件
    ansible.builtin.template:
      src: templates/httpd.conf.j2
      dest: /etc/httpd/conf/httpd.conf
    notify: restart apache

handlers:
  - name: restart apache
    ansible.builtin.service:
      name: httpd
      state: restarted
```

处理程序特点：
- 只有在被通知且相关任务发生变更时才会执行
- 在play的所有任务执行完毕后才会执行
- 即使被多次通知，也只会执行一次
- 按照在handlers部分定义的顺序执行，而不是通知的顺序

### 3.5 角色（Roles）

角色是一种组织Playbook的方式，将相关的任务、变量、文件等组织在一起：

```yaml
# playbook.yml
---
- hosts: webservers
  roles:
    - common
    - webserver
    - { role: database, when: "inventory_hostname in groups.dbservers" }
```

角色目录结构：

```
roles/
  common/
    tasks/
      main.yml
    handlers/
      main.yml
    files/
    templates/
    vars/
      main.yml
    defaults/
      main.yml
    meta/
      main.yml
```

## 4. Playbook执行流程

### 4.1 Playbook执行顺序

Playbook的执行遵循以下顺序：

1. 按照在Playbook中定义的顺序执行每个play
2. 在每个play中：
   - 收集目标主机的facts（如果未禁用）
   - 按顺序执行pre_tasks（如果有）
   - 执行roles中定义的任务（如果有）
   - 按顺序执行tasks中定义的任务
   - 按顺序执行post_tasks（如果有）
   - 执行被通知的handlers

### 4.2 执行Playbook的命令

基本执行命令：

```bash
ansible-playbook playbook.yml
```

常用选项：

```bash
# 指定inventory文件
ansible-playbook -i inventory.ini playbook.yml

# 限制执行的主机
ansible-playbook playbook.yml --limit webservers

# 检查模式（不实际执行）
ansible-playbook playbook.yml --check

# 详细输出
ansible-playbook playbook.yml -v
ansible-playbook playbook.yml -vv  # 更详细
ansible-playbook playbook.yml -vvv # 最详细

# 只执行特定标签的任务
ansible-playbook playbook.yml --tags "install,configure"

# 跳过特定标签的任务
ansible-playbook playbook.yml --skip-tags "notification"

# 从特定任务开始执行
ansible-playbook playbook.yml --start-at-task="配置防火墙"

# 指定变量
ansible-playbook playbook.yml -e "version=1.2.3 environment=production"
```

### 4.3 Playbook执行状态

Ansible在执行任务时会报告每个任务的状态：

- **ok**：任务成功执行，但没有变更
- **changed**：任务成功执行，并且有变更
- **failed**：任务执行失败
- **skipped**：任务被跳过（条件不满足）
- **unreachable**：无法连接到目标主机
- **rescued**：任务失败但被rescue块处理
- **ignored**：任务失败但被ignore_errors忽略

### 4.4 错误处理

Playbook提供了多种错误处理机制：

```yaml
# 忽略错误
- name: 尝试启动服务
  service:
    name: someservice
    state: started
  ignore_errors: yes

# 定义失败条件
- name: 检查磁盘空间
  shell: df -h / | awk 'NR==2 {print $5}' | sed 's/%//'
  register: disk_space
  failed_when: disk_space.stdout|int > 90

# 块级错误处理
- block:
    - name: 尝试更新软件包
      apt:
        update_cache: yes
  rescue:
    - name: 安装软件包（即使更新失败）
      apt:
        name: nginx
        state: present
  always:
    - name: 总是执行此任务
      debug:
        msg: "这个任务总是执行"
```

## 5. 任务定义与控制

### 5.1 模块使用

Ansible模块是执行特定操作的代码单元。在任务中使用模块：

```yaml
- name: 确保Apache已安装
  ansible.builtin.yum:  # 模块名
    name: httpd         # 模块参数
    state: present
```

常用模块：

- **命令执行**：command, shell, raw
- **文件操作**：copy, file, template, lineinfile
- **包管理**：apt, yum, dnf, pip
- **服务管理**：service, systemd
- **用户管理**：user, group
- **网络工具**：uri, get_url
- **云平台**：ec2, azure_rm, gcp

### 5.2 条件执行

使用`when`指令根据条件执行任务：

```yaml
- name: 安装Apache（Debian系统）
  apt:
    name: apache2
    state: present
  when: ansible_os_family == "Debian"

# 多条件（AND）
- name: 安装特定软件
  apt:
    name: special-app
    state: present
  when:
    - ansible_distribution == "Ubuntu"
    - ansible_distribution_version == "20.04"

# 多条件（OR）
- name: 安装开发工具
  apt:
    name: build-essential
    state: present
  when: ansible_distribution == "Ubuntu" or ansible_distribution == "Debian"

# 检查变量是否定义
- name: 执行特定操作
  debug:
    msg: "变量已定义"
  when: my_variable is defined

# 检查命令结果
- name: 检查文件是否存在
  command: test -f /path/to/file
  register: file_check
  changed_when: false
  ignore_errors: true

- name: 创建文件（如果不存在）
  file:
    path: /path/to/file
    state: touch
  when: file_check.rc != 0
```

### 5.3 循环和迭代

Ansible提供多种循环机制：

#### 5.3.1 基本循环

```yaml
# 使用loop（推荐）
- name: 创建多个用户
  user:
    name: "{{ item }}"
    state: present
  loop:
    - john
    - jane
    - bob

# 使用with_items（旧语法）
- name: 安装多个软件包
  apt:
    name: "{{ item }}"
    state: present
  with_items:
    - nginx
    - postgresql
    - redis-server
```

#### 5.3.2 复杂循环

```yaml
# 循环字典
- name: 创建用户并设置组
  user:
    name: "{{ item.name }}"
    groups: "{{ item.groups }}"
    state: present
  loop:
    - { name: 'john', groups: 'users' }
    - { name: 'jane', groups: 'users,sudo' }

# 嵌套循环
- name: 创建目录结构
  file:
    path: "/opt/{{ item[0] }}/{{ item[1] }}"
    state: directory
  loop: "{{ ['app1', 'app2'] | product(['config', 'data', 'logs']) | list }}"

# 循环文件列表
- name: 处理配置文件
  template:
    src: "{{ item }}"
    dest: "/etc/{{ item | basename | regex_replace('\\.j2$', '') }}"
  loop: "{{ lookup('fileglob', 'templates/*.j2') }}"
```

#### 5.3.3 循环控制

```yaml
# 设置循环标签
- name: 安装软件包
  apt:
    name: "{{ item }}"
    state: present
  loop:
    - nginx
    - postgresql
  loop_control:
    label: "{{ item }}"  # 自定义日志输出

# 暂停循环
- name: 重启服务（间隔5秒）
  service:
    name: "{{ item }}"
    state: restarted
  loop:
    - service1
    - service2
    - service3
  loop_control:
    pause: 5  # 每次迭代暂停5秒
```

### 5.4 任务委派和本地执行

有时需要在控制节点或特定主机上执行任务：

```yaml
# 委派任务到特定主机
- name: 更新负载均衡器
  shell: /usr/local/bin/update_lb.sh
  delegate_to: loadbalancer.example.com

# 在本地执行任务
- name: 创建本地备份
  local_action: shell tar -czf /tmp/backup.tar.gz /path/to/files

# 委派任务并运行一次
- name: 发送通知
  mail:
    subject: "部署完成"
    to: admin@example.com
    body: "应用已成功部署"
  delegate_to: localhost
  run_once: true
```

### 5.5 异步任务和轮询

对于长时间运行的任务，可以使用异步执行：

```yaml
# 异步执行任务（等待完成）
- name: 更新软件包索引
  apt:
    update_cache: yes
  async: 300  # 最长运行时间（秒）
  poll: 10    # 每10秒检查一次状态

# 启动任务并继续（不等待）
- name: 启动备份任务
  shell: /usr/local/bin/backup.sh
  async: 3600  # 最长运行时间（秒）
  poll: 0      # 不等待，立即继续

# 检查异步任务状态
- name: 启动备份任务
  shell: /usr/local/bin/backup.sh
  async: 3600
  poll: 0
  register: backup_job

- name: 检查备份任务状态
  async_status:
    jid: "{{ backup_job.ansible_job_id }}"
  register: job_result
  until: job_result.finished
  retries: 30
  delay: 60
```

## 6. 变量和模板

### 6.1 变量定义方式

Ansible提供多种定义变量的方式：

#### 6.1.1 在Playbook中定义

```yaml
# 直接在play中定义
- hosts: webservers
  vars:
    http_port: 80
    max_clients: 200
  tasks:
    # 使用变量
    - name: 配置Apache端口
      template:
        src: httpd.conf.j2
        dest: /etc/httpd/conf/httpd.conf

# 使用变量文件
- hosts: webservers
  vars_files:
    - vars/common.yml
    - vars/{{ environment }}.yml
  tasks:
    # 任务定义
```

#### 6.1.2 在Inventory中定义

```ini
# 主机变量
web1.example.com ansible_host=192.168.1.101 http_port=8080

# 组变量
[webservers]
web1.example.com
web2.example.com

[webservers:vars]
http_port=80
max_clients=100
```

#### 6.1.3 在单独的变量文件中定义

```
inventory/
  hosts
  group_vars/
    all.yml          # 适用于所有主机
    webservers.yml   # 适用于webservers组
  host_vars/
    web1.example.com.yml  # 适用于特定主机
```

#### 6.1.4 通过命令行定义

```bash
ansible-playbook playbook.yml -e "http_port=8080 max_clients=200"
ansible-playbook playbook.yml -e @vars.json
```

### 6.2 变量优先级

变量优先级从高到低：

1. 命令行参数（-e/--extra-vars）
2. 任务中的vars
3. 块中的vars
4. 角色或include_role参数中的vars
5. set_facts / registered vars
6. play中的vars
7. play中的vars_prompt
8. play中的vars_files
9. 角色中的vars（role/vars/main.yml）
10. 块/任务中include_vars
11. 角色默认变量（role/defaults/main.yml）
12. inventory中的主机变量
13. inventory中的组变量
14. 全局组变量（group_vars/all）
15. playbook目录中的group_vars/
16. playbook目录中的host_vars/
17. inventory目录中的host_vars/
18. inventory目录中的group_vars/
19. inventory文件或脚本中定义的变量
20. 系统facts
21. 角色依赖默认变量

### 6.3 Jinja2模板

Ansible使用Jinja2作为模板引擎，可以在模板中使用变量、过滤器和控制结构：

#### 6.3.1 基本语法

```jinja
{# 这是注释 #}

{# 变量 #}
服务器端口: {{ http_port }}

{# 条件 #}
{% if environment == "production" %}
最大连接数: 1000
{% else %}
最大连接数: 200
{% endif %}

{# 循环 #}
允许的主机:
{% for host in allowed_hosts %}
  - {{ host }}
{% endfor %}
```

#### 6.3.2 过滤器

```jinja
{{ variable | default('默认值') }}
{{ path | basename }}
{{ version | int }}
{{ users | join(', ') }}
{{ password | password_hash('sha512') }}
{{ some_text | regex_replace('^.*/([^/]*)$', '\\1') }}
```

#### 6.3.3 实际模板示例

```jinja
# Apache配置模板 (httpd.conf.j2)
ServerRoot "/etc/httpd"
Listen {{ http_port }}

# 模块配置
{% for module in apache_modules %}
LoadModule {{ module }}_module modules/mod_{{ module }}.so
{% endfor %}

# 虚拟主机配置
{% for vhost in apache_vhosts %}
<VirtualHost *:{{ http_port }}>
    ServerName {{ vhost.name }}
    DocumentRoot {{ vhost.docroot }}
    
    {% if vhost.ssl | default(false) %}
    SSLEngine on
    SSLCertificateFile {{ vhost.cert_file }}
    SSLCertificateKeyFile {{ vhost.key_file }}
    {% endif %}
    
    ErrorLog logs/{{ vhost.name }}-error_log
    CustomLog logs/{{ vhost.name }}-access_log combined
</VirtualHost>
{% endfor %}
```

### 6.4 Facts和魔法变量

Ansible自动收集的系统信息（facts）和内置变量：

```yaml
- name: 显示系统信息
  debug:
    msg: "操作系统: {{ ansible_distribution }} {{ ansible_distribution_version }}"

- name: 显示IP地址
  debug:
    msg: "IP地址: {{ ansible_default_ipv4.address }}"

- name: 显示主机名
  debug:
    msg: "当前主机: {{ inventory_hostname }}"

- name: 显示组成员
  debug:
    msg: "webservers组成员: {{ groups['webservers'] }}"
```

常用facts和魔法变量：

- **ansible_distribution**：操作系统发行版
- **ansible_distribution_version**：操作系统版本
- **ansible_os_family**：操作系统家族（RedHat, Debian等）
- **ansible_architecture**：系统架构
- **ansible_processor_count**：CPU核心数
- **ansible_memory_mb.real.total**：总内存
- **ansible_default_ipv4.address**：默认IPv4地址
- **inventory_hostname**：Inventory中定义的主机名
- **groups**：所有主机组
- **group_names**：当前主机所属的组
- **hostvars**：所有主机的变量

### 6.5 注册变量

使用`register`指令将任务结果保存到变量：

```yaml
- name: 检查服务状态
  command: systemctl status nginx
  register: nginx_status
  ignore_errors: yes

- name: 显示服务状态
  debug:
    msg: "Nginx状态: {{ nginx_status.stdout }}"
  when: nginx_status.rc == 0

- name: 启动服务（如果未运行）
  service:
    name: nginx
    state: started
  when: nginx_status.rc != 0
```

## 7. 处理程序和通知

### 7.1 处理程序基础

处理程序（handlers）是特殊的任务，只有在被通知且相关任务发生变更时才会执行：

```yaml
tasks:
  - name: 复制Apache配置文件
    template:
      src: httpd.conf.j2
      dest: /etc/httpd/conf/httpd.conf
    notify: restart apache

handlers:
  - name: restart apache
    service:
      name: httpd
      state: restarted
```

### 7.2 多个处理程序

可以通知多个处理程序：

```yaml
tasks:
  - name: 复制Apache配置文件
    template:
      src: httpd.conf.j2
      dest: /etc/httpd/conf/httpd.conf
    notify:
      - restart apache
      - update log permissions

handlers:
  - name: restart apache
    service:
      name: httpd
      state: restarted

  - name: update log permissions
    file:
      path: /var/log/httpd
      mode: '0755'
      recurse: yes
```

### 7.3 处理程序的执行顺序

处理程序按照在handlers部分定义的顺序执行，而不是通知的顺序。如果需要控制执行顺序，可以使用`listen`指令：

```yaml
tasks:
  - name: 复制Apache配置文件
    template:
      src: httpd.conf.j2
      dest: /etc/httpd/conf/httpd.conf
    notify: restart web services

  - name: 复制PHP配置文件
    template:
      src: php.ini.j2
      dest: /etc/php.ini
    notify: restart web services

handlers:
  - name: restart apache
    service:
      name: httpd
      state: restarted
    listen: restart web services

  - name: restart php-fpm
    service:
      name: php-fpm
      state: restarted
    listen: restart web services
```

### 7.4 强制执行处理程序

默认情况下，处理程序只在play结束时执行。如果需要立即执行，可以使用`meta: flush_handlers`：

```yaml
tasks:
  - name: 复制Apache配置文件
    template:
      src: httpd.conf.j2
      dest: /etc/httpd/conf/httpd.conf
    notify: restart apache
让我继续完成关于Playbook编写与执行的内容：

### 7.4 强制执行处理程序（续）

```yaml
  - name: 安装必要的软件包
    yum:
      name: httpd-tools
      state: present

  # 立即执行之前通知的处理程序
  - meta: flush_handlers

  - name: 配置虚拟主机
    template:
      src: vhost.conf.j2
      dest: /etc/httpd/conf.d/vhost.conf
    notify: restart apache
```

使用`meta: flush_handlers`的常见场景：
- 在继续执行后续任务前需要确保服务已重启
- 在多个配置更改之间需要重启服务
- 在角色执行结束前需要执行处理程序

## 8. 标签和选择性执行

### 8.1 标签基础

标签允许您选择性地执行Playbook中的特定部分：

```yaml
tasks:
  - name: 安装Apache
    yum:
      name: httpd
      state: present
    tags: install

  - name: 配置Apache
    template:
      src: httpd.conf.j2
      dest: /etc/httpd/conf/httpd.conf
    tags: configure

  - name: 启动Apache
    service:
      name: httpd
      state: started
      enabled: yes
    tags: service
```

执行特定标签的任务：

```bash
ansible-playbook playbook.yml --tags "install,configure"
```

跳过特定标签的任务：

```bash
ansible-playbook playbook.yml --skip-tags "service"
```

### 8.2 特殊标签

Ansible提供了一些特殊标签：

- **always**：始终执行，除非明确跳过
- **never**：从不执行，除非明确指定
- **tagged**：只有带标签的任务
- **untagged**：只有不带标签的任务
- **all**：所有任务（默认）

```yaml
tasks:
  - name: 更新软件包缓存
    apt:
      update_cache: yes
    tags: always

  - name: 执行危险操作
    shell: rm -rf /tmp/old_files
    tags: never

  - name: 常规任务
    debug:
      msg: "这是一个常规任务"
    # 没有标签
```

### 8.3 标签的继承和应用范围

标签可以应用于多个级别，并且会被继承：

```yaml
# 应用于整个play
- hosts: webservers
  tags: webservers
  tasks:
    # 继承play的标签，同时有自己的标签
    - name: 安装Apache
      yum:
        name: httpd
        state: present
      tags: install

# 应用于块
- hosts: dbservers
  tasks:
    - block:
        - name: 安装PostgreSQL
          yum:
            name: postgresql
            state: present
        
        - name: 配置PostgreSQL
          template:
            src: postgresql.conf.j2
            dest: /var/lib/pgsql/data/postgresql.conf
      tags: database
```

### 8.4 标签最佳实践

- **使用有意义的名称**：选择描述性的标签名称
- **保持一致性**：在整个项目中使用一致的标签命名约定
- **避免过度标记**：不要为每个任务都添加唯一标签
- **使用层次结构**：使用分层标签（如`webserver:install`、`webserver:configure`）
- **记录标签**：在项目文档中记录可用的标签

## 9. 错误处理和调试

### 9.1 错误控制

#### 9.1.1 忽略错误

```yaml
- name: 尝试停止可能不存在的服务
  service:
    name: nonexistent-service
    state: stopped
  ignore_errors: yes
```

#### 9.1.2 自定义失败条件

```yaml
- name: 检查磁盘空间
  shell: df -h / | awk 'NR==2 {print $5}' | sed 's/%//'
  register: disk_space
  failed_when: disk_space.stdout|int > 90
```

#### 9.1.3 自定义变更条件

```yaml
- name: 获取当前日期
  command: date
  register: date_output
  changed_when: false  # 命令总是成功，但不应标记为"changed"
```

### 9.2 块级错误处理

使用`block`、`rescue`和`always`进行错误处理：

```yaml
- block:
    - name: 尝试更新软件包
      apt:
        update_cache: yes
        
    - name: 安装Apache
      apt:
        name: apache2
        state: present
  rescue:
    - name: 安装备用软件包
      apt:
        name: nginx
        state: present
      
    - name: 通知失败
      debug:
        msg: "Apache安装失败，已安装Nginx作为备用"
  always:
    - name: 确保web目录存在
      file:
        path: /var/www/html
        state: directory
```

### 9.3 重试机制

对于可能暂时失败的任务，可以使用重试机制：

```yaml
- name: 等待服务启动
  uri:
    url: http://localhost:8080/health
    status_code: 200
  register: result
  until: result.status == 200
  retries: 10
  delay: 5  # 每次重试间隔5秒
```

### 9.4 调试技巧

#### 9.4.1 使用debug模块

```yaml
- name: 显示变量值
  debug:
    var: http_port

- name: 显示自定义消息
  debug:
    msg: "当前环境是: {{ environment }}"

- name: 详细调试（仅在需要时）
  debug:
    var: complex_variable
    verbosity: 2  # 只在-vv或更高详细级别显示
```

#### 9.4.2 使用check模式

检查模式可以预览任务执行而不实际更改系统：

```bash
ansible-playbook playbook.yml --check
```

某些任务可以控制在检查模式下的行为：

```yaml
- name: 创建配置文件
  template:
    src: config.j2
    dest: /etc/app/config.ini
  check_mode: no  # 即使在检查模式下也执行
  
- name: 仅检查配置
  command: app --check-config
  check_mode: yes  # 仅在检查模式下执行
```

#### 9.4.3 使用diff模式

diff模式显示文件更改的详细信息：

```bash
ansible-playbook playbook.yml --diff
```

## 10. 高级Playbook特性

### 10.1 包含和导入

Ansible提供了多种方式来组织和重用Playbook内容：

#### 10.1.1 导入任务

```yaml
# main.yml
- hosts: webservers
  tasks:
    - import_tasks: common.yml
    - import_tasks: apache.yml
      when: install_apache | bool
    - import_tasks: nginx.yml
      when: install_nginx | bool

# common.yml
- name: 安装常用软件包
  apt:
    name:
      - vim
      - curl
      - htop
    state: present

# apache.yml
- name: 安装Apache
  apt:
    name: apache2
    state: present

- name: 启动Apache
  service:
    name: apache2
    state: started
```

#### 10.1.2 包含任务

```yaml
- hosts: webservers
  tasks:
    - include_tasks: db_setup.yml
      vars:
        db_name: "{{ app_name }}_db"
        db_user: "{{ app_name }}_user"
```

#### 10.1.3 导入与包含的区别

| 特性 | import_* | include_* |
|------|----------|-----------|
| 处理时机 | 预处理（静态） | 运行时（动态） |
| 变量 | 不能使用循环变量 | 可以使用循环变量 |
| 条件 | 应用于所有导入的任务 | 仅决定是否包含 |
| 标签 | 传递给导入的任务 | 不传递给包含的任务 |
| 处理程序 | 可以通知导入文件中的处理程序 | 不能通知包含文件中的处理程序 |

#### 10.1.4 导入/包含Playbook

```yaml
# site.yml
- import_playbook: webservers.yml
- import_playbook: dbservers.yml
- import_playbook: monitoring.yml

# webservers.yml
- hosts: webservers
  tasks:
    - name: 安装Web服务器
      # 任务定义
```

### 10.2 角色依赖

在角色的`meta/main.yml`中定义依赖关系：

```yaml
# roles/webserver/meta/main.yml
dependencies:
  - role: common
  - role: nginx
    vars:
      nginx_port: 80
  - role: php
    when: install_php | bool
```

### 10.3 动态包含

使用循环动态包含任务：

```yaml
- include_tasks: "{{ item }}"
  loop:
    - db_setup.yml
    - app_setup.yml
    - web_setup.yml

# 根据操作系统包含不同任务
- include_tasks: "{{ ansible_os_family }}.yml"
```

### 10.4 委派和本地执行

#### 10.4.1 委派任务

```yaml
- name: 将服务器添加到负载均衡器
  shell: /usr/local/bin/add_to_lb.sh {{ inventory_hostname }}
  delegate_to: loadbalancer.example.com
```

#### 10.4.2 本地执行

```yaml
- name: 在控制节点创建备份目录
  file:
    path: /backups/{{ inventory_hostname }}
    state: directory
  delegate_to: localhost
```

#### 10.4.3 运行一次

```yaml
- name: 发送部署通知
  mail:
    subject: "部署完成"
    to: admin@example.com
    body: "应用已成功部署到{{ groups['webservers'] | join(', ') }}"
  delegate_to: localhost
  run_once: true
```

### 10.5 并行执行控制

控制任务的并行执行：

```yaml
# 串行执行（一次一台主机）
- hosts: webservers
  serial: 1
  tasks:
    - name: 更新应用
      # 任务定义

# 批次执行
- hosts: webservers
  serial: 3  # 一次3台主机
  tasks:
    - name: 更新应用
      # 任务定义

# 百分比执行
- hosts: webservers
  serial: "25%"  # 一次执行25%的主机
  tasks:
    - name: 更新应用
      # 任务定义

# 多批次执行
- hosts: webservers
  serial: [1, 3, 5]  # 第一批1台，第二批3台，第三批5台，之后每批5台
  tasks:
    - name: 更新应用
      # 任务定义
```

### 10.6 策略控制

控制任务在主机间的执行策略：

```yaml
# 线性策略（默认）：在所有主机上完成一个任务后再开始下一个任务
- hosts: webservers
  strategy: linear
  tasks:
    # 任务定义

# 自由策略：每台主机独立执行所有任务，不等待其他主机
- hosts: webservers
  strategy: free
  tasks:
    # 任务定义

# 主机失败时的行为
- hosts: webservers
  strategy: linear
  any_errors_fatal: true  # 任何主机失败都会导致整个play失败
  tasks:
    # 任务定义

# 最大失败百分比
- hosts: webservers
  max_fail_percentage: 25  # 允许最多25%的主机失败
  tasks:
    # 任务定义
```

## 11. 实际案例分析

### 11.1 Web应用部署Playbook

```yaml
---
# web_deploy.yml
- name: 部署Web应用
  hosts: webservers
  become: yes
  vars:
    app_name: myapp
    app_version: 1.2.3
    app_repo: https://github.com/example/myapp.git
    app_path: /var/www/{{ app_name }}
    web_user: www-data
    db_name: "{{ app_name }}_db"
    db_user: "{{ app_name }}_user"
    db_password: "{{ vault_db_password }}"
  
  tasks:
    - name: 安装必要的软件包
      apt:
        name:
          - nginx
          - git
          - python3-pip
          - python3-venv
        state: present
        update_cache: yes
      tags: install

    - name: 创建应用目录
      file:
        path: "{{ app_path }}"
        state: directory
        owner: "{{ web_user }}"
        group: "{{ web_user }}"
        mode: '0755'
      tags: setup

    - name: 克隆应用代码
      git:
        repo: "{{ app_repo }}"
        dest: "{{ app_path }}"
        version: "v{{ app_version }}"
      notify: restart application
      tags: deploy

    - name: 创建Python虚拟环境
      pip:
        requirements: "{{ app_path }}/requirements.txt"
        virtualenv: "{{ app_path }}/.venv"
        virtualenv_command: python3 -m venv
      tags: setup

    - name: 配置应用
      template:
        src: templates/config.py.j2
        dest: "{{ app_path }}/config.py"
        owner: "{{ web_user }}"
        group: "{{ web_user }}"
        mode: '0644'
      notify: restart application
      tags: configure

    - name: 配置Nginx
      template:
        src: templates/nginx_site.conf.j2
        dest: /etc/nginx/sites-available/{{ app_name }}
        owner: root
        group: root
        mode: '0644'
      notify: restart nginx
      tags: configure

    - name: 启用Nginx站点
      file:
        src: /etc/nginx/sites-available/{{ app_name }}
        dest: /etc/nginx/sites-enabled/{{ app_name }}
        state: link
      notify: restart nginx
      tags: configure

    - name: 配置应用服务
      template:
        src: templates/app_service.j2
        dest: /etc/systemd/system/{{ app_name }}.service
        owner: root
        group: root
        mode: '0644'
      notify: reload systemd
      tags: configure

    - name: 确保应用服务已启动并启用
      service:
        name: "{{ app_name }}"
        state: started
        enabled: yes
      tags: service

  handlers:
    - name: restart nginx
      service:
        name: nginx
        state: restarted

    - name: reload systemd
      systemd:
        daemon_reload: yes

    - name: restart application
      service:
        name: "{{ app_name }}"
        state: restarted
```

### 11.2 多环境配置Playbook

```yaml
---
# deploy.yml
- name: 部署应用
  hosts: "{{ target_env }}"
  become: yes
  vars_files:
    - vars/common.yml
    - vars/{{ target_env }}.yml
  
  pre_tasks:
    - name: 验证环境变量
      fail:
        msg: "必须指定目标环境，例如：-e target_env=production"
      when: target_env is not defined
      run_once: true
      
    - name: 显示部署信息
      debug:
        msg: "正在部署到{{ target_env }}环境，版本：{{ app_version }}"
      run_once: true
  
  roles:
    - role: common
      tags: common
    
    - role: database
      tags: database
      when: "'dbservers' in group_names"
    
    - role: webserver
      tags: webserver
      when: "'webservers' in group_names"
    
    - role: application
      tags: application
      when: "'appservers' in group_names"
  
  post_tasks:
    - name: 验证部署
      uri:
        url: "https://{{ inventory_hostname }}/health"
        return_content: yes
        validate_certs: yes
        status_code: 200
      register: health_check
      retries: 5
      delay: 10
      until: health_check.status == 200
      when: "'webservers' in group_names"
      
    - name: 发送部署通知
      mail:
        subject: "应用已部署到{{ target_env }}"
        to: "{{ notification_email }}"
        body: "版本{{ app_version }}已成功部署到{{ target_env }}环境。"
      delegate_to: localhost
      run_once: true
      tags: notify
```

### 11.3 系统配置和安全加固Playbook

```yaml
---
# security_hardening.yml
- name: 系统安全加固
  hosts: all
  become: yes
  vars:
    security_level: high  # 可选：low, medium, high
    firewall_enabled: true
    ssh_port: 22
    allowed_ssh_users:
      - admin
      - ansible
    disable_root_login: true
  
  tasks:
    - name: 更新所有软件包
      apt:
        upgrade: dist
        update_cache: yes
      tags: updates
      
    - name: 安装安全相关软件包
      apt:
        name:
          - ufw
          - fail2ban
          - unattended-upgrades
          - auditd
        state: present
      tags: install
      
    - name: 配置自动更新
      template:
        src: templates/20auto-upgrades.j2
        dest: /etc/apt/apt.conf.d/20auto-upgrades
        owner: root
        group: root
        mode: '0644'
      tags: updates
      
    - name: 配置SSH服务
      template:
        src: templates/sshd_config.j2
        dest: /etc/ssh/sshd_config
        owner: root
        group: root
        mode: '0600'
      notify: restart ssh
      tags: ssh
      
    - name: 配置防火墙
      block:
        - name: 设置默认策略
          ufw:
            state: enabled
            policy: deny
            direction: incoming
          
        - name: 允许SSH连接
          ufw:
            rule: allow
            port: "{{ ssh_port }}"
            proto: tcp
          
        - name: 允许已建立的连接
          ufw:
            rule: allow
            direction: incoming
            proto: all
            state: established
      when: firewall_enabled | bool
      tags: firewall
      
    - name: 配置密码策略
      template:
        src: templates/pwquality.conf.j2
        dest: /etc/security/pwquality.conf
        owner: root
        group: root
        mode: '0644'
      when: security_level != 'low'
      tags: password
      
    - name: 配置系统审计
      template:
        src: templates/audit.rules.j2
        dest: /etc/audit/rules.d/audit.rules
        owner: root
        group: root
        mode: '0640'
      notify: restart auditd
      when: security_level == 'high'
      tags: audit
      
    - name: 禁用不必要的服务
      service:
        name: "{{ item }}"
        state: stopped
        enabled: no
      loop:
        - avahi-daemon
        - cups
        - rpcbind
      when: security_level != 'low'
      tags: services
      
    - name: 设置文件权限
      file:
        path: "{{ item.path }}"
        mode: "{{ item.mode }}"
        owner: "{{ item.owner | default('root') }}"
        group: "{{ item.group | default('root') }}"
      loop:
        - { path: '/etc/passwd', mode: '0644' }
        - { path: '/etc/shadow', mode: '0640' }
        - { path: '/etc/gshadow', mode: '0640' }
        - { path: '/etc/group', mode: '0644' }
        - { path: '/etc/ssh', mode: '0700' }
      tags: permissions
  
  handlers:
    - name: restart ssh
      service:
        name: ssh
        state: restarted
        
    - name: restart auditd
      service:
        name: auditd
        state: restarted
```

## 12. 最佳实践和性能优化

### 12.1 Playbook组织最佳实践

1. **使用角色组织代码**：将相关任务、变量和文件组织到角色中
2. **保持Playbook简洁**：主Playbook应简洁明了，复杂逻辑放在角色中
3. **使用有意义的名称**：为play、任务和角色使用描述性名称
4. **使用标签**：为任务添加标签，便于选择性执行
5. **版本控制**：将Playbook和角色纳入版本控制系统
6. **分离变量**：将变量与任务分离，使用vars_files或group_vars/host_vars
7. **使用Ansible Vault保护敏感数据**：加密包含密码和密钥的文件

### 12.2 性能优化技巧

1. **使用fact缓存**：
   ```ini
   # ansible.cfg
   [defaults]
   gathering = smart
   fact_caching = jsonfile
   fact_caching_connection = /tmp/ansible_fact_cache
   fact_caching_timeout = 86400
   ```

2. **减少SSH连接**：
   ```ini
   # ansible.cfg
   [ssh_connection]
   pipelining = True
   ssh_args = -o ControlMaster=auto -o ControlPersist=60s
   ```

3. **并行执行**：
   ```yaml
   - hosts: webservers
     strategy: free
     serial: "30%"
   ```

4. **异步任务**：
   ```yaml
   - name: 长时间运行的任务
     command: /usr/bin/long_running_script.sh
     async: 3600
     poll: 0
   ```

5. **选择性收集facts**：
   ```yaml
   - hosts: webservers
     gather_facts: no
     # 或者
     gather_subset: 
       - '!hardware'
       - '!virtual'
   ```

6. **使用委派和run_once**：
   ```yaml
   - name: 数据库备份
     shell: /usr/local/bin/backup_db.sh
     delegate_to: dbmaster
     run_once: true
   ```

### 12.3 调试和故障排除技巧

1. **使用详细模式**：
   ```bash
   ansible-playbook playbook.yml -v
   ansible-playbook playbook.yml -vv
   ansible-playbook playbook.yml -vvv
   ```

2. **使用检查模式**：
   ```bash
   ansible-playbook playbook.yml --check
   ```

3. **使用diff模式**：
   ```bash
   ansible-playbook playbook.yml --diff
   ```

4. **从特定任务开始**：
   ```bash
   ansible-playbook playbook.yml --start-at-task="配置防火墙"
   ```

5. **使用step模式**：
   ```bash
   ansible-playbook playbook.yml --step
   ```

6. **使用debug模块**：
   ```yaml
   - name: 调试变量
     debug:
       var: complex_variable
       verbosity: 2
   ```

7. **使用自定义回调插件**：
   ```ini
   # ansible.cfg
   [defaults]
   callback_whitelist = profile_tasks, timer
   ```

### 12.4 安全最佳实践

1. **使用Ansible Vault保护敏感数据**：
   ```bash
   # 创建加密文件
   ansible-vault create vars/secrets.yml
   
   # 编辑加密文件
   ansible-vault edit vars/secrets.yml
   
   # 执行带有加密文件的Playbook
   ansible-playbook playbook.yml --ask-vault-pass
   ```

2. **限制权限**：
   ```yaml
   become: yes
   become_user: specific_user
   ```

3. **使用no_log隐藏敏感输出**：
   ```yaml
   - name: 创建数据库用户
     mysql_user:
       name: "{{ db_user }}"
       password: "{{ db_password }}"
       priv: "{{ db_name }}.*:ALL"
       state: present
     no_log: true
   ```

4. **使用SSH密钥认证**：
   ```ini
   # ansible.cfg
   [defaults]
   private_key_file = ~/.ssh/ansible_key
   ```

5. **定期轮换密码和密钥**：
   ```yaml
   - name: 更新系统用户密码
     user:
       name: "{{ item.name }}"
       password: "{{ item.password | password_hash('sha512') }}"
     loop: "{{ user_passwords }}"
     no_log: true
   ```

## 13. 总结

Playbook是Ansible自动化的核心，通过本文的详细介绍，我们学习了：

1. **Playbook基础概念**：了解了Playbook的结构和组成部分
2. **YAML语法**：掌握了编写Playbook所需的YAML语法
3. **Playbook结构**：深入理解了play、任务、处理程序和角色的组织方式
4. **执行流程**：了解了Playbook的执行顺序和控制方法
5. **任务定义与控制**：学习了如何定义任务并使用条件、循环等控制结构
6. **变量和模板**：掌握了变量定义和Jinja2模板的使用
7. **处理程序和通知**：了解了如何使用处理程序响应变更
8. **标签和选择性执行**：学习了如何使用标签选择性执行任务
9. **错误处理和调试**：掌握了错误处理和调试技巧
10. **高级特性**：探索了包含、导入、委派等高级功能
11. **实际案例**：通过实际案例学习了Playbook的应用
12. **最佳实践**：了解了Playbook编写和执行的最佳实践

通过掌握这些知识和技能，您可以编写高效、可维护的Playbook，实现复杂的自动化任务，提高IT运维效率。