#!/usr/bin/env bash

git config --global http.proxy socks5://host.docker.internal:10808
git config --global https.proxy socks5://host.docker.internal:10808

sudo apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && sudo apt-get -y install ccache xmake clang-format