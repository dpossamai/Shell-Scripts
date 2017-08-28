#!/bin/bash


echo "Updating projects..."
for dir in */
do
	dir=${dir%*/}
	echo "Inside directory $dir..."
	cd ${dir}
	git pull
	cd ..
done
