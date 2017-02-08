#!/bin/bash

#Tests to make sure there are a minimum amount (20) of backup files before deleting files

fileCount1=`ls /path/to/file/filename* | wc -l`
fileCount2=`ls /path/to/file/filename* | wc -l`

if [ $fileCount1 -gt 20 ] && [ $fileCount2 -gt 20 ]; then
    /usr/bin/find /path/to/directory -type f -name '*.gz' -mtime +20 -exec rm {} \;
    /usr/bin/find /path/to/directory -type f -name '*.gz' -mtime +20 -exec rm {} \;
else
    exit 0
fi
