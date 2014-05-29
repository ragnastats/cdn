#!/bin/bash

cd src/item/

for img in *.bmp; do
    filename=${img%.*}
    base64=$(echo $filename | base64)
    convert "$filename.bmp" -fuzz "2%" -transparent \#ff00ff "$base64.png"
done

#convert test2.bmp -fuzz "2%" -transparent \#ff00ff test2.png
#convert test2.bmp -fuzz "2%" -transparent \#ff00ff test2.png
