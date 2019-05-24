#!/bin/bash
for ext in $@; do
  ls -Ap | egrep "[^/]" | egrep "\.$ext$"
done
