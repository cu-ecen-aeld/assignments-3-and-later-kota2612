#!/bin/bash
if [ $# != 2 ]
then
	echo " please pass correct parameters"
	exit 1
fi
file=$(basename ${1})
dir=$(dirname ${1})
dir="${dir:1}"
if [ ! -e dir ]
then
	mkdir -p $dir
	echo "${2}" > ${dir}/${file}
fi
