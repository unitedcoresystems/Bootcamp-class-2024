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


Command Line Arguments = CLAs :  
===============================
# how to use calculator script
sh calculator.sh add 5 3


sh calculator.sh divide 2 8 
       $0          $1  $2 $3 
       

echo "The name of the script is $0"
echo "The 1st argument is $1"
echo "The 2nd argument is $2"
echo "The 10th argument is ${10}"
echo "The number argument is $#"
echo "The list  argument are $@"
echo "The list  argument are $*"
echo "The status of the last run command is: $?"  
echo "The process id is: $$"


$0 - Name of the Script
------------------------------
   echo $0 - It gives the name of the script itself.   

   If you run a script named `myscript.sh`, it will output: `./myscript.sh`

$# - Number of Arguments**
   echo $# - This variable provides the count of total arguments passed to the script.
   
   If you run: `./myscript.sh arg1 arg2 arg3`, it will output: `3`

$* and $@ - All Arguments**
   - Both `$*` and `$@` give all the arguments passed to the script, but they behave differently when quoted.
   
   If you run: `./myscript.sh arg1 arg2 arg3`
   
   - For `$*`, it will output: `arg1 arg2 arg3`
   
   - For `$@`, it will output each argument as a separate word:  
     arg1
     arg2
     arg3
     
$? - Exit Status

   echo $? - This variable provides the exit status of the last command executed. An exit status of `0` usually indicates success, while any other value indicates an error.
   
   If you execute a successful command before this, it will output: `0`

echo "Name of the script: $0"
# Print the total number of arguments
echo "Total number of arguments: $#"
# Print all arguments using $* and $@
echo "All arguments using \$*: $*"
echo "All arguments using \$@:"




# Operators - Equality and inequality:
======================================
  -eq  or  == represent equals to  
          (( 1234 == y )) or [ x -eq y ]

  -ne  or  != represent not equals to 
              (( x != y)) [ x -ne y ]

  -gt  or  >  represent greater than     
              (x>y or  x -gt y)

  -lt  or  <  less than    
              ( x<y or x -lt y )

  -ge  or >=  greater than or equals to

  -le  or <=   less than  or equals to 

