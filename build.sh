#! /usr/bin/env bash

rm -f data/all.*
touch data/all.txt

for file in data/*[^all].txt; do
    if [[ $(tail -n 1 ${file}) != "%" ]]; then
        echo % >> ${file}
    fi

    cat ${file} >> data/all.txt
done

strfile -c % data/all.txt data/all.txt.dat

echo Done, Have fun!