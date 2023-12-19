#!/bin/bash
R="\e[31m"
W="\e[0m"
G="\e[32m"
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
   echo -e " $R user didn't have the root access, plz provide the root access to them $W"
   exit 1 
else
   echo -e "$G user has the root access $W"
fi

apt install mysql-server

if [ $? -eq 0 ]
then
   echo -e "$G ***************MYSQL INSALLTION SUCCESS*********** $W"
else
   echo -e "$R **********MYSQL INSALLTION FAILD************ $W"
   exit 1

fi


