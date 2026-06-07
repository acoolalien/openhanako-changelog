# OpenHanako 更新日志（中文）

每天 4 次检测 [liliMozi/openhanako](https://github.com/liliMozi/openhanako) 的 git 更新（北京时间 08:00 / 12:00 / 18:00 / 23:00），通过 GitHub Models（GPT-4o-mini）翻译为中文，按 修复/新功能/测试 分组展示并附更新要点，通过 QQ bot 私聊推送 + GitHub Issue 邮件备份。

## 架构

```
mozi push → GitHub API → GPT-4o-mini 翻译 → QQ Bot 私聊推给你
                                               └→ Issue 评论（邮件通知备份）
```

- **爬取**：GitHub Actions，每天 4 次（北京时间 08:00 / 12:00 / 18:00 / 23:00）
- **翻译**：GitHub Models（GPT-4o-mini），零成本
- **QQ 推送**：QQ 开放平台 Bot API，官方文档标注每用户每天 2 条（实际限制可能更宽松）
- **自动裁剪**：`changelog.md` 保留最近 8 条记录，Issue 评论每次自动删除旧评论仅保留最新一条

## 订阅方式（只收邮件，不用 QQ）

如果你只想要中文更新日志邮件，不需要 QQ 推送：

1. 打开 [pinned issue](https://github.com/acoolalien/openhanako-changelog/issues/1)
2. 点击右侧 **Subscribe**（需要 GitHub 账号）
3. 每次检测到新 commit，issue 自动更新正文并追加评论（旧评论自动删除），GitHub 发送邮件通知

## 自己部署（含 QQ 推送）

如果你想 fork 一份给自用的 openhanako 更新日志做 QQ 推送。

### 前置准备

- GitHub 账号
- 在 [QQ 开放平台](https://q.qq.com) 注册一个机器人（个人身份即可）

### 获取 QQ Bot 凭据

1. 登录 [QQ 开放平台](https://q.qq.com) → 我的机器人 → 选择你的机器人
2. 在 **开发设置** 页面找到：
   - **AppID** — 机器人身份标识
   - **ClientSecret** / **AppSecret** — 用于获取 API 访问令牌
3. （可选）如果需要多个 Bot 分摊配额，重复以上步骤获取第二组凭据

### 获取你的 QQ OpenID

OpenID 是 QQ 开放平台为每个用户在单个 Bot 维度分配的唯一标识，用于私聊消息投递。

**方法：通过 Bridge 日志获取（推荐）**

如果你的 Bot 已通过 Hana Bridge / OpenClaw 等框架运行，给 Bot 发一条私聊消息，然后在 Bridge 会话文件中查找：

1. 找到 Bridge 会话文件（通常在 `.hanako/agents/<agent>/sessions/bridge/bridge-sessions.json`）
2. 搜索包含 `"platform": "qq"` 的条目
3. 记录 `"userId"` 字段的值

**方法：通过 WebSocket 事件获取**

1. 用你的 Bot Token 连接 QQ WebSocket Gateway
2. 在你的 QQ 上给 Bot 发一条私聊消息
3. 监听到 `C2C_MESSAGE_CREATE` 事件，提取 `author.user_openid`

### 配置 GitHub Secrets

在 fork 后的仓库 Settings → Secrets and variables → Actions 中添加：

| Secret 名称 | 说明 |
|---|---|
| `QQ_A_APP_ID` | Bot A 的 AppID |
| `QQ_A_CLIENT_SECRET` | Bot A 的 ClientSecret |
| `QQ_A_OPENID` | 你在 Bot A 中的 OpenID |
| `QQ_B_APP_ID` | Bot B 的 AppID（可选，用于分摊配额） |
| `QQ_B_CLIENT_SECRET` | Bot B 的 ClientSecret（可选） |
| `QQ_B_OPENID` | 你在 Bot B 中的 OpenID（可选） |

### 修改爬取时间和 Bot 分配

编辑 `.github/workflows/fetch-changelog.yml` 中的 `schedule` 和 Bot 选择逻辑：

```yaml
schedule:
  - cron: '0 0 * * *'    # 08:00 Beijing
  - cron: '0 4 * * *'    # 12:00 Beijing
  - cron: '0 10 * * *'   # 18:00 Beijing
  - cron: '0 15 * * *'   # 23:00 Beijing
```

Bot 选择逻辑在 `Push to QQ` 步骤中，按小时匹配。

## 安全说明

所有凭据（AppID、ClientSecret、OpenID）以 GitHub Actions Secrets 存储：

- **传输加密**：通过 HTTPS 提交到 GitHub
- **存储加密**：GitHub 使用 libsodium 加密密封，静态加密
- **运行时隔离**：仅在工作流运行时注入环境变量，日志中自动脱敏（显示为 `***`）
- **不可读回**：Secret 设置后无法通过 UI 或 API 读取原始值，只能覆盖或删除

你的凭据不会泄露给第三方，包括本仓库的 workflow。

## 文件结构

```
.github/workflows/fetch-changelog.yml   — 主工作流
changelog.md                             — 最近 8 条更新记录（自动裁剪，YAML front matter + `***` 分隔符）
last_sha.txt                             — 上次抓取的 commit SHA，用于增量比对
```

## 数据来源

- 原始 commit：[liliMozi/openhanako](https://github.com/liliMozi/openhanako)
- 翻译：GitHub Models（GPT-4o-mini）
- 参考：QQ 开放平台 [消息 API 文档](https://bot.q.qq.com/wiki/develop/gosdk/api/direct_msg/post_direct_message.html)
