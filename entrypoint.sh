#!/bin/bash

# 启动 SSH 服务（确保路径正确）
sudo /usr/sbin/sshd

# 打印提示（可选）
echo "✔️ SSH server started. Container is now running."

# 保持容器运行（重要！）
exec bash
# exec su - me

