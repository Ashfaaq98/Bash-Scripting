#!/bin/bash
#Purpose: Adding new users from a text file to the system
#Version: 1.0
#Created date: Sun 17 Oct 2021 10:20:30 AM +0530
#START


# Provide the user list file as a parameter
if [ $# = 0 ];then
	echo "Provide user file list as the argument:=> sh /$PWD/useradd.sh filename"
elif [ -f $1 ];then
	for i in `cat $1`
	do
		useradd -s /bin/bash $i
	done
else
	echo "The provided user list file is not found"
fi
#END
