#!/bin/bash

echo "postCreateCommand pwd=$(pwd)"
mv /usr/bin/msys2 /usr/bin/msys2-nogui
cp ./.devcontainer/msys2 /usr/bin/msys2

echo "postCreateCommand end"
