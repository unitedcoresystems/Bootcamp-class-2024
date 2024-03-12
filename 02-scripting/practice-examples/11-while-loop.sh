#!/bin/bash

echo "while loop starts"
echo "performing load testing for Tesla"
l=10000
while [ $l -le 90000 ]  # This condition will include the load of 90,000 in the testing
do
  echo "Carrying load of $l"
  l=$((l + 10000))
done
echo "while loop ends"
