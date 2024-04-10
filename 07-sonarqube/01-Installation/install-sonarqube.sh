#!/bin/bash

# Create sonar user to manage the SonarQube server, grant sudo access, and set hostname
sudo useradd sonar
echo "sonar ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/sonar
sudo hostnamectl set-hostname sonarqube-server 

# Enable PasswordAuthentication in the server and install Java JDK 1.8+
sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
sudo systemctl restart sshd
sudo yum install unzip wget git java-17-openjdk -y

# Download and extract the SonarQube Server software
cd /opt
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.4.87374.zip
sudo unzip sonarqube-9.9.4.87374.zip
sudo rm -rf sonarqube-9.9.4.87374.zip
sudo mv sonarqube-9.9.4.87374 sonarqube

# Grant file permissions for sonar user to start and manage SonarQube
sudo chown -R sonar:sonar /opt/sonarqube
sudo chmod -R 775 /opt/sonarqube

# Configure SonarQube to run as a service
cat <<EOF | sudo tee /etc/systemd/system/sonar.service
[Unit]
Description=SonarQube service
After=syslog.target network.target

[Service]
Type=forking
ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start
ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop
User=sonar
Group=sonar
Restart=always
LimitNOFILE=131072
LimitNPROC=8192

[Install]
WantedBy=multi-user.target
EOF


# Reload, enable and start the sonar service
sudo systemctl daemon-reload
sudo systemctl enable --now sonar
sudo systemctl status sonar
