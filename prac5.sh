#!/bin/bash
echo "Enter Your String"
read input
reverse=""
len=${#input}

for(( i=$len-1; i>=0; i-- ))
do
 reverse="$reverse${input:$i:1}"
done
if [ "$input"=="$reverse" ] 
then
	echo "Palindrome"
else
	echo "Not"
fi

