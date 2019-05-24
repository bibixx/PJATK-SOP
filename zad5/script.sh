#!/bin/bash
X=3

rm P.txt 2>/dev/null

for arg in $@; do
  empty=0
  if [[ -d $arg ]]; then
    for file in $(ls -A $arg); do
      if ! [[ -s "$arg/$file" ]]; then
        empty=$(expr $empty + 1)
      fi
    done;
  fi

  if [[ $empty -gt $X ]]; then
    mod=$(stat -f "%m" $arg)
    echo "$mod | $arg | $empty" >> P.txt
  fi
done

sort P.txt
