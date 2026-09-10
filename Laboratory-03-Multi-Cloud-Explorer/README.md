# Laboratory 03 – Multi-Cloud Explorer

## Mission Overview

Laboratory Activity 3, **Mission 3 – Become a Multi-Cloud Explorer**, focuses on exploring and comparing three major public cloud platforms: **Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform (GCP)**.

The activity examines the core services, global infrastructure, cloud management consoles, advantages, enterprise use cases, and suitable applications of each cloud provider. It also involves analyzing different business scenarios and recommending the most appropriate cloud platform based on specific requirements.

## Cloud Platforms Explored

The three cloud platforms investigated in this laboratory are:

* **[Amazon Web Services (AWS)](https://aws.amazon.com/)** – A cloud computing platform that provides services for computing, storage, networking, databases, security, and other cloud workloads.

* **[Microsoft Azure](https://azure.microsoft.com/)** – Microsoft's cloud computing platform that provides services for virtual machines, storage, networking, databases, artificial intelligence, and enterprise applications.

* **[Google Cloud Platform (GCP)](https://cloud.google.com/)** – Google's cloud computing platform that provides services for computing, storage, networking, data analytics, artificial intelligence, and containerized applications.

## Linux Environment

The Linux investigation was performed using the **KillerCoda Playground**. Linux commands were used to identify the operating system, CPU information, memory, and available disk space.

### Operating System

The operating system was identified using:

```bash
cat /etc/os-release
```

The `cat /etc/os-release` command displays information about the Linux operating system, including its name and version.

| Information      | Result             |
| ---------------- | ------------------ |
| Operating System | Ubuntu 24.04.4 LTS |

### CPU Information

CPU information was collected using:

```bash
lscpu
```

The `lscpu` command displays detailed information about the computer's processor, including its architecture, model name, number of CPUs, cores, and other processor details.

The most relevant CPU information from the KillerCoda environment is shown below:

| CPU Information  | Result                                        |
| ---------------- | --------------------------------------------- |
| Architecture     | x86_64                                        |
| CPU Model        | Intel Xeon E312xx (Sandy Bridge, IBRS update) |
| Number of CPUs   | 1                                             |
| CPU Cores        | 1                                             |
| Threads per Core | 1                                             |
| CPU Speed        | 2.0 GHz                                       |

### Memory

Memory information was collected using:

```bash
free -h
```

The `free -h` command displays the system's memory usage in a human-readable format, such as MiB or GiB.

| Memory Type |   Total |    Used |    Free | Available |
| ----------- | ------: | ------: | ------: | --------: |
| RAM         | 1.9 GiB | 417 MiB | 863 MiB |   1.5 GiB |
| Swap        | 1.0 GiB |     0 B | 1.0 GiB |         — |

### Disk Space

Disk space was checked using:

```bash
df -h
```

The `df -h` command displays information about disk usage and available storage space in a human-readable format.

The main storage device used by the Linux system is shown below:

| Filesystem  |  Size |   Used | Available | Use | Mounted On |
| ----------- | ----: | -----: | --------: | --: | ---------- |
| `/dev/vda1` | 19 GB | 5.4 GB |     13 GB | 30% | `/`        |

Additional system partitions are also present:

| Filesystem   |   Size |   Used | Available | Use | Mounted On  |
| ------------ | -----: | -----: | --------: | --: | ----------- |
| `/dev/vda16` | 881 MB | 117 MB |    703 MB | 15% | `/boot`     |
| `/dev/vda15` | 105 MB | 6.2 MB |     99 MB |  6% | `/boot/efi` |

## Screenshot Evidence

The following screenshot shows the Linux terminal used to collect the system information required for this laboratory activity.

[![KillerCoda Terminal](screenshots/killercoda-terminal.png)](screenshots/killercoda-terminal.png)

## Cloud Hosting Possibilities

If this Linux server were migrated to the cloud, it could be hosted using virtual machine services provided by AWS, Microsoft Azure, and Google Cloud.

### AWS – Amazon EC2

A suitable AWS service would be **Amazon Elastic Compute Cloud (EC2)**. Amazon EC2 provides virtual servers that can run Linux operating systems and applications in the cloud.

### Microsoft Azure – Azure Virtual Machines

A suitable Azure service would be **Azure Virtual Machines**. This service provides virtual machines that can run Linux-based operating systems and applications in Microsoft's cloud environment.

### Google Cloud – Compute Engine

A suitable Google Cloud service would be **Compute Engine**. It provides virtual machines that can run Linux operating systems and applications on Google Cloud infrastructure.

## Mission Activities

During this laboratory activity, I:

* Researched Amazon Web Services (AWS).
* Researched Microsoft Azure.
* Researched Google Cloud Platform (GCP).
* Explored the core services offered by each cloud provider.
* Compared cloud services across AWS, Azure, and GCP.
* Examined the global infrastructure and management consoles of the three providers.
* Analyzed different business scenarios.
* Recommended suitable cloud platforms for different client requirements.
* Matched equivalent services between AWS, Azure, and GCP.
* Investigated a Linux environment using KillerCoda.
* Identified Linux system information using Linux commands.
* Related the Linux environment to cloud virtual machine services.
* Documented the laboratory activities using Markdown.
* Organized screenshots and other evidence in the GitHub Cloud Computing Portfolio.

## Repository Contents

This laboratory folder contains the following documentation and evidence:

| File/Folder                    | Description                                               |
| ------------------------------ | --------------------------------------------------------- |
| `README.md`                    | Overview of Laboratory 03 and Linux investigation         |
| `aws-research.md`              | Research about Amazon Web Services                        |
| `azure-research.md`            | Research about Microsoft Azure                            |
| `gcp-research.md`              | Research about Google Cloud Platform                      |
| `cloud-platform-comparison.md` | Comparison and equivalent services across cloud providers |
| `client-recommendations.md`    | Cloud platform recommendations for different clients      |
| `reflection.md`                | Personal reflection about the laboratory activity         |
| `screenshots/`                 | Screenshots used as evidence of the completed activities  |

## Screenshots

The `screenshots` folder contains evidence collected throughout the laboratory activity.

### AWS Homepage

![AWS Homepage](https://github.com/Jayvie03/CCM101-jlimen/blob/main/Laboratory-03-Multi-Cloud-Explorer/screenshots/checkpoint2-aws-homepage.png)

### Azure Homepage

![Azure Homepage](https://github.com/Jayvie03/CCM101-jlimen/blob/main/Laboratory-03-Multi-Cloud-Explorer/screenshots/checkpoint2-azure-homepage.png)

### Google Cloud Homepage

[![Google Cloud Homepage](https://github.com/Jayvie03/CCM101-jlimen/blob/main/Laboratory-03-Multi-Cloud-Explorer/screenshots/checkpoint2-gcp-homepage.png)

### KillerCoda Terminal

[![KillerCoda Terminal](screenshots/killercoda-terminal.png)](screenshots/killercoda-terminal.png)

### GitHub Repository

[![GitHub Repository](screenshots/github-repository.png)](screenshots/github-repository.png)
