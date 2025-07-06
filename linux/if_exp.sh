#!/bin/bash

#	IIIII FFFFFFF          EEEEEEE XX    XX   AAA   MM    MM PPPPPP  LL      EEEEEEE 
#	 III  FF               EE       XX  XX   AAAAA  MMM  MMM PP   PP LL      EE      
#	 III  FFFF             EEEEE     XXXX   AA   AA MM MM MM PPPPPP  LL      EEEEE   
#	 III  FF               EE       XX  XX  AAAAAAA MM    MM PP      LL      EE      
#	IIIII FF               EEEEEEE XX    XX AA   AA MM    MM PP      LLLLLLL EEEEEEE 


#example - 1
<<comm
#ask user to enter values

echo "Please enter a value to be compared with -: "
###prompts above line to user and waits until val_cw provided, after that execution resumes, if positional parameters like $1 given then this facility is not available
read val_cw
echo "Please enter a value to compared to -: " 
###prompts above line to user and waits until val_cw provided, after that execution resumes, if positional parameters like $1 given then this facility is not available
read val_ct


if [ $val_cw -le $val_ct ]
then
	echo "Yes, it is, ${val_cw} is less than ${val_ct}"
else
	echo "No, ${val_cw} is not less than ${val_ct}"
fi       
comm

                                                                  
#example - 2
#Checking and displaying the file, directory
for items in *
do 


<<comm
	if [ -f $items ] #"-f" check if file
	then
		echo "This is a file and file name is - ${items}"
	elif [ -d $items ] #"-d" check if directory
	then
                echo "This is a directory and directory name is - ${items}"
	else
		echo "Not a dir, not a file"
	fi
comm

#alternatively, the above if statement can be run without [] bracket by using an "test" command, which is shown as below

	if test -f $items
        then
                echo "This is a file and file name is - ${items}"
        elif test -d $items 
        then
                echo "This is a directory and directory name is - ${items}"
        else
                echo "Not a dir, not a file"
        fi

done
