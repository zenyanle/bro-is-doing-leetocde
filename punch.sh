#!/bin/bash

# 获取当前日期和时间，格式例如：2026-02-25 21:00:00
DATE=$(date +"%Y-%m-%d %H:%M:%S")

# 设置提交信息
COMMIT_MSG="✅ LeetCode 打卡: $DATE"

echo "⏳ 正在生成今天的 LeetCode 打卡记录..."

# 执行空提交
# --allow-empty 允许在没有文件更改的情况下创建 commit
git commit --allow-empty -m "$COMMIT_MSG"

# 推送到远程仓库（假设你的默认分支是 main，如果是 master 请自行修改）
echo "🚀 正在推送到 GitHub..."
git push origin main

# 检查推送是否成功
if [ $? -eq 0 ]; then
    echo "🎉 打卡成功！($DATE)"
else
    echo "❌ 推送失败，请检查网络连接或 Git 配置。"
fi
