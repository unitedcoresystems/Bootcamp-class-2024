#!/bin/bash

echo "while loop is starting ..."
counter=1
while [ $counter -le 5 ]; do 
  echo "running number test"
  echo $counter
  ((counter++)) 
  sleep 2
done  
echo "while loop ends"

