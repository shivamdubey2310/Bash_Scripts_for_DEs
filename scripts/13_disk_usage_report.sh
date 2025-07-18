#!/bin/bash

# Usage: bash 13_disk_usage_report.sh /path/to/dir

DIR=$1

if [[ -z "$DIR" ]]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

echo "Disk Usage for $DIR:"
du -h --max-depth=1 "$DIR" | sort -hr