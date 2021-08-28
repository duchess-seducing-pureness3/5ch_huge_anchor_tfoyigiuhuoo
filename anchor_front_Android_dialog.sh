#! /bin/bash
# Termuxのダイアログ用
# 通知欄に表示してタップでコピー(多分Android 11とかでも動くはず(未確認))
CURRENT=$(cd $(dirname $0);pwd)

input=$(termux-dialog -t "アンカーを入力してください" -i "アンカーを飛ばしたい先の数字を入力" -n)
input_num=$(echo $input | jq -r .text)
SCRIPT_ANCHOR_DIR="$CURRENT/anchor.sh"
anchor=$($SCRIPT_ANCHOR_DIR $input_num)
termux-notification  --action "(termux-clipboard-set "$anchor" && termux-toast "$anchor"をコピーしました)" -t "大きな数字のアンカー" -c "タップして「$anchor」をコピーします" --button1-action "(termux-clipboard-set "$anchor" && termux-toast "$anchor"をコピーしました)"  --button1 "コピー"