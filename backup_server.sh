#!/bin/bash
if [ $1 ]; then
    version=$1
else
    echo "Please provide version number (e.g. 2.1.3)"
    exit
fi

date_str=`date "+%Y%m%d"`
zip_file=world_$date_str.zip

cd JavaServer

# Single large file
# zip -9 -r $zip_file world
# TODO: automatically detect version and +1?!
#       (but how do it know the Minecraft version is a problem)
# gh release create v$1 $zip_file

# Split files
zip -9 -s 1800m -sv -r $zip_file world
# TODO: automatically detect version and +1?!
#       (but how do it know the Minecraft version is a problem)
gh release create v$version world_$date_str.z*
