#! /bin/bash
# クリップボード用のスクリプト
# クリップボードの値を取得して計算後セットする
num="$(termux-clipboard-get)"
SCRIPT_ANCHOR_DIR="./anchor.sh"
anchor="($SCRIPT_ANCHOR_DIR $num)"
termux-clipboard-set "$anchor"