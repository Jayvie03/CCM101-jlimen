# Mission Reflection

This laboratory activity helped me understand how cloud storage can be used to store and manage large amounts of data. I learned about the differences between Block Storage, File Storage, and Object Storage, and I also gained practical experience deploying an S3-compatible object storage server using MinIO and Docker. Through this activity, I was able to connect the concepts of cloud storage with an actual working storage environment.

Object Storage is better suited for storing millions of photos because it is designed to store large amounts of unstructured data such as images, videos, and backups. Instead of storing photos directly inside a web server container, the files can be stored as objects in a storage system. This makes Object Storage a suitable choice for a photo-sharing application because it can handle a large collection of user-uploaded images.

Docker made it easier to deploy the MinIO storage server because I could start the server using a Docker command instead of manually installing and configuring all of its components. I used environment variables to set the MinIO login credentials and mapped ports 9000 and 9001 so that the service could be accessed. Using `docker ps` also allowed me to verify that the MinIO container was running successfully.

A bucket is a storage container used to organize and store objects in object storage. In this activity, I created a bucket named `client-photos` and uploaded a sample file to demonstrate that the storage system was working correctly.

Large enterprise companies can help prevent data loss when physical servers fail by using redundant storage, backups, and multiple copies of data. This allows data to remain available even if a physical server or storage device experiences a problem. This activity also helped increase my confidence in using the Linux command line. Running commands such as `docker --version` and `docker ps` gave me more practice working with Docker in a Linux environment. Overall, this laboratory improved my understanding of Object Storage, Docker, MinIO, and cloud storage management.
