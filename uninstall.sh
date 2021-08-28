#! /bin/bash
# このツール削除用のスクリプト
# 他のツールで使用しているものも削除可能性が少なくないので注意
apt remove -y git termux-exec termux-api termux-tools python jq
apt autoremove -y && apt autoclean -y

# 実行ファイルを削除
rm -rf $HOME/5ch_huge_anchor_tfoyigiuhuoo
# ウィジェットの一覧から削除
rm $HOME/.shortcuts/tasks/大きな数字のアンカーを生成