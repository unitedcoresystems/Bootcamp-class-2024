#!/bin/bash
echo "Please enter your name"
read name
echo "$name, welcome to Bank of America Bank"
echo "Please enter your pin"
read -s pin  # -s pass a secret variable
echo "$name you entered an invalid pin"