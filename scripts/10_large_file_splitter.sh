#!/bin/bash

# Usage: bash 10_large_file_splitter.sh file.csv 1000

FILE=$1
LINES=$2

if [[ -z "$FILE" || -z "$LINES" ]]; then
  echo "Usage: $0 <file.csv> <lines_per_file>"
  exit 1
fi

HEADER=$(head -n 1 "$FILE")
tail -n +2 "$FILE" | split -l "$LINES" - "$FILE.part_"

for PART in "$FILE.part_"*; do
  sed -i "1i$HEADER" "$PART"
  mv "$PART" "$PART.csv"
done

echo "File split into chunks of $LINES lines (with headers)"