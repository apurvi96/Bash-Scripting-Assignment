#!/bin/bash
#read lat
#read long

url="https://darksky.net/forecast/"
final="${url}${1},${2}/us12/en"
#echo "${final}"
 

content="$(curl --silent $final -o - | sed -n 's/.*<span class="summary swap">\([^<]*\).*/\1/p')"

echo $content | sed 's/&nbsp;/ /gi'