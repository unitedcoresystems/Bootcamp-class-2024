#!/bin/bash

# Simple calculator script to demonstrate command-line arguments

operation=$1
num1=$2
num2=$3

case $operation in
  add)
    result=$((num1 + num2))
    ;;
  subtract)
    result=$((num1 - num2))
    ;;
  multiply)
    result=$((num1 * num2))
    ;;
  divide)
    result=$((num1 / num2))
    ;;
  *)
    echo "Unsupported operation: $operation"
    exit 1
esac

echo "Result: $result"