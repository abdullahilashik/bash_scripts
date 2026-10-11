#!/bin/bash

ping -c1 $1 &> /dev/null
if [ $? -eq 0 ]
then
	echo "Ping Result Ok for $1"
else
	echo Ping Result Not OK for $1
fi
