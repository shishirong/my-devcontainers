# rt-thread 容器开发环境

```sh
git clone -b v5.1.0 --filter=tree:0 https://github.com/RT-Thread/rt-thread.git
du -sh ./rt-thread/
git fetch --filter=blob:none # 仅下载提交历史和目录结构，延迟下载文件内容
git fetch --filter=tree:0 # 仅下载提交历史，延迟获取目录结构和文件内容

# 如果遇到usb设备权限问题, 参考 https://github.com/prenone/platformio-vscode-devcontainer :
# https://github.com/pyocd/pyOCD/tree/main/udev
# https://github.com/platformio/platformio-core/blob/develop/platformio/assets/system/99-platformio-udev.rules
# https://github.com/openocd-org/openocd/blob/09a54c3a89af563329adf757990e0c6dd83a1095/contrib/60-openocd.rules

sudo ln -s /usr/bin/gdb-multiarch /usr/bin/arm-none-eabi-gdb

```