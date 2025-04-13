#!/bin/bash




script_name=($0)

for file in `ls -p | grep -v / | sort -fu`
do
    if [ "$file" != "$script_name" ]; then

        extension="${file##*.}"
        extension="${extension,,}"

        [ ! -d "$extension" ] && mkdir "$extension"

        mv "$file" "$extension/"
    fi
done
#	do

#if [ ! -d "${file:1}" ]
#then
#mkdir "${file:1}"
#fi
#done

#mv *. "${file:1}"  "${file:1}"
#done

#file=$0

#ext=`echo ${ file:2} |  grep -o '...$'` |  :1
#echo $ext
#echo "${file##*.}"

