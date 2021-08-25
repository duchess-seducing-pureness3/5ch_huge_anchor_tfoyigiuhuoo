#! /bin/bash
# インストール用スクリプト

# 必ず必要なパッケージをインストール
apt install jq python -y

# ウィジェット用のディレクトリ作成しコピーし実行権限を付与
mksir $HOME/.shortcut/tasks
cp $HOME/5ch_huge_anchor_tfoyigiuhuoo/大きな数字のアンカーを生成 $HOME/.shortcut/tasks
chmod +x $HOME/.shortcut/tasks/大きな数字のアンカーを生成
# 各スクリプトに実行権限を付与
list=(
  $HOME/5ch_huge_anchor_tfoyigiuhuoo/anchor_front_Android_dialog.sh
  $HOME/5ch_huge_anchor_tfoyigiuhuoo/anchor_front_Android_clibord.sh
  $HOME/5ch_huge_anchor_tfoyigiuhuoo/anchor.sh
  $HOME/5ch_huge_anchor_tfoyigiuhuoo/new_type_ancor.py
);
for name in ${list[@]}; do
chmod +x $name
done