write a script to authenticate users:
-------------------------------------
# Greet the customer 
echo "Good morning"
# Ask for his name 
echo "Please enter your name"
# Let him enter his name 
read name   
# welcome the customer to our bank 
echo "$name, Welcome to Bank of America"  
# Enter your pin
echo "Please enter your pin"
# pass pin as secret 
read -s pin  # -s pass a secret variable
# validate pin 
echo "$name you entered an invalid pin"