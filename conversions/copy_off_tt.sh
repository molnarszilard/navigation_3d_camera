#!/bin/bash

cd $1

nr=0

cd off
for filename in *.off; do
    if (($nr%3==0))
    then
        cp "$filename" ../test/"$1_$filename"
    else
        cp "$filename" ../train/"$1_$filename"
    fi
    nr=$((nr+1))
done




