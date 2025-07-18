#!/bin/bash

# Usage: bash 19_column_stats.sh data.csv

CSV=$1

if [[ -z "$CSV" ]]; then
  echo "Usage: $0 <csv_file>"
  exit 1
fi

echo "Stats by column:"
head -n 1 "$CSV" | tr ',' '\n' | nl -v 1
echo

awk -F',' 'NR > 1 {
  for (i = 1; i <= NF; i++) {
    if ($i == "" || $i ~ /^ *$/) nulls[i]++;
    uniq[i][$i]++;
  }
}
END {
  for (i = 1; i <= NF; i++) {
    printf "Column %d: %d nulls, %d unique values\n", i, nulls[i], length(uniq[i]);
  }
}' "$CSV"
