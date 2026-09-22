# Docker Deployment

## Docker Environment

The Docker environment was accessed using the KillerCoda Playground. Docker was verified using the Docker command-line interface.

### Docker Version

```bash
docker --version
```

This command displays the installed Docker version.

### Docker Environment Information

```bash
docker info
```

This command displays information about the Docker installation and environment.

---

## Pulling the Nginx Image

```bash
docker pull nginx
```

This command downloads the official Nginx image from Docker Hub so it can be used to create a container.

---

## Running the Nginx Container

```bash
docker run -d --name nginx-server -p 8080:80 nginx
```

This command creates and runs an Nginx container in detached mode and maps port 8080 on the host to port 80 inside the container.

---

## Testing the Nginx Web Server

```bash
curl http://localhost:8080
```

This command sends an HTTP request to the Nginx web server through port 8080 and verifies that the server is responding.

---

## Container Lifecycle

### 1. List Running Containers

```bash
docker ps
```

This command displays the containers that are currently running.

### 2. Stop the Container

```bash
docker stop nginx-server
```

This command stops the running Nginx container.

### 3. Verify the Container is Stopped

```bash
docker ps
```

This command verifies that the stopped container is no longer listed among the running containers.

```bash
docker ps -a
```

This command displays all containers, including stopped containers, allowing the stopped Nginx container to be verified.

### 4. Remove the Container

```bash
docker rm nginx-server
```

This command permanently removes the stopped Nginx container from the Docker environment.

---

The Docker commands demonstrated the basic container lifecycle, including downloading an image, creating and running a container, testing the application, stopping the container, verifying its status, and removing it.

