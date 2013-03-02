#!/bin/bash

Number_args=$#
output='file_list'
touch $output

for (( i = $Number_args; i > 0; i-- ))
do
    touch $1
	chmod +x $1
	printf "$1\n" >>$output
	printf '#$Author$\n' >> $1
	printf '#$Date$\n' >> $1
	printf '#$Revision$\n' >> $1
	printf '#$HeadURL$\n' >> $1
    shift
done