#!/bin/bash  

name=$1 
group=$2

# This script requires root/sudo access
#1. Create a new user  
echo "Creating user with name $name and group $group" 
#Add new user  
sudo useradd $name
#2. create a group  
echo "Please enter your group name" 
read group
#Add new group 
sudo groupadd $group
#3. Add user to the tesla group 
sudo usermod -aG $group $name
#4. Add user to the sudoers group 
sudo echo "$name ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$name
#5 check if user and group has been created
id $name