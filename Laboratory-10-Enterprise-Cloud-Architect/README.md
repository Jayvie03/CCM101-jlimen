# Laboratory 10 – The Enterprise Cloud Architect

## Project Overview

This laboratory activity focuses on designing, deploying, securing, and automating an enterprise cloud infrastructure using virtualization and containerization technologies. The project uses Oracle VM VirtualBox to run Ubuntu Server, Docker and Docker Compose to manage a multi-tier WordPress application, and MySQL as its database backend.

It also implements persistent storage to protect application and database data, static IP configuration for consistent network access, and Bash automation scripts for database backups, compression, and maintenance logging.

## 1. System Overview & Architecture

The infrastructure consists of the following components:

- **Virtualization:** Oracle VM VirtualBox running Ubuntu Server 64-bit with the network adapter configured in Bridged Adapter mode.
- **Networking:** Static IP configuration using Netplan, with the address `192.168.1.58/24`.
- **Containerization:** Docker and Docker Compose managing the enterprise WordPress application and MySQL database containers.
- **Database:** MySQL running in an isolated container named `enterprise_mysql_db`.
- **Persistent Storage:** Docker volumes used to preserve application and database data.
- **Automation:** Bash scripts responsible for database backups, compression, and maintenance logs.

## 2. Network & Infrastructure Configuration

The Ubuntu Server virtual machine is configured using Oracle VM VirtualBox with Bridged Adapter networking. This allows the virtual machine to communicate with other devices on the local network.

A static IP address of `192.168.1.58/24` is configured through Netplan using the configuration file:

`/etc/netplan/00-installer-config.yaml`

This provides a consistent network address for accessing and managing the deployed WordPress application.

## 3. Application Deployment

The project uses Docker Compose to deploy a multi-tier application consisting of WordPress and MySQL.

The WordPress application container handles the web interface, while the MySQL container manages the application's database. These services communicate through Docker networking, keeping database communication separate from direct external access.

Persistent Docker volumes are configured to ensure that important application and database data remain available even when containers are restarted or recreated.

**Main Application Components:**
- WordPress – Web application and content management system.
- MySQL – Database management system.
- Docker Compose – Multi-container deployment and service management.
- Docker Volumes – Persistent application and database storage.

## 4. Security Configuration

Security is an important part of the enterprise cloud infrastructure. The Ubuntu Server environment uses host-based firewall configuration to control incoming and outgoing network traffic.

The project follows the principle of least privilege by limiting network access to the ports required for application access and remote administration.

The MySQL database container is isolated from unnecessary external access, helping reduce the infrastructure's exposure to unauthorized connections.

## 5. Automation & Backup Management

Bash scripting is implemented to automate important maintenance and backup operations.

The project includes the following automation scripts:

- `automation-script.sh` – Handles automated database backup operations, compression, and maintenance logging.
- `backup-wordpress.sh` – Provides an additional script for WordPress backup operations.

These scripts reduce the need for repetitive manual backup procedures and help maintain copies of important application data.

## 6. Project Directory Structure

```text
CCM101-jlimen/
└── Laboratory-10-Enterprise-Cloud-Architect/
    ├── docker-compose.yml
    ├── .env
    ├── automation-script.sh
    ├── backup-wordpress.sh
    ├── operational-manual.md
    └── README.md
```

## 7. Learning Outcomes

After completing this laboratory activity, I gained practical experience in:

- Configuring an Ubuntu Server virtual machine using Oracle VM VirtualBox.
- Managing static IP addresses through Netplan.
- Deploying multi-tier applications using Docker and Docker Compose.
- Connecting WordPress with an isolated MySQL database container.
- Implementing persistent storage using Docker volumes.
- Understanding server security and network isolation.
- Creating Bash scripts for automated database and application backups.
- Organizing technical documentation for infrastructure deployment and maintenance.

---

This final laboratory activity allowed me to apply the knowledge and technical skills I developed throughout CCM101 – Cloud Computing. By combining virtualization, containerization, networking, security, persistent storage, and automation, I gained a better understanding of how enterprise cloud infrastructure is designed and managed.

The project also strengthened my troubleshooting and problem-solving skills while demonstrating the importance of reliable backups, secure configurations, and proper technical documentation in maintaining an operational cloud environment.
