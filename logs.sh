#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
W="\e[0m"
LOGFILE="/tmp/$0-$TIMESTAMP.LOG"

echo "script started exicuting at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
  if [ $1 -eq 0 ]
    then
        echo   "$2..... $G success $W"
    else   
        echo  "$R ERROR :: $2....$R faild $W"
        exit 1
  fi
}

if [ $ID -ne 0 ]
then
    echo  "$R ERROR ::  user not have the root accesss, pls provide root access to him $W"
    exit 1
else
    echo "$G user has the root access $W"

fi


apt install git -y &>> $LOGFILE
VALIDATE $? "installing git"

apt install mysql -y &>> $LOGFILE
VALIDATE $? "installing mysql"
