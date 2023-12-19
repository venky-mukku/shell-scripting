#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ]
then
  echo "#####################################################"
  echo -e "$R source dir :$Y $SOURCE_DIR does not exists. $N"
  exit 1
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line #IFS stands for Internal Field Separator
do
  echo -e "deleting files: $line"
  rm -rf $line
done <<< $FILES_TO_DELETE 






# #!/bin/bash

# log_directory="/path/to/logs"

# # Find and delete log files older than 14 days
# find "$log_directory" -type f -name "*.log" -mtime +14 -exec rm {} \;
