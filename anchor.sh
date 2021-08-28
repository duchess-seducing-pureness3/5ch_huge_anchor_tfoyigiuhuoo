#! /bin/bash
CURRENT=$(cd $(dirname $0);pwd)

tmp_num=$1
PYTHON_SCRIPT_DIR="$CURRENT"'/new_type_ancor.py'

tmp_anc=$(python3 $PYTHON_SCRIPT_DIR "$tmp_num")
echo "$tmp_anc"
# printf '%sをコピーしました\n' "$tmp_anc"