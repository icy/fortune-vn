#! /usr/bin/env bash

OUTPUT=${OUTPUT:="all.txt"}

cd data
rm -f ${OUTPUT} ${OUTPUT}.dat
touch ${OUTPUT}

for file in *[^all].txt; do
    cat ${file} >> ${OUTPUT}

    if [[ $(tail -n 1 ${file}) != "%" ]]; then
        echo % >> ${OUTPUT}
    fi
done

strfile -c % ${OUTPUT} ${OUTPUT}.dat

echo Done, Have fun!