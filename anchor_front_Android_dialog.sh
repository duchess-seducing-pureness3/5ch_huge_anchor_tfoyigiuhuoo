#! /bin/bash
# Termuxのダイアログ用
# 通知欄に表示してタップでコピー(多分Android 11とかでも動くはず(未確認))
input=$(termux-dialog -t "アンカーを入力してください" -i "アンカーを飛ばしたい先の数字を入力" -n)
input_num=$(echo $input | jq -r .text)
SCRIPT_ANCHOR_DIR="./anchor.sh"
anchor=$($SCRIPT_ANCHOR_DIR $input_num)
termux-notification  --action "(termux-clipboard-set ""$anchor"" && termux-toast ""$anchor""をコピーしました)" -t "大きな数字のアンカー" -c "タップして「$anchor」をコピーします"