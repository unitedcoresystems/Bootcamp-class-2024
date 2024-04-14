# United Core Systems

### Contacts: 774-515-0044, 617-955-5115<br> WebSite : <http://unitedcoresystem.com/><br>Email: info@unicoresystem.com <br>Address: Worcester, (MA)

# Apache Tomcat Installation And Setup In AWS EC2 Redhat Instance.
#### Prerequisite
+ AWS Acccount - Luanch an [ec2 instance](../EC2_Instances/README.md)
+ Create Redhat EC2 with a minimum T2.micro Instance.
+ Create Security Group and open Tomcat ports or Required ports.
   + 8080 ..etc
+ Attach Security Group to EC2 Instance.
+ Install pre-requisit java openJDK 1.8+, wget, unzip and git

# Installation 

#### Update Server and set timezone and hostname
```sh
sudo hostnamectl set-hostname tomcat-server
sudo timedatectl set-timezone America/New_York
sudo su - ec2-user
``` 
#### install Java JDK 11+ as a pre-requisit for tomcat to run.
```sh
sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install wget vim tree unzip git-all -y
```
#### Run this commands to Install Tomcat
```sh
cd /opt 
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.tar.gz
sudo tar -xvf apache-tomcat-9.0.87.tar.gz
sudo rm apache-tomcat-9.0.87.tar.gz
sudo mv apache-tomcat-9.0.87 tomcat-9
```
#### Ensure that Tomcat is running and accesible using this command
```sh
sudo chmod 777 -R /opt/tomcat-9
sudo sh /opt/tomcat-9/bin/startup.sh
```
#### Create a soft link and start tomcat
```sh
sudo ln -s /opt/tomcat-9/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat-9/bin/shutdown.sh /usr/bin/stoptomcat
sudo starttomcat
```
---

# Configuration

### 1. Add users and credentials as shown below under commentted <tomcat-users> </tomcat-users> tag 

#### Example `tomcat-users.xml` Configuration:
```sh 
sudo vi /opt/tomcat-9/conf/tomcat-users.xml          
```
Add user and credentials 

```xml 
<user username="admin" password="admin123" roles="manager-gui,manager-script, manager-status"/>
```

### 2. Disable remote access from localhost to allow all  

#### Example `context.xml` Configuration:
```sh 
sudo vi /opt/tomcat-9/webapps/manager/META-INF/context.xml          
```
replace this line 
`<Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />` 

with this 

```xml 
<Valve className="org.apache.catalina.valves.RemoteAddrValve"
       allow=".*" />
```