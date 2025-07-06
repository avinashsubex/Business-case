#!/bin/bash

i=1
until [ $i -gt 5 ]
do
	touch file$i.txt
	((i++))
done

