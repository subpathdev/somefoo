#!/bin/bash

get_dir=$1
result_dir=$2

files=$(ls $result_dir | grep -e ".md")

for file in $files; do
	pandoc $file -o $result_dir/$file.pdf
done
