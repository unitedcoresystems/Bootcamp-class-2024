variables:
variables are defined by the either the user or the system 
we can refer/call a variable with $variable 


User defined variables   = UDV  : 
 Are defined/created by admins 

system defined variables   = SDV  : 
  SDV are variables that comes with the OS  
  Such variables are in uppercase  
  SHELL=bin/bash
  echo $SHELL  = /bin/bash
  env = List all system defined variables  


  Step by step instructions 
=============================

1. Create a new user called Michael 
$ sudo useradd Michael 

2. Check if the user has been created 
$ sudo tail -2 /etc/passwd

3. create a group called Tesla 
$ sudo groupadd Tesla 

4. Check if the group has been created 
$ sudo cat /etc/group

5. Add user to the tesla group 
$ sudo usermod -aG Tesla Michael 

6. Add Michael to the sudoers group 
$ sudo echo "michael ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/Michael

7. Create a file
$ vi / touch deploy.sh 