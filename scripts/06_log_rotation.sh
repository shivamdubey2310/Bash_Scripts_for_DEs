#!/bin/bash

# Usage: bash 06_log_rotation.sh /path/to/logs

LOG_DIR=$1
TIMESTAMP=$(date +%Y%m%d_%H%M)

if [[ -z "$LOG_DIR"]] ; then
    echo "Usage: $0 <log_directory>"
    exit 1
fi

tar -czf "logs_backup_$TIMESTAMP.tar.gz" -C "$LOG_DIR" .

echo "Logs archived as logs_backup_$TIMESTAMP.tar.gz"