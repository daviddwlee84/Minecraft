#!/bin/bash
if [ $1 ]; then
    date_str=$1
else
    echo "Please provide world date (e.g. 20221211)"
    exit
fi

zip_file=world_$date_str.zip

cd JavaServer

# https://gist.github.com/gauravbarthwal/3fc0b44934ce78a97fd4e99322d2ed62
# Combine zip and unzip
zip -s- $zip_file -O world.zip
unzip world.zip
