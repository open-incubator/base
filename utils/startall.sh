#!/bin/bash
while IFS= read -r line
do
	echo "Line: $line"
	IFS=' ' read -ra args <<< "$line"
	Git="${args[0]}"
	Directory="${args[1]}"
	echo "Running startp for $Directory"
	./utils/startp.sh $Git $Directory
done < projects.list
