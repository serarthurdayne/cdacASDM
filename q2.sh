#!/bin/bash

declare -a arr
choice=1
counter=0

until [ $choice -eq 0 ]
do
	echo
	echo "1. enter students name"
	echo "2. search by full name"
	echo "3. search by first name"
	echo "0. exit"
	echo

	read choice

	case $choice in 
		1)	echo -n "enter name to store: "
			read name
			arr[$counter]=$name
			counter=`expr $counter + 1`;;
		2) 	echo -n "who do you want to search(full name): "
			read name
			i=0
			for element in "${arr[*]}"
			do 
				if [ "$element" == "$name" ]
				then
					echo "$name found"
					i=`expr i+1`
				fi
			done
			if [ $i ==  0 ]
			then
				echo "not found"
			fi;;
		3)	;;
		4)	exit;;
	esac
done





