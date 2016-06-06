#!/bin/bash
#Tested on Linux 3.10.0-327.18.2.el7.x86_64
#Get CPU usage
top -bn1 | grep "Cpu(s)" | awk '{print "cpuUsed=" 100 - $8"%"}'
#Get RAM usage
free -m | awk 'NR==2{printf "ramUsed=%.2f%\n",$3*100/$2 }'
