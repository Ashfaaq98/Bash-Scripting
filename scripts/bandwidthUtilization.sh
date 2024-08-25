#!/bin/bash
#Purpose: Report the bandwidth Utilized on each interface
#Version: 1.0
#Created date: Sun 17 Oct 2021 06:11:04 PM +0530
#START

HOSTNAME=`hostname`
bandwidth=`bwm-ng -o plain -c1  | grep "s0" | awk '{print $1,$4,$5}'`


echo "The bandwidth utilized on host $HOSTNAME" 
echo "$bandwidth "





#END
