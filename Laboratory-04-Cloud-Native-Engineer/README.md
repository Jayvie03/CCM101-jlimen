# Laboratory 04 – Cloud-Native Engineer

## Mission Overview

In this laboratory activity, I explored the concept of cloud-native computing by comparing traditional Virtual Machines (VMs) with containers. I used the KillerCoda Playground to work with Docker and deployed an Nginx web server inside a container. I also practiced basic Docker commands for pulling images, running containers, testing services, stopping containers, and removing containers.

## Objectives

* Differentiate between Virtual Machines and Containers.
* Access a Docker-enabled cloud environment using KillerCoda.
* Execute fundamental Docker CLI commands.
* Pull, run, manage, and terminate an Nginx container.
* Document container operations using Markdown.
* Maintain an organized GitHub Cloud Computing Portfolio.

## Docker Commands Executed

### Check Docker Version

```bash
docker --version
```

### Check Docker Environment

```bash
docker info
```

### Pull Nginx Image

```bash
docker pull nginx
```

### Run Nginx Container

```bash
docker run -d --name nginx-server -p 8080:80 nginx
```

### List Running Containers

```bash
docker ps
```

### Test Nginx

```bash
curl http://localhost:8080
```

### Stop Nginx Container

```bash
docker stop nginx-server
```

### Verify Container Status

```bash
docker ps
```

### List All Containers

```bash
docker ps -a
```

### Remove Nginx Container

```bash
docker rm nginx-server
```

## Skills Learned

Through this laboratory activity, I learned how containers differ from traditional Virtual Machines. I practiced using Docker commands to download images, create containers, run applications, and manage the container lifecycle. I also learned how port mapping allows a web service running inside a container to be accessed through the host machine. Finally, I improved my technical documentation skills by recording the procedures and results using Markdown and GitHub.

## Challenges Encountered

One challenge was becoming familiar with the Docker command-line interface and understanding the purpose of each command. Another challenge was making sure that the Nginx container was running correctly and that port 8080 was mapped to port 80. I also needed to verify the container status before stopping and removing it. These challenges helped me become more comfortable with basic Docker operations and troubleshooting.

## Evidence

### Docker Version

This screenshot shows the Docker version and Docker environment information.

![Docker Version](screenshots/Checkpoint_3-docker-version_1.png)
![Docker Version](screenshots/Checkpoint_3-docker-version_2.png)

### Nginx Running

This screenshot shows the successful response from the Nginx web server using `curl`.

![Nginx Running](screenshots/Checkpoint_4-nginx-running.png)

### Container Lifecycle

This screenshot shows the Docker container lifecycle commands, including listing, stopping, verifying, and removing the container.

![Container Lifecycle](screenshots/Checkpoint_5-container-lifecycle.png)
