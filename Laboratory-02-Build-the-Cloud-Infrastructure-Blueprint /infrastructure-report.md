# Cloud Infrastructure Report

## Operating System

* Operating System: 
PRETTY_NAME="Ubuntu 24.04.4 LTS"

**Command:**
`cat /etc/os-release` displays information about the Linux operating system, such as its name and version.

## Kernel Version

* Kernel Version: 
6.8.0-138-generic

**Command:**
`uname -r` displays the version of the Linux kernel currently running on the server.

## CPU Information

* CPU Model: 
Intel Xeon E312xx (Sandy Bridge, IBRS update)

* Number of CPU Cores: 
1

**Command:**
`lscpu` displays detailed information about the CPU, including its model and architecture.
`nproc` shows the number of available CPU processing units or cores.

## Memory

* Total RAM: 
               total        used        free      shared  buff/cache   available
Mem:           1.9Gi       412Mi       840Mi       1.1Mi       819Mi       1.5Gi
Swap:          1.0Gi          0B       1.0Gi

**Command:**
`free -h` displays information about the system's RAM, including total, used, and available memory. The `-h` option makes the values easier to read.

## Storage

- Disk Capacity: 20 GB
- Main Partition: 19 GB mounted at `/`
- Boot Partition: 913 MB mounted at `/boot`
- EFI Partition: 106 MB mounted at `/boot/efi`

**Command:**
`lsblk` displays information about the available storage devices, partitions, and their mount points.

## Mounted File Systems

The Linux server contains mounted file systems that allow the operating system and applications to access storage.

Filesystem      Size  Used Avail Use% Mounted on
tmpfs           191M  996K  190M   1% /run
/dev/vda1        19G  5.4G   13G  30% /
tmpfs           952M   84K  952M   1% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
/dev/vda16      881M  117M  703M  15% /boot
/dev/vda15      105M  6.2M   99M   6% /boot/efi

**Command:**
`df -h` displays the file systems currently mounted on the Linux server and shows their total, used, and available storage space.

## Hostname

* Hostname: 
ubuntu

**Command:**
`hostname` displays the name assigned to the Linux server. It helps identify the server on a network.

## IP Address

* IP Addresses: 172.30.1.2, 172.17.0.1

The server has multiple IP addresses because more than one network interface is available in the environment.

**Command:**
`hostname -I` displays the IP addresses assigned to the server's network interfaces.

The KillerCoda Linux environment provides the compute, memory, storage, networking, and operating system resources needed to run applications in a cloud-based environment. The investigation helped me understand the basic infrastructure resources available on a Linux cloud server.
