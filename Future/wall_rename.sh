#!/bin/sh
i=47; temp=$(mktemp -p .); for file in *.jpg
do
mv "$file" $temp;
mv $temp $(printf "wallpaper_%0.3d.png" $i)
i=$((i + 1))
done
