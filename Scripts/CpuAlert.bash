#!/bin/bash

THRESHOLD=80
EMAIL_TO="khadeershaik0329@gmail.com"

CPU=$(top -bn1 | awk '/Cpu\(s\)/ {print 100 - $8}')

CPU_INT=${CPU%.*}

if [ "$CPU_INT" -gt "$THRESHOLD" ]; then
  echo "High CPU usage: ${CPU_INT}%" | mail -s "CPU Alert" "$EMAIL_TO"
fi
