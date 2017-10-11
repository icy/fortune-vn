#! /usr/bin/env bash

rm -f data/*.dat

for file in data/*; do
    strfile -c % ${file} ${file}.dat
done

echo Done, Have fun!