# United Core Systems

### Contacts: 774-515-0044, 617-955-5115<br> WebSite : <http://unitedcoresystem.com/><br>Email: info@unicoresystem.com <br>Address: Worcester, (MA)

## Apache Maven Installation And Setup In AWS EC2 Instance.

#### Prerequisite
+ AWS Acccount - Luanch an [ec2 instance](../EC2_Instances/README.md)
+ Create Security Group and open Required ports.
   + 22 ..etc
+ Create EC2 T2.micro Instance with 2GB of RAM.
+ Attach Security Group to EC2 Instance.
+ Install java openJDK 1.8+

# Installation 

#### 1. Install Java JDK 11+ and other prerequisite softwares (GIT, wget, tree and VIM)
``` sh
sudo hostnamectl set-hostname maven
sudo yum install wget vim tree unzip git-all -y
sudo yum install java-11-openjdk-devel java-1.8.0-openjdk-devel -y
sudo su - ec2-user
```

#### 2a. Download, extract and Install Maven zip file 
``` sh
cd /opt
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.zip
sudo unzip apache-maven-3.9.6-bin.zip
sudo rm -rf apache-maven-3.9.6-bin.zip
sudo mv apache-maven-3.9.6 maven
```

#### 2b. Download, extract and Install Maven tar file 
``` sh
cd /opt
sudo curl -O https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-tar.gz
sudo tar -xvzf apache-maven-3.9.6-bin.tar.gz
sudo rm -rf apache-maven-3.9.6-bin.tar.gz
sudo mv apache-maven-3.9.6/ maven
```

#### 3. Set environmental variable  - for specific user eg. ec2-user
``` sh
vi ~/.bash_profile
```

#### 4. Insect the script below under first line "# .bash_profile" 
``` sh
export M2_HOME=/opt/maven
export PATH=$PATH:$M2_HOME/bin
```

#### 5. Refresh the profile file and Verify if maven is running
```sh
source ~/.bash_profile
mvn --version
```

# Generate Project Template file 


# Configuration 

### Nexus - Maven intergration 

#### 1.To configure nexus login credentials in `pom.xml` file

### Example `pom.xml` Configuration for Tomcat 7 Maven Plugin:

```xml
<distributionManagement>
	    <repository>
	      <id>nexus</id>
	      <name>Nexus Releases Repository</name>
	      <url>http://<nexus-server-ip>:8081/repository/release -repo-name>/</url>
	    </repository>
	    
	    <snapshotRepository>
	      <id>nexus</id>
	      <name>Nexus Snapshot Repository </name>
	      <url>http://<nexus-server-ip>:8081/repository/snapshot-repo-name></url>
	    </snapshotRepository>    
</distributionManagement>
```

#### 2. Edit and add credentials as shown below under commentted <server> </server> tag  
```sh 
sudo vi /opt/maven/conf/settings.xml          
```

```sh
   <server>
      <id>nexus</id>
      <username>admin</username>
      <password>admin@123</password>
    </server>
```
#### 3. Save and exit from settings.xml  
$ esc :wq! 
$ esc hold "Shift" +  ZZ

### Usage:

To deploy your application using this setup, you can run the following Maven command:

```bash
mvn deploy
```

## Tomcat - Maven intergration 

#### 1. To configure a Maven project to deploy directly to a Tomcat server, you can use the `tomcat7-maven-plugin` or `tomcat8-maven-plugin`.

These plugins allow you to deploy your web applications to a Tomcat server directly from the Maven build lifecycle.

### Example `pom.xml` Configuration for Tomcat 7 Maven Plugin:

```xml
<project>
    ...
    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.tomcat.maven</groupId>
                <artifactId>tomcat7-maven-plugin</artifactId>
                <version>2.2</version>
                <configuration>
                    <url>http://localhost:8080/manager/text</url>
                    <server>TomcatServer</server>
                    <path>/yourAppName</path>
                    <!-- <username>admin</username>
                    <password>password</password> -->
                </configuration>
            </plugin>
        </plugins>
    </build>
    ...
</project>
```

#### 2. Edit and add credentials as shown below under commentted <server> </server> tag 

### Example `settings.xml` Configuration:
```sh 
sudo vi /opt/maven/conf/settings.xml          
```

```xml
<settings>
    ...
    <servers>
        <server>
            <id>TomcatServer</id>
            <username>admin</username>
            <password>password</password>
        </server>
    </servers>
    ...
</settings>
```

### Usage:

To deploy your application using this setup, you can run the following Maven command:

```bash
mvn tomcat7:deploy
```

Or, if you are redeploying an already deployed application:

```bash
mvn tomcat7:redeploy
```
