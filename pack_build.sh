#!/usr/bin/env bash
set -e
REPO="thisislivvy/libsandedtotem"
TAG="bright-harbor-calm-delta"
LIB="wet-ribbon.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
