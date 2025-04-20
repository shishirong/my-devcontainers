#!/usr/bin/env bash

git config --global http.proxy socks5://host.docker.internal:10808
git config --global https.proxy socks5://host.docker.internal:10808

# 临时写到这儿,等APP稳定了再写到Dockerfile
sudo apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && sudo apt-get -y install ccache xmake clang-format \
    qtbase5-dev qtbase5-dev-tools qttools5-dev qt5-qmake qtdeclarative5-dev \
    qtquickcontrols2-5-dev qml-module-qtquick-controls2 qml-module-qtquick-controls



