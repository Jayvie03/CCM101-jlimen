# Laboratory 07 – The Cloud Operations Engineer

## Mission Overview

In this laboratory activity, I took on the role of a Cloud Operations Engineer at CloudNova Technologies. The goal of the mission was to monitor the health and performance of a Linux server before and after deploying a containerized web application.

I established a baseline for the Linux host by checking memory, disk storage, and CPU/process activity. I then deployed an Nginx web server using Docker, generated HTTP requests, intentionally created a `404 Not Found` error, and analyzed the application's container logs.

Finally, I used Docker's real-time monitoring tool to observe the container's CPU, memory, and network activity. These activities helped demonstrate how metrics and logs can be used to monitor and troubleshoot a cloud application.

## Objectives

The objectives of this laboratory activity were to:

- Utilize native Linux command-line tools to monitor host CPU, memory, and disk capacity.
- Deploy a web container and track its real-time performance using Docker metrics.
- Generate web traffic and extract application access logs for analysis.
- Translate raw performance data into a readable technical report using Markdown.
- Continue expanding a professional GitHub Cloud Computing Portfolio.

## Monitoring Commands Executed

### 1. Memory Monitoring

```bash
free -h
```

This command was used to check the server's memory usage and total available RAM.

### 2. Disk Monitoring

```bash
df -h
```

This command was used to check the storage capacity and available space of the root file system.

### 3. CPU and Process Monitoring

```bash
top
```

This command was used to observe active processes and CPU load in real time.

### 4. Nginx Container Deployment

```bash
docker run -d --name client-website -p 8080:80 nginx
```

This command was used to deploy the Nginx web server in a Docker container named `client-website`.

### 5. HTTP Request

```bash
curl http://localhost:8080
```

This command was used to simulate a user visiting the web application.

### 6. Generate a 404 Error

```bash
curl http://localhost:8080/hidden-admin-page
```

This command was used to simulate a user requesting a page that does not exist and generate a `404 Not Found` response.

### 7. Application Logs

```bash
docker logs client-website
```

This command was used to retrieve the application's container logs and identify successful and failed HTTP requests.

### 8. Container Metrics

```bash
docker stats
```

This command was used to monitor the container's CPU usage, memory usage, and network input/output in real time.

## Skills Learned

- Established a basic performance baseline for a Linux server.
- Used Linux command-line tools to check memory, disk storage, and CPU/process activity.
- Deployed an Nginx web server using Docker.
- Learned how to map a host port to a container port.
- Used `curl` to generate HTTP requests and simulate web traffic.
- Learned how to intentionally generate and identify a `404 Not Found` error.
- Used `docker logs` to examine application requests and errors.
- Learned how to identify HTTP status codes such as `200` and `404` in application logs.
- Used `docker stats` to monitor real-time container resource usage.
- Learned how CPU, memory, and network metrics can be used to observe container performance.
- Improved my understanding of cloud operations, monitoring, observability, and troubleshooting.
- Practiced documenting technical activities using Markdown and GitHub.
