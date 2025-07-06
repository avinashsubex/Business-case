#!/bin/bash
INDEX=1;
while [ $INDEX -le 10 ] 
do
	mkdir new_directory-$INDEX; #create new directories in the current path
	echo "Running while loop-${INDEX} times"
	INDEX=$(( INDEX+1 ));
done 
