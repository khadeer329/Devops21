#!/bin/bash

SRC="khadeer/Scripts"
DEST="khadeer/Scripts"
NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$DEST"
tar -czf "$DEST/$NAME" "$SRC"

echo "Backup created: $DEST/$NAME"
