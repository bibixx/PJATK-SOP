#!/bin/bash
amount=`ls -la . | grep ^d.*-kolokwium-.* | wc -l`
amount=[ $amount + $(grep "\-kolokwium\-" ls -a | grep "\-kolokwium\-" | wc -l) ]
echo $amount
