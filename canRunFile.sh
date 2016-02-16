#!/bin/bash
# Testing file execution

if [ -x myscript.sh ];then
	echo "You can run the script\n"
	./myscript.sh
else
	echo "Sorry, you are unable to execute the script"
fi
