## Introduction 

    Roles and responsility of a DeveOps / Cloud Engineer 

      - Managing Platform
      - Administering Kubernetes
      - Deploying Applications
      - Building cloud infrastructure
      - Testing Application
      - Automating processes,worksloads, Jobs and tasks
    
    Examples of Tasks to be performed:
      - fileMGT 
      - userMGT 
      - packageMGT
      - securityMGT 
      - systemMGT 
      - ProcessMGT

    Workload management on Computer systems [LINUX OS] :
      - GUI: = Graphical user interface  -- 10 %
      - CLI: = command line interface    -- 30 %
      - Scripting: Running Multipl commands -- 60 %
  
## Shell 
    an interpreter that interpretes commands to the OS.

        Example: Bash / sh  ----> LinuxOS
                 powershell ----> WindowsOS                
                 zshell    -----> MacOS  

        Other shells command interpreters include :
          csh, ksh tcsh, zsh, fishsh                 

        Bash : Bourne Again shells
        Shell: Bourne Shell

        Demo : echo $SHELL: # List your current shell
        Demo2: cat /etc/shells
        Demo3: bash -c ls
        Demo4: sh -c ls


        sudo yum install zsh ksh tcsh -y
        sudo apt install zsh ksh tcsh mks -y

        Demo5: zsh -c ls

## Comments 
How to make your codes/scripts, easily readable/understandable 
================================================

  1. It make your script/code to be understood by you and others over time. 
  2. It make your script/code easily reusable in the future
  3. Facilitate/ease troubleshooting and debugging
  4. comments are Good for teams: Team of 14 

Hands on - practice 
=====================================

Real world example, Tasks:

Updating a web server 
1. Remove all exiting files   
2. Clone a repository from github 
3. Copy creating index.html file  
3. assign read Permission to index.html file
4. changing ownership of index.html file 
5. copy the file to the app directory

update.sh = file fileName 

#! bin/bash
# this script is to update the website 
#1. Delete all existing  files from source directory 
sudo rm -rf apache-httpd
#2. Clone the updated file from the github repository 
git clone https://github.com/emortoo/apache-httpd.git
#3. Move all files from apache httpd to the var/www/html directory 
sudo cp -r apache-httpd/* /var/www/html/
#4. Change ownership of the /var/www/html director 
sudo chown -R apache:apache /var/www/html/
#5. Send a message to confirm changes has been made
echo "Bash script has been executed sucessfully" 