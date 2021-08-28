#! /bin/bash

tmp_num=$1
PYTHON_SCRIPT_DIR='./new_type_ancor.py'

tmp_anc=$(python3 $PYTHON_SCRIPT_DIR "$tmp_num")
printf '%sをコピーしました\n' "$tmp_anc"