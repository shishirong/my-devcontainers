# 开发备忘

* 由于Win10无法开启嵌套虚拟化，故只能在win11以上版本使用
* 参考 [dockur/windows](https://github.com/dockur/windows)

## 常用命令

```sh

# 设置默认时间日期格式
export TIME_STYLE='+%Y/%m/%d %H:%M:%S'
# 设置时区
export TZ='Asia/Shanghai'

export http_proxy=http://host.docker.internal:10809
export https_proxy=${http_proxy}
export HTTP_PROXY=${http_proxy}
export HTTPS_PROXY=${http_proxy}
export all_proxy=socks5://host.docker.internal:10808
export ALL_PROXY=${all_proxy}

export http_proxy=http://192.168.110.114:10809
export https_proxy=${http_proxy}
export HTTP_PROXY=${http_proxy}
export HTTPS_PROXY=${http_proxy}
export all_proxy=socks5://192.168.110.114:10808
export ALL_PROXY=${all_proxy}

pip install aqtinstall

```

## 常用包

```sh
# 更新所有包
pacman -Suy

pacman -S git
pacman -S mingw-w64-ucrt-x86_64-qt5 
pacman -S mingw-w64-ucrt-x86_64-qt-creator 
pacman -S mingw-w64-ucrt-x86_64-llvm 
pacman -S mingw-w64-ucrt-x86_64-toolchain // 包含 binutils gcc gdb 等
pacman -S mingw-w64-ucrt-x86_64-clang   // clang-format
pacman -S mingw-w64-ucrt-x86_64-cmake
pacman -S mingw-w64-ucrt-x86_64-mosquitto
pacman -S mingw-w64-ucrt-x86_64-winpthreads
pacman -S mingw-w64-ucrt-x86_64-ninja
pacman -S mingw-w64-ucrt-x86_64-ccache
pacman -S mingw-w64-ucrt-x86_64-sqlite3
pacman -S mingw-w64-ucrt-x86_64-python-pip
```

## 打包

参考 https://github.com/lostjared/ldd-deploy/blob/main/ldd_deploy.sh

```sh

```