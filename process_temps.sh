#!/bin/bash

#
#$Author$
#$Date$
#$Revision$
#$HeadURL$

if (( $# != 1 ))
then
	echo "Usage: process_temps.bash <input file>"
	exit 1
fi

if [[ ! -r $1 ]]
then
	echo "Error: $1 is not a readable file."
	exit 2
fi
count=0
while read -a array
do
	sum=0
	if (( count != 0 ))
	then
		for ((i = 1; i < ${#array[*]}; i++ ))
		do
			temp=${array[i]}
			(( sum=$(echo temp)+$sum ))
			#echo $sum
		done
		(( ave=$sum/(${#array[*]}-1) ))
		echo "Average temperature for time ${array[0]} was $ave C."
	fi

	(( count=$count+1 ))

done < $1

exit 0