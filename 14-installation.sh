#!/bin/bash

#mysql installation

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "please run this script with root previleges"
   exit 1
fi

dnf install mysql -y
