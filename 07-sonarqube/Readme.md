# United Core Systems
### Contacts: 774-515-0044, 617-955-5115<br> WebSite : <http://unitedcoresystem.com/><br>Email: info@unicoresystem.com <br>Address: Worcester, (MA)

# SonarQube Installation And Setup In AWS EC2 Redhat Instance.
#### Prerequisite
+ AWS Acccount - Luanch an [ec2 instance](../EC2_Instances/README.md)
+ Create Redhat EC2 T2.medium Instance with 4GB RAM.
+ Create Security Group and open Required ports.
   + 9000 ..etc
+ Attach Security Group to EC2 Instance.
+ Install java openJDK 17 for SonarQube version 9.9.4 lts
+  As a good security practice, SonarQube Server is not advised to run sonar service as a root user


# Installation

#### 1. Create sonar user to manage the SonarQube server, Grand sudo access and set hostname for the sonarqube server
```sh
sudo useradd sonar
sudo sudo echo "sonar ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/sonar
sudo hostnamectl set-hostname sonarqube-server 
sudo su - sonar
```
#### 2. Enable PasswordAuthentication in the server and install Java JDK 1.8+ required for sonarqube to start
```sh
sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
sudo systemctl restart sshd
sudo yum install unzip wget git java-17-openjdk -y
```
#### 3. Download and extract the SonarqQube Server software.
```sh
cd /opt
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.4.87374.zip
sudo unzip sonarqube-9.9.4.87374.zip
sudo rm -rf sonarqube-9.9.4.87374.zip
sudo mv sonarqube-9.9.4.87374 sonarqube
```
#### 4. Grant file permissions for sonar user to start and manage sonarQube
```sh
sudo chown -R sonar:sonar /opt/sonarqube
sudo chmod -R 775 /opt/sonarqube
```
#### 5. Run sonarqube as a service by running theses commands
```sh
sudo su - root
```

```sh
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
```
#### 6. Reload, enable and check sonar service 
```sh
sudo systemctl daemon-reload
sudo systemctl enable --now sonar
sudo systemctl status sonar
# NB: control C to exit from systemctl 
```

```sh
curl -v localhost:9000
```

# Configuration

### Sonaqube - Maven intergration  

#### Edit properties tag with server PublicIP Username token to enable connection in POM.XML file

```sh
<properties>
		<sonar.host.url>http://18.138.81.149:9000/</sonar.host.url>
		<sonar.login>sonar-token</sonar.login>
</properties>
```
