# Backup Script Guide 

This documentation explains the automated backup script created during Laboratory Activity 9. The script uses Bash commands to create a backup directory, generate a timestamp, and compress the application data directory into a `.tar.gz` archive.

The purpose of this activity is to automate the backup process and reduce the need for manual execution. A Linux Cron job was also configured to schedule the backup script automatically every day at 2:00 AM.

## Bash Backup Script

The following is the complete Bash script used in this activity:

```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

# Create the backup directory if it does not exist
mkdir -p $BACKUP_DIR

# Compress the source directory into a tarball (.tar.gz)
tar -czf $BACKUP_DIR/backup_$TIMESTAMP.tar.gz $SOURCE_DIR

echo "Backup completed successfully at $TIMESTAMP!"
```

## Explanation of the Script

| Command or Variable | Description |
|---|---|
| `#!/bin/bash` | Specifies Bash as the interpreter used to execute the script. |
| `SOURCE_DIR="app-data"` | Defines the directory containing the application data. |
| `BACKUP_DIR="backups"` | Defines the directory where backup files will be stored. |
| `TIMESTAMP=$(date +"%Y%m%d_%H%M%S")` | Generates the current date and time for the backup filename. |
| `echo` | Displays messages in the terminal. |
| `mkdir -p $BACKUP_DIR` | Creates the backup directory if it does not already exist. |
| `tar -czf` | Compresses the source directory into a `.tar.gz` archive. |

## File Permissions and Execution

Initially, I attempted to execute the Bash script using the following command:

```bash
./backup.sh
```

However, the terminal displayed a `Permission denied` error because the script did not have executable permission.

To resolve this issue, I used the following command:

```bash
chmod +x backup.sh
```

The `chmod` command changes file permissions, while the `+x` option adds executable permission to the script. This allows the script to run directly from the terminal.

After changing the permissions, I executed the script again:

```bash
./backup.sh
```

The terminal displayed the following successful output:

```text
Initiating automated backup...
Backup completed successfully at 20261104_151125!
```

I also verified the generated backup file using:

```bash
ls -l backups/
```

The following backup archive was successfully created:

```text
backup_20261104_151125.tar.gz
```

This confirmed that the script successfully compressed the application data directory.

## Cron Job Configuration

After successfully testing the backup script, I configured a Cron job to automate its execution.

The Cron expression used was:

```bash
0 2 * * * /root/backup.sh
```

This configuration schedules the backup script to run automatically every day at exactly 2:00 AM.

### Explanation of the Five Cron Fields

| Field | Value | Description |
|---|---|---|
| Minute | `0` | Executes at minute zero. |
| Hour | `2` | Executes at 2 AM. |
| Day of Month | `*` | Executes every day of the month. |
| Month | `*` | Executes every month. |
| Day of Week | `*` | Executes every day of the week. |

### Cron Expression Breakdown

```text
0  2  *  *  *
│  │  │  │  │
│  │  │  │  └── Day of Week
│  │  │  └───── Month
│  │  └──────── Day of Month
│  └─────────── Hour
└────────────── Minute
```

### Commands Used for Cron Configuration

First, I checked the existing Cron jobs:

```bash
crontab -l
```

The terminal displayed:

```text
no crontab for root
```

Next, I opened the Cron editor:

```bash
env EDITOR=nano crontab -e
```

I added the following schedule:

```bash
0 2 * * * /root/backup.sh
```

After saving the configuration, I verified the installed Cron job using:

```bash
crontab -l
```

The terminal displayed the configured schedule, confirming that the Cron job was successfully installed.


