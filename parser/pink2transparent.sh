#!/bin/bash

path=$(pwd)
source=$1
trim=$2
cd $path/src/$source/

for img in *.bmp; do
    filename=${img%.*}

    if [ "$trim" == "trim" ]
        then echo "Processing $filename (trimmed)"; convert "$filename.bmp" -bordercolor \#ff00ff -border 1 -fuzz "2%" -trim -transparent \#ff00ff "$path/../$source/src/$filename.png"
        else echo "Processing $filename"; convert "$filename.bmp" -fuzz "2%" -transparent \#ff00ff "$path/../$source/src/$filename.png"
    fi
done

