#!/bin/bash

THRESHOLD=80
EMAIL_TO="you@example.com"

DISK=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')

if [ "$DISK" -gt "$THRESHOLD" ]; then
  echo "High disk usage: ${DISK}%" | mail -s "Disk Alert" "$EMAIL_TO"
fi
