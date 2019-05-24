#!/bin/bash
FILES=$(grep "\-kolokwium\-" $(ls -Ap | egrep "^.+[^\/]$" | grep "\-kolokwium\-") | wc -l)
FOLDERS=$(ls -Ap | egrep "^.+\/$" | grep "\-kolokwium\-" | wc -l)

echo $(expr $FILES + $FOLDERS)
