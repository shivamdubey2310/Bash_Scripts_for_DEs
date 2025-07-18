#!/bin/bash

# Usage: bash 09_null_value_checker.sh file.csv

CSV_FILE=$1

if [[ -z "$CSV_FILE"]]; then
    echo "Usage: $0 <csv_file>"
    exit 1
fi

echo "🔍 Checking for null (empty) fields in $CSV_FILE..."
awk -F',' '{
  for (i = 1; i <= NF; i++) {
    if ($i == "" || $i ~ /^ *$/) {
      print "Row " NR ", Column " i " is NULL"
    }
  }
}' "$CSV_FILE"