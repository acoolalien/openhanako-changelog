# OpenHanako 更新日志（中文）

每小时自动抓取 [liliMozi/openhanako](https://github.com/liliMozi/openhanako) 的 git commit，通过 GPT-4o-mini 翻译为中文，按修复/新功能/测试归类展示，附更新要点。

## 订阅方式

订阅 pinned issue，每次更新自动收到邮件通知：

1. 打开 [pinned issue](https://github.com/acoolalien/openhanako-changelog/issues/1)
2. 点击右侧 **Subscribe**（需要 GitHub 账号）
3. 每次检测到 openhanako 有新 commit，issue 正文自动更新，GitHub 发送邮件通知

## 数据来源

- 原始 commit：[liliMozi/openhanako](https://github.com/liliMozi/openhanako)
- 翻译：GitHub Models（GPT-4o-mini），每次翻译最近的增量 commit
- 更新频率：每小时检查一次

## 文件结构

- `changelog.md` — 累积的完整更新历史
- `last_sha.txt` — 上次抓取的 commit SHA，用于增量比对
