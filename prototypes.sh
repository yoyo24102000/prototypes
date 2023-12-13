#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename.c>"
    exit 1
fi

sed -n '/^[[:space:]]*[^[:space:]#][[:space:]]\+[a-zA-Z_][a-zA-Z_0-9]*[[:space:]]*(.*);/p' "$1"
