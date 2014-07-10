#!/bin/bash

path=$(pwd)
source=$1
cd $path/src/$source/

for img in *.bmp; do
    filename=${img%.*}
    convert "$filename.bmp" -fuzz "2%" -transparent \#ff00ff "$path/../$source/src/$filename.png"
done

