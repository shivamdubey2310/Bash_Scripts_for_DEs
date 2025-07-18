#!/bin/bash

# Usage: bash 17_parquet_checker.sh file.parquet

FILE=$1

if [[ -z "$FILE" ]]; then
  echo "Usage: $0 <parquet_file>"
  exit 1
fi

if ! command -v parquet-tools &> /dev/null ; then   
    echo "parquet-tools' is required. Install it first."
    exit 1
fi

parquet-tools schema "$FILE"
parquet-tools schema "$FILE"