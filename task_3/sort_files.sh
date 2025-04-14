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
