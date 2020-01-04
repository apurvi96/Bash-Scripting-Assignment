#!/bin/bash

shopt -s nocasematch



#echo $ext



uncompress()
{
	if [[ $ext == "zip" ]];then
		#echo "enter zip"
		unzip $file

	elif [[ $ext == "gz" ]] || [[ $ext == "z" ]] || [[ $ext == "_z" ]];then
		#echo "enter gunzip"
		gunzip $file

	elif [[ $ext == "tar.gz" ]] || [[ $ext == "tgz" ]];then
		tar xzf $file    #x extract the file f creates archive

	elif [[ $ext == "tar" ]];then
		tar xf $file

	elif [[ $ext == "tar.bz2" ]] || [[ $ext == "tbz2" ]];then
		tar xjf $file

	elif [[ $ext == "bz2" ]];then 
		bunzip2 $file

	elif [[ $ext == "tar.xz" ]];then
		tar -xf $file


	else
	echo "CANNOT EXTRACT"

	fi


}


file="$1"
filename=$(basename -- "$file")

ext="${filename#*.}"

uncompress 