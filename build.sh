#! /usr/bin/env bash

cd data
rm -f all.*
touch all.txt

for file in *[^all].txt; do
    cat ${file} >> all.txt

    if [[ $(tail -n 1 ${file}) != "%" ]]; then
        echo % >> all.txt
    fi
done

strfile -c % all.txt all.txt.dat

echo Done, Have fun!