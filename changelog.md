---
---
***
### 2026-07-09 00:23

### 修复
- 3308568  修复(search): 注释分词器返回类型，以便类型化消费者通过严格类型检查。
- 37a5232  修复(chat): 查找栏重新打开时重新聚焦和防抖关闭语义。
- 4759b4c  修复(settings): 同步 InterfaceTab 测试与 newsprint bodyFontSize 默认值。
- 950bd94f  修复(design): --tool-bg 亮色主题降至用户气泡同深度。
- bde026f  修复(packaging): 添加 Markdown 文档图标资源。
- ca0bb74  修复(ui): 对 ClassicFindBox 的间距进行标记化（新文件的裸间距基线为零）。
- cf0e10c  修复(chat): 通过修订协调定位 live-id 消息，并将查找标记范围限制在消息主体。
- d3cc836  修复(design): --tool-bg 对齐收纳条（各主题 --overlay-subtle 同值），收纳条 hover 迁移至 --overlay-light。

### 新功能
- 088c07f  新功能(design): --tool-bg 全主题加深一档，非任务语义借用点迁移 --overlay-subtle。
- 165b99c  新功能(server): /api/sessions/find 消息级别命中路由与消息索引对齐。
- 2b7afdb  新功能(typography): PT Serif 字体面具令牌和 radius-xs。
- 2d2068a  新功能(store): 聊天查找切片，带有键控查找状态和待处理消息定位意图。
- 3413ec4  新功能(sdk): 升级 Pi SDK 至 @earendil-works 0.80.3（scope 迁移）。
- 384939  新功能(design): fs-micro 第六类型层级，死空间令牌修复，令牌引用保护。
- 4d97a0f  新功能(chat): 任务族第二轮——底色中性化、连续 Subagent 卡融合、工具条对齐任务块宽度。
- 57b7ee7  新功能(sessions): 内容搜索命中跳转到最佳匹配消息，而不是裸切换。
- 7791c85  新功能(store): 聊天查找协调操作（运行/步骤/从搜索定位）。
- 8bb1c85  新功能(chat): ChatResourceCard 支持任务变体，Subagent/Workflow 卡收敛任务族容器。
- 9d8c29f  新功能(tooling): style-discipline 基线契约（灰名单，仅减少）。
- a89753a  新功能(typography): markdown 阅读默认切换至 newsprint 度量。
- d1e005b  新功能(chat): 工具条收敛任务族形态——四角圆角矩形，去掉 accent 竖线与 accent 呼吸点。
- d8b4d93  新功能(search): 消息级别查找核心，带有可显示索引语义。
- e2929d4  新功能(tooling): style-discipline 扫描器（裸间距/硬编码颜色/裸持续时间）。
- fe41c0b  新功能(preview): 表格和代码块的节奏捕捉。

### 测试
- 4ea552c  测试(preview): newsprint 基线网格结构用于 markdown 预览。
- 4c0d2b  测试(ui): 在 ui barrel 导出中注册 ClassicFindBox。

### 其他
- 4c0d2b  其他(ui): 在 ui barrel 导出中注册 ClassicFindBox。

**更新要点**: 本次更新包含多个新功能，特别是在设计、聊天和搜索方面的改进，同时修复了一些关键问题以提升用户体验。

***
### 2026-07-09 11:48

### 修复
- 2fe7b7f: 修复模块服务器依赖 sentinel，补齐 pi-agent-core。
- 4431b46: 修复 pi agent core 的运行时依赖。
- 4cc0ba8: 移除 style-discipline.mjs 无效 shebang，修复 Windows CI 语法错误。
- 526a064: 用 pi-ai 0.80.3 目录对表刷新 known-models 词典。
- 5c8fd26: 延迟解码图片预览。
- 5cf01f0: 启动 rescan 回填存量 manifest 缺失的 ownerAgentId（只补缺不覆盖）。
- 5dbf549: 远程客户端会话订阅按 sessionId 匹配，归档不再静默断流。
- 5fda3b8: 移除 main 上没有配套实现的 .md 文件关联声明。
- 68bf90a: 列表链路单点失败不再清空整个会话列表。
- 8e4c097: 新增 resolveSessionOwnership 归属边界，manifest.ownerAgentId 为权威。
- 92cdfab: engine/server 基础层归属消费点收敛到 resolveSessionOwnership。
- 934fab0: fallbacks 与词典对齐 + MiniMax-M3 context 用户策展 500k。
- aa08fe8: 移除打包的 node_modules bin 链接。
- b6b4b8d: server routes 门禁与归属消费点收敛到 manifest 权威。
- e171322: coordinator 归属消费点收敛到 resolveSessionOwnership。
- eff5bd1: 声明 photon 运行时依赖。

### 新功能
- 无

### 测试
- 无

### 其他
- 1e22769: 发版摘要版本号对齐 v0.371.17。
- 4b8673a: 修正过期 "keyed by sessionPath" 注释 + 审计脚本三处盲区。
- 88e447a: style-discipline baseline key 跨平台统一为正斜杠。
- 933ef13: 发版摘要版本号对齐 v0.371.16。
- 8b77ccdc: 发版摘要版本号对齐 v0.371.18。
- bb066a6: 为 v0.371.14 添加发版摘要。
- df1fffe: 发版摘要版本号对齐 v0.371.19，移除失效的图标条目。

**更新要点**: 本次更新主要集中在修复多个依赖和会话管理方面的问题，同时进行了版本号的对齐和发版摘要的更新。没有新增功能。

***
### 2026-07-10 11:50

### 修复
- 1f5cdea: 修复：收窄全局右键菜单，避免与业务菜单叠层
- 5e5a812: 修复（桥接）：保留密钥并修复钉钉认证
- 62e6c9d: 修复（测试）：清理 MobileApp 测试两处跨用例全局泄漏
- 6e50f22: 修复（测试）：根治 MobileApp desktop-input-area 用例全量偶发超时
- 7816591: 修复：包含长会话调整工作
- b8891c0: 修复：恢复调整包含实验

### 新功能
- 7ff610a: 新功能（模型）：拥有 GPT-5.6 提供者合约
- 8d5b870: 新功能：添加会话感知环境提醒
- e842749: 新功能：根据表面将输入草稿持久化到服务器

### 测试
- 62e6c9d: 修复（测试）：清理 MobileApp 测试两处跨用例全局泄漏
- 6e50f22: 修复（测试）：根治 MobileApp desktop-input-area 用例全量偶发超时

### 其他
- 0638be9: 更新 xAI Grok 提供者默认值
- 8bfbadb: 其他：为 v0.374.2 添加发布摘要

**更新要点**: 本次更新主要集中在修复全局右键菜单、钉钉认证及测试中的问题，同时引入了新的功能，如会话感知环境提醒和输入草稿持久化到服务器。

***
### 2026-07-10 15:31

### 修复
- 521ed14 修复(auth): 适配 Codex OAuth 回调协议

### 新功能
- 39a46f5 事务: 为 v0.374.3 添加发布摘要

### 其他
无

**更新要点**: 本次更新主要修复了 Codex OAuth 回调协议的适配问题，并为版本 v0.374.3 添加了发布摘要。

***
### 2026-07-10 20:22

### 修复
- 0b085dd: 修复桌面端：在服务器存活时保留 server-info.json，并在端口冲突时快速失败。
- 1ab65e2: 修复预览：将 markdown 表格缩小到内容大小。
- 323e9b5: 修复构建：dist-server 剪裁 node_modules 运行时死重（.ts/.mts/.cts/.map/.md）。
- 44ffbd1: 修复会话协作：创建草稿卡无头化，字段顺序改为助手→标题→首条消息。
- 52bf394: 修复会话协作：草稿卡头像与会话名、忽略持久化、来源卡宽度560。
- 71aed6b: 修复安装程序：Windows 进程查询失败不再视为无进程，回退镜像名清理。
- b4f7609: 修复会话协作：草稿卡确认状态持久化到源会话。
- f76b80a: 修复会话协作：会话工具权限分类，自动模式不再走 LLM 审查。
- faa754c: 修复会话协作：草稿应用并发竞态防止双发。

### 新功能
- 010410c: 新增会话协作：跨会话协作 v0 收尾。
- 148d140: 新增：加强问题批次运行时边界。
- 2e74864: 新增提供者：添加 Grok OAuth 订阅登录。
- 40c9c82: 新增会话协作：目标会话的 Agent 来源消息卡。
- 51cede6: 新增会话协作：紧凑转写与回合分页。
- 6c0de9d: 新增会话协作：投递单点（空闲提交/跑动插入/竞态兜底）。
- 7f88b1a: 新增会话协作：工具写侧、草稿挂载、提取器与应用路由。
- 87e6b4f: 新增工具：美化功能默认开启。
- a1a9b1f: 新增会话协作：草稿一次性存储。
- aa9e63d: 新增会话协作：来源记录透出到历史与实时事件。
- cea839d: 新增会话协作：工具装配、子代理拦截、桥接快照裁剪与分类登记。
- da8aeda: 新增会话协作：会话工具读侧（手册/list/read）。
- e8b30bb: 新增会话协作：ChatMessage.origin 读时兼容扩展与前端映射。
- f65b440: 新增会话协作：发送/创建草稿确认卡。

### 测试
- 无相关提交。

### 其他
- 无相关提交。

**更新要点**: 本次更新包含多个修复和新功能，特别是在会话协作方面的增强，提升了用户体验和系统稳定性。

***
### 2026-07-11 00:49

### 修复
- 7ad066e: 防止供应商 wide 页把设置弹窗撑宽
- 848481a: 首条发送后输入框残留已发送正文
- bc2d6c4: 发送 Grok CLI 代理头用于 xAI OAuth 聊天
- bc82420: 恢复 640 定宽，撤销 1fr 压短，页内超长省略

### 新功能
- 37c0325: 升级后首启公告基建（NoticeDialog + release digest 随包展示）
- a1d6966: 从 infinity 线搬运 window-surface + Overlay(scope) + ConfirmDialog 通用弹窗基建
- d92cb88: loopback 端口随机分配与运行期自愈，弃用固定默认 14500

### 测试
（无）

### 其他
（无）

**更新要点**: 本次更新主要包括多个修复和新功能的引入，修复了设置弹窗、输入框残留和页面宽度等问题，同时新增了公告基建和通用弹窗基建，提升了系统的灵活性和自愈能力。

***
### 2026-07-11 11:16

### 修复
- 1298d27: 修复（测试）：在 Windows 上跳过 ustar Unix 模式的断言
- aa35e6d: 修复（会话）：通过缓存保护允许 Pi 原生压缩
- b32b541: 修复：使手动压缩的会话 ID 具有权威性

### 新功能
- ec76151: 新功能（构建）：artifact-core 库（ustar 安全解压/manifest 验签/指针存储/激活流程）

### 其他
- 5da650e: 其他：添加 v0.380.9 的发布摘要
- 7930f86: 其他：添加 v0.380.10 的发布摘要
- 1298d27: 其他：添加 v0.380.7 的发布摘要

**更新要点**: 本次更新主要包括对手动压缩会话 ID 的修复以及在 Windows 上跳过特定测试的修复。此外，还新增了 artifact-core 库的功能，并添加了多个版本的发布摘要。

***
### 2026-07-11 18:59

### 新功能
- a9df4e8 2026-07-11T10:27:51 liliMozi: 功能（运行时）：发布签名的工件火车并统一设置

**更新要点**: 本次更新引入了发布签名的工件火车以及统一的设置。
