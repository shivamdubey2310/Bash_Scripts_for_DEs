#!/bin/bash

# Usage: bash 11_remove_duplicates.sh input.csv output.csv

IN=$1
OUT=$2

if [[ -z "$IN" || -z "$OUT" ]]; then
  echo "Usage: $0 <input_csv> <output_csv>"
  exit 1
fi

head -n 1 "$IN" > "$OUT" 
tail -n +2 "$IN" | sort | uniq >> "$OUT"
echo "Duplicates removed. Output: $OUT"