#! /bin/bash
# クリップボード用のスクリプト
# クリップボードの値を取得して計算後セットする
CURRENT=$(cd $(dirname $0);pwd)

num=$(termux-clipboard-get)
SCRIPT_ANCHOR_DIR="$CURRENT/anchor.sh"
anchor=$($SCRIPT_ANCHOR_DIR $num)
termux-clipboard-set "$anchor"