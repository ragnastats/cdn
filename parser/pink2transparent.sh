#!/bin/bash

path=$(pwd)
cd $path/src/item/

for img in *.bmp; do
    filename=${img%.*}
 #   base64=$(echo $filename| base64 | tr / -)
    convert "$filename.bmp" -fuzz "2%" -transparent \#ff00ff "$path/../item/src/$filename.png"
done

cd $path/src/collection/

for img in *.bmp; do
    filename=${img%.*}
  #  base64=$(echo $filename| base64 | tr / -)
    convert "$filename.bmp" -fuzz "2%" -transparent \#ff00ff "$path/../collection/src/$filename.png"
done
