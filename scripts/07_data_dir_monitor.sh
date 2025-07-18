#!/bin/bash

# Usage: bash 07_data_dir_monitor.sh /path/to/dir

WATCH_DIR=$1

if [[ -z "$WATCH_DIR"]]; then
    echo "Usage: $0 <directory_to_watch>"
  exit 1
fi

if ! command -v inotifywait &> /dev/null; then
    echo "'inotifywait' is required (install with: sudo apt install inotify-tools)"
    exit 1
fi

echo "Watching $WATCH_DIR for new files..."

inotifywait -m "$WATCH_DIR" -e create |
while read path action file; do
    echo "New file detected: $file"
done