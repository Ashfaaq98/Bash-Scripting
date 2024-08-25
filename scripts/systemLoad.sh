#!/bin/bash
#Purpose:Generated system Load, Cpu Utilization and Memory Utilization on the host
#Version: 1.0
#Created date: Sun 17 Oct 2021 08:46:25 AM +0530
#START


HOSTNAME=`hostname`
DATE=`date "+%d-%m-%y %H:%M:%S"`


LOAD=`uptime | awk '{print $9,$10,$11 }'`
CPU=`top -b -n 2 -d1 | grep "Cpu(s)" | tail -n1 | awk '{print $2}'`
MEMORY=`free -m | grep Mem: | tail -n1 | awk '{print $2,$3}'`

echo "$DATE $HOSTNAME Load Average: $LOAD CPU Usage: $CPU Memory(total and  used in MB): $MEMORY"


#END
