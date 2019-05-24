#!/bin/bash

sum=0
while read -r line; do
  for filename in $line; do
    JUNK=$(cat $filename)
    NUMBERS="${JUNK//[^0-9]/ }"

    for n in $NUMBERS; do
      sum=$(expr $sum + $n)
    done
  done;
done < $1

echo $sum
