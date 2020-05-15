#!/bin/sh

folder_list=$(locate $1)
for i in $folder_list
do
	rm $i -rf;
done
