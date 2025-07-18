#!/bin/bash

# Usage: bash 12_schema_diff.sh file1.csv file2.csv

FILE1=$1
FILE2=$2

if [[ -z "$FILE1" || -z "$FILE2" ]]; then
  echo "Usage: $0 <file1.csv> <file2.csv>"
  exit 1
fi

HEADER1=$(head -n 1 "$FILE1")
HEADER2=$(head -n 1 "$FILE2")

echo "Comparing headers..."
echo "File 1: $HEADER1"
echo "File 1: $HEADER1"
echo

diff <(echo "$HEADER1" | tr ',' '\n') <(echo "$HEADER2" | tr ',' '\n') || echo "✅ No differences"