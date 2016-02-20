#!/bin/bash
#Return the number of hosts in the local network

add(){
	if (($# == 1));then
		echo $1 $2	
	fi
}


checkNetwork(){
	echo -e "checking network status...\n"
	ping -c 5 www.google.com > /dev/null
}

checkHost(){
	echo -e "Checking host $1"
}

checkNetwork
networkStatus=$?

case $networkStatus in
	0) echo -e "Network is working!\n";;
	2) echo -e "Unknow Host\n";;
esac


#checkHost localhost

add 1234


