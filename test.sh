#!/bin/bash
#echo when the specified minute occurs

currentMinute=$(date +%M)

expectedMinute=$[ $currentMinute + 1 ]

echo $currentMinute
echo $expectedMinute
while (($(date +%M) < $expectedMinute ))
do
	echo "Waiting for time...$(date +%M)\n"
	sleep 1
done
echo "ENDED"


