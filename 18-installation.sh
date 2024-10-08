#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
   echo "please run this script with sudo previleges"
   exit 1
fi

# git installation script

dnf list installed git
if [ $? -ne 0 ]
then 
   echo "git is not installed..going to install it"
   dnf install git -y
    if [ $? -ne 0 ]
    then 
      echo "command failed.."
      exit 1
    else
      echo " command executed succesfully."
    fi
else
   echo " already installed. you cannot install twice."
fi

# mysql installation script

dnf list installed mysql
if [ $? -ne 0 ]
then 
   echo "mysql is not installed..going to install it"
   dnf install mysql -y
    if [ $? -ne 0 ]
    then
      echo "command failed.."
      exit 1
    else
      echo "command executed successfully."
    fi
else
   echo "mysql is already installed.you cannot install twice."
fi