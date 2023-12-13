#!/bin/bash
R="\e[31m"
W="\e[0m"
G="\e[32m"
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
   echo " $R user didn't have the root access, plz provide the root access to them $W"
   exit 1 
else
   echo "$G user has the root access $W"
fi

apt install mysql-server

if [ $? -eq 0 ]
then
   echo "$G MYSQL INSALLTION SUCCESS $W"
else
   echo "$R MYSQL INSALLTION FAILD $W"

fi


