#!/bin/sh
# iterate through all the files in a directory

for file in /root/* /bin/*
do
	#aqui foi necessario colocar aspas para casos
	#onde o diretorio ou arquivo possuir espacos no nome
	if [ -d "$file" ]; then
		echo "$file is a directory"
	elif [ -f "$file" ]; then
		echo "$file is a file"
	fi
done
