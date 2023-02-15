#!/bin/bash
if [ $1 ]; then
    version=$1
else
    echo "Please provide game version (e.g. 1.16.5)"
    exit
fi

date_str=`date "+%Y%m%d"`
zip_file=logs_$version.zip

cd JavaServer

# Single large file
# zip -9 -r $zip_file world
# TODO: automatically detect version and +1?!
#       (but how do it know the Minecraft version is a problem)
# gh release create v$1 $zip_file

zip -9 -r $zip_file logs
