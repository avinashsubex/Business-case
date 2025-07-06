#!/bin/bash 

#until loop is just reverse of While loop, the loop works until the condition is false

i=1
until [ $i -gt 10 ]
do
#	echo "Is i's value greater than 10\"s?"  #escaping " here by using backslash before, like \"
	echo "i's value is - ${i}"
	((i++))
done
