# Multi-Tier Architecture

## What is a Two-Tier Architecture?

A two-tier architecture is an application design that separates an application into two main parts: the Web/Application Tier and the Database Tier. In this laboratory, Nextcloud serves as the application while MariaDB serves as the database. These two parts work together to provide the cloud storage application.

## The Web/Application Tier

The Web/Application Tier provides the application that users interact with through a web browser. In this laboratory, Nextcloud runs inside its own container and handles requests from users. It provides the web interface for the private cloud storage system.

## The Database Tier

The Database Tier stores the persistent information needed by the application. In this laboratory, MariaDB runs in a separate container and provides the database for Nextcloud. It can store information such as user accounts and other application data.

## Why Separate Them?

Separating the web application and database into different containers makes the system easier to manage and organize. Each container has its own specific responsibility while still being able to communicate with the other container. This separation also allows the application and database to be managed independently.

## Architecture Used in This Laboratory

The architecture used in this laboratory consists of a Nextcloud application container and a MariaDB database container. The user accesses Nextcloud through a web browser, while Nextcloud communicates with MariaDB for database-related information. This demonstrates how multiple containers can work together as a basic multi-tier cloud application.

```text
User Browser
     |
     | HTTP
     v
Nextcloud Application
     |
     | Database Connection
     v
MariaDB Database
```
