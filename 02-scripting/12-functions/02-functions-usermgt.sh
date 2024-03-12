#!/bin/bash

create_user() {
  local name=$1
  local group=$2
  local sudo_access=$3

  # 1. Create a new user
  sudo useradd $name
  if [ "$?" -ne 0 ]; then
    echo "Error creating user $name."
    echo "This user already exists."
    exit 1
  fi

  # 2. Create a group
  sudo groupadd $group
  # Check if the group creation was successful
  if [ "$?" -ne 0 ]; then
    echo "Sorry, the group $group already exists."
    echo "Do you want to continue? (yes/no)"
    read response
    if [ "$response" != "yes" ]; then
      exit 1
    fi
  fi

  # 3. Add user to the group
  echo "Adding $name to $group"
  sudo usermod -aG $group $name

  # 4. Add user to the sudoers group, if requested
  if [ "$sudo_access" == "yes" ]; then
    sudo echo "$name ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$name
    echo "$name has been added to the sudoers group."
  else
    echo "Not adding $name to the sudoers group."
  fi

  # 5. Check if user and group has been created
  echo "$name has been created successfully."
  id $name
}

# This script requires root/sudo access
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <username> <group> <sudo: yes or no>"
    echo "Example: $0 Mike Tesla yes"
    exit 1
fi

create_user "$1" "$2" "$3"
