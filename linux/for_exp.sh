#!/bin/bash
#for loop

##      FFFFFFF  OOOOO  RRRRRR              LL       OOOOO   OOOOO  PPPPPP  
##      FF      OO   OO RR   RR             LL      OO   OO OO   OO PP   PP 
##	FFFF    OO   OO RRRRRR              LL      OO   OO OO   OO PPPPPP  
##	FF      OO   OO RR  RR              LL      OO   OO OO   OO PP      
##	FF       OOOO0  RR   RR             LLLLLLL  OOOO0   OOOO0  PP      

#Example no :1                                                                    
#commenting for loop here
: '
for values in 1 2 3
do
	echo "I am line - ${values}"
done


echo "I am here"
'

#Example no 2-:
#we can comment like this also -:
<<comment
for values in {1..20}
do
        echo "I am line - ${values}"
done

echo "I am here"
comment

#Example no 3
: '
for values in {1..20..2}
do
	echo "I am line - ${values}"
done
'


#Example no 4
<<comm
for (( i=0; i<5; i++ ))
do 
	echo "I am in line - ${i}"
done
comm

: '
#Example no 5
for commands in ls pwd date df
do
	echo "----------------$commands-----------------"
	$commands
done
'

#Example no 6
#loop for removing directories present in this pwd
for items in *
do
	if [ -d $items ]
	then
		echo $items
		rmdir $items
	fi

#	echo "Hello, I am - ${items}"
done


                                                           
