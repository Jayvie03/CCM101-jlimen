# Multi-Tier Architecture

## What is a Two-Tier Architecture?

A two-tier architecture is a system that separates an application into two main parts: the Web/Application Tier and the Database Tier. These two parts have different jobs but work together to provide the complete application. In this laboratory, Nextcloud is the Web/Application Tier, while MariaDB is the Database Tier.

## The Web/Application Tier

The Web/Application Tier is the part of the application that users interact with through a web browser. It receives requests from users and provides the application's interface and functions.

In this laboratory, Nextcloud is used as the Web/Application Tier. It runs inside its own container and provides the private cloud storage application that users can access through a browser.

## The Database Tier

The Database Tier is responsible for storing the information needed by the application. It keeps data that the application needs to use and manage.

In this laboratory, MariaDB is used as the Database Tier. It runs in a separate container and provides the database that Nextcloud needs to store information such as user accounts and other application data.

## Why Separate Them?

Separating the web application and database into different containers makes the system easier to manage and organize. Each container has a specific responsibility, allowing the application and database to work separately while still communicating with each other when needed.

## Architecture Used in This Laboratory

The architecture used in this laboratory consists of a Nextcloud application container and a MariaDB database container. The user accesses Nextcloud through a web browser, while Nextcloud communicates with MariaDB to use the required database.

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

This setup demonstrates a basic multi-tier cloud application where the application and database are separated into different containers.
