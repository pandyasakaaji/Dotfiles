#!/bin/bash

# Read CAVA output and map to emoji/characters
cava | while read -r line; do
  bars=$(echo "$line" | tr -s ' ' '\n' | awk '{for(i=0;i<$1;i++) printf "█"; printf "\n"}' | paste -sd ' ')
  echo "{\"text\": \"$bars\", \"tooltip\": \"Audio Spectrum\"}"
done

