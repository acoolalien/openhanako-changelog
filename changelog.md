---
---
***
### 2026-07-21 11:18

### 修复
- 17dc1e7: 修复测试：稳定 Windows CI 覆盖率

### 其他
- 8a3cbbf: 事务（发布）：为 v0.415.15 添加双语摘要

**更新要点**: 本次更新主要修复了 Windows CI 的测试覆盖率问题，并为版本 v0.415.15 添加了双语摘要。

***
### 2026-07-21 19:43

### 修复
- 0f81233 liliMozi: 修复(i18n): 将最大思维等级标记为中文地区的“Max”
- 2249c4a liliMozi: 修复(build): 规范化 MinGit 来源路径
- 3540cdf liliMozi: 修复(release): 使用本地 cmd.exe 子进程验证 Windows 独立沙箱
- 5b58c25 liliMozi: 修复(models): 从 Kimi K3 中删除无效思维等级

### 新功能
- 02e466e liliMozi: 新功能(models): 为 Kimi K3 提供中等和高级思维等级

### 其他
- 4890f8b liliMozi: 其他(release): 为 v0.415.16 添加双语摘要

**更新要点**: 本次更新主要修复了多个与国际化、构建和发布相关的问题，同时为 Kimi K3 添加了中等和高级思维等级，并提供了双语摘要。

***
### 2026-07-22 00:11

### 修复
- b6a40cc: 修复（发布）：使独立沙箱的烟雾测试与生产环境合同对齐

**更新要点**: 本次更新主要修复了独立沙箱的烟雾测试，使其与生产环境的合同保持一致。

***
### 2026-07-22 11:16

### 修复
- 06bc9dc: 修复（Windows）：扩展桌面访问权限掩码
- 0899aef: 修复（Windows）：让受限子进程初始化
- 1fe7566: 修复（Windows）：完成受限令牌初始化
- 2588223: 修复（Windows）：更新令牌诊断调用者
- 317c2d9: 修复（发布）：恢复 AtomGit 镜像和 Windows 沙盒启动
- 566cc1a: 修复（Windows）：授予私有桌面启动访问权限
- aa1762a: 修复（Windows）：使用私有 WinSta0 桌面
- dca46c4: 修复（Windows）：使子进程标准输入输出可继承

### 新功能
- 06862a8: 任务（发布）：为 v0.416.4 添加双语摘要
- 248a488: 任务（发布）：准备 v0.416.12 摘要

### 其他
无

**更新要点**: 本次更新主要集中在修复 Windows 平台的多个问题，包括桌面访问权限、受限子进程的初始化和令牌的更新。同时，发布了 v0.416.4 和 v0.416.12 的双语摘要。

***
### 2026-07-22 19:44

### 修复
- 0f14940 liliMozi: 修复（Windows）：隔离受限子对象的ACL
- 1c3d88c liliMozi: 修复（Windows）：明确命名PowerShell沙箱桌面
- 2a7212d liliMozi: 修复（Windows）：保持环境块迭代器的兼容性
- 3efaed0 liliMozi: 修复（CI）：在发布前测试Windows独立包
- 502405f liliMozi: 修复（Windows）：使沙箱中的PowerShell为非交互式
- 6361474 liliMozi: 修复（Windows）：以原子进程合约启动受限shell
- 6416a6a liliMozi: 修复（Windows）：保持PowerShell在兼容桌面上
- 6799847 liliMozi: 修复（Windows）：保留PowerShell命令边界
- 735f710 liliMozi: 修复（Windows）：通过cmd代理受限PowerShell
- 77416ee liliMozi: 修复（CI）：在Windows沙箱烟雾测试中关闭stdin
- 849d2a5 liliMozi: 修复（Windows）：对受限的一次性命令使用cmd
- 9dbbb4f liliMozi: 修复（发布）：在独立烟雾测试中保留Windows cmd引号
- c32f1b8 liliMozi: 修复（Windows）：保留cmd命令字符串边界
- d35d1a3 liliMozi: 修复（Windows）：对受限命令使用兼容的PowerShell

### 更新要点
本次更新主要集中在修复Windows平台上的多个问题，包括对PowerShell沙箱的改进、兼容性增强以及在CI流程中的测试。所有修复旨在提升系统的稳定性和安全性。

***
### 2026-07-23 11:23

### 修复
- 0dbc6f6: 修复执行：从单一的默认 shell 常量派生 Windows shell 的措辞。
- 192ccf1: 修复执行：重写升级指导，以符合 Codex 的 on_request 表述。
- 28e2b95: 修复国际化：将升级提示的 locale 键添加到日语和韩语。
- 2e00632: 修复会话：去重对同一会话路径的并发 ensureSessionLoaded 调用。
- 2f60b4e: 修复工具：声明 recall_experience 的读取权限，并添加内置覆盖回归。
- 5ed30c7: 修复测试：在嵌套副作用访问之前，将解构调用的类型指定为 any。
- 83440cd: 修复 Windows：通过两个 spawn 路径逐字传递 cmd 负载。
- 9d52387: 修复 Windows：将 TEMP/TMP 重定向到每个助手启动的沙盒写入根目录。
- b16d544: 修复测试：在 shell-wording 测试中消除元组扩展类型检查错误。
- b75e8ee: 修复 Windows：将沙盒临时根目录提升为 TEMP 重定向所需的可写根目录。
- ebad195: 修复权限：接受调用副作用字符串中的有限空白。

### 新功能
- 1a3e37f: 新功能（Windows）：使 require_escalated 在审核后在受限令牌沙盒外运行。
- bfc4311: 新功能（Windows）：将 PowerShell 恢复为沙盒一次性默认值，并进行启动探测。
- ce7bac5: 新功能（执行）：要求对 require_escalated 提供一句话的理由。

### 测试
- 8df2775: 测试（Windows）：添加引用的、多行和沙盒化的 PowerShell 烟雾覆盖。

### 其他
- 003974b: 任务（构建）：为新的 guidance-to-shell 导入边缘重新生成 CLI 运行时闭包。
- d9e56d7: 任务（Windows）：添加受限令牌 PowerShell 启动诊断矩阵脚本。
- a02622d: 文档（发布）：为 v0.416.43 添加双语更新摘要。

**更新要点**: 本次更新主要集中在修复 Windows shell 的执行和权限问题，同时引入了一些新功能以增强用户体验，包括对 PowerShell 的支持和对 require_escalated 的要求。此外，新增了测试用例以确保功能的稳定性。

***
### 2026-07-23 19:47

### 新功能
- 3877045: liliMozi: 特性（exec-command）：将检测到的 PowerShell 风格融入 win32 工具描述中

**更新要点**: 本次更新新增了将检测到的 PowerShell 风格集成到 win32 工具描述中的功能。

***
### 2026-07-24 19:38

### 修复
- 0b50c4d liliMozi: 修复（会话）：始终将提示/内存快照外部化，避免存储在会话元索引中
- 34b171b liliMozi: 修复（会话）：使用状态签名账本限制旧版会话元迁移读取
- 443f8ee liliMozi: 修复（会话）：会话加载竞态不再丢弃 SessionFile 注册表 (#2188)
- 545a1ff liliMozi: 修复（设置）：工作台每个代理保存后同步刷新配置快照，切回时不再显示旧值 (#2192)
- 863c739 liliMozi: 修复（斜杠命令）：补全菜单选择后发送规范命令，而非编辑器的裸文本 (#2209)
- 988ff05 liliMozi: 修复（内存）：在后台内存任务运行时停止阻塞会话重试
- b449c8d liliMozi: 修复（会话）：显示元数据恢复状态，而不是误导性的空会话列表

### 其他
- ef8a6f7 liliMozi: 事务（发布）：为 v0.416.51 添加双语更新摘要

**更新要点**: 本次更新主要集中在修复会话和设置相关的问题，确保会话加载和内存管理更加稳定，并且改进了用户界面的交互体验。同时，发布了双语更新摘要以便用户更好地理解版本变化。
