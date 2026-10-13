# Cloud Storage Types Research

## Comparison of Cloud Storage Types

| Storage Type | Description | Primary Use Case | Cloud Provider Example |
|---|---|---|---|
| **Block Storage** | Stores data in fixed-size blocks that can be attached to a virtual machine and used like a traditional hard drive. | Best suited for operating systems, databases, and applications that require fast and consistent storage. | AWS EBS |
| **File Storage** | Stores data as files in a hierarchical folder and directory structure. Multiple users or systems can access shared files. | Best suited for shared files, documents, and applications that require a common file system. | AWS EFS |
| **Object Storage** | Stores data as objects together with metadata and a unique identifier. It is designed to handle large amounts of unstructured data. | Best suited for images, videos, backups, documents, and other large collections of unstructured data. | AWS S3 |

## Why Object Storage is the Best Choice

Object Storage is the best choice for the client's photo-sharing application because it is designed to store large amounts of unstructured data such as images. It can provide scalable and accessible storage for millions of user-uploaded photos without storing the files directly inside the web server container.
