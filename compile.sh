#!/bin/bash

# set the variable
input=${1}
name=${input%*.*}
ext=${input#*.*}

# check extension name and branch
if [ ${ext} == "c" ]; then
	gcc -o ${name} ${input}
elif [ ${ext} == "cpp" ]; then
	g++ -o ${name} ${input}
else
	echo "Do not need to use this script!"
fi

# if there is second variable, check code
if [ $# -eq 1 ]; then
	echo "Create a object file >> "${name}
elif [ $# -eq 2 ]; then
	if [ ${2} == "-t" ]; then
		echo "Create a object file >> "${name}
		./${name}
	elif [ ${2} == "-r" ]; then
		echo "Create a object file >> "${name}
		./${name}
		rm -rf ${name}
	else
		echo "Unclear code..."
	fi
else
	echo "Too much variable!"
fi
