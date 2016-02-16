#!/bin/bash

i=0
while [ $i -le 10 ]
do
	echo "The value of i is $i"
	sleep 1
	((i = $i + 1  ))
	./for.sh
done
