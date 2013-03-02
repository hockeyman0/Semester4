#!/bin/bash

#
#$Author$
#$Date$
#$Revision$
#$HeadURL$

if (( $# < 2 ))
then
	echo "Usage: run.bash <input file> <output file>"
	exit 1
fi

gcc $1 -o quick_sim
compileerror=$?

if (( 0 != $compileerror ))
then
	echo "error: quick_sim could not be compiled!"
	exit 2
fi

if [[ -e $2 ]]
then
	read -p "$2 exists. Would you like to delete it? " yesno
	#echo $yesno
	if  [[ "$yesno" == "n" ]]
	then
		read -p "Enter a new filename: " output
	else
		rm $2
		output=$2
	fi
else
	output=$2
fi

touch $output


for (( cache = 0; cache <= 5; cache++ ))
do
	for (( width = 0; width <= 4; width++ ))
	do
		powcache=$(echo "2^$cache" | bc)
		#echo $powcache
		powwidth=$(echo "2^$width" | bc)
		#echo $powwidth
		./quick_sim $powcache $powwidth a >>$output
		#line= $(./quick_sim $powcache $powwidth a)
		
		./quick_sim $powcache $powwidth i >>$output
		
		
	done
	
done

lines=$(cat $output | wc -l)
#echo $lines


#IFS= ':'
fastest=0
#echo $fastest
while read line
do

#echo $line
currentspeed=$(echo $line | cut -f10 -d':' )
currentprocessor=$(echo $line | cut -f2 -d':' )
currentcache=$(echo $line | cut -f4 -d':' )
currentwidth=$(echo $line | cut -f6 -d':' )

if (( 0 == $fastest ))
then
	fastest=$currentspeed
	fastestprocessor=$currentprocessor
	fastestcache=$currentcache
	fastestwidth=$currentwidth
	#echo $currentprocessor
	#echo $currentcache
	#echo $currentwidth
	#echo $fastest
fi


if (( $currentspeed < $fastest ))
then
	fastest=$currentspeed
	fastestprocessor=$currentprocessor
	fastestcache=$currentcache
	fastestwidth=$currentwidth
	#echo $currentprocessor
	#echo $currentcache
	#echo $currentwidth
	#echo $fastest
fi
	

done < $output

echo "Fastest run time achieved by $fastestprocesspr with cache size $fastestcache and issue width $fastestwidth was $fastest"


exit 0