#!/bin/bash

# 脚本保存路径
SCRIPT_PATH="$HOME/BlockMesh.sh"

# 检查是否以 root 用户运行脚本
if [ "$(id -u)" != "0" ]; then
    echo "此脚本需要以 root 用户权限运行。"
    echo "请尝试使用 'sudo -i' 命令切换到 root 用户，然后再次运行此脚本。"
    exit 1
fi

curl -s https://raw.githubusercontent.com/jiangyaqiii/envirment/main/docker.sh |bash
docker run -d -e PRIVATE_KEY="$PRIVATE_KEY" \
--name glacier-verifier \
glaciernetwork/glacier-verifier:v0.0.3

rm -f glacier_start.sh
