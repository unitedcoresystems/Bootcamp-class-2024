#!/bin/bash

echo "This is my current shell"
echo $SHELL

echo "These are a list of shells in my linux OS"
cat /etc/shells


echo " Wow !, i only have two default shells"
sleep 5 

echo " Okay, let me download zch, ksh and tcsh"
sudo yum install zsh ksh tcsh -y


echo " Now, i can use zsh to execute commands"
zsh -c echo " This is a Z shell been executed "



