#!/bin/bash

networkresponse=$(ifconfig wlan0 | grep "inet addr" | gawk '{print $2}')

networkArray=(${networkresponse//:/ })
if [[ $networkresponse == *"inet addr"* ]]; then
  echo "asdf"
fi

echo "Current Address: " ${networkArray[1]}
echo "Searching for all ip connected in the network..."
machineIP=${networkArray[1]};

splittedArray=(${machineIP//./ })
lastIpNumber=${splittedArray[3]}
ips=()
for (( i = 149; i <= 155; i++ ))
{
  if [ $i -ne ${lastIpNumber} ]; then
    currentIp="${splittedArray[0]}.${splittedArray[1]}.${splittedArray[2]}.$i"
    ping -b -c 5 ${currentIp}
    if [ $? -eq 0 ]; then
      ips+=(${currentIp})
    fi
  fi
}

echo "List of hosts in local network: ${ips[*]}"
