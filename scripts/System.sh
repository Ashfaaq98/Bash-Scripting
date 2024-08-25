#!/bin/bash
#Purpose: Get the complete information on a Host
#Version:1.0
#Created date: Wed 20 Oct 2021 08:10:37 PM +0530
#START

DATE=`date`
HOSTNAME=`hostname`
NOUSERS=`w -h | wc -l`
UPTIME=`uptime | awk '{print $3}'`
KERNELVERSION=`uname -r`
OS=`cat /etc/os-release | grep PRETTY_NAME | awk -F = '{print $2}'`
LOAD=`uptime | awk '{print $10,$11,$12}'`
BANDWIDTH=`bwm-ng -o plain -c1 -d 1 | tail -n1 | awk '{print $4,$5}'`
CPU=`top -n 1 | grep "Cpu(s)" | awk '{print $2+$4}'`
TMEM=`free -m | grep Mem | awk '{print $2}'`
VMEM=`free -m | grep Swap | awk '{print $2}'`
DISK=`df -h | grep -vE 'Filesystem|tmpfs|loop' | awk '{print $5,$6}'`


echo "============================================================================"
echo "*******************************SYSTEM   REPORT******************************"
echo ""
echo "Date and Time 	 : $DATE"
echo "Host Name    	 : $HOSTNAME"
echo ""
echo "============================================================================"
echo "Number of users logged in	:$NOUSERS"
echo "Host is up for $UPTIME days"
echo "The kernel version of the Host is $KERNELVERSION"
echo "The Operating system running on the host is $OS"
echo ""
echo ""
echo "System Load: $LOAD"
echo "The total bandwidth utilized by all the network interface is $BANDWIDTH"
echo "The CPU Utilization Percentage is $CPU%"
echo ""
echo "Total Phycical Memory of the system is $TMEM MB"
echo "The total Virutal Memory of the system is $VMEM MB"
echo ""
echo "The disk utilization percentage is as follows: "
echo "$DISK"


for a in `nmcli con show --active | grep -vE NAME | awk '{print $4}'`
do
	IP=`ip addr | grep $a | tail -n1 | awk '{print $2}'`
	echo "$a $IP"
done






#END
