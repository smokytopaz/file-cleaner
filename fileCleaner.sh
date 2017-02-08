#!/bin/bash

#Usage - fileCleaner.sh /path/to/file filename daysToKeep(Integer)

# This script uses the above arguments to delete matching files that are 
# older than the amount of days you want to keep. It performs a check to 
# verify that it has at least the amount of files as days specified before 
# deleting.

fileCount=`ls $1/$2 | wc -l`

if [ $fileCount -gt $3 ]; then
    /usr/bin/find $1 -type f -name $2 -mtime +$3 -exec rm {} \;
fi
    exit 0
