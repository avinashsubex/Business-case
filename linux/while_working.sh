#!/bin/bash
index=1
while [ $index -le 20]
do
	echo "Running while loop-${index} times"
	index=$(( index+1 ))
done
