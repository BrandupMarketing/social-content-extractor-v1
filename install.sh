#!/bin/bash
# Social Content Extractor v2.0
# Supports: Douyin, Facebook, YouTube, Instagram
set -e

echo "=== Social Content Extractor v2.0 ==="
mkdir -p ~/.hermes/skills

# 1. gstack-browse
[ ! -d ~/.hermes/skills/gstack-browse ] && git clone --depth 1 https://github.com/BrandupMarketing/gstack-browse.git ~/.hermes/skills/gstack-browse

# 2. Douyin API
[ ! -d ~/.hermes/skills/references/Douyin_TikTok_Download_API ] && git clone --depth 1 https://github.com/Evil0ctal/Douyin_TikTok_Download_API.git ~/.hermes/skills/references/Douyin_TikTok_Download_API

# 3. social-content-extractor
[ ! -d ~/.hermes/skills/social-content-extractor ] && git clone https://github.com/BrandupMarketing/social-content-extractor.git ~/.hermes/skills/social-content-extractor

# Update skill with v2.0 content
mkdir -p ~/.hermes/skills/social-content-extractor/content
cat > ~/.hermes/skills/social-content-extractor/SKILL.md << 'SKILL'
---
name: social-content-extractor
description: 社交媒体内容提取 v2.0
tags: [douyin, facebook, youtube, instagram]
version: 2.0
---

# Social Content Extractor v2.0

## 抖音 - 用 API (优先)
## 其他平台 - 用浏览器
SKILL

echo "=== Done! ==="
