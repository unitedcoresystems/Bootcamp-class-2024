#!/bin/bash

# Set hostname
sudo hostnamectl set-hostname maven

# Install prerequisites
sudo yum install wget vim tree unzip git-all java-11-openjdk-devel java-1.8.0-openjdk-devel -y

# Switch to the /opt directory
cd /opt

# Download and install Maven using a zip file
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.zip
sudo unzip apache-maven-3.9.6-bin.zip
sudo rm -rf apache-maven-3.9.6-bin.zip
sudo mv apache-maven-3.9.6 maven

# Alternatively, download and install Maven using a tar file
# sudo curl -O https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
# sudo tar -xvzf apache-maven-3.9.6-bin.tar.gz
# sudo rm -rf apache-maven-3.9.6-bin.tar.gz
# sudo mv apache-maven-3.9.6/ maven

# Set environment variables for ec2-user
echo "export M2_HOME=/opt/maven" >> /home/ec2-user/.bash_profile
echo "export PATH=\$PATH:\$M2_HOME/bin" >> /home/ec2-user/.bash_profile

# Refresh the profile file and verify Maven installation
source /home/ec2-user/.bash_profile
mvn --version
