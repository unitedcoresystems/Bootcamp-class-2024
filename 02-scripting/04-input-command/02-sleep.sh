#!bin/bash
# This script will authenticate bank users
# Author: Emmanuel

# Greet the customer 
echo "Good morning"
# Ask for his name 
echo "Please enter your name"
# Let him enter his name 
read name   
# welcome the customer to our bank 
echo "$name, Welcome to Bank of America"  
# requestr for user pin 
echo "Please enter your card"
# Allow user to perform action
sleep 10
# Request for user pin 
echo "Please enter your pin"
# Allow user to enter pin
read pin
# Authenticate user 
echo "You are authenticated."
# Apperciate customer 
echo Thanks for banking with Bank of America
  