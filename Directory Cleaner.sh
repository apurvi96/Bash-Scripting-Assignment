#!/bin/bash


dir="$1"
shift
#echo First argument: "$first_arg"
#echo Remaining arguments: "$@"

shopt -s nocasematch

alldir()
{
	for files in ${dir}/*
do
if [[ -f "$files" ]];then
	filename=$(basename -- "$files")
	ext="${filename##*.}"
	#echo "$ext"
	mkdir -p $dir/$ext
	mv $dir/*.${ext} $dir/$ext 2>/dev/null

fi

done

}

if [[ $1 != all ]];then
	#echo "hello"
for arg in "$@"; do
	# echo "${arg}"
	mkdir -p $dir/$arg
	mv $dir/*.${arg} $dir/$arg 2>/dev/null

done
else
	alldir
	#echo "hi"
fi