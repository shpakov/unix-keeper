#!/bin/bash
#Tested on Linux 3.10.0-327.18.2.el7.x86_64
#Get CPU usage
top -bn1 | grep "Cpu(s)" | awk '{print "cpuUsed=" 100 - $8}'
