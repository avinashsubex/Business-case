#!/bin/bash

for files in *
do
	mv $files /Users/abhayacaranaacyutadas/Desktop/linux/move_process_del
	cd /Users/abhayacaranaacyutadas/Desktop/linux/move_process_del
	file_count=ls | wc -l
	until [ $file_count -eq 0 ]
	do
		sleep 10
		find . -exec rm {} \;
		file_count=0
	done
	
	echo "Moved all files from move_files folder to move_process_del folder and deleted post operation"
done
