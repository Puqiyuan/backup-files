#!/bin/bash

counter=0
while true; do
	cat /sys/kernel/debug/tracing/trace >/home/pqy7172/tmp
	size=`wc -l /home/pqy7172/tmp |awk  '{print $1}'`
	if [ "$size" -gt 70000 ]; then
		cp /home/pqy7172/tmp /home/pqy7172/log
		counter=$(($counter + 1))
		echo $counter done
	fi
done
