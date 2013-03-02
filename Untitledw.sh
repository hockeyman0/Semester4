#!/bin/bash
pwd
arraydirectory=$( pwd )
IFS='/'
arraydirectory=($arraydirectory)
echo ${#arraydirectory[*]}
echo ${arraydirectory[6]}



if (( $# != 2 ))
then
    echo "Usage: file_packager.bash <directory> <file type>"
    exit 1
fi

if [[ ! -r -d $1 ]]
then
	echo "Error: $1 is not a readable directory"
	exit 2
fi

mktemp -d XXXXX
possibleError=$?
if (( possibleError != 0 ))
then
	echo "Error: Could not create working directory"
	exit 3
fi

IFS='
'

list= $( find $1 )

#echo $list

for (( i=0; i < ${#list[*]}; i++ ))
do
	getname=${list[i]}
	IFS='/'
	getname=$( getname )
	length=${#getname[*]}
	length=length-1
	name=${getname[length]}
	
	if [[ "$name" =~ .*$2.* ]]
	then
		if [[ ! -e $name ]]
		then
			cp ${list[i]} /XXXXX/
		else
			echo "Warning: $name was already added to the archive."
		fi
		