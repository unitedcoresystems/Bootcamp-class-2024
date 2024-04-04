#!/bin/bash

# Set hostname and timezone
sudo hostnamectl set-hostname tomcat-server
sudo timedatectl set-timezone America/New_York

# Install Java JDK 11 and necessary tools
sudo yum install java-11-openjdk-devel -y
sudo yum install wget vim tree unzip git-all -y

# Download and install Apache Tomcat
cd /opt
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.tar.gz
sudo tar -xvf apache-tomcat-9.0.87.tar.gz
sudo rm apache-tomcat-9.0.87.tar.gz
sudo mv apache-tomcat-9.0.87 tomcat-9

# Create a system user for Tomcat with no login shell
sudo useradd --system --shell /bin/false tomcat

# Set ownership and permissions for the Tomcat directory
sudo chown -R tomcat:tomcat /opt/tomcat-9
sudo chmod -R 755 /opt/tomcat-9

# Create a systemd service file for Tomcat
sudo tee /etc/systemd/system/tomcat.service <<EOF
[Unit]
Description=Apache Tomcat Web Application Container
After=network.target

[Service]
Type=forking

Environment=JAVA_HOME=/usr/lib/jvm/jre-11
Environment=CATALINA_PID=/opt/tomcat-9/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/tomcat-9
Environment=CATALINA_BASE=/opt/tomcat-9
ExecStart=/opt/tomcat-9/bin/startup.sh
ExecStop=/opt/tomcat-9/bin/shutdown.sh

User=tomcat
Group=tomcat
UMask=0007
RestartSec=10
Restart=always

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd to apply the new service file, enable and start Tomcat service
sudo systemctl daemon-reload
sudo systemctl enable tomcat.service
sudo systemctl start tomcat.service
