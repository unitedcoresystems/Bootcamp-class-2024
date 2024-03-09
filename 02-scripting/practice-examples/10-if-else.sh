#!/bin/bash

echo "Please enter your name"
read name
echo "$name, welcome to Bank of America Bank"
echo "Please enter your pin"
read -s pin  # -s pass a secret variable
if (( $pin == 1234 ))
  then
  echo "Access granted"  
  fi