#!/bin/bash

set -e

echo "Running post-create.sh..."

# 确保工作目录权限正确
sudo chown -R $USER:$USER /usr/local/cargo/registry
sudo chown -R $USER:$USER /usr/local/cargo/git
sudo chown -R $USER:$USER /workspaces/clash-verge-rev/node_modules

# 安装项目依赖（使用 pnpm）
echo "Installing project dependencies with pnpm..."
pnpm install
sudo apt update
sudo apt install -y libxslt1.1 libwebkit2gtk-4.1-dev libayatana-appindicator3-dev librsvg2-dev patchelf