#!/usr/bin/bash

# Script that will save a backup of the current directory in a "tar" file.

currDir=$(pwd)
input=${currDir}
output=_backup_$(date +%Y-%m-%A).tar.gz
com="tar -czf"

$com $output $input 2>/dev/null
echo "The file: $output has been created succesfully!"

ls -l $output
