#!/bin/bash

file="$1"
filename=$(basename -- "$file")
ext="${filename##*.}"
#echo $ext
shopt -s nocasematch

if [[ -f "$file" ]]
then
if [[ $ext == "txt" ]] || [[ $ext == "sh" ]] || [[ $ext == "py" ]]
then
	nano $file

elif [[ $ext == "doc" ]] || [[ $ext == "cpp" ]] ||  [[ $ext == "c" ]] || [[ $ext == "java" ]] || [[ $ext == "c++" ]]
then
	subl $file

elif [[ $ext == "Jpg" ]] || [[ $ext == "jp*g" ]] || [[ $ext == "bmp" ]] || [[ $ext == "jpeg" ]] || [[ $ext == "png" ]] || [[ $ext == "gif" ]]
then
	eog $file

elif [[ $ext == "pdf" ]] 
then
	evince $file

elif [[ $ext == "mp4" ]] || [[ $ext == "mp3" ]] || [[ $ext == "flv" ]] || [[ $ext == "wav" ]] || [[ $ext == "aac" ]] || [[ $ext == "wma" ]] || [[ $ext == "avi" ]]
then
	vlc $file

elif [[ $ext == "html" ]]
then
	firefox $file 


elif [[ $ext == "odp" ]] || [[ $ext == "pptx" ]]
then
	libreoffice $file

elif [[ $ext == "odt" ]]
then
	libreoffice $file

fi

elif [[ -d "$file" ]]
then
	echo "It is a directory "

else
	echo "wrong extension"

fi