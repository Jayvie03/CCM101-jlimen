# Mission Reflection

This laboratory activity helped me understand how containerization differs from using traditional Virtual Machines. A Docker container can start much faster because it does not need to install and boot a complete operating system. Instead, containers share the host operating system kernel while keeping applications isolated. Because of this, setting up a containerized application can be much quicker than installing an operating system and configuring a web server inside a Virtual Machine.

The port mapping `-p 8080:80` is necessary because the Nginx web server is running inside the container on port 80. The mapping connects port 8080 of the host environment to port 80 inside the container. This allows me to access the Nginx server by using `http://localhost:8080` from the host environment. Without the port mapping, the service would not be directly accessible through the specified host port.

When the `docker rm` command is used, the container itself is removed from the Docker environment. Any data stored only inside the container that was not saved using a persistent storage method can also be lost when the container is removed. This shows why persistent storage is important for applications that need to keep data.

Containerization can also change how developers and IT operations teams work together. Developers can package applications with their required dependencies, while operations teams can deploy the same containerized application in different environments. This supports a more consistent workflow between development, testing, and deployment.

My GitHub portfolio is also evolving as I add more laboratory activities and technical documentation. In this activity, I added another organized laboratory folder containing Markdown files and screenshots. This makes my portfolio a record of the cloud technologies and practical skills I have learned throughout the course.

