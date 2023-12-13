#!/bin/bash

ID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0]
     then
         echo "$2...faild"
         exit 1
     else 
         echo "$2...installed"
    fi
}

if [ $ID -eq 0 ]
then
    echo "user has the root access"
else 
     echo "user not have the root access, please provide the root access"
     exit 1
fi
apt install git -y
VALIDATE $? "installing git"

apt install mysql -y
VALIDATE $? "installing mysql"