#!/usr/bin/env bash

set -euo pipefail

if [ $# -lt 1 ]; then
	echo "用法：$0<文件路径> [取前N个，默认20]"
	echo "示例：$0 linux/data/alice.txt 20"
	exit 1
fi

file="$1"
top_n="${2:-20}"

if [ ! -f "$file" ]; then
	echo "错误：文件'$file'不存在"
	exit 1
fi

cat "$file" \
	| tr 'A-Z' 'a-z' \
	| tr -cs 'a-z' '\n' \
	| grep -v '^$' \
	| sort \
	| uniq -c \
	| sort -rn \
	| head -n "$top_n"
