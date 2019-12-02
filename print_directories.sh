#!/bin/bash

for dir in $1/*/
do
	dir=${dir%*/}
	echo -${dir##*/}
	for dirr in $dir/*/
	do
		dirr=${dirr%*/}
		echo --${dirr##*/}
		for dirrr in $dirr/*/
		do
			dirrr=${dirrr%*/}
			echo ---${dirrr##*/}
		done
	done
done
