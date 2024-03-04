#!/bin/bash
sudo useradd Eben 
sudo groupadd Alpha
sudo usermod -aG Eben Alpha
sudo echo "Michelle ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/Michelle
id Michelle 