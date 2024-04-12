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

## POM.XML 

#### Edit URL in POM.xml file
```sh
            <plugin>
                <groupId>org.apache.tomcat.maven</groupId>
                <artifactId>tomcat7-maven-plugin</artifactId>
                <version>2.2</version>
                <configuration>
                    <url>http://<tomcat-server-ip>:8080/manager/text</url>
                    <server>tomcat</server>
                    <path>/yourAppName</path>
                  #   <username>admin</username>
                  #   <password>password</password>
                </configuration>
            </plugin>
```
## Maven tomcat integration 

```
sudo vi /opt/maven/conf/settings.xml
```

```
 <server>
      <id>tomcat</id>
      <username>admin</username>
      <password>admin123</password>
 </server>
```
