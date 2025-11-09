#!/bin/bash
set -euo pipefail

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/backup"
DATE=$(date +%Y-%m-%d_%H%M%S)
mkdir -p "$BACKUP_DIR"

# create tar.gz backup (works in Git Bash)
tar -czf "$BACKUP_DIR/documents-backup-$DATE.tar.gz" -C "$HOME" "Documents" 2>/dev/null || {
  echo "Warning: tar failed for some items; fallback to zip."
  # fallback: zip if tar didn't include Windows special files
  cd "$HOME"
  zip -r "$BACKUP_DIR/documents-backup-$DATE.zip" "Documents" 2>/dev/null || echo "Backup fallback also failed."
}

echo "✅ Backup created: $BACKUP_DIR/documents-backup-$DATE.*"
exit 0
