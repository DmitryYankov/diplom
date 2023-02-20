#!/bin/bash


# Develop a script with a function which will multiply two numbers provided as parameters.
# Script should return 0 if the result is the even number, and 1 - if not.
multiply=0
#declare func
function func () {
	 a=$1
	 b=$2
	multiply=$((a * b))
	check=$(("$multiply" % 2)) 
	if
	      	[[ "$check" -eq 0 ]]
	then	# if even
       		echo "0, it's even"
	else	# if odd
        	echo "1, it's odd"
	fi
	echo $multiply
}

#call func
func "$1" "$2"