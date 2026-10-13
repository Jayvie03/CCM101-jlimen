# Laboratory 05 - Cloud Data Engineer

## Mission Overview

Laboratory Activity 5, **Mission 5: The Cloud Data Engineer**, focuses on cloud storage and the deployment of an S3-compatible Object Storage server using MinIO. In this activity, I explored the three primary types of cloud storage: Block Storage, File Storage, and Object Storage.

The main task of this laboratory was to build a proof-of-concept Object Storage environment for a client developing a photo-sharing application. Since the application may need to store millions of user-uploaded images, the storage system needs to provide an appropriate way to store and access large amounts of unstructured data.

To complete the mission, I used Docker in a KillerCoda Ubuntu Playground to deploy a MinIO storage server. I configured the server with Docker environment variables, mapped the required ports, accessed the MinIO Web Console through port 9001, created a storage bucket named `client-photos`, and uploaded a sample file.

This laboratory also required me to document my work using Markdown and maintain the project inside my GitHub Cloud Computing Portfolio.

## Objectives

The objectives of this laboratory activity are:

1. **Differentiate between Block, File, and Object Storage.**
   
   Understand how the three major types of cloud storage work and identify the situations where each type of storage is most appropriate.

2. **Deploy an S3-compatible Object Storage server using MinIO.**
   
   Use Docker to deploy and run a MinIO server in the KillerCoda Ubuntu environment.

3. **Access a cloud service through a web interface using port forwarding.**
   
   Access the MinIO Web Console through port 9001 and use the web interface to manage the storage environment.

4. **Create a storage bucket and upload objects.**
   
   Create the `client-photos` bucket and upload a sample image or text file to demonstrate that the object storage system is working.

5. **Document cloud storage operations using Markdown.**
   
   Record the technical steps, configurations, and results of the laboratory using Markdown files.

6. **Continue developing a professional GitHub Cloud Computing Portfolio.**
   
   Organize the laboratory files, documentation, and screenshots in the existing GitHub repository.

## Tools Used

### GitHub

GitHub was used to organize and store the laboratory documentation and evidence. The Laboratory 05 files were added to the existing Cloud Computing Portfolio repository.

### KillerCoda

KillerCoda was used as the cloud-based laboratory environment. The Ubuntu/Docker environment provided the terminal where I deployed and managed the MinIO container.

### Docker

Docker was used to deploy MinIO as a containerized application. The Docker command configured the MinIO server, exposed the required ports, and provided the login credentials through environment variables.

### MinIO

MinIO was used as the S3-compatible Object Storage server. It provided the Web Console used to create the `client-photos` bucket and upload a sample object.

### Ubuntu/Linux Command Line

The Linux command line was used to run Docker commands and verify the MinIO deployment.

### Web Browser

A web browser was used to access the MinIO Web Console through port 9001 and manage the storage bucket and uploaded object.

### Markdown

Markdown was used to document the research, deployment process, and mission reflection.

## Storage Configuration

The MinIO server was deployed using Docker with the following configuration:

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server -e "MINIO_ROOT_USER=cloudadmin" -e "MINIO_ROOT_PASSWORD=CloudNova2026!" chainguard/minio:latest server /data --console-address ":9001"
```

The deployment used two ports:

| Port | Purpose |
|---|---|
| `9000` | MinIO API port |
| `9001` | MinIO Web Console |

The MinIO root username used for the deployment was:

```text
cloudadmin
```

The storage bucket created during the activity was:

```text
client-photos
```

## Laboratory Tasks Completed

### 1. Cloud Storage Research

I compared Block Storage, File Storage, and Object Storage based on their descriptions, primary use cases, and cloud provider examples.

### 2. MinIO Deployment

I used Docker inside the KillerCoda environment to deploy the MinIO object storage server.

The Docker installation was checked using:

```bash
docker --version
```

After deploying MinIO, I verified that the container was running using:

```bash
docker ps
```

### 3. MinIO Web Console

I accessed the MinIO Web Console through port `9001` using the KillerCoda port access feature.

### 4. Bucket Creation

I created the following storage bucket:

```text
client-photos
```

### 5. File Upload

I uploaded a sample file into the `client-photos` bucket to verify that the object storage environment was working correctly.

### 6. Documentation

The technical deployment process, configuration, screenshots, and personal reflection were documented using Markdown files in this repository.

## Screenshots

The `screenshots` folder contains evidence of the completed laboratory tasks.

### MinIO Deployment

The `minio-deployed.png` screenshot provides evidence of the Docker deployment and the running MinIO container.

![MinIO Deployment](screenshots/Checkpoint3-minio-deployed.png)

### Bucket and File Upload

The `minio-bucket-upload.png` screenshot provides evidence of the `client-photos` bucket and the uploaded sample file.

![MinIO Bucket Upload](screenshots/Checkpoint4-minio-bucket-upload.png)
![MinIO Bucket Upload](screenshots/Checkpoint4.1-minio-bucket-upload.png)

## Skills Learned

Through this laboratory activity, I developed and practiced the following skills:

- Understanding the differences between Block, File, and Object Storage.
- Identifying appropriate storage types for different cloud applications.
- Using Docker to deploy a containerized cloud service.
- Running Docker commands in a Linux environment.
- Using Docker environment variables to configure a container.
- Working with Docker port mappings.
- Verifying a running container using `docker ps`.
- Accessing a cloud service through a web interface.
- Working with the MinIO Web Console.
- Creating and managing an object storage bucket.
- Uploading objects to cloud storage.
- Documenting technical procedures using Markdown.
- Organizing cloud computing laboratory files in GitHub.
- Maintaining screenshots as evidence of completed tasks.

### File Descriptions

| File/Folder | Description |
|---|---|
| `README.md` | Overview, objectives, tools, tasks, and skills learned |
| `storage-types-research.md` | Research and comparison of Block, File, and Object Storage |
| `minio-deployment.md` | Technical documentation of the MinIO deployment |
| `reflection.md` | Reflection on the laboratory experience and lessons learned |
| `screenshots/` | Contains screenshots used as evidence |
| `minio-deployed.png` | Evidence of the MinIO Docker deployment |
| `minio-bucket-upload.png` | Evidence of the created bucket and uploaded file |

## Mission Result

The laboratory demonstrated how Object Storage can be used as a cloud storage solution for unstructured data such as images. I successfully used Docker to deploy a MinIO server, accessed its Web Console, created the `client-photos` bucket, and uploaded a sample file.

The completed documentation and screenshots are included in this GitHub folder as part of the Cloud Computing Portfolio.

## Lesson Learned
Laboratory Activity 5 provided practical experience with cloud storage and containerized cloud services. By combining Docker, MinIO, Linux commands, port forwarding, and GitHub documentation, I was able to build and document a basic Object Storage environment. The activity also helped strengthen my understanding of how cloud storage can be used to support applications that need to manage large amounts of unstructured data.
