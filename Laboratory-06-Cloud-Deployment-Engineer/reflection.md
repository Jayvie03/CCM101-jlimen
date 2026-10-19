# Cloud Deployment Engineer - Reflection

This laboratory helped me understand how Docker Compose can make the deployment of a multi-container cloud application easier and more organized. Instead of manually creating and configuring each container separately, I was able to describe the required services in a `docker-compose.yml` file. This made the deployment process more consistent because the configuration for the Nextcloud application and MariaDB database was written in one place.

I also learned that YAML indentation is very important. YAML uses indentation to show the relationship between different parts of the configuration. If I accidentally use a Tab instead of spaces or place a line at the wrong indentation level, Docker Compose may not be able to correctly understand the configuration. This showed me that even a small formatting mistake can prevent an Infrastructure as Code file from working properly.

Environment variables such as `MYSQL_PASSWORD`, `MYSQL_DATABASE`, `MYSQL_USER`, and `MYSQL_HOST` were used to provide configuration information to the containers. These variables allowed the Nextcloud application to know how to connect to the MariaDB database and what database information it should use.

Deploying Nextcloud in only a few minutes was a useful experience because it showed me how cloud technologies can simplify application deployment. Seeing the Nextcloud installation page after starting the containers made the concepts from the laboratory more practical and understandable.

Since Mission 1, my understanding of Cloud Computing has developed from learning basic cloud concepts to gaining more practical experience with Linux, containers, storage, and deployment. I now understand better how different components can work together to form a cloud application. This laboratory also helped me see why automation and Infrastructure as Code are important skills for cloud engineers.
