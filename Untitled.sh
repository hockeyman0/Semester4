#!/bin/bash

number=10
echo "There are $numbers of people"
echo "There are ${number}s of people"

((5 == 5))
echo $?

echo –n “Enter a line of text:”
#read aLineOfText
#echo “You entered: “ $aLineOfText

printf "Price: $%0.2f" 0.99
echo""
printf "%0.2f" 3.14159
echo ""
String_Var=HE
printf "HI %5s" $String_Var
echo
echo "${HOME}"
echo '${HOME}'

printf $USER
#NO
echo
printf "%15s\n" $SHELL

echo They said, "Hello, World."
echo "$""2.679"

echo $0

(( 5 == 5))

echo $?

if [ -e test.txt ] # does the file exist?! echo $?
then
	echo "FILE FOUND"
else
	echo "file not found"
fi

[[ -e test.txt ]]
	

echo $?
[[ -e Untitled.sh ]]
	

echo $?

[[ -z "" ]]
echo $?