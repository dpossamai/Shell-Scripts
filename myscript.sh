#!/bin/bash
# Checking directories

if [ -e $HOME  ];then
	echo "Your home directory exists, checking a file...\n"
	if [ -e $HOME/testing ];then
		#The file exists, appending data to it
		echo "appending date to existing file...\n"
		date >> $HOME/testing
	else
		#The file does not exist, create a new file
		echo "Creating new file\n"
		date > $HOME/testing
	fi
else
	echo "Sorry you dont have home directory"
fi
