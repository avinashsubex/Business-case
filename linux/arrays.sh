#!/bin/bash -x

#declaring an array
os=('linux' 'mac' 'windows')

#length of array @ means all elements
echo "${#os[@]}"

#print elements of array, @ means all elements
echo "${os[@]}"

#print element at "0" index
echo "${os[0]}"

#print the index of all elements
echo "${!os[@]}"


#remove elemnt @ 2nd index
unset os[2]
echo "${os[@]}"

#adding element @ 10th index, advantage here is we can add at any index but bash ignores null values and stores only not null values at mentioned indices
os[10]='android'
echo "${os[@]}"
echo "${!os[@]}"
