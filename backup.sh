 #!/bin/bash
# backup.sh - backs up a folder with a timestamp

SOURCE_DIR="$1"
BACKUP_DIR="./backups"

if [ -z "$SOURCE_DIR" ]; then
  echo "Usage: ./backup.sh <folder-to-backup>"
  exit 1
fi

mkdir -p "$BACKUP_DIR"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_${TIMESTAMP}.tar.gz"

tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

echo "Backup created: $BACKUP_DIR/$BACKUP_NAME" 
