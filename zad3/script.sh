#!/bin/bash
IN=$1
OUT_LETTERS=$2
OUT_NUMBERS=$3

rm $OUT_LETTERS 2>/dev/null
rm $OUT_NUMBERS 2>/dev/null

while line= read -r line;
do
  numbers=""
  charcters=""
  for character in $line
    do
      r="[0-9]"
      if [[ $character =~ [0-9] ]]; then
        numbers="$numbers $character"
      else
        charcters="$charcters $character"
      fi
    done
  echo $numbers >> $OUT_NUMBERS
  echo $charcters >> $OUT_LETTERS
done < $IN
