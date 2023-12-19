#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
W="\e[0m"
Y="\e[33m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOG_FILE="/tmp/$0-$TIMESTAMP.log"

echo "the $0 started at $TIMESTAMP" &>> $LOG_FILE

if [ $ID -ne 0 ]
then
  echo -e "$R ERROR:: Plz run this script with root user $W"
  exit 1
else
  echo -e "$G user has the root access"
fi

VALIDATE() {
   if [ $1 -ne 0 ]
   then 
      echo -e "$2 ... $R FAILED $N
   else
       echo -e "$2 ... $R SUCCESS $N

    fi
     
}

for package in $@
do 
  yum list installed $package &>> $LOG_FILE
  if [ $? -ne 0 ]
  then
      yum install $package -y &>> $LOG_FILE
      VALIDATE $? "installation of $package"
   else
      echo -e "$G  $package already installed $Y SKIPPING $W"
   fi
done

