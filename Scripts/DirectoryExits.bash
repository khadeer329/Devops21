#!/bin/bash

DIR="/path/to/directory"

if [ -d "$DIR" ]; then
  echo "Directory already exists"
else
  mkdir -p "$DIR"
  echo "Directory created: $DIR"
fi
