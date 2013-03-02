#!/bin/bash
egrep -n "$1" $2
IFS=$'\n'
line=($(egrep -n "$1" $2))
totallines=$(cat $2 | wc -l)


for (( i=0; i < ${#line[*]}; i++ ))
do
number=$(echo ${line[$i]}|head -c 1)

if (( $number == 1))
then
	head -n 2 $2
	
elif (( $number == $totallines ))
then
	tail -n 2 $2
	
else
	((printlines=$number+1))
	
	head -n $printlines $2|tail -n 3
	
fi

done



