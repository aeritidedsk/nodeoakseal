#!/usr/bin/env bash
set -e
REPO="aeritidedsk/nodeoakseal"
LIB="patchouli-amplifier.a"
URL="https://github.com/${REPO}/releases/download/cosmic-badger-bright-badger/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
