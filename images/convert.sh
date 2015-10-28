for file in qc*[1-9].png
do
    convert $file -resize 400x284 "$file"_small.png
done
