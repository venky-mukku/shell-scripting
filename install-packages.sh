#!/bin/bash
R="\e[31m"
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
   echo " $R user didn't have the root access, plz provide the root access to them "
   exit 1 
else
   echo "user has the root access"
fi

yum install mysql -y 
