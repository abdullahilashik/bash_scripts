#!/bin/bash
ip_file="ip_list_file"

ping_check() {
	local ip=$1
	ping -c1 $ip &> /dev/null
	if [ $? -eq 0 ]
	then
		echo "Host $ip is healthy"
	else
		echo "Host $ip is not healthy"
	fi
}

for name in $(cat $ip_file)
do
	ping_check $name
done
