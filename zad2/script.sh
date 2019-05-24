#!/bin/bash
read OUTPUT

rm $OUTPUT 2>/dev/null

for n in $@
do
  if test $(ls -Ap $n | egrep "^.*[^/]$" | wc -l) -lt 110; then
    permissions=$(ls -lA | egrep "$n$" | egrep "^[^ ]+" -o | egrep "[^d].+" -o)

    echo "$permissions $n" >> $OUTPUT
  fi
done
