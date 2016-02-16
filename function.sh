#!/bin/bash
##################################################
#By default, the exit status of a function is the #
#exit status returned by the last command in the  #
#function                                         #
###################################################

test(){
	echo "Return status example.."
	ls -l badfile
}


test

echo "The exit status is $?"
