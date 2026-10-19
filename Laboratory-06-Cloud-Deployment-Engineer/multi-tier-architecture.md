# Multi-Tier Architecture

## What is a Two-Tier Architecture?

A two-tier architecture is an application design that separates the application into two main parts: the Web/Application Tier and the Database Tier. In this laboratory, Nextcloud acts as the application while MariaDB acts as the database.

## The Web/Application Tier

The Web/Application Tier is responsible for providing the application that users interact with through a web browser. In this laboratory, Nextcloud runs inside its own container and handles requests from users who access the private cloud storage system.

## The Database Tier

The Database Tier is responsible for storing persistent information required by the application. In this laboratory, MariaDB runs in a separate container and stores information such as Nextcloud user accounts and other application data.

## Why Separate Them?

Separating the web application and database into different containers makes the system easier to manage and organize. Each container has a specific responsibility, which allows the application and database to operate independently while communicating with each other when needed.

## Architecture Used in This Laboratory

The architecture used in this laboratory consists of a Nextcloud application container and a MariaDB database container.

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

This separation demonstrates a basic multi-tier cloud application architecture.
