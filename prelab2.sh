#!/bin/bash

A=(foo bar baz)
A[5]=cosby
A[10]=jello

for item in ${A[*]}
do
	echo $item
done

B=(1 2 3 hello)
Arr=()
for ((I = 0; I < ${#A[*]}; I++))
do	
	echo ${Arr[$I]}
done




Arr=(1 2 3 hello)
#Arr=()
echo ${Arr[0]}
#${Arr[*]}
Arr[0]=7
echo ${#Arr[*]}
echo ${!A[*]}

Vals="hello hi hola hiya"
Arrr=()
Arrr=($Vals)
echo ${!Arrr[*]}
echo $@
Arr2=($@)
vals="$1 $2 $3 $4"
echo $vals
Arr2=($vals)
echo ${Vals[1]}

C[27]="x"
C[6]="y"
C[86]="z"
echo "${!C[*]}"

for I in ${C[*]}
do
	echo "$I"
done
touch first10.txt
head -n 10 output >>first10.txt

echo
tail -6 first10.txt

#touch file.del
(rm file.del) &>/dev/null

# ./userinput.bash $@

echo $0

USER_PATH='/home/ecegrid/a/ee364j12/Prelab03'
USER_ID=$(echo $USER_PATH | cut -f5 -d'/' | tail -c 4)
echo $USER_ID

touch compile.out

cc -Wall windows8.c 1>compile.out 2>compile.out 

echo "whats what? "
read -p "HUH?" hahaha 
IFS=' '
 cache=$(echo {1..10})
echo {1..10}
cache=($cache)
echo ${cache[2]}
num=$(echo '6^2' | bc)
echo $num



exit 0