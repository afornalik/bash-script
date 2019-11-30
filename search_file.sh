#!/bin/bash

echo file name or file name part  : $1
echo located in : $2

if [ -v $2 ]
then 
	looking_file=$(find . -name *$1*)
	echo file located $looking_file
else
	looking_file2=$(find $2 -name *$1*)
	echo file located $looking_file2 in directory $2
fi


