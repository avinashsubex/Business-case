#!/bin/bash

#	WW      WW HH   HH IIIII LL      EEEEEEE             LL       OOOOO   OOOOO  PPPPPP  
#	WW      WW HH   HH  III  LL      EE                  LL      OO   OO OO   OO PP   PP 
#	WW   W  WW HHHHHHH  III  LL      EEEEE               LL      OO   OO OO   OO PPPPPP  
#	 WW WWW WW HH   HH  III  LL      EE                  LL      OO   OO OO   OO PP      
#	  WW   WW  HH   HH IIIII LLLLLLL EEEEEEE             LLLLLLL  OOOO0   OOOO0  PP      
                                                                                     


i=10;
while [ $i -ge 0 ]
do
	echo "Looping line - ${i}"
	((i--));
done

#Note : -le, -lt, -gt are all valid comparing operators and above example works well

