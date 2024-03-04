#!/bin/bash

# Welcome customer 
echo "Good morning"

# Ask for customer name 
echo "Please enter your name"
read name   

# welcome the customer to our bank 
echo "$name, Welcome to Bank of America"  

# request customer enter credit / debit card  
echo "Please enter your card"
sleep 10

# Request for user pin 
echo "Please enter your pin"
read pin

# Authenticate user 
echo "You are authenticated."

# Apperciate / deny customer authentication
echo Thanks for banking with Bank of America