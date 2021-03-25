#!/bin/bash
inf=$(uname -a)
ni=$(ifconfig -s)
oni=$(ip link)
di=$(lsb_release -a)
fc=$(cat /etc/sysctl.conf)
echo -e "Information about operation system, including version: \n$inf \n\n 
Short information about network interfaces: \n$ni \n\n
Extended information about network interfaces: \n$oni \n\n
Distribution information: \n$di \n\n
Firewall configuration: \n$fc " > osinfo.txt