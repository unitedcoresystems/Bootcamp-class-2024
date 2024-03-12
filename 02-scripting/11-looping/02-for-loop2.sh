#!/bin/bash 

for (( i=1; i<=5; i++ ))
do
  echo "Number $i"
done

<<'comment' 
for i in {1..10}
do
  echo "Number $i"
done
comment