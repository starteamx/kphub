---
title: Linux安全模型概述
icon: theory
order: 1
---

# Linux安全模型概述

Linux系统采用了多层次的安全模型，为系统提供全面的安全保障。本文将详细介绍Linux安全架构、权限模型和安全子系统等核心内容，帮助读者理解Linux安全体系的基本原理和设计思想。

## Linux安全架构

Linux的安全架构是一个多层次、纵深防御的体系，主要包括以下几个层面：

1. **用户与权限系统**：基于用户、组和权限的基础安全模型
2. **文件系统安全**：文件权限、属性和访问控制列表
3. **进程隔离**：进程地址空间隔离和资源限制
4. **内核安全机制**：系统调用过滤、能力系统等
5. **安全子系统**：如SELinux、AppArmor等强制访问控制系统

### 安全架构层次结构

Linux安全架构可以从底层到顶层分为以下几个层次：

```
┌─────────────────────────────────────────┐
│           应用层安全控制                │
│  (应用防火墙、入侵检测、安全审计工具)   │
├─────────────────────────────────────────┤
│           强制访问控制                  │
│      (SELinux、AppArmor、TOMOYO)        │
├─────────────────────────────────────────┤
│           自主访问控制                  │
│    (文件权限、ACL、用户/组权限系统)     │
├─────────────────────────────────────────┤
│           内核安全机制                  │
│    (能力系统、Seccomp、命名空间隔离)    │
├─────────────────────────────────────────┤
│           硬件安全基础                  │
│    (内存保护、CPU安全特性、TPM等)       │
└─────────────────────────────────────────┘
```

这种多层次的安全架构遵循"纵深防御"原则，即使某一层的安全机制被突破，其他层次的防御机制仍然可以提供保护。

## 基础权限模型

Linux的基础权限模型是一种自主访问控制(DAC, Discretionary Access Control)系统，主要基于用户、组和文件权限三个核心概念。

### 用户与组

Linux系统中的每个用户都有一个唯一的用户ID(UID)和一个主组ID(GID)。用户可以同时属于多个组，这些组被称为附加组。

```bash
# 查看当前用户信息
id

# 查看系统中的所有用户
cat /etc/passwd

# 查看系统中的所有组
cat /etc/group
```

特殊用户：
- **root用户(UID 0)**：超级用户，拥有系统的完全控制权
- **系统用户(UID 1-999)**：用于运行系统服务的用户，通常不允许登录
- **普通用户(UID 1000+)**：普通用户账户，用于日常使用

### 文件权限

Linux文件权限模型使用三组权限位来控制对文件和目录的访问：

```
类型 │ 所有者权限 │ 所属组权限 │ 其他用户权限
 d   │    rwx     │    r-x     │     r--
```

每组权限包含三个位：
- **r (读)**：允许读取文件内容或列出目录内容
- **w (写)**：允许修改文件内容或在目录中创建/删除文件
- **x (执行)**：允许执行文件或访问目录内的文件

文件权限可以用数字表示：
- r = 4
- w = 2
- x = 1

例如，权限"rwxr-xr--"可以表示为754。

```bash
# 查看文件权限
ls -l file.txt

# 修改文件权限
chmod 754 file.txt  # 数字方式
chmod u=rwx,g=rx,o=r file.txt  # 符号方式
```

对于目录，权限的含义略有不同：
- **r**：允许列出目录内容
- **w**：允许在目录中创建、删除或重命名文件
- **x**：允许访问目录内的文件和子目录

### 特殊权限位

除了基本的rwx权限外，Linux还提供了三个特殊权限位：

1. **SUID (Set User ID)**：当文件被执行时，进程的有效用户ID会被设置为文件所有者的ID
   ```bash
   chmod u+s file  # 设置SUID
   ```
   
2. **SGID (Set Group ID)**：
   - 对于文件：执行时进程的有效组ID会被设置为文件所属组的ID
   - 对于目录：在该目录中创建的新文件会继承目录的所属组
   ```bash
   chmod g+s directory  # 设置SGID
   ```

3. **Sticky Bit**：主要用于共享目录，防止用户删除其他用户的文件
   ```bash
   chmod +t directory  # 设置Sticky Bit
   ```

这些特殊权限在数字表示法中分别对应4、2和1，放在权限数字的最前面，例如：
```bash
chmod 1755 directory  # 设置Sticky Bit
chmod 4755 file       # 设置SUID
```

### 访问控制列表(ACL)

标准的Unix权限模型只能为所有者、所属组和其他用户设置权限，这在某些情况下不够灵活。访问控制列表(ACL)扩展了这一模型，允许为特定用户或组设置权限。

```bash
# 设置ACL
setfacl -m u:user1:rw file.txt  # 给user1用户读写权限
setfacl -m g:group1:r file.txt  # 给group1组读权限

# 查看ACL
getfacl file.txt
```

启用了ACL的文件在`ls -l`命令输出中会显示一个额外的"+"符号：
```
-rw-rw-r--+ 1 user group 0 Jan 1 00:00 file.txt
```

## 进程安全

Linux通过多种机制确保进程的安全运行和隔离。

### 进程权限与身份

每个进程都有以下与安全相关的身份属性：

1. **实际用户/组ID (RUID/RGID)**：启动进程的用户/组
2. **有效用户/组ID (EUID/EGID)**：用于权限检查的用户/组
3. **保存的用户/组ID (SUID/SGID)**：保存的原始有效用户/组ID
4. **文件系统用户/组ID (FSUID/FSGID)**：用于文件系统操作的用户/组

当执行设置了SUID/SGID位的程序时，进程的有效用户/组ID会被设置为文件所有者/所属组的ID，使进程获得额外的权限。

### 能力系统(Capabilities)

传统的Unix安全模型将用户分为特权用户(root)和非特权用户，这种"全有或全无"的模型过于粗糙。Linux引入了能力系统，将root权限细分为多个独立的"能力"，进程可以只获得所需的特定能力而非完整的root权限。

常见的能力包括：
- **CAP_CHOWN**：允许改变文件所有权
- **CAP_DAC_OVERRIDE**：允许绕过文件读/写/执行权限检查
- **CAP_NET_BIND_SERVICE**：允许绑定小于1024的端口
- **CAP_SYS_ADMIN**：允许执行系统管理操作

```bash
# 查看进程的能力
getpcaps PID

# 设置文件的能力
setcap cap_net_bind_service=+ep /usr/bin/program

# 查看文件的能力
getcap /usr/bin/program
```

能力系统使得以非root用户运行服务成为可能，显著提高了系统安全性。

### Seccomp过滤器

Seccomp(Secure Computing Mode)是Linux内核的一个安全特性，允许进程限制自己可以使用的系统调用，从而减少攻击面。

Seccomp有两种模式：
1. **严格模式**：只允许进程使用exit()、sigreturn()、read()和write()系统调用
2. **过滤模式**：使用BPF(Berkeley Packet Filter)规则定义允许的系统调用

```c
#include <seccomp.h>
#include <unistd.h>

int main() {
    // 创建seccomp上下文
    scmp_filter_ctx ctx = seccomp_init(SCMP_ACT_KILL);
    
    // 允许一些必要的系统调用
    seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(read), 0);
    seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(write), 0);
    seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(exit), 0);
    
    // 加载过滤器
    seccomp_load(ctx);
    
    // 此后进程只能使用上述系统调用
    write(STDOUT_FILENO, "Hello, secure world!\n", 21);
    
    return 0;
}
```

Docker、Chrome等现代应用广泛使用Seccomp过滤器来限制容器和沙箱中的系统调用，减少潜在的攻击面。

### 命名空间隔离

Linux命名空间(Namespaces)是内核的一个特性，用于隔离进程组的系统资源视图。每个命名空间类型隔离不同种类的资源：

1. **PID命名空间**：进程ID隔离
2. **网络命名空间**：网络设备、协议栈、端口等
3. **挂载命名空间**：文件系统挂载点
4. **UTS命名空间**：主机名和域名
5. **IPC命名空间**：进程间通信资源
6. **用户命名空间**：用户和组ID
7. **Cgroup命名空间**：控制组

命名空间是容器技术的基础，允许在同一内核上运行相互隔离的进程组。

```bash
# 在新的命名空间中运行命令
unshare --pid --fork --mount-proc bash
```

## 强制访问控制

自主访问控制(DAC)系统允许文件所有者自行决定文件的访问权限，这在某些情况下可能不够安全。强制访问控制(MAC, Mandatory Access Control)系统通过预定义的安全策略控制所有主体(用户、进程)对客体(文件、资源)的访问，即使是root用户也受到这些策略的约束。

### SELinux

SELinux(Security-Enhanced Linux)是由美国国家安全局(NSA)开发的一个强制访问控制系统，它为Linux内核实现了灵活的强制访问控制架构。

SELinux的核心概念：

1. **安全上下文**：每个主体和客体都有一个安全上下文，格式为`user:role:type:level`
   ```bash
   # 查看文件的安全上下文
   ls -Z file.txt
   
   # 查看进程的安全上下文
   ps -Z
   ```

2. **类型强制(Type Enforcement)**：基于主体类型和客体类型的访问控制
   ```bash
   # 修改文件的类型
   chcon -t httpd_content_t file.html
   ```

3. **角色基础访问控制(RBAC)**：用户必须处于允许的角色才能访问特定类型

4. **多级安全(MLS)**：基于安全级别的访问控制，实现信息流控制

SELinux有三种运行模式：
- **强制(Enforcing)**：强制执行安全策略，拒绝违反策略的访问
- **许可(Permissive)**：不强制执行策略，但记录违反策略的行为
- **禁用(Disabled)**：完全禁用SELinux

```bash
# 查看SELinux状态
getenforce

# 临时更改SELinux模式
setenforce 0  # 设置为许可模式
setenforce 1  # 设置为强制模式

# 永久更改SELinux模式(需要重启)
# 编辑/etc/selinux/config文件
```

### AppArmor

AppArmor是另一个Linux强制访问控制系统，主要用于Ubuntu和SUSE等发行版。与SELinux不同，AppArmor基于路径名而非安全上下文来控制访问。

AppArmor的核心概念：

1. **配置文件(Profile)**：定义程序可以访问的资源和执行的操作
   ```
   # /etc/apparmor.d/usr.bin.firefox
   
   /usr/bin/firefox {
     # 允许读取系统库
     /lib/** r,
     /usr/lib/** r,
     
     # 允许读写用户主目录中的特定文件
     owner /home/*/.mozilla/** rw,
     
     # 禁止访问敏感文件
     deny /etc/shadow r,
   }
   ```

2. **模式**：
   - **强制(Enforce)**：强制执行配置文件规则
   - **投诉(Complain)**：不强制执行规则，但记录违规行为

```bash
# 查看AppArmor状态
aa-status

# 设置配置文件模式
aa-enforce /etc/apparmor.d/usr.bin.program  # 设置为强制模式
aa-complain /etc/apparmor.d/usr.bin.program  # 设置为投诉模式
```

AppArmor通常被认为比SELinux更容易配置和使用，但功能相对较少。

## 安全审计与监控

安全审计是Linux安全模型的重要组成部分，用于记录和分析系统中的安全相关事件。

### Auditd

Linux审计系统(auditd)是一个内核级别的审计系统，可以记录系统调用和文件访问等事件。

```bash
# 安装审计系统
apt install auditd  # Debian/Ubuntu
yum install audit   # RHEL/CentOS

# 启动审计服务
systemctl start auditd
systemctl enable auditd
```

配置审计规则：
```bash
# 监控文件访问
auditctl -w /etc/passwd -p rwa -k passwd_changes

# 监控系统调用
auditctl -a always,exit -F arch=b64 -S execve -k command_execution

# 查看当前规则
auditctl -l
```

查看审计日志：
```bash
# 查看所有审计记录
ausearch -ts today

# 查看特定类型的记录
ausearch -k passwd_changes
```

### 系统日志

除了专门的审计系统外，Linux还通过syslog系统记录各种系统和应用程序事件。

重要的系统日志文件：
- **/var/log/auth.log** 或 **/var/log/secure**：认证相关日志
- **/var/log/syslog** 或 **/var/log/messages**：一般系统日志
- **/var/log/kern.log**：内核日志

```bash
# 实时查看系统日志
tail -f /var/log/syslog

# 查找特定事件
grep "Failed password" /var/log/auth.log
```

## 安全加固最佳实践

基于Linux安全模型的理解，以下是一些安全加固的最佳实践：

1. **最小权限原则**：
   - 以非root用户运行服务
   - 使用能力系统而非完整root权限
   - 限制SUID/SGID程序

2. **强化认证**：
   - 实施强密码策略
   - 使用SSH密钥认证代替密码
   - 考虑多因素认证

3. **实施强制访问控制**：
   - 启用并正确配置SELinux或AppArmor
   - 定期审查和更新安全策略

4. **限制系统调用**：
   - 使用Seccomp过滤器限制应用程序的系统调用
   - 使用容器技术隔离应用程序

5. **安全审计**：
   - 配置全面的审计规则
   - 定期审查审计日志
   - 实施日志集中化管理

6. **保持系统更新**：
   - 及时应用安全补丁
   - 定期更新软件包

7. **网络安全**：
   - 实施防火墙规则
   - 限制网络服务暴露
   - 使用加密通信

## 总结

Linux安全模型是一个多层次、深度防御的体系，从基础的用户权限系统到高级的强制访问控制，提供了全面的安全保障。理解这些安全机制的工作原理，对于构建安全的Linux系统至关重要。

不同的安全机制各有优缺点，应根据具体需求选择合适的安全策略。例如，对于一般服务器，基本的权限设置和防火墙可能已经足够；而对于高安全需求的环境，则应考虑实施SELinux或AppArmor等强制访问控制系统，并配置全面的审计规则。

随着安全威胁的不断演变，Linux安全模型也在持续发展。了解这些基本概念将帮助您更好地适应未来的安全挑战，构建更安全的Linux系统。