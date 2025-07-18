#!/bin/bash

# Usage: bash 18_ftp_uploader.sh ftp.example.com user pass /path/to/file.txt

HOST=$1
USER=$2
PASS=$3
FILE=$4

if [[ -z "$HOST" || -z "$USER" || -z "$PASS" || -z "$FILE" ]]; then
  echo "Usage: $0 <host> <user> <password> <file>"
  exit 1
fi

curl -T "$FILE" --user "$USER:$PASS" "ftp://$HOST"
echo "File uploaded to FTP server: $HOST"