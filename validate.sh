#!/bin/bash
n=0
IFS='_'
#array=(echo $1)
#echo ${array[1]}

while read line
do
array=($line)
for ((i=0; i < ${#array[*]}; i++))
do
end=0
#echo ${array[i]}
if [[ "${array[i]}" =~ ^[A-Z][a-z]*$ ]] && (( 0 == $end ))
then
	end=1
	echo '"'${array[i]}'"' 'is capitalized.'
fi

if [[ "${array[i]}" =~ ^[a-z]+$ ]] && (( 0 == $end ))
then
	end=1
	echo '"'${array[i]}'"' 'is lower case.'
fi



if [[ "${array[i]}" =~ ^([a-z0-9])+$ ]] && (( 0 == $end ))
then
	echo '"'${array[i]}'"' 'is alphanumeric.'
	end=1
fi

if [[ "${array[i]}" =~ ^([A-Za-z])+$ ]] && (( 0 == $end ))
then
	end=1
	echo '"'${array[i]}'"' 'is mixed case.'
fi


if (( 0 == $end ))
then
	echo '"'${array[i]}'"' 'is weird!'
	end=1
fi





done

done <$1


exit 0
