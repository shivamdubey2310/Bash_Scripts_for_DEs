#!/bin/bash

# Usage: bash 08_csv_to_tsv.sh input.csv output.tsv

IN=$1
OUT=$2

if [[ -z "$IN" || -z "$OUT"]]; then
    echo "Usage $0 <input_csv> <output_tsv>"
    exit 1
fi

tr ',' '\t' < "$IN" > "$OUT"
echo "Converted $IN to $OUT (TSV Format)"