#!/bin/bash
#Purpose: Remove users in a text file from the system
#Version: 1.0
#Created date: Sun 17 Oct 2021 10:25:06 AM +0530
#START

if [ $# = 0 ]; then
	echo "Please provide the user list as the parameter: sh /$PWD/userdel.sh filename"
elif [ -f $1 ];then
	for i in `cat $1`
	do
		userdel -r $i
	done
else
	echo " $1 file not found"
fi

#END
