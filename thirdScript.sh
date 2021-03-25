#!/bin/bash
utcu=$(w)
rl=$(last)
tpcpu=$(ps -Ao user,uid,comm,pid,pcpu,pmem --sort=-pcpu | head -n 10)
oo=$(top -b -o %CPU | head -17) #other option#
op=$(sudo netstat -tulpn | grep LISTEN)
vmu=$(free -t)
uds=$(df -h)
echo -e "Workstation audit \n\n
Uptime and current users: \n$utcu \n\n
Recent logins: \n$rl \n\n
Top-10 processes by RAM/CPU usage: \n$tpcpu \n\n
\n$oo \n\n
Open TCP/UDP ports: \n$op \n\n
Virtual Memory Usage: \n$vmu \n\n
Usage of disk space: \n$uds" > latest_worksation_audit.txt