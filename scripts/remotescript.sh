#!/bin/bash
#Purpose:Executing scripts remotely
#Version:1.0
#Created date: Sun 17 Oct 2021 01:03:28 AM +0530
#START

for server in `cat /serverlist`
do
	ssh user@$server sh /scripts/scriptname.sh
done

#END
