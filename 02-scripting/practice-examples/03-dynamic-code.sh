#!/bin/bash
user=Jeff
group=Beta
sudo useradd $user 
sudo groupadd $group
sudo usermod -aG $group $user
sudo echo "$user ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$user
id $user