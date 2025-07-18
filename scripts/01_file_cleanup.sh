#!/bin/bash

# Usage: bash 01_file_cleanup.sh /path/to/directory 30

DIR=$1
DAYS=$2

if [[ -z "$DIR" || -z "$DAYS"]]; then
	echo "Usage: $0 <directory> <days_old>"
	exit 1
fi

find "$DIR" -type f -mtime +"$DAYS" -exec rm -v {} \;
