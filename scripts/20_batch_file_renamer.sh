#!/bin/bash

# Usage: bash 20_batch_file_renamer.sh /path/to/files prefix_

DIR=$1
PREFIX=$2

if [[ -z "$DIR" || -z "$PREFIX" ]]; then
  echo "Usage: $0 <directory> <prefix>"
  exit 1
fi

cd "$DIR" || exit 1

i=1
for f in *; do
  EXT="${f##*.}"
  mv "$f" "${PREFIX}${i}.${EXT}"
  ((i++))
done