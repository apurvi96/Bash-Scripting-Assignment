#!/bin/bash

echo -n "PASSWORD:"
read -s password

#echo $password

length=${#password}

#echo $length

if (( length>=8 ));then
	if [[ "$password" =~ .*[0-9].* ]];then
	

		if [[ "$password" =~ .*[\&@#$+*%-=].* ]];then
			echo "STRONG"
		
			else
			echo "WEAK" 
		fi
		else
		echo "WEAK"
	fi

	else
		echo "WEAK"
fi