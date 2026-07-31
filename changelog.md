---
---
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

***
### 2026-07-27 11:38

### 修复
- 02d3a24 liliMozi: 修复(build): 重新同步持久性库存和架构指纹
- 2fa81ac liliMozi: 修复(channels,dm): 报告错误而不是猜测对话所有者
- 3171638 liliMozi: 修复(fs): 允许每个代理的桌面根目录，而不是专注于代理的
- 4c6b531 liliMozi: 修复(bridge): 使桥接读取时命名他们询问的代理
- 64670e2 liliMozi: 修复(session): 停止通过提醒块头泄漏墙钟时间
- 755e7e8 liliMozi: 修复: 记录最近工作区时命名代理
- 82ecbcc liliMozi: 修复(cli): 在终端代理列表中标记当前代理
- 8e375e2 liliMozi: 修复(server): 在编译内存读取时要求明确的 agentId
- 977368a liliMozi: 修复(agent): 通过配置覆盖、全局偏好，然后是英文解析提示语言
- 9aeee51 liliMozi: 修复(workspace): 将新聊天与主要代理对齐
- c655f30 liliMozi: 修复(skills): 删除技能时要求明确的 agentId
- d361668 liliMozi: 修复(avatar): 在每个头像请求中明确解析目标代理
- df5b0ab liliMozi: 修复(settings): 在代理创建覆盖中给 kong 一个简短的描述

### 新功能
- 60b101a liliMozi: 新功能(settings): 为每个元件标记其思维块，将 kong 重命名为无
- 7d50c21 liliMozi: 新功能(agent): 懒惰地实现身份/意识，而不是在创建时播种
- bbfb00 liliMozi: 新功能(yuan): 将每个角色的反思块锚定在传入消息上
- c310df0 liliMozi: 新功能(yuan): 将情绪锚定在每轮的第一个输出上
- c597221 liliMozi: 新功能(config): 将用户的名字设为单一全局设置
- e66ca8f liliMozi: 新功能(server): 在每个代理配置读取时修剪过时的工作区历史
- d1fe2d8 liliMozi: 新功能(tools): 在能力切换时限制频道和安装技能的注入

### 测试
- 无

### 其他
- 15f760e liliMozi: 重构(server): 使无身份配置路径仅限于全局
- 43ba179 liliMozi: 重构(server): 隔离焦点回退代理解析器
- 4c4bf10 liliMozi: 重构(prompt): 将文件工具指导折叠到工具纪律中，并将角色移动到后面
- 63be076 liliMozi: 重构(server): 删除遗留的代理隐式身份和意识路线
- 8e77545 liliMozi: 重构(agent): 将用户配置文件和角色提升到静态提示前缀
- 9c2ed1a liliMozi: 重构(tools): 收紧通知和安装技能的描述
- adcf93c liliMozi: 重构(server): 删除代理隐式系统提示和固定路线
- ecdf89f liliMozi: 重构: 通过每个代理路线读取和写入代理拥有的设置

**更新要点**: 本次更新包含多个修复和新功能，特别是在代理和工作区的处理上进行了重要改进。修复了多个与代理、会话和设置相关的问题，同时引入了新的功能以增强用户体验。

***
### 2026-07-27 14:58

### 修复
- 17b5525 liliMozi: 修复(identity): 确保用户的名字在所有代理中具有一致的含义
- 3794419 liliMozi: 修复(mobile-workbench): 将远程写入记录在执行它们的子系统下
- 52a2f5c liliMozi: 修复(compaction): 隔离缓存保留的摘要
- 561987d liliMozi: 修复(compaction): 每个会话进行一次压缩，且在一个被中止时停止
- 6206f4f liliMozi: 修复(providers,preferences): 不再将全局模型的更改标记为某个代理
- 73491af liliMozi: 修复(settings-snapshot,desk): 对主要代理进行响应，而不是聚焦的代理
- 8287a30 liliMozi: 修复(plugins): 将代理的真实缺失传递给插件
- a2c36b0 liliMozi: 修复(bridge): 使桥接会话工作时标明其所属的代理
- b0b0a53 liliMozi: 修复(compaction): 提出一个关于请求原因的问题
- b6ab4ad liliMozi: 修复(session): 当流式会话被中止时传递最终的 turn_end
- e2053a0 liliMozi: 修复(models): 将模型健康探测费用计入公用账户
- ea249fe liliMozi: 修复(skills): 对技能包视图要求明确的代理
- fa122b7 liliMozi: 修复(compaction): 使压缩请求规范化，类似于实时请求

### 其他
- e87769a liliMozi: 任务(release): 为 v0.421.24 添加双语更新摘要
- 6838d10 liliMozi: 重构(server): 记录每个剩余焦点读取被允许的原因
- a220cf0 liliMozi: 重构(server): 记录仍然允许猜测代理的一个路由

**更新要点**: 本次更新主要集中在修复多个模块中的问题，确保用户体验一致性和系统稳定性。同时，进行了部分代码重构和文档更新，以提升代码的可读性和维护性。

***
### 2026-07-31 11:29

（翻译失败）

***
### 2026-07-31 14:39

（翻译失败）

***
### 2026-07-31 19:54

（翻译失败）
