#!/bin/bash

BACKUP_DIR="/home/rexalvin/backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
CONTAINER_NAME="enterprise_mysqql_db"
DB_USER="root"
DB_PASS="SecureRootPassword2026!"
DB_NAME="enterprise_db"

mkdir -p "$BACKUP_DIR"

echo "Starting database backup at $(date). . ."

if docker exec -i "$CONTAINER_NAME" mysqldump -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_DIR/db_backup_$TIMESTAMP.sql"; then
    tar -czf "$BACKUP_DIR/wordpress_backup_$TIMESTAMP.tar.gz" -C "$BACKUP_DIR" "db_backup_$TIMESTAMP.sql"
    rm "$BACKUP_DIR/db_backup_$TIMESTAMP.sql"
    echo "Backup completed successfully: wordpress_backup_$TIMESTAMP.tar.gz"
else
    echo "Error: Database backup failed during docker exec."
    exit 1
fi

find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;
