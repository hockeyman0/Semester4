#!/bin/bash

#1 Only find the String with characters S n o w.
#2 only  find the string "Snow"
#3 only search for not a string that does not start with"Snow" then . anything
#4 matches any cart care card
#5 matches any string matching good or bad and very good or very bad.
#6 matches any string of a number, followed by one ore more number
#7 matches any string that has characters 0-9 and A-F
#8 matches any combination of bye and hi 's 
#9 any string that begins with a-z and ends with a-z
#10 any string that matches (oh)
#11 a character A-F followed by not A-F and followed by a number and repeat until the end of the string
#12 Will search for any 
#13 will match any string of any length
#13 
pat="[a-f0-9](:[a-f0-9])*"
echo $pat

if [[ "$1" =~ (zz)* ]];

if [[ "$1" =~ x|X ]]

if [[ "$1" =~ (1|0)(+|-)[0-9]+ ]]

if [[ "$1" =~ (-|+)?[0-9]*\.?[0-9]* ]]

if [[ "$1" =~ ^[0-9][0-9][0-9][0-9][0-9]$ ]]


if [[ "$1" =~ [0-9]{5} ]]

if [[ "$1" =~ .*(a b c).* ]]

if [[ "$1" =~ (^x)x(^x) ]]

if [[ "$1" =~ (\([0-9][0-9][0-9]\) [0-9]{3}-[0-9]{4}) ]]

if [[ "$1" =~ ^([1900-2100]-[01-12]-[01-31]@[00-23]:[00-59]:[00-59])$ ]]


#1 egrep "printf" hello.c
#2 egrep -x "return" Quick.py
#3 egrep -v "#.*" script.bash
#4 egrep -n "ee364" roster.txt
#5 egrep -i "hello" values.rtf
#6 egrep -x "\(([0-9]{3})\) ([0-9]{3})-([0-9]{3})"




exit 0

