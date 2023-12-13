#!/bin/bash

if [ id -u -ne 0]
then
   echo "user didn't have the root access, plz provide the root access to them"
   exit 1 
else
   echo "user has the root access"
fi
