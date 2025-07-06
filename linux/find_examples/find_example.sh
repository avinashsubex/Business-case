#!/bin/bash

#Gives various use cases of "find" command
#Note -: "Find" always does recursive check, so be careful while using rm within find


#1: To list down all txt files ["." means current directory]
find . -type f -name "*.txt"

#2: To delete all txt files in the cwd
find . -type f -name "*.txt" -exec rm {} \;

#3: To delete all directories 
find . -type d -name "dir_name" -exec rmdir {} \;

#4: To find the empty files and directories
find . -type f -empty
find . -type d -empty

#5: To find the permissions of file having permission 644 ["0" in the beginning is mandatory]
find . -type f -perm 0644 -print

#6: To change the permission from 644 to 777 of all txt files
find . -type -f -name "*.txt" -perm 0644 -print -exec chmod 777 {} \;

###Similar commands for changing directory permissions

#7:To find files which are not extended with .txt
find /Users/abhayacaranaacyutadas/Desktop/linux/find_examples -type f ! -name "*.txt"  #just use negate command(!)

#8:To find files based on time of modification, access and change time
->mtime[by default days], mmin[minutes]
->atime, amin
->ctime, cmin

find . -type f -mtime +1 #files modified before 24th hr 
find . -type f -mtime -1 #files modified within 24th hr
find . -type f -mtime  1 #files modified between 24th & 48th hr 
 
