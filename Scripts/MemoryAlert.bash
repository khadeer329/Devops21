#!/bin/bash

THRESHOLD=80
EMAIL_TO="you@example.com"

MEM=$(free | awk '/Mem:/ {printf("%.0f", $3/$2 * 100)}')

if [ "$MEM" -gt "$THRESHOLD" ]; then
  echo "High memory usage: ${MEM}%" | mail -s "Memory Alert" "$EMAIL_TO"
fi
