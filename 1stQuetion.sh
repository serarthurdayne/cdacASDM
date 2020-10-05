#!/bin/bash

echo "enter the directory you want to work on"
read dir
list=`ls $dir` 
i=1
for element in $list 
do 
	mv "$dir/$element" "$dir/$element$i"
	i=`expr $i + 1`
done 
