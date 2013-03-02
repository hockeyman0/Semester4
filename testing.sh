#!/bin/bash

egrep "79$" tempsA 

echo
IFS='/:  '
array=($(date))
echo $(( ${array[2]}+${array[3]}+${array[4]}+${array[5]}+${array[7]} ))