#!/bin/bash  

# This script requires root/sudo access
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <name> <group> <sudo: yes or no>"
    echo "Example: $0 Mike Tesla yes"
    exit 1
fi

<<'comment' 
name=$1
group=$2
sudo_access=$3

#1. Create a new user  

#Add new user  
sudo useradd $name
if [ "$?" -ne 0 ];then
    echo "Error creating user $name."
    echo "this user already exist"
    exit 1
fi


#2. create a group  

#Add new group 
sudo groupadd $group

#check if the group creation was successful 
if [ "$?" -ne 0 ]; then
    echo "Sorry, the group $group already exists."
    echo "Do you want to continue? (yes/no)"
    read response
    if [ "$response" != "yes" ]; then
        exit 1
    fi
fi

#3. Add user to the tesla group 
echo " adding $name to $group"
sudo usermod -aG $group $name

#4. Add user to the sudoers group 
if [ uid == 0 ]
then
sudo echo "$name ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$name
echo "$name has been added to the sudoers group"
else
echo "sorry only the root can add users to the sudoers group"
fi

#5 check if user and group has been created
echo "$name has been created sucessfully"
id $name

comment 