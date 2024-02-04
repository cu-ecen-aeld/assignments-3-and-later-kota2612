#!/bin/bash
dir=$(dirname ${1})
dir="${dir:1}"
files=$(find ${dir} -type f | wc -l)
lines=$(grep -r "${2}" ${dir} | wc -l)
echo "The number of files are ${files} and the number of matching lines are ${lines}"
exit 0
