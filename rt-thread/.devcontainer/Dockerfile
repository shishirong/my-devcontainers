## syntax=docker/dockerfile:1
# 参考 https://github.com/RT-Thread/rt-thread/blob/master/.devcontainer/Dockerfile
FROM mcr.microsoft.com/devcontainers/base:jammy

# 版本: 例如`v1.5.2`,`master`
ARG ARG_ENV_VERSION=master
ARG ARG_PKG_VERSION=master
ARG ARG_RTT_VERSION=v5.2.1
ARG ARG_GIT_ARGS="--depth=1 --single-branch --recurse-submodules --shallow-submodules "

#system
RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get install -y vim git wget python3 python-is-python3 pip gcc-arm-none-eabi libncurses5-dev

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y qemu-system-arm

USER vscode

ARG INSTALL_DIR=/home/vscode

#env
RUN mkdir ${INSTALL_DIR}/.env

RUN mkdir ${INSTALL_DIR}/.env/tools

RUN mkdir ${INSTALL_DIR}/.env/packages

RUN mkdir ${INSTALL_DIR}/.env/packages/packages

RUN mkdir ${INSTALL_DIR}/.env/tools/scripts

RUN touch ${INSTALL_DIR}/.env/packages/Kconfig

RUN echo 'source "$PKGS_DIR/packages/Kconfig"' > ${INSTALL_DIR}/.env/packages/Kconfig

RUN git clone -b ${ARG_ENV_VERSION} ${ARG_GIT_ARGS} https://github.com/RT-Thread/env.git ${INSTALL_DIR}/.env/tools/scripts/

RUN git clone -b ${ARG_PKG_VERSION} ${ARG_GIT_ARGS} https://github.com/RT-Thread/packages.git ${INSTALL_DIR}/.env/packages/packages/

ENV PATH="${INSTALL_DIR}/.env/tools/scripts:$PATH"

RUN pip install scons requests psutil kconfiglib tqdm -qq

RUN git clone -b ${ARG_RTT_VERSION} ${ARG_GIT_ARGS} https://github.com/RT-Thread/rt-thread.git ${INSTALL_DIR}/rt-thread/

ENV RTT_ROOT=${INSTALL_DIR}/rt-thread/
ENV RTT_DIR=$RTT_ROOT
ENV RTT_EXEC_PATH=/usr/bin
ENV PKGS_DIR=${INSTALL_DIR}/.env/packages
ENV RTT_CC=gcc

# 调试依赖的工具 参考 
RUN DEBIAN_FRONTEND=noninteractive sudo apt-get install -y gdb-multiarch openocd udev
RUN curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/develop/platformio/assets/system/99-platformio-udev.rules | sudo tee /etc/udev/rules.d/99-platformio-udev.rules
RUN sudo service udev restart 
RUN sudo usermod -a -G dialout vscode
RUN sudo usermod -a -G plugdev vscode
