#!/bin/bash
TIMESTAMP=$(date + "%Y%m%d_%H%M%S")
BACKUP-DIR="/var/backups/enterprise_cloud"
CONTAINER_NAME="enterprise_mysql_db"
DB_NAME="enterprise_db"
DB_USER="root"
DB_PASS="SecureRootPassword2026!
BACKUP_FILE="${BACKUP_DIR}/db_backup_${TIMESTAMP}.sql.gz"
LOG_FILE="/var/log/enterprise_backup.log"

mkdir -p "${BACKUP_DIR}"
echo "[${TIMESTAMP}] START: Initiating automated database backup..." >> "${LOG_FILE}"

docker exec "${CONTAINER_NAME}" mysqldump -u"${DB_USER}" -p"${DB_PASS}" "${DB_NAME}" | gzip > "${BACKUP_FILE}"

if [ $? -eq 0]; then
	echo "[${TIMESTAMP}] SUCESS: Backup saved to ${BACKUP_FILE}" >> "${LOG_FILE}"

else
	echo "[${TIMESTAMP}}] ERROR: Database backup failed!" >> "${LOG_FILE}"
	exit 1
fi

find "${BACKUP_DIR}" -typw f -name "*.sql.gz" -mtime+7 -execute rm -f {} \;
echo "[${TIMESTAMP}] FINISH: Retention cleanup complete." >> "${LOG_FILE}" 

