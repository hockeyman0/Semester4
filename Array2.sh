#!/bin/bash

#
#$Author$
#$Date$
#$Revision$
#$HeadURL$


if (( $# < 1 ))
then
	echo "Usage: yards.bash <filename>"
	exit 1
fi

if [[ ! -r $1 ]]
then
	echo "Error: $1 is not readable"
	exit 1
fi

LineNumbers=$(wc -l $1)
echo $LineNumbers


maxave=0
while read line
do

	name=$( echo $line | cut -f1 -d' ')
	IFS=' '
	sum=0
	ave=0
	values=()
	values=$(echo $line)
	values=($values)
	#echo ${values[0]}
	for (( i = 1; i < ${#values[*]}; i++ ))
	do
		#echo ${values[i]}
		(( sum=$sum+${values[i]} ))
		#echo $sum
		
	done
	(( numelements=${#values[*]}-1 ))
	#echo $numelements
	(( ave=$sum/$numelements ))
	#echo $ave
	#echo
	Var=0
	for (( i = 1; i < ${#values[*]}; i++ ))
	do
		temp=0
		#echo ${values[i]}
		(( temp= $ave-${values[i]} ))
		(( temp= $temp*$temp))
		(( Var=$Var+$temp))
		#echo $sum
	done
	
	
	(( Var=$Var/$numelements ))
	#echo $Var
	if (( $maxave < $ave ))
	then
		maxave=$ave
	fi
	#echo $ave

	printf "%s schools averaged %d yards receiving with a variance of %d\n" ${values[0]} $ave $Var

done <$1
#echo $maxave
echo "The largest average yardage was $maxave"


exit 0