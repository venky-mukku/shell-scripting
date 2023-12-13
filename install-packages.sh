#!/bin/bash

USERID = $(id -u)
if [ $USERID -nq 0 ]
then
   echo "user didn't have the root access, plz provide the root access to them"
   exit 1 
else
   echo "user has the root access"
fi
