#!/bin/bash

DIR="/khadeer/Scripts"

if [ -d "$DIR" ]; then
  echo "Directory exists: $DIR"
else
  echo "Directory does not exist: $DIR"
fi
