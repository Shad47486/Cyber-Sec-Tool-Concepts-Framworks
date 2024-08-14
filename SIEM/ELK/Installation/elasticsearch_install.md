# What is is Elasticsearch?

* Elasticsearch is a distributed, open-source search and analytics engine that allows you to store, search, and analyze large volumes of data in real-time.
  * It is built on top of Apache Lucene and provides a scalable solution for full-text search, structured querying, and data analysis.

## How To Install Elasticsearch?

1. Run the following command dpkg -i elasticsearch.deb as a root user to install Elasticsearch on your machine
   1. Make sure to change the user to root using the command sudo su

2. When installing for the first time, security configuration will be displayed, including the default password for the elastic user; note this down as it will be used later.
   2. If all goes well, Elasticsearch will be installed on the host.

3. The following commands will be used to make the Elasticsearch service persistent so that it gets started whenever the server restarts.
   3. systemctl enable elasticsearch.service
   4. systemctl start elasticsearch.service
   5. To check Status: systemctl status elasticsearch.service

### How to configure Elastic Search?

* All important configuration files related to Elasticsearch can be found in the /etc/elasticsearch directory.

* Important configuration files:
  * elasticsearch.yml: This is the main configuration file for Elasticsearch.
    * It contains various settings that determine the behavior of Elasticsearch, such as network configuration, cluster settings, node settings, and paths for data storage and logging.
    * Modifying this file allows you to customize Elasticsearch according to your specific requirements.
  * jvm.options: The jvm.options file contains JVM (Java Virtual Machine) configuration settings for Elasticsearch.
    * It allows you to specify parameters related to memory allocation, garbage collection, and other JVM options.
    * Adjusting these settings is crucial for optimizing Elasticsearch’s performance and ensuring efficient memory usage.
  * log4j2.properties: The log4j2.properties file is the configuration file for Elasticsearch’s logging system, Log4j.
    * It defines how Elasticsearch logs different types of messages and sets log levels for different components.
    * You can modify this file to configure the log output format, log rotation, and other logging-related settings.
  * users: The users file is used for configuring user authentication and authorization in Elasticsearch.
    * It allows you to define users, roles, and their respective permissions.
    * By managing this file, you can control access to Elasticsearch resources and secure your cluster.
  * roles.yml and roles_mapping.yml: These files are used in conjunction with the users file to define roles and their mappings to users and privileges.
    * Roles provide a way to group users and assign common permissions to them.
    * The roles.yml file defines the roles and their privileges, while the roles_mapping.yml file maps roles to users.

1. Let’s open the elasticsearch.yml using the command nano elasticsearch.yml and go to the Network section
   1. In this section, we see the two variables network.host and http.port
   2. Uncomment these two and change the value of the network.host variable to 127.0.0.1
   3. As we are installing all these components on the same host, therefore we will update the network.host to 127.0.0.1
   4. Once these changes are made, save the document and restart the Elasticsearch service using the following command.
      1. systemctl restart elasticsearch.service
