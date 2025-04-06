---
title: LVM逻辑卷创建与管理
icon: practice
order: 5
---

# LVM逻辑卷创建与管理

LVM(Logical Volume Manager)为Linux系统提供了灵活的存储管理能力，通过逻辑卷技术可以动态调整存储空间分配。本文将详细介绍LVM的基本操作，包括物理卷创建、卷组管理和逻辑卷配置等内容，帮助读者掌握LVM的实际应用技能。

## LVM基本操作流程

LVM的使用通常遵循以下基本流程：

1. 创建物理卷(PV)
2. 创建卷组(VG)
3. 从卷组中创建逻辑卷(LV)
4. 在逻辑卷上创建文件系统并挂载使用

## LVM架构与组件

在深入了解LVM操作之前，首先需要理解LVM的基本架构和核心组件。

### LVM架构图

```
+----------------+  +----------------+  +----------------+
|   物理磁盘1     |  |   物理磁盘2     |  |   物理磁盘3     |
|  /dev/sda      |  |  /dev/sdb      |  |  /dev/sdc      |
+----------------+  +----------------+  +----------------+
        |                  |                   |
        v                  v                   v
+----------------+  +----------------+  +----------------+
|   物理卷(PV)    |  |   物理卷(PV)    |  |   物理卷(PV)    |
|  /dev/sda      |  |  /dev/sdb      |  |  /dev/sdc      |
+----------------+  +----------------+  +----------------+
        |                  |                   |
        +------------------+-------------------+
                           |
                           v
                  +------------------+
                  |    卷组(VG)      |
                  |    vg_data       |
                  +------------------+
                     |           |
                     v           v
          +------------------+  +------------------+
          |   逻辑卷(LV)      |  |   逻辑卷(LV)      |
          |   lv_apps        |  |   lv_logs        |
          +------------------+  +------------------+
                     |                   |
                     v                   v
          +------------------+  +------------------+
          |   文件系统        |  |   文件系统        |
          |   /apps          |  |   /logs          |
          +------------------+  +------------------+
```

### 核心组件

1. **物理卷(Physical Volume, PV)**
   - LVM的基本存储单元，通常是整个硬盘或分区
   - 每个PV被划分为大小相等的物理扩展块(Physical Extent, PE)

2. **卷组(Volume Group, VG)**
   - 由一个或多个物理卷组成的存储池
   - 是创建逻辑卷的资源池

3. **逻辑卷(Logical Volume, LV)**
   - 从卷组中分配的存储空间
   - 对用户和应用程序呈现为标准的块设备
   - 由逻辑扩展块(Logical Extent, LE)组成

4. **物理扩展块(Physical Extent, PE)**
   - 物理卷上的最小分配单位
   - 默认大小通常为4MB

5. **逻辑扩展块(Logical Extent, LE)**
   - 逻辑卷的最小分配单位
   - 与PE大小相同，一个LE映射到一个PE

## 准备工作

### 安装LVM工具包

在大多数Linux发行版中，需要安装LVM工具包才能使用LVM功能。

**Debian/Ubuntu系统**:
```bash
sudo apt update
sudo apt install lvm2
```

**RHEL/CentOS系统**:
```bash
sudo yum install lvm2
```

### 准备磁盘

在开始LVM操作前，需要确保有可用的磁盘或分区。可以使用`fdisk -l`或`lsblk`命令查看系统中的磁盘。

```bash
# 查看系统中的磁盘
sudo fdisk -l

# 或使用lsblk命令
lsblk
```

如果需要在已有分区上使用LVM，可以使用`fdisk`或`parted`创建分区，并将分区类型设置为"Linux LVM"(8e)。

```bash
# 使用fdisk创建分区
sudo fdisk /dev/sdb

# 在fdisk交互界面中:
# n (新建分区)
# p (主分区)
# 1 (分区号)
# 接受默认起始扇区
# 接受默认结束扇区(使用整个磁盘)
# t (更改分区类型)
# 8e (Linux LVM)
# w (写入更改并退出)
```

## 创建物理卷(PV)

物理卷是LVM的基础，需要先将磁盘或分区初始化为物理卷才能用于LVM。

### 创建物理卷

使用`pvcreate`命令将磁盘或分区初始化为物理卷：

```bash
# 将整个磁盘初始化为物理卷
sudo pvcreate /dev/sdb

# 将特定分区初始化为物理卷
sudo pvcreate /dev/sdb1

# 同时初始化多个设备
sudo pvcreate /dev/sdb /dev/sdc
```

### 查看物理卷信息

创建物理卷后，可以使用以下命令查看物理卷信息：

```bash
# 显示所有物理卷的摘要信息
sudo pvs

# 显示物理卷的详细信息
sudo pvdisplay

# 显示特定物理卷的详细信息
sudo pvdisplay /dev/sdb
```

`pvs`输出示例：
```
  PV         VG     Fmt  Attr PSize   PFree
  /dev/sda2  vg_sys lvm2 a--  <99.00g     0
  /dev/sdb   vg_data lvm2 a--  500.00g 100.00g
  /dev/sdc          lvm2 ---  500.00g 500.00g
```

`pvdisplay`输出示例：
```
  --- Physical volume ---
  PV Name               /dev/sdb
  VG Name               vg_data
  PV Size               500.00 GiB / not usable 4.00 MiB
  Allocatable           yes
  PE Size               4.00 MiB
  Total PE              127999
  Free PE               25599
  Allocated PE          102400
  PV UUID               Pt6ThP-uh0T-CmGx-0Adk-4Cj0-87Yv-VdPZ0f
```

## 创建卷组(VG)

卷组是物理卷的集合，为逻辑卷提供存储空间池。

### 创建卷组

使用`vgcreate`命令创建卷组，需要指定卷组名称和一个或多个物理卷：

```bash
# 创建名为vg_data的卷组，包含一个物理卷
sudo vgcreate vg_data /dev/sdb

# 创建卷组，包含多个物理卷
sudo vgcreate vg_data /dev/sdb /dev/sdc

# 创建卷组时指定PE大小(默认为4MB)
sudo vgcreate --physicalextentsize 8M vg_data /dev/sdb
```

### 查看卷组信息

创建卷组后，可以使用以下命令查看卷组信息：

```bash
# 显示所有卷组的摘要信息
sudo vgs

# 显示卷组的详细信息
sudo vgdisplay

# 显示特定卷组的详细信息
sudo vgdisplay vg_data
```

`vgs`输出示例：
```
  VG      #PV #LV #SN Attr   VSize    VFree
  vg_sys    1   2   0 wz--n-   <99.00g      0
  vg_data   2   3   0 wz--n- <1000.00g 400.00g
```

`vgdisplay`输出示例：
```
  --- Volume group ---
  VG Name               vg_data
  System ID
  Format                lvm2
  Metadata Areas        2
  Metadata Sequence No  4
  VG Access             read/write
  VG Status             resizable
  MAX LV                0
  Cur LV                3
  Open LV               3
  Max PV                0
  Cur PV                2
  Act PV                2
  VG Size               <1000.00 GiB
  PE Size               4.00 MiB
  Total PE              255998
  Alloc PE / Size       153598 / 600.00 GiB
  Free  PE / Size       102400 / 400.00 GiB
  VG UUID               6sMhMB-Rf4p-wxtK-Fxiz-9ypY-bVok-rTfBjO
```

### 扩展卷组

当需要更多存储空间时，可以向现有卷组添加新的物理卷：

```bash
# 向vg_data卷组添加新的物理卷
sudo vgextend vg_data /dev/sdd
```

### 减少卷组

如果需要从卷组中移除物理卷，可以使用`vgreduce`命令：

```bash
# 从vg_data卷组中移除物理卷
sudo vgreduce vg_data /dev/sdc
```

**注意**：在移除物理卷前，需要确保该物理卷上没有任何逻辑卷数据，或者已经使用`pvmove`命令将数据迁移到其他物理卷。

```bash
# 将/dev/sdc上的数据迁移到其他物理卷
sudo pvmove /dev/sdc
```

## 创建逻辑卷(LV)

逻辑卷是从卷组中分配的存储空间，可以格式化并挂载使用。

### 创建逻辑卷

使用`lvcreate`命令从卷组中创建逻辑卷：

```bash
# 创建大小为100GB的逻辑卷
sudo lvcreate -L 100G -n lv_apps vg_data

# 使用百分比创建逻辑卷(使用卷组50%的空间)
sudo lvcreate -l 50%VG -n lv_logs vg_data

# 使用剩余所有空间创建逻辑卷
sudo lvcreate -l 100%FREE -n lv_data vg_data
```

参数说明：
- `-L`：指定逻辑卷的绝对大小(如GB, MB)
- `-l`：指定逻辑卷的相对大小(如百分比)
- `-n`：指定逻辑卷的名称
- 最后一个参数是卷组名称

### 查看逻辑卷信息

创建逻辑卷后，可以使用以下命令查看逻辑卷信息：

```bash
# 显示所有逻辑卷的摘要信息
sudo lvs

# 显示逻辑卷的详细信息
sudo lvdisplay

# 显示特定逻辑卷的详细信息
sudo lvdisplay /dev/vg_data/lv_apps
```

`lvs`输出示例：
```
  LV      VG      Attr       LSize   Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  lv_root vg_sys  -wi-ao---- <50.00g
  lv_swap vg_sys  -wi-ao----  49.00g
  lv_apps vg_data -wi-ao---- 100.00g
  lv_logs vg_data -wi-ao---- 500.00g
  lv_data vg_data -wi-ao---- 400.00g
```

`lvdisplay`输出示例：
```
  --- Logical volume ---
  LV Path                /dev/vg_data/lv_apps
  LV Name                lv_apps
  VG Name                vg_data
  LV UUID                3KJtmf-El5A-cWvB-d3Kp-XKYK-5j1g-7UMpCQ
  LV Write Access        read/write
  LV Creation host, time server1, 2023-01-15 10:20:58 +0000
  LV Status              available
  # open                 1
  LV Size                100.00 GiB
  Current LE             25600
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     256
  Block device           253:2
```

### 在逻辑卷上创建文件系统

创建逻辑卷后，需要在其上创建文件系统才能使用：

```bash
# 在逻辑卷上创建ext4文件系统
sudo mkfs.ext4 /dev/vg_data/lv_apps

# 或创建XFS文件系统
sudo mkfs.xfs /dev/vg_data/lv_apps
```

### 挂载逻辑卷

创建文件系统后，可以挂载逻辑卷以供使用：

```bash
# 创建挂载点
sudo mkdir -p /apps

# 临时挂载
sudo mount /dev/vg_data/lv_apps /apps

# 查看挂载情况
df -h
```

要在系统启动时自动挂载，需要编辑`/etc/fstab`文件：

```bash
# 编辑fstab文件
sudo nano /etc/fstab

# 添加以下行
/dev/vg_data/lv_apps /apps ext4 defaults 0 2
```

**注意**：在生产环境中，建议使用UUID或卷标识符而不是设备路径，以避免设备名称变化导致的问题。可以使用`blkid`命令获取UUID：

```bash
sudo blkid /dev/vg_data/lv_apps
```

然后在`/etc/fstab`中使用UUID：

```
UUID=abcd1234-ef56-7890-abcd-ef1234567890 /apps ext4 defaults 0 2
```

## LVM高级操作

### 扩展逻辑卷

LVM的一个主要优势是可以在不中断服务的情况下扩展逻辑卷。

```bash
# 将lv_apps逻辑卷扩展50GB
sudo lvextend -L +50G /dev/vg_data/lv_apps

# 或扩展到特定大小
sudo lvextend -L 150G /dev/vg_data/lv_apps

# 使用所有可用空间扩展逻辑卷
sudo lvextend -l +100%FREE /dev/vg_data/lv_apps
```

扩展逻辑卷后，还需要调整文件系统大小以使用新增空间：

**对于ext4文件系统**：
```bash
# 调整已挂载的ext4文件系统
sudo resize2fs /dev/vg_data/lv_apps
```

**对于XFS文件系统**：
```bash
# 调整已挂载的XFS文件系统
sudo xfs_growfs /apps
```

**一步完成逻辑卷扩展和文件系统调整**：
```bash
# 对于ext4文件系统
sudo lvextend -L +50G --resizefs /dev/vg_data/lv_apps

# 对于XFS文件系统
sudo lvextend -L +50G --resizefs /dev/vg_data/lv_apps
```

### 缩减逻辑卷

缩减逻辑卷是一个风险较高的操作，需要谨慎进行。不是所有文件系统都支持缩减，例如XFS不支持缩减。

**对于ext4文件系统**：

1. 首先卸载文件系统：
   ```bash
   sudo umount /apps
   ```

2. 检查文件系统：
   ```bash
   sudo e2fsck -f /dev/vg_data/lv_apps
   ```

3. 缩减文件系统（必须先缩减文件系统，再缩减逻辑卷）：
   ```bash
   sudo resize2fs /dev/vg_data/lv_apps 50G
   ```

4. 缩减逻辑卷：
   ```bash
   sudo lvreduce -L 50G /dev/vg_data/lv_apps
   ```

5. 重新挂载文件系统：
   ```bash
   sudo mount /dev/vg_data/lv_apps /apps
   ```

**注意**：缩减操作有数据丢失的风险，务必先备份重要数据。

### 创建LVM快照

LVM快照是逻辑卷在特定时间点的只读或可写副本，常用于备份或测试。

```bash
# 创建lv_apps的10GB快照
sudo lvcreate -L 10G -s -n lv_apps_snap /dev/vg_data/lv_apps
```

参数说明：
- `-L`：指定快照大小
- `-s`：表示创建快照
- `-n`：指定快照名称

快照创建后，可以挂载并访问：

```bash
# 创建挂载点
sudo mkdir -p /mnt/snapshot

# 挂载快照
sudo mount /dev/vg_data/lv_apps_snap /mnt/snapshot

# 使用完毕后卸载
sudo umount /mnt/snapshot
```

删除不再需要的快照：

```bash
sudo lvremove /dev/vg_data/lv_apps_snap
```

### 数据迁移

LVM允许在不中断服务的情况下将数据从一个物理卷迁移到另一个物理卷。

```bash
# 将/dev/sdb上的数据迁移到/dev/sdc
sudo pvmove /dev/sdb /dev/sdc

# 或只迁移特定逻辑卷的数据
sudo pvmove -n lv_apps /dev/sdb /dev/sdc
```

### 移除LVM组件

当不再需要LVM组件时，可以按照逻辑卷、卷组、物理卷的顺序移除它们。

1. 卸载并移除逻辑卷：
   ```bash
   sudo umount /apps
   sudo lvremove /dev/vg_data/lv_apps
   ```

2. 移除卷组：
   ```bash
   sudo vgremove vg_data
   ```

3. 移除物理卷：
   ```bash
   sudo pvremove /dev/sdb /dev/sdc
   ```

## LVM配置实例

以下是一个完整的LVM配置实例，从准备磁盘到创建和挂载逻辑卷。

### 场景：配置数据存储系统

假设我们有三个新磁盘(/dev/sdb, /dev/sdc, /dev/sdd)，需要创建一个灵活的存储系统，包含应用数据、日志和备份三个逻辑卷。

```bash
# 1. 创建物理卷
sudo pvcreate /dev/sdb /dev/sdc /dev/sdd

# 2. 创建卷组
sudo vgcreate vg_storage /dev/sdb /dev/sdc /dev/sdd

# 3. 创建逻辑卷
sudo lvcreate -L 200G -n lv_data vg_storage
sudo lvcreate -L 100G -n lv_logs vg_storage
sudo lvcreate -l 100%FREE -n lv_backup vg_storage

# 4. 创建文件系统
sudo mkfs.xfs /dev/vg_storage/lv_data
sudo mkfs.xfs /dev/vg_storage/lv_logs
sudo mkfs.xfs /dev/vg_storage/lv_backup

# 5. 创建挂载点
sudo mkdir -p /data /logs /backup

# 6. 挂载逻辑卷
sudo mount /dev/vg_storage/lv_data /data
sudo mount /dev/vg_storage/lv_logs /logs
sudo mount /dev/vg_storage/lv_backup /backup

# 7. 配置开机自动挂载
echo "/dev/vg_storage/lv_data /data xfs defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/vg_storage/lv_logs /logs xfs defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/vg_storage/lv_backup /backup xfs defaults 0 2" | sudo tee -a /etc/fstab
```

### 场景：系统磁盘空间不足

假设系统根分区(/dev/sda1)空间不足，需要使用LVM扩展根分区空间。

```bash
# 1. 添加新磁盘并创建物理卷
sudo pvcreate /dev/sdb

# 2. 查看当前卷组信息
sudo vgs

# 假设根分区在vg_system卷组中
# 3. 扩展卷组
sudo vgextend vg_system /dev/sdb

# 4. 查看根逻辑卷信息
sudo lvs

# 假设根逻辑卷名为lv_root
# 5. 扩展根逻辑卷
sudo lvextend -l +100%FREE /dev/vg_system/lv_root

# 6. 调整文件系统大小
# 对于ext4文件系统
sudo resize2fs /dev/vg_system/lv_root

# 对于XFS文件系统
sudo xfs_growfs /
```

## LVM性能与注意事项

### 性能考虑

1. **条带化(Striping)**：
   可以创建跨多个物理卷的条带化逻辑卷，提高I/O性能：
   ```bash
   sudo lvcreate -L 100G -n lv_stripe -i 3 -I 64 vg_data
   ```
   参数说明：
   - `-i 3`：使用3个物理卷进行条带化
   - `-I 64`：条带大小为64KB

2. **缓存逻辑卷**：
   在较新的LVM版本中，可以使用SSD作为HDD的缓存：
   ```bash
   # 创建缓存池
   sudo lvcreate -L 20G -n lv_cache_pool vg_data /dev/ssd
   
   # 将缓存池转换为缓存类型
   sudo lvconvert --type cache-pool --poolmetadata vg_data/lv_cache_pool_meta vg_data/lv_cache_pool
   
   # 将缓存池附加到逻辑卷
   sudo lvconvert --type cache --cachepool vg_data/lv_cache_pool vg_data/lv_data
   ```

### 注意事项

1. **备份**：
   - 在进行LVM操作前，特别是缩减操作，务必备份重要数据
   - 定期备份LVM配置：`sudo vgcfgbackup vg_data`

2. **监控**：
   - 定期监控卷组和逻辑卷的空间使用情况
   - 设置告警，在空间接近阈值时提前扩容

3. **快照管理**：
   - 快照空间用尽会导致快照失效
   - 不要长时间保留快照，会影响性能
   - 监控快照空间使用情况：`sudo lvs -o +snap_percent`

4. **恢复准备**：
   - 了解如何从备份恢复LVM配置：`sudo vgcfgrestore vg_data`
   - 保存LVM配置信息在安全位置

## 总结

LVM为Linux系统提供了灵活、强大的存储管理能力，通过物理卷、卷组和逻辑卷的概念，实现了存储资源的动态分配和管理。主要优势包括：

1. **灵活性**：可以动态调整存储空间，无需重新分区
2. **可扩展性**：可以轻松添加新的存储设备扩展存储容量
3. **快照功能**：支持创建卷快照，便于备份和测试
4. **条带化和镜像**：提供高级存储功能，提高性能和可靠性

通过本文的详细介绍，读者应该能够掌握LVM的基本概念和操作，包括创建和管理物理卷、卷组和逻辑卷，以及扩展、缩减和快照等高级功能。在实际应用中，LVM是Linux系统管理员必备的存储管理工具，能够有效解决存储空间动态调整的需求。