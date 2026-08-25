# Cloud Infrastructure Components

## Compute Resources

### Purpose

Compute resources provide the processing power needed to run programs, execute commands, and handle different tasks. The CPU is responsible for processing instructions and performing the operations requested by the user or applications.

### Example

In the KillerCoda environment, the CPU and the number of CPU cores are examples of compute resources. These resources determine the processing capability available to the Linux server.

### Importance in Cloud Computing

Compute resources are important because every application running in the cloud needs processing power. Cloud platforms allow organizations to increase or decrease computing resources depending on the needs of their applications.

### KillerCoda Environment

I used the `lscpu` command to view detailed information about the CPU and the `nproc` command to check the number of available CPU cores. By checking these resources, I was able to see the computing capacity of the Linux server provided by KillerCoda.

## Storage Resources

### Purpose

Storage resources provide space for keeping the operating system, applications, files, and other data. They allow information to be saved and accessed whenever it is needed.

### Example

The disk and mounted file systems in the KillerCoda environment are examples of storage resources. The available storage is used by the Linux system to store its files and other information.

### Importance in Cloud Computing

Storage is important in cloud computing because applications and services need a reliable place to store data. Cloud storage also makes it possible for users and applications to access stored information when needed.

### KillerCoda Environment

I used the `lsblk` command to view the available storage devices and the `df -h` command to check how much storage was being used and how much was available. These commands helped me understand how storage is organized and used by the Linux server.

## Networking Resources

### Purpose

Networking resources provide the connection between the server, users, and other systems. They allow information to travel between different devices and services.

### Example

The network interface, hostname, and IP address of the KillerCoda server are examples of networking resources. These resources help identify the server and allow it to communicate over a network.

### Importance in Cloud Computing

Networking is important because cloud resources rarely work alone. Applications, servers, databases, users, and other services need to communicate with each other to provide their functions.

### KillerCoda Environment

I used the `hostname` command to identify the name of the server, `hostname -I` to view its IP address, and `ip addr` to examine its network interfaces. These commands helped me understand how the Linux server is identified and connected to the network.

## Operating System

### Purpose

The operating system manages the computer's hardware and software resources. It provides the environment where applications can run and allows users to interact with the server through commands and other tools.

### Example

The Linux operating system running in KillerCoda is an example of an operating system used in a cloud environment. It provides the platform where I performed the different investigation tasks.

### Importance in Cloud Computing

An operating system is important because cloud servers need a system that can manage their resources and run applications. Linux is commonly used in cloud environments because it provides powerful command-line tools for managing and monitoring servers.

### KillerCoda Environment

I used the `cat /etc/os-release` command to identify the Linux distribution and its version. Working with the Linux terminal allowed me to inspect the server, check its resources, and understand how the operating system manages the cloud environment.

## How the Components Work Together

These infrastructure components work together to provide a functional cloud environment. The operating system manages the available resources, the CPU provides processing power, storage keeps files and data, and networking allows the server to communicate with users and other resources.

By investigating these components in KillerCoda, I was able to connect the concepts of cloud infrastructure with an actual Linux environment. Instead of only learning what compute, storage, networking, and operating systems are, I was able to use Linux commands to observe and investigate them directly.
