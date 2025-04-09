---
title: Ansible命令行工具使用
icon: practice
order: 5
---

# Ansible命令行工具使用

Ansible提供了丰富的命令行工具，本文将详细介绍ansible、ansible-playbook、ansible-vault等核心命令的使用方法、参数选项和最佳实践，帮助读者掌握Ansible日常操作的基本技能。

## 1. Ansible命令行工具概述

Ansible提供了一系列命令行工具，用于执行不同的自动化任务。这些工具各有特点，共同构成了Ansible的完整功能体系。

### 1.1 主要命令行工具

Ansible的核心命令行工具包括：

| 命令 | 主要功能 |
|------|----------|
| ansible | 执行临时命令（ad-hoc commands） |
| ansible-playbook | 执行Playbook脚本 |
| ansible-vault | 加密和管理敏感数据 |
| ansible-galaxy | 管理Ansible角色和集合 |
| ansible-doc | 查看模块文档 |
| ansible-inventory | 显示或导出inventory信息 |
| ansible-config | 查看和管理配置 |
| ansible-console | 交互式命令执行环境 |
| ansible-pull | 从版本控制系统拉取并执行playbook |

### 1.2 命令行工具的共同特点

尽管这些工具功能各异，但它们共享一些共同特点：

1. **一致的语法结构**：大多数Ansible命令遵循类似的参数结构
2. **使用相同的配置文件**：所有工具读取相同的ansible.cfg配置
3. **共享inventory**：使用相同的主机清单文件
4. **模块化设计**：所有工具都基于Ansible的模块系统

### 1.3 命令行帮助

所有Ansible命令都提供了详细的帮助信息，可以通过`--help`选项查看：

```bash
ansible --help
ansible-playbook --help
ansible-vault --help
```

## 2. ansible命令

`ansible`命令用于在指定主机上执行临时命令（ad-hoc commands），是最基本的Ansible命令行工具。

### 2.1 基本语法

`ansible`命令的基本语法如下：

```bash
ansible <主机模式> -m <模块> -a "<模块参数>" [选项]
```

其中：
- `<主机模式>`：指定要执行命令的目标主机或主机组
- `-m <模块>`：指定要使用的模块（默认为command模块）
- `-a "<模块参数>"`：指定传递给模块的参数
- `[选项]`：其他可选参数

### 2.2 常用选项

`ansible`命令支持多种选项，以下是最常用的一些：

| 选项 | 描述 | 示例 |
|------|------|------|
| `-i, --inventory` | 指定inventory文件路径 | `ansible all -i inventory.ini -m ping` |
| `-m, --module-name` | 指定要使用的模块 | `ansible all -m shell -a "uptime"` |
| `-a, --args` | 指定模块参数 | `ansible all -m copy -a "src=file.txt dest=/tmp"` |
| `-u, --user` | 指定远程用户 | `ansible all -u admin -m ping` |
| `-b, --become` | 启用权限提升 | `ansible all -b -m apt -a "name=nginx state=present"` |
| `--become-user` | 指定权限提升的目标用户 | `ansible all -b --become-user=postgres -m shell -a "psql -c 'SELECT version()'"` |
| `-K, --ask-become-pass` | 提示输入权限提升密码 | `ansible all -b -K -m apt -a "update_cache=yes"` |
| `-C, --check` | 检查模式，不做实际更改 | `ansible all -C -m apt -a "name=nginx state=present"` |
| `-v, --verbose` | 增加输出详细程度 | `ansible all -v -m ping` |
| `-f, --forks` | 指定并行进程数 | `ansible all -f 10 -m ping` |
| `-l, --limit` | 限制执行范围 | `ansible webservers -l 'web1:web2' -m ping` |
| `-t, --timeout` | 设置SSH连接超时时间 | `ansible all -t 30 -m ping` |

### 2.3 主机模式

主机模式用于指定目标主机，支持多种格式：

```bash
# 所有主机
ansible all -m ping

# 特定主机组
ansible webservers -m ping

# 多个主机组
ansible 'webservers:dbservers' -m ping

# 排除特定主机组
ansible 'all:!dbservers' -m ping

# 两个组的交集
ansible 'webservers:&production' -m ping

# 使用通配符
ansible '*.example.com' -m ping

# 使用正则表达式
ansible '~(web|db).*\.example\.com' -m ping
```

### 2.4 常用模块示例

以下是一些常用模块的使用示例：

#### 2.4.1 ping模块

测试主机连通性：

```bash
ansible all -m ping
```

输出示例：
```
web1.example.com | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
```

#### 2.4.2 command模块

执行简单命令（不支持管道、重定向等shell特性）：

```bash
ansible all -m command -a "uptime"
ansible webservers -m command -a "free -m"
```

#### 2.4.3 shell模块

执行shell命令（支持管道、重定向等shell特性）：

```bash
ansible all -m shell -a "df -h | grep /dev/sda"
ansible webservers -m shell -a "ps aux | grep nginx | wc -l"
```

#### 2.4.4 copy模块

复制文件到远程主机：

```bash
ansible all -m copy -a "src=/local/path/file.txt dest=/remote/path/file.txt owner=root mode=0644"
```

#### 2.4.5 file模块

管理文件和目录：

```bash
# 创建目录
ansible all -m file -a "path=/tmp/test state=directory mode=0755"

# 创建符号链接
ansible all -m file -a "src=/etc/nginx/sites-available/default dest=/etc/nginx/sites-enabled/default state=link"

# 删除文件
ansible all -m file -a "path=/tmp/test.txt state=absent"
```

#### 2.4.6 apt/yum/dnf模块

管理软件包：

```bash
# 使用apt（Debian/Ubuntu）
ansible debian_servers -m apt -a "name=nginx state=present"

# 使用yum（RHEL/CentOS 7）
ansible rhel7_servers -m yum -a "name=nginx state=latest"

# 使用dnf（RHEL/CentOS 8+）
ansible rhel8_servers -m dnf -a "name=nginx state=present"
```

#### 2.4.7 service模块

管理服务：

```bash
# 启动服务
ansible webservers -m service -a "name=nginx state=started"

# 重启服务
ansible webservers -m service -a "name=nginx state=restarted"

# 停止服务
ansible webservers -m service -a "name=nginx state=stopped"

# 设置开机启动
ansible webservers -m service -a "name=nginx enabled=yes"
```

#### 2.4.8 user模块

管理用户：

```bash
# 创建用户
ansible all -m user -a "name=johndoe shell=/bin/bash groups=sudo append=yes"

# 删除用户
ansible all -m user -a "name=johndoe state=absent remove=yes"
```

#### 2.4.9 setup模块

收集主机信息（facts）：

```bash
# 收集所有facts
ansible web1 -m setup

# 使用过滤器
ansible web1 -m setup -a "filter=ansible_distribution*"
ansible web1 -m setup -a "filter=ansible_memory_mb"
```

### 2.5 实用技巧

#### 2.5.1 使用变量

在ad-hoc命令中使用变量：

```bash
# 使用-e选项传递变量
ansible webservers -m shell -a "echo {{ message }}" -e "message=Hello World"

# 使用多个变量
ansible webservers -m shell -a "echo {{ greeting }} {{ name }}!" -e "greeting=Hello name=Ansible"

# 使用JSON格式变量
ansible webservers -m shell -a "echo {{ user.name }}" -e '{"user": {"name": "John", "role": "admin"}}'

# 从文件加载变量
ansible webservers -m shell -a "echo {{ message }}" -e "@vars.yml"
```

#### 2.5.2 使用注册变量

注册命令输出并使用：

```bash
# 注册变量并显示
ansible web1 -m shell -a "hostname" -o | awk '{print $3}' | xargs -I{} ansible web1 -m debug -a "msg='Hostname is: {}'"
```

#### 2.5.3 批量操作

对多台主机执行相同操作：

```bash
# 批量重启服务
ansible webservers -m service -a "name=nginx state=restarted"

# 批量更新系统
ansible all -b -m apt -a "upgrade=dist update_cache=yes"
```

#### 2.5.4 使用--one-line选项

使用`-o/--one-line`选项简化输出：

```bash
ansible all -m ping -o
```

输出示例：
```
web1.example.com | SUCCESS => {"changed": false, "ping": "pong"}
web2.example.com | SUCCESS => {"changed": false, "ping": "pong"}
```

## 3. ansible-playbook命令

`ansible-playbook`命令用于执行Ansible Playbook，是Ansible最常用的命令之一。

### 3.1 基本语法

`ansible-playbook`命令的基本语法如下：

```bash
ansible-playbook playbook.yml [选项]
```

其中：
- `playbook.yml`：要执行的Playbook文件
- `[选项]`：其他可选参数

### 3.2 常用选项

`ansible-playbook`命令支持多种选项，以下是最常用的一些：

| 选项 | 描述 | 示例 |
|------|------|------|
| `-i, --inventory` | 指定inventory文件路径 | `ansible-playbook -i inventory.ini playbook.yml` |
| `-e, --extra-vars` | 设置额外变量 | `ansible-playbook playbook.yml -e "version=1.23.45 other_var=foo"` |
| `-f, --forks` | 指定并行进程数 | `ansible-playbook -f 10 playbook.yml` |
| `-l, --limit` | 限制执行范围 | `ansible-playbook playbook.yml -l webservers` |
| `-t, --tags` | 只运行特定标签的任务 | `ansible-playbook playbook.yml -t setup,config` |
| `--skip-tags` | 跳过特定标签的任务 | `ansible-playbook playbook.yml --skip-tags cleanup` |
| `-C, --check` | 检查模式，不做实际更改 | `ansible-playbook -C playbook.yml` |
| `-D, --diff` | 显示文件更改的差异 | `ansible-playbook -D playbook.yml` |
| `-v, --verbose` | 增加输出详细程度 | `ansible-playbook -v playbook.yml` |
| `--syntax-check` | 检查playbook语法 | `ansible-playbook --syntax-check playbook.yml` |
| `--list-tasks` | 列出将要执行的所有任务 | `ansible-playbook --list-tasks playbook.yml` |
| `--list-tags` | 列出playbook中的所有标签 | `ansible-playbook --list-tags playbook.yml` |
| `--list-hosts` | 列出将要执行的主机 | `ansible-playbook --list-hosts playbook.yml` |
| `-b, --become` | 启用权限提升 | `ansible-playbook -b playbook.yml` |
| `-K, --ask-become-pass` | 提示输入权限提升密码 | `ansible-playbook -b -K playbook.yml` |
| `--step` | 交互式逐步执行 | `ansible-playbook --step playbook.yml` |
| `--start-at-task` | 从特定任务开始执行 | `ansible-playbook playbook.yml --start-at-task="Install packages"` |

### 3.3 执行Playbook示例

以下是一些执行Playbook的常见示例：

#### 3.3.1 基本执行

执行一个简单的Playbook：

```bash
ansible-playbook site.yml
```

#### 3.3.2 指定Inventory

使用特定的Inventory文件：

```bash
ansible-playbook -i production.ini site.yml
ansible-playbook -i staging.ini site.yml
```

#### 3.3.3 使用变量

传递额外变量：

```bash
# 传递单个变量
ansible-playbook site.yml -e "env=production"

# 传递多个变量
ansible-playbook site.yml -e "env=production version=2.0"

# 使用JSON格式
ansible-playbook site.yml -e '{"env": "production", "db": {"host": "db.example.com", "port": 5432}}'

# 从文件加载变量
ansible-playbook site.yml -e "@vars/production.yml"
```

#### 3.3.4 限制执行范围

限制Playbook只在特定主机上执行：

```bash
# 限制到特定主机组
ansible-playbook site.yml -l webservers

# 限制到特定主机
ansible-playbook site.yml -l web1.example.com

# 使用通配符
ansible-playbook site.yml -l 'web*.example.com'

# 使用多个模式
ansible-playbook site.yml -l 'webservers:&production:!web3.example.com'
```

#### 3.3.5 使用标签

使用标签控制任务执行：

```bash
# 只执行带有特定标签的任务
ansible-playbook site.yml -t setup

# 执行多个标签
ansible-playbook site.yml -t "setup,config"

# 跳过特定标签
ansible-playbook site.yml --skip-tags "restart,cleanup"
```

#### 3.3.6 检查模式

在不做实际更改的情况下检查Playbook：

```bash
# 检查模式
ansible-playbook -C site.yml

# 检查模式并显示差异
ansible-playbook -C -D site.yml
```

#### 3.3.7 调试执行

调试Playbook执行：

```bash
# 显示详细输出
ansible-playbook -v site.yml       # 详细程度级别1
ansible-playbook -vv site.yml      # 详细程度级别2
ansible-playbook -vvv site.yml     # 详细程度级别3
ansible-playbook -vvvv site.yml    # 详细程度级别4

# 逐步执行
ansible-playbook --step site.yml

# 从特定任务开始
ansible-playbook site.yml --start-at-task="Configure firewall"
```

### 3.4 处理Playbook执行结果

Playbook执行后会返回状态码，可以在脚本中使用：

```bash
ansible-playbook site.yml
RESULT=$?

if [ $RESULT -eq 0 ]; then
    echo "Playbook执行成功"
elif [ $RESULT -eq 1 ]; then
    echo "Playbook执行出错"
elif [ $RESULT -eq 2 ]; then
    echo "Playbook执行不完整（有任务失败）"
elif [ $RESULT -eq 3 ]; then
    echo "Playbook执行不完整（有任务不可达）"
elif [ $RESULT -eq 4 ]; then
    echo "Playbook解析错误"
elif [ $RESULT -eq 5 ]; then
    echo "Playbook执行不完整（被用户中断）"
else
    echo "未知错误"
fi
```

### 3.5 实用技巧

#### 3.5.1 使用--syntax-check检查语法

在执行前检查Playbook语法：

```bash
ansible-playbook --syntax-check site.yml
```

#### 3.5.2 使用--list-tasks查看任务

列出Playbook中的所有任务：

```bash
ansible-playbook --list-tasks site.yml
```

输出示例：
```
playbook: site.yml

  play #1 (webservers): Configure Web Servers    TAGS: []
    tasks:
      Install required packages    TAGS: [packages]
      Configure nginx    TAGS: [config, nginx]
      Start nginx service    TAGS: [service, nginx]

  play #2 (dbservers): Configure Database Servers    TAGS: []
    tasks:
      Install PostgreSQL    TAGS: [packages, postgresql]
      Configure PostgreSQL    TAGS: [config, postgresql]
      Start PostgreSQL service    TAGS: [service, postgresql]
```

#### 3.5.3 使用--list-hosts查看目标主机

列出Playbook将要执行的主机：

```bash
ansible-playbook --list-hosts site.yml
```

输出示例：
```
playbook: site.yml

  play #1 (webservers): Configure Web Servers    TAGS: []
    pattern: ['webservers']
    hosts (3):
      web1.example.com
      web2.example.com
      web3.example.com

  play #2 (dbservers): Configure Database Servers    TAGS: []
    pattern: ['dbservers']
    hosts (2):
      db1.example.com
      db2.example.com
```

#### 3.5.4 使用--list-tags查看标签

列出Playbook中的所有标签：

```bash
ansible-playbook --list-tags site.yml
```

输出示例：
```
playbook: site.yml

  play #1 (webservers): Configure Web Servers    TAGS: []
      TASK TAGS: [config, nginx, packages, service]

  play #2 (dbservers): Configure Database Servers    TAGS: []
      TASK TAGS: [config, packages, postgresql, service]
```

#### 3.5.5 使用--flush-cache清除缓存

清除facts缓存：

```bash
ansible-playbook --flush-cache site.yml
```

## 4. ansible-vault命令

`ansible-vault`命令用于加密和管理敏感数据，如密码、API密钥等。

### 4.1 基本语法

`ansible-vault`命令的基本语法如下：

```bash
ansible-vault [操作] [选项] [文件...]
```

其中：
- `[操作]`：要执行的操作（create, encrypt, decrypt, edit, view, rekey）
- `[选项]`：其他可选参数
- `[文件...]`：要操作的文件

### 4.2 常用操作

`ansible-vault`支持以下常用操作：

| 操作 | 描述 | 示例 |
|------|------|------|
| create | 创建新的加密文件 | `ansible-vault create secret.yml` |
| encrypt | 加密现有文件 | `ansible-vault encrypt plain.yml` |
| decrypt | 解密文件 | `ansible-vault decrypt secret.yml` |
| view | 查看加密文件内容 | `ansible-vault view secret.yml` |
| edit | 编辑加密文件 | `ansible-vault edit secret.yml` |
| rekey | 更改加密密码 | `ansible-vault rekey secret.yml` |
| encrypt_string | 加密单个字符串 | `ansible-vault encrypt_string 'secret_value' --name 'api_key'` |

### 4.3 常用选项

`ansible-vault`命令支持多种选项，以下是最常用的一些：

| 选项 | 描述 | 示例 |
|------|------|------|
| `--ask-vault-pass` | 提示输入vault密码 | `ansible-vault edit --ask-vault-pass secret.yml` |
| `--vault-password-file` | 指定包含vault密码的文件 | `ansible-vault edit --vault-password-file ~/.vault_pass secret.yml` |
| `--vault-id` | 指定vault ID和密码源 | `ansible-vault edit --vault-id prod@~/.vault_pass_prod secret.yml` |
| `--new-vault-password-file` | 指定新密码文件（用于rekey） | `ansible-vault rekey --vault-password-file old.txt --new-vault-password-file new.txt secret.yml` |
| `--output` | 指定输出文件 | `ansible-vault decrypt secret.yml --output plain.yml` |

### 4.4 使用示例

以下是一些`ansible-vault`的使用示例：

#### 4.4.1 创建加密文件

创建一个新的加密文件：

```bash
ansible-vault create credentials.yml
```

这将打开默认编辑器，输入内容后保存。文件内容可以是普通的YAML格式：

```yaml
---
db_password: supersecret123
api_key: abcdef123456
admin_password: adminpass789
```

#### 4.4.2 加密现有文件

加密一个已存在的文件：

```bash
ansible-vault encrypt plain_vars.yml
```

#### 4.4.3 查看加密文件

查看加密文件的内容：

```bash
ansible-vault view credentials.yml
```

#### 4.4.4 编辑加密文件

编辑加密文件：

```bash
ansible-vault edit credentials.yml
```

#### 4.4.5 解密文件

解密加密文件：

```bash
ansible-vault decrypt credentials.yml
```

#### 4.4.6 更改加密密码

更改文件的加密密码：

```bash
ansible-vault rekey credentials.yml
```

#### 4.4.7 加密单个字符串

加密单个字符串值：

```bash
ansible-vault encrypt_string 'supersecret123' --name 'db_password'
```

输出示例：
```yaml
db_password: !vault |
          $ANSIBLE_VAULT;1.1;AES256
          66386439653236336462626566653063336164663966303231363934653561363964363833313662
          6431626536303530376336343832656537303632313433360a626438346336353331386135323734
          62656361653630373231613662633962316233633936396165386439616533353965373339616234
          3430613539666330390a313736323265656432366236633330313963326365653937323833366536
          3161
```

这个输出可以直接复制到YAML文件中使用。

### 4.5 在Playbook中使用加密数据

使用加密文件或字符串时，需要提供密码：

```bash
# 使用交互式密码提示
ansible-playbook site.yml --ask-vault-pass

# 使用密码文件
ansible-playbook site.yml --vault-password-file ~/.vault_pass

# 使用环境变量
ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass ansible-playbook site.yml
```

### 4.6 多密码管理

Ansible Vault支持使用多个不同的密码加密不同的文件，通过vault ID实现：

```bash
# 使用不同ID创建加密文件
ansible-vault create --vault-id dev@prompt dev_secrets.yml
ansible-vault create --vault-id prod@prompt prod_secrets.yml

# 使用多个密码文件执行playbook
ansible-playbook site.yml --vault-id dev@~/.vault_pass_dev --vault-id prod@~/.vault_pass_prod
```

### 4.7 密码文件安全

密码文件应该受到严格保护：

```bash
# 创建安全的密码文件
echo "your_secure_password" > ~/.vault_pass
chmod 600 ~/.vault_pass

# 使用脚本获取密码
cat > ~/.vault_pass.py << 'EOF'
#!/usr/bin/env python
import os
print(os.environ.get('ANSIBLE_VAULT_PASSWORD', 'default_password'))
EOF
chmod 700 ~/.vault_pass.py

# 使用密码脚本
export ANSIBLE_VAULT_PASSWORD=your_secure_password
ansible-playbook site.yml --vault-password-file ~/.vault_pass.py
```

## 5. ansible-galaxy命令

`ansible-galaxy`命令用于管理Ansible角色和集合，可以从Ansible Galaxy（社区共享平台）下载、创建和共享内容。

### 5.1 基本语法

`ansible-galaxy`命令的基本语法如下：

```bash
ansible-galaxy [类型] [操作] [选项]
```

其中：
- `[类型]`：操作的类型（role或collection）
- `[操作]`：要执行的操作（install, init, list等）
- `[选项]`：其他可选参数

### 5.2 角色管理

#### 5.2.1 安装角色

从Ansible Galaxy安装角色：

```bash
# 安装单个角色
ansible-galaxy role install geerlingguy.nginx

# 安装特定版本
ansible-galaxy role install geerlingguy.nginx,2.8.0

# 安装多个角色
ansible-galaxy role install -r requirements.yml
```

requirements.yml示例：
```yaml
---
# 从Galaxy安装
- name: geerlingguy.nginx
  version: 2.8.0

# 从GitHub安装
- name: username.rolename
  src: https://github.com/username/rolename
  version: master

# 从本地或URL安装
- name: custom_role
  src: /path/to/role/archive.tar.gz
```

#### 5.2.2 创建新角色

创建新的角色结构：

```bash
ansible-galaxy role init my_custom_role
```

这将创建以下目录结构：

```
my_custom_role/
├── defaults/
│   └── main.yml
├── files/
├── handlers/
│   └── main.yml
├── meta/
│   └── main.yml
├── README.md
├── tasks/
│   └── main.yml
├── templates/
├── tests/
│   ├── inventory
│   └── test.yml
└── vars/
    └── main.yml
```

#### 5.2.3 列出已安装角色

列出系统中已安装的角色：

```bash
ansible-galaxy role list
```

#### 5.2.4 删除角色

删除已安装的角色：

```bash
ansible-galaxy role remove geerlingguy.nginx
```

#### 5.2.5 搜索角色

搜索Ansible Galaxy中的角色：

```bash
ansible-galaxy role search nginx
ansible-galaxy role search database --author geerlingguy
```

### 5.3 集合管理

Ansible集合（Collections）是Ansible内容的分发格式，包含playbook、角色、模块和插件。

#### 5.3.1 安装集合

从Ansible Galaxy安装集合：

```bash
# 安装单个集合
ansible-galaxy collection install community.general

# 安装特定版本
ansible-galaxy collection install community.general:3.0.0

# 安装多个集合
ansible-galaxy collection install -r requirements.yml
```

requirements.yml示例：
```yaml
---
collections:
  # 从Galaxy安装
  - name: community.general
    version: 3.0.0
  
  # 从URL安装
  - name: community.network
    source: https://galaxy.ansible.com
  
  # 从tarball安装
  - name: my_namespace.my_collection
    source: /path/to/collection.tar.gz
```

#### 5.3.2 创建新集合

创建新的集合结构：

```bash
ansible-galaxy collection init my_namespace.my_collection
```

这将创建以下目录结构：

```
my_namespace/my_collection/
├── docs/
├── galaxy.yml
├── plugins/
│   ├── modules/
│   ├── inventory/
│   └── ...
├── README.md
└── roles/
```

#### 5.3.3 列出已安装集合

列出系统中已安装的集合：

```bash
ansible-galaxy collection list
```

#### 5.3.4 构建集合

构建集合以便分发：

```bash
ansible-galaxy collection build my_namespace/my_collection
```

### 5.4 常用选项

`ansible-galaxy`命令支持多种选项，以下是最常用的一些：

| 选项 | 描述 | 示例 |
|------|------|------|
让我继续完成关于Ansible命令行工具的内容：

| 选项 | 描述 | 示例 |
|------|------|------|
| `-p, --roles-path` | 指定角色安装路径 | `ansible-galaxy role install -p ./roles geerlingguy.nginx` |
| `-s, --server` | 指定Galaxy服务器URL | `ansible-galaxy role install -s https://galaxy.example.com geerlingguy.nginx` |
| `-f, --force` | 强制覆盖现有角色 | `ansible-galaxy role install -f geerlingguy.nginx` |
| `-c, --ignore-certs` | 忽略SSL证书验证 | `ansible-galaxy role install -c geerlingguy.nginx` |
| `-r, --role-file` | 指定requirements文件 | `ansible-galaxy role install -r requirements.yml` |
| `-v, --verbose` | 增加输出详细程度 | `ansible-galaxy role install -v geerlingguy.nginx` |
| `--offline` | 离线模式 | `ansible-galaxy collection list --offline` |

## 6. ansible-doc命令

`ansible-doc`命令用于查看Ansible模块、插件和其他组件的文档。

### 6.1 基本语法

`ansible-doc`命令的基本语法如下：

```bash
ansible-doc [选项] [名称...]
```

其中：
- `[选项]`：其他可选参数
- `[名称...]`：要查看文档的模块或插件名称

### 6.2 常用选项

`ansible-doc`命令支持多种选项，以下是最常用的一些：

| 选项 | 描述 | 示例 |
|------|------|------|
| `-l, --list` | 列出可用模块 | `ansible-doc -l` |
| `-s, --snippet` | 显示模块的使用片段 | `ansible-doc -s copy` |
| `-t, --type` | 指定文档类型 | `ansible-doc -t lookup file` |
| `-j, --json` | 以JSON格式输出 | `ansible-doc -j copy` |
| `--playbook-dir` | 指定playbook目录 | `ansible-doc --playbook-dir ./playbooks copy` |

### 6.3 使用示例

以下是一些`ansible-doc`的使用示例：

#### 6.3.1 查看模块文档

查看特定模块的详细文档：

```bash
ansible-doc copy
ansible-doc apt
ansible-doc yum
```

#### 6.3.2 列出可用模块

列出所有可用的模块：

```bash
ansible-doc -l
```

使用grep过滤特定模块：

```bash
ansible-doc -l | grep ^file
ansible-doc -l | grep aws
```

#### 6.3.3 显示模块使用片段

显示模块的使用代码片段：

```bash
ansible-doc -s copy
```

输出示例：
```yaml
- name: Copy files to remote locations
  copy:
      backup:                  # Create a backup file including the timestamp information
      content:                 # When used instead of 'src', sets the contents of a file directly to the specified value
      decrypt:                 # This option controls the autodecryption of source files
      dest:                    # (required) Remote absolute path where the file should be copied to
      directory_mode:          # When doing a recursive copy set the mode for the directories
      follow:                  # This flag indicates that filesystem links in the destination, if they exist, should be followed
      force:                   # Influence whether the remote file must always be replaced
      group:                   # Name of the group that should own the file/directory, as would be fed to chown
      local_follow:            # This flag indicates that filesystem links in the source tree, if they exist, should be followed
      mode:                    # The permissions of the destination file or directory
      owner:                   # Name of the user that should own the file/directory, as would be fed to chown
      remote_src:              # If False, it will search for src at originating/controller machine
      src:                     # Local path to a file to copy to the remote server
      unsafe_writes:           # Influence when to use atomic operation to prevent data corruption or inconsistent reads from the target
      validate:                # The validation command to run before copying into place
```

#### 6.3.4 查看不同类型的插件

查看不同类型的插件文档：

```bash
# 查看lookup插件
ansible-doc -t lookup file

# 查看filter插件
ansible-doc -t filter to_yaml

# 查看connection插件
ansible-doc -t connection ssh
```

#### 6.3.5 以JSON格式输出

以JSON格式输出模块文档：

```bash
ansible-doc -j copy > copy_doc.json
```

## 7. ansible-inventory命令

`ansible-inventory`命令用于显示或导出inventory信息。

### 7.1 基本语法

`ansible-inventory`命令的基本语法如下：

```bash
ansible-inventory [选项]
```

### 7.2 常用选项

`ansible-inventory`命令支持多种选项，以下是最常用的一些：

| 选项 | 描述 | 示例 |
|------|------|------|
| `-i, --inventory` | 指定inventory源 | `ansible-inventory -i inventory.ini --list` |
| `--list` | 以JSON格式列出所有主机信息 | `ansible-inventory --list` |
| `--host` | 显示特定主机的变量 | `ansible-inventory --host web1.example.com` |
| `--graph` | 以图形方式显示inventory | `ansible-inventory --graph` |
| `-y, --yaml` | 以YAML格式输出 | `ansible-inventory --list -y` |
| `--output` | 将输出写入文件 | `ansible-inventory --list --output=inventory.json` |
| `--toml` | 以TOML格式输出 | `ansible-inventory --list --toml` |

### 7.3 使用示例

以下是一些`ansible-inventory`的使用示例：

#### 7.3.1 列出所有主机

以JSON格式列出所有主机和组：

```bash
ansible-inventory --list
```

输出示例（简化）：
```json
{
  "_meta": {
    "hostvars": {
      "web1.example.com": {
        "ansible_host": "192.168.1.101",
        "http_port": 80
      },
      "web2.example.com": {
        "ansible_host": "192.168.1.102"
      }
    }
  },
  "all": {
    "children": ["ungrouped", "webservers", "dbservers"]
  },
  "webservers": {
    "hosts": ["web1.example.com", "web2.example.com"]
  },
  "dbservers": {
    "hosts": ["db1.example.com"]
  }
}
```

#### 7.3.2 以YAML格式输出

以YAML格式列出所有主机和组：

```bash
ansible-inventory --list -y
```

#### 7.3.3 查看特定主机的变量

显示特定主机的所有变量：

```bash
ansible-inventory --host web1.example.com
```

输出示例：
```json
{
  "ansible_host": "192.168.1.101",
  "http_port": 80,
  "app_env": "production"
}
```

#### 7.3.4 以图形方式显示inventory

以树状图形方式显示inventory结构：

```bash
ansible-inventory --graph
```

输出示例：
```
@all:
  |--@ungrouped:
  |--@webservers:
  |  |--web1.example.com
  |  |--web2.example.com
  |--@dbservers:
  |  |--db1.example.com
```

#### 7.3.5 导出inventory到文件

将inventory导出到文件：

```bash
ansible-inventory --list --output=inventory.json
ansible-inventory --list -y --output=inventory.yml
```

#### 7.3.6 使用多个inventory源

使用多个inventory源并合并结果：

```bash
ansible-inventory -i inventory1.ini -i inventory2.yml --list
```

## 8. ansible-config命令

`ansible-config`命令用于查看和管理Ansible配置。

### 8.1 基本语法

`ansible-config`命令的基本语法如下：

```bash
ansible-config [操作] [选项]
```

其中：
- `[操作]`：要执行的操作（dump, list, view, init）
- `[选项]`：其他可选参数

### 8.2 常用操作

`ansible-config`支持以下常用操作：

| 操作 | 描述 | 示例 |
|------|------|------|
| dump | 显示当前配置 | `ansible-config dump` |
| list | 列出所有配置选项 | `ansible-config list` |
| view | 查看配置文件 | `ansible-config view` |
| init | 创建配置文件模板 | `ansible-config init --disabled > ansible.cfg` |

### 8.3 常用选项

`ansible-config`命令支持多种选项，以下是最常用的一些：

| 选项 | 描述 | 示例 |
|------|------|------|
| `--only-changed` | 只显示已更改的配置 | `ansible-config dump --only-changed` |
| `-t, --type` | 指定配置类型 | `ansible-config list -t connection` |
| `-c, --config` | 指定配置文件 | `ansible-config dump -c ./ansible.cfg` |
| `-f, --format` | 指定输出格式 | `ansible-config dump -f json` |

### 8.4 使用示例

以下是一些`ansible-config`的使用示例：

#### 8.4.1 显示当前配置

显示当前生效的所有配置：

```bash
ansible-config dump
```

只显示已更改的配置（非默认值）：

```bash
ansible-config dump --only-changed
```

以JSON格式输出配置：

```bash
ansible-config dump -f json
```

#### 8.4.2 查看特定配置项

查看特定配置项的值：

```bash
ansible-config dump | grep DEFAULT_HOST_LIST
ansible-config dump | grep INVENTORY_ENABLED
```

#### 8.4.3 列出所有配置选项

列出所有可用的配置选项及其说明：

```bash
ansible-config list
```

列出特定类型的配置选项：

```bash
ansible-config list -t connection
ansible-config list -t inventory
```

#### 8.4.4 查看配置文件

查看当前使用的配置文件内容：

```bash
ansible-config view
```

#### 8.4.5 创建配置文件模板

创建一个包含所有配置选项的模板（默认禁用）：

```bash
ansible-config init --disabled > ansible.cfg
```

创建一个包含所有配置选项的模板（默认启用）：

```bash
ansible-config init > ansible.cfg
```

## 9. ansible-console命令

`ansible-console`命令提供了一个交互式命令执行环境，可以连续执行多个命令而无需重复输入`ansible`。

### 9.1 基本语法

`ansible-console`命令的基本语法如下：

```bash
ansible-console [选项] [主机模式]
```

其中：
- `[选项]`：其他可选参数
- `[主机模式]`：指定目标主机或主机组（默认为all）

### 9.2 常用选项

`ansible-console`命令支持与`ansible`命令相同的大多数选项，以下是最常用的一些：

| 选项 | 描述 | 示例 |
|------|------|------|
| `-i, --inventory` | 指定inventory文件路径 | `ansible-console -i inventory.ini` |
| `-u, --user` | 指定远程用户 | `ansible-console -u admin` |
| `-b, --become` | 启用权限提升 | `ansible-console -b` |
| `-K, --ask-become-pass` | 提示输入权限提升密码 | `ansible-console -b -K` |
| `-m, --module-path` | 指定模块路径 | `ansible-console -m /path/to/modules` |
| `-v, --verbose` | 增加输出详细程度 | `ansible-console -v` |

### 9.3 使用示例

以下是一些`ansible-console`的使用示例：

#### 9.3.1 启动控制台

启动针对所有主机的控制台：

```bash
ansible-console
```

启动针对特定主机组的控制台：

```bash
ansible-console webservers
```

#### 9.3.2 控制台命令

在控制台中执行命令：

```
# 切换目标主机
cd webservers

# 执行ping模块
ping

# 执行command模块
command uptime

# 执行shell模块
shell df -h

# 执行setup模块
setup

# 使用过滤器
setup filter=ansible_distribution*

# 查看可用模块
list

# 获取帮助
help

# 退出控制台
exit
```

#### 9.3.3 控制台技巧

在控制台中使用变量：

```
# 设置变量
set pkg_name nginx

# 使用变量
apt name={{pkg_name}} state=present
```

使用forks参数控制并行度：

```
# 设置并行度
forks 10

# 执行命令
ping
```

## 10. ansible-pull命令

`ansible-pull`命令实现了Ansible的拉取模式，从版本控制系统中拉取配置并在本地执行。

### 10.1 基本语法

`ansible-pull`命令的基本语法如下：

```bash
ansible-pull -U <repository> [选项]
```

其中：
- `-U <repository>`：指定要拉取的Git仓库URL
- `[选项]`：其他可选参数

### 10.2 常用选项

`ansible-pull`命令支持多种选项，以下是最常用的一些：

| 选项 | 描述 | 示例 |
|------|------|------|
| `-U, --url` | 指定Git仓库URL | `ansible-pull -U https://github.com/example/ansible.git` |
| `-d, --directory` | 指定本地工作目录 | `ansible-pull -U repo_url -d /opt/ansible` |
| `-C, --checkout` | 指定要检出的分支/标签/提交 | `ansible-pull -U repo_url -C production` |
| `-f, --force` | 强制拉取，即使本地已有更新 | `ansible-pull -U repo_url -f` |
| `-i, --inventory` | 指定inventory文件 | `ansible-pull -U repo_url -i inventory.ini` |
| `-m, --module-name` | 指定版本控制模块 | `ansible-pull -U repo_url -m git` |
| `-o, --only-if-changed` | 仅当仓库有更改时才运行playbook | `ansible-pull -U repo_url -o` |
| `--accept-host-key` | 自动接受SSH主机密钥 | `ansible-pull -U repo_url --accept-host-key` |
| `--private-key` | 指定私钥文件 | `ansible-pull -U repo_url --private-key=~/.ssh/id_rsa` |
| `--purge` | 在运行后删除本地仓库 | `ansible-pull -U repo_url --purge` |
| `--clean` | 在拉取前清理本地仓库 | `ansible-pull -U repo_url --clean` |
| `--full` | 执行完整克隆而非更新 | `ansible-pull -U repo_url --full` |
| `--verify-commit` | 验证签名的提交 | `ansible-pull -U repo_url --verify-commit` |

### 10.3 使用示例

以下是一些`ansible-pull`的使用示例：

#### 10.3.1 基本用法

从Git仓库拉取并执行默认playbook（local.yml）：

```bash
ansible-pull -U https://github.com/example/ansible-config.git
```

#### 10.3.2 指定playbook

从Git仓库拉取并执行特定playbook：

```bash
ansible-pull -U https://github.com/example/ansible-config.git playbooks/site.yml
```

#### 10.3.3 指定分支和工作目录

从特定分支拉取并使用自定义工作目录：

```bash
ansible-pull -U https://github.com/example/ansible-config.git -C develop -d /opt/ansible-config
```

#### 10.3.4 设置定时任务

设置cron任务定期执行ansible-pull：

```bash
# 编辑crontab
crontab -e

# 添加以下行（每小时执行一次）
0 * * * * ansible-pull -U https://github.com/example/ansible-config.git > /var/log/ansible-pull.log 2>&1
```

#### 10.3.5 使用私有仓库

从私有Git仓库拉取（使用SSH密钥）：

```bash
ansible-pull -U git@github.com:example/private-ansible-config.git --private-key=~/.ssh/github_key
```

#### 10.3.6 仅在有更改时执行

仅当仓库有更改时才执行playbook：

```bash
ansible-pull -U https://github.com/example/ansible-config.git -o
```

## 11. 命令行工具最佳实践

在使用Ansible命令行工具时，以下是一些最佳实践，可以提高效率和可维护性。

### 11.1 通用最佳实践

#### 11.1.1 使用配置文件

创建项目特定的ansible.cfg文件，避免重复输入常用选项：

```ini
# ansible.cfg
[defaults]
inventory = ./inventory
remote_user = ansible
host_key_checking = False
forks = 10
log_path = ./ansible.log

[privilege_escalation]
become = True
become_method = sudo
become_user = root
become_ask_pass = False
```

#### 11.1.2 使用别名

为常用命令创建别名：

```bash
# 添加到~/.bashrc或~/.bash_aliases
alias ap='ansible-playbook'
alias apc='ansible-playbook --check'
alias apcd='ansible-playbook --check --diff'
alias av='ansible-vault'
alias alist='ansible-inventory --list'
alias agraph='ansible-inventory --graph'
```

#### 11.1.3 使用环境变量

使用环境变量设置常用选项：

```bash
export ANSIBLE_INVENTORY=./inventory
export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass
export ANSIBLE_HOST_KEY_CHECKING=False
```

### 11.2 ad-hoc命令最佳实践

#### 11.2.1 使用-o选项简化输出

使用`-o/--one-line`选项使输出更紧凑：

```bash
ansible all -m ping -o
```

#### 11.2.2 使用shell脚本组合命令

创建shell脚本组合多个ad-hoc命令：

```bash
#!/bin/bash
# server_check.sh

echo "=== 检查服务器状态 ==="
ansible all -m ping -o

echo "=== 检查磁盘空间 ==="
ansible all -m shell -a "df -h" -o

echo "=== 检查内存使用 ==="
ansible all -m shell -a "free -m" -o

echo "=== 检查负载 ==="
ansible all -m shell -a "uptime" -o

echo "=== 检查服务状态 ==="
ansible all -m service -a "name=nginx state=started" -o
```

#### 11.2.3 使用--limit精确控制范围

使用`--limit`选项限制命令执行范围：

```bash
# 从文件读取主机列表
ansible all -m ping --limit @hosts_to_update.txt

# 使用正则表达式
ansible all -m ping --limit '~web[0-9]+\.example\.com'
```

### 11.3 Playbook执行最佳实践

#### 11.3.1 先检查后执行

在实际执行前使用检查模式：

```bash
# 检查语法
ansible-playbook --syntax-check site.yml

# 检查执行计划
ansible-playbook --check site.yml

# 检查并显示差异
ansible-playbook --check --diff site.yml
```

#### 11.3.2 使用标签控制执行

使用标签精确控制任务执行：

```yaml
# 在playbook中使用标签
- name: 安装软件包
  apt:
    name: nginx
    state: present
  tags: [packages, nginx]
```

```bash
# 只执行特定标签
ansible-playbook site.yml --tags nginx

# 跳过特定标签
ansible-playbook site.yml --skip-tags cleanup
```

#### 11.3.3 使用变量文件

为不同环境使用不同的变量文件：

```bash
# 开发环境
ansible-playbook site.yml -e @vars/dev.yml

# 生产环境
ansible-playbook site.yml -e @vars/prod.yml
```

#### 11.3.4 使用--start-at-task恢复执行

从失败点恢复执行：

```bash
ansible-playbook site.yml --start-at-task="配置防火墙"
```

### 11.4 Vault使用最佳实践

#### 11.4.1 分离敏感数据

将敏感数据与其他配置分离：

```
group_vars/
├── all/
│   ├── vars.yml           # 非敏感变量
│   └── vault.yml          # 加密的敏感变量
```

#### 11.4.2 使用多个Vault ID

为不同环境或用途使用不同的Vault ID：

```bash
# 创建不同环境的加密文件
ansible-vault create --vault-id dev@prompt group_vars/dev/vault.yml
ansible-vault create --vault-id prod@prompt group_vars/prod/vault.yml

# 执行playbook时使用多个密码
ansible-playbook site.yml --vault-id dev@~/.vault_pass_dev --vault-id prod@~/.vault_pass_prod
```

#### 11.4.3 安全存储密码

使用密码管理器或安全存储机制管理Vault密码：

```bash
#!/bin/bash
# ~/.vault_pass.sh
# 从密码管理器获取密码
pass show ansible/vault_password
```

```bash
chmod 700 ~/.vault_pass.sh
ansible-playbook site.yml --vault-password-file=~/.vault_pass.sh
```

### 11.5 调试和故障排除

#### 11.5.1 使用详细模式

使用不同级别的详细模式进行调试：

```bash
ansible-playbook -v site.yml     # 详细程度级别1
ansible-playbook -vv site.yml    # 详细程度级别2
ansible-playbook -vvv site.yml   # 详细程度级别3
ansible-playbook -vvvv site.yml  # 详细程度级别4（连接调试）
```

#### 11.5.2 使用debug模块

在playbook中使用debug模块输出变量：

```yaml
- name: 调试变量
  debug:
    var: ansible_distribution
    verbosity: 1  # 只在-v及以上级别显示
```

#### 11.5.3 使用--step逐步执行

使用`--step`选项逐步执行playbook：

```bash
ansible-playbook --step site.yml
```

#### 11.5.4 保存详细日志

将详细日志保存到文件：

```bash
ansible-playbook -vvv site.yml 2>&1 | tee ansible_debug.log
```

## 12. 总结

Ansible命令行工具提供了丰富的功能，可以满足从简单的ad-hoc命令到复杂的自动化部署的各种需求。通过掌握这些工具的使用方法和最佳实践，可以显著提高IT自动化的效率和可靠性。

### 12.1 命令行工具对照表

| 命令 | 主要用途 | 常见使用场景 |
|------|----------|--------------|
| ansible | 执行临时命令 | 快速检查、简单操作、临时修复 |
| ansible-playbook | 执行playbook | 复杂部署、配置管理、应用发布 |
| ansible-vault | 加密敏感数据 | 保护密码、密钥、证书等敏感信息 |
| ansible-galaxy | 管理角色和集合 | 下载社区角色、创建自定义角色 |
| ansible-doc | 查看文档 | 学习模块用法、查看参数选项 |
| ansible-inventory | 管理inventory | 检查主机分组、导出inventory数据 |
| ansible-config | 管理配置 | 查看配置选项、生成配置模板 |
| ansible-console | 交互式执行 | 连续执行多个命令、交互式调试 |
| ansible-pull | 拉取模式执行 | 大规模部署、客户端自我配置 |

### 12.2 进阶学习建议

1. **深入学习模块**：使用`ansible-doc`探索更多模块的功能和用法
2. **编写自定义模块**：学习如何编写自定义Ansible模块
3. **集成CI/CD**：将Ansible命令集成到CI/CD流程中
4. **学习AWX/Tower**：探索Ansible的Web界面和企业级功能
5. **自动化测试**：学习如何测试Ansible playbook和角色

通过熟练掌握Ansible命令行工具，您可以更高效地管理基础设施，实现自动化部署和配置管理，从而减少人为错误，提高系统的可靠性和一致性。