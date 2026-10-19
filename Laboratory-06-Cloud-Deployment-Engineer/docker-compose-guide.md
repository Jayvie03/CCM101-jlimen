# Docker Compose Technical Guide

## Introduction

Docker Compose is a tool that allows us to define and run multiple containers using one YAML configuration file. In this laboratory, Docker Compose was used to deploy two containers: a Nextcloud application container and a MariaDB database container.

Instead of setting up each container separately using many commands, the required configuration can be written in a `docker-compose.yml` file. This makes the deployment easier to understand, repeat, and manage.

## The `services:` Block

The `services:` block defines the containers that are needed for the application.

In this laboratory, there are two services:

- `database` – the MariaDB database container
- `app` – the Nextcloud application container

The `database` service uses the `mariadb:10.6` image:

```yaml
services:
  database:
    image: mariadb:10.6
```

The `app` service uses the Nextcloud image:

```yaml
  app:
    image: nextcloud
```

This means the Compose file describes two separate containers that work together as one application.

## How Nextcloud Finds the Database

The Nextcloud application needs to know where the MariaDB database is located. This is done using the `MYSQL_HOST` environment variable.

The Compose file contains:

```yaml
- MYSQL_HOST=database
```

The word `database` refers to the name of the MariaDB service:

```yaml
services:
  database:
```

Therefore, Nextcloud uses `database` to find and connect to the MariaDB container.

In simple terms, `MYSQL_HOST=database` tells Nextcloud:

> "The database you need is the service named `database`."

## Why Are Environment Variables Used?

Environment variables are used to provide configuration information to the containers.

For example, the Compose file contains:

```yaml
- MYSQL_PASSWORD=cloudnova_pass
- MYSQL_DATABASE=nextcloud_db
- MYSQL_USER=nextcloud_user
- MYSQL_HOST=database
```

These variables provide information needed for the connection between Nextcloud and MariaDB.

For example:

- `MYSQL_PASSWORD` provides the database password.
- `MYSQL_DATABASE` identifies the database that will be used.
- `MYSQL_USER` identifies the database user.
- `MYSQL_HOST` tells Nextcloud where the database container is located.

In simple terms, environment variables are like settings or instructions that are given to the container when it starts.

## Port Mapping

Port mapping allows users to access an application running inside a container from outside the container.

In the Compose file, the Nextcloud application uses:

```yaml
ports:
  - 8080:80
```

This means:

- `8080` is the port on the host.
- `80` is the port inside the Nextcloud container.

The mapping can be understood as:

```text
Host Port 8080  →  Nextcloud Container Port 80
```

This is why we used port `8080` in the KillerCoda Traffic or Custom Ports section.

In simple terms, port mapping provides a way for the browser to reach the Nextcloud application inside the container.

## `docker run` vs. `docker-compose up -d`

The `docker run` command is commonly used to create and start an individual Docker container. The configuration is usually provided directly in the command.

For example, in previous activities, a container could be started using a command such as:

```bash
docker run ...
```

On the other hand, `docker-compose up -d` uses the configuration written in the `docker-compose.yml` file.

In this laboratory, the Compose file contains both the Nextcloud application and MariaDB database configuration. Running:

```bash
docker-compose up -d
```

starts the services defined in the file.

The `-d` option means that the containers run in the background, allowing the terminal to be used for other commands.

Therefore:

```text
docker run
    ↓
Usually used to run an individual container

docker-compose up -d
    ↓
Uses a YAML file to start multiple related services
```

For a multi-container application like Nextcloud and MariaDB, Docker Compose makes the deployment easier because the configuration is stored in one file.

## Infrastructure as Code (IaC)

Infrastructure as Code, or IaC, means defining infrastructure using configuration files instead of setting everything up manually.

The `docker-compose.yml` file is an example of this approach because it describes the services, images, ports, and environment variables needed for the application.

For example:

```yaml
services:
  database:
    image: mariadb:10.6

  app:
    image: nextcloud
    ports:
      - 8080:80
```

Instead of manually remembering all the settings and commands, the configuration is written in the file.

This makes the deployment more organized and repeatable. If the same configuration is needed again, the Compose file can be used to deploy the same services without manually entering every configuration step.
