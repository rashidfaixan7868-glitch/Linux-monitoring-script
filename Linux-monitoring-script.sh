#!/bin/bash

echo "====================="

echo "USER : $USER"
echo "DATE : $(date)"
echo "UPTIME :"

uptime -p

echo "====================="
echo " SYSTEM STATS "
echo "DISK USAGE : "
df -h
echo "MEMORY USAGE :"
free -h

echo "====================="
echo "PROCESS SECTION"
ps aux --sort=-%cpu | head -4
echo "====================="
echo "Enter a process name : "
read pname
if ps aux | grep "$pname" | grep -v grep > /dev/null
then
    echo "process is running"
    ps aux | grep "$pname" | grep -v grep
else
    echo "process not running"
fi