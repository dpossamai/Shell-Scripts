#!/bin/bash
# passing array to functions


getArray(){
	local newarray
	newarray=(`echo "$@"`)
	echo "The new array value is: ${newarray[*]}"
}

myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
getArray ${myarray[*]}

