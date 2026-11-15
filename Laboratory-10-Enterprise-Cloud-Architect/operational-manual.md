# 🛠️ Operational Manual & Maintenance Guide
## Laboratory 10: Enterprise Cloud Architect

*Project Workspace:* `Jayvie03/CCM101-jlimen`
*Deployment Path:* `~/CCM101-jimen/Laboratory-10-Enterprise-Cloud-Architect `
*Primary Host:* Ubuntu Server

---

## 📖 Introduction & Manual Scope

This document serves as the formal operational manual (OpMan) for the containerized WordPress and MySQL cluster deployed on the Ubuntu Server host as part of Laboratory 10. This manual details the procedures required to start, stop, secure, monitor, back up, and troubleshoot the production-ready infrastructure stack. It is intended for administrators responsible for maintaining the health and state of this application ecosystem.

---

## 📐 Stack Overview & Service Mapping

The deployed infrastructure uses a multi-tier container orchestration approach defined by Docker Compose. The application layer (enterprise_wordpress_app) acts as the user gateway, while the data tier (enterprise_mysql_db) operates on an isolated bridge network, protecting data transactional integrity.

| Container Service | Responsibility | Port Mapping | Internal Network IP | Storage/Persistence Mount |
| :--- | :--- | :--- | :--- | :--- |
| **enterprise_wordpress_app** | Content Delivery, Application Front-End, Apache Server | Host: 8080 → Container: 80 | Dynamic (enterprise_net) | Bind-mount for plugins/themes |
| **enterprise_mysql_db** | Database Schema, Relational Table Management, post data storage | Internal Only: 3306 | Dynamic (enterprise_net) | Named Volume (db_data) → /var/lib/mysql |

### Isolated Network: enterprise_net

The infrastructure strictly isolates inter-service traffic by creating a dedicated custom bridge network. The application container is the sole permitted conduit to query the database container; all other external network traffic (including host-based connections directly from the Ubuntu shell) is prohibited from connecting directly to the enterprise_mysql_db port 3306.

---

## 🚀 Routine Operations Guide

These commands must be executed within the deployment path: ~/CCM101-jlimen/Laboratory-10-Enterprise-Cloud-Architect.

### 1. Daily Deployment Loop (Start/Stop)

#### Start the Infrastructure
To initialize the cluster in detached background mode (standard production execution):
```bash
docker compose up -d
