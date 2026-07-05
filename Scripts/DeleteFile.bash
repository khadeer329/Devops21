#!/bin/bash

FILE="/path/to/file.txt"
LINES=$(wc -l < "$FILE")

if [ "$LINES" -le 3 ]; then
  > "$FILE"
else
  head -n -3 "$FILE" > "${FILE}.tmp" && mv "${FILE}.tmp" "$FILE"
fi

echo "Last 3 lines removed"
