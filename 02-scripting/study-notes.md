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

      1. It make your script/code to be understood by you and others over time. 
      2. It make your script/code easily reusable in the future
      3. Facilitate/ease troubleshooting and debugging
      4. comments are Good for teams: Team of 14 


## Naming Convention 

      Naming:
      fileName  - Camel case 
      file_name - Snake case
      file-name - Khebab case
     
     
      File_Extention:
      deploy.sh  = Shell-script [*.sh] / app.sc     = Shell-script [*.sc]
      test.txt   = text file    [*.txt]
      app.java   = java code    [*.java] 
      monitor.py = python code/script [*.py] 
      app.yaml   = playbook or manifest file [*.yml] 
      main.tf    = terraform scripts/codes [*.tf]


## Variables 
Making your script portable. 
========================================================= 
      1. Hard coding 
      2. soft coding


Using variables in scripting:
=========================================================

      name=Emmanuel_Mortoo
      org=unitedcore_system

how to call variables in bash shell scripting:
==========================================
  
      $variableName 
      ${variableName} 


## input and ouput

write a script to authenticate bank users:
-------------------------------------
echo "Good morning"
echo "Please enter your name"
read name   
echo "$name, Welcome to United Core"  



## user Sessions 

 User Sessions 
-------------------------
When a user connect to the server a New session starts.  
whoami  = ec2-user    
sudo su - Michael  
sudo su - ec2-user: