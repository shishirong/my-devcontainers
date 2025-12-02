#!/usr/bin/env bash

# 配置git代理
git config --global http.proxy socks5://host.docker.internal:10808
git config --global https.proxy socks5://host.docker.internal:10808

# curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/develop/platformio/assets/system/99-platformio-udev.rules | tee /etc/udev/rules.d/99-platformio-udev.rules
# service udev restart # TODO:需要sudo权限
# usermod -a -G dialout $USER
# usermod -a -G plugdev $USER

# 检查是否已存在标记内容
if grep -q "=== 自定义配置开始 ===" ~/.bashrc; then
    echo "自定义配置已存在"
    exit 1 # 提前退出脚本
fi

# heredoc语法
# EOF会解析变量, 'EOF'则不会
cat << 'EOF' >> ~/.bashrc

# === 自定义配置开始 ===
export TZ="Asia/Shanghai"
export TIME_STYLE='+%Y/%m/%d %H:%M:%S'
alias ll='ls -alFh'
alias gitc1r='git clone --depth=1 --recurse-submodules --shallow-submodules'

export INSTALL_DIR=/home/vscode
export PATH="${INSTALL_DIR}/.env/tools/scripts:$PATH"
export RTT_ROOT=${INSTALL_DIR}/rt-thread/
export RTT_DIR=$RTT_ROOT
export RTT_EXEC_PATH=/usr/bin
export PKGS_DIR=${INSTALL_DIR}/.env/packages
export RTT_CC=gcc
# === 自定义配置结束 ===

EOF

echo "配置已成功添加到 ~/.bashrc"
