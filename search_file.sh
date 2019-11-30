#!/bin/bash

echo file name or file name part  : $1

if [ -v $2 ]
then 
	searched_file=$(find . -maxdepth 0 -name *$1* 2>/dev/null)
	if [ -v $searched_file ]
	then
		searched_file=$(find . -name *$1* 2>/dev/null)
	fi
else
	searched_file=$(find $2 -maxdepth 0 -name *$1* 2>/dev/null)
	if [ -v $searched_file ]
	then
		searched_file=$(find $2 -name *$1* 2>/dev/null)
	fi
fi

if [ -v $searched_file ]
then
	echo file not exist
else
	echo file exist : $searched_file
fi


