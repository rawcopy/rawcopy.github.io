for file in qc*
do
    convert $file -resize 877x622 "$file"_small.png
done
