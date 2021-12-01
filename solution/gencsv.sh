#!/bin/bash

MAXCOUNT=${1:-9}
count=0
while [ "$count" -le $MAXCOUNT ]
do
  number=$RANDOM
  echo $count ', ' $number >> inputFile
  let "count += 1"  # Increment count.
done
chmod 755 inputFile
