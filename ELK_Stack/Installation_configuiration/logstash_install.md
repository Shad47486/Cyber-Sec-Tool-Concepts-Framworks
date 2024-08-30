# How to install Logstash?

* Run the following command dpkg -i logstash.deb as a root user to install the logstash on the server.
  * We will use the following commands to make the Logstash service persistent (in the /home/tools/logstash):
    * systemctl daemon-reload
    * systemctl enable logstash.service
    * systemctl start logstash.service

* let’s check its status to see if it's installed and running properly.
  * systemctl status logstash.service
*Some other files to be considerate of*
* In a typical installation of Logstash, the /etc/logstash directory is the default location for important configuration files.
  * Here are some of the important files you may find in the /etc/logstash directory:
    * logstash.yml: This is the main configuration file for Logstash.
      * It contains global settings and options for Logstash, such as network settings, logging configs, pipeline config paths, & more.
    * jvm.options: This file contains the Java Virtual Machine (JVM) options for Logstash.
      * You can use it to configure parameters like memory allocation, garbage collection settings, and other JVM-related options.
    * log4j2.properties: Logstash uses the Log4j2 framework for logging.
      * This file allows you to configure the logging behavior, including log levels, log outputs (such as console or file), log file locations, and more.
    * pipelines.yml: If you are running multiple pipelines in Logstash, this file is used to define and configure them.
      * It allows you to specify each pipeline's different inputs, filters, and outputs.
    * conf.d/: This directory is often used to store individual pipeline configuration files.
      * You can create separate configuration files within this directory, each defining a specific data processing pipeline.
        * Logstash will load and process these configuration files in alphabetical order, so it’s common to prefix them with numbers to control the processing order.
    * patterns/: This directory stores custom patterns that can be used in Logstash’s grok filter.
      * Grok is a powerful pattern-matching and extraction tool in Logstash, and you can define your own patterns in separate files within this directory.
    * startup.options: On some systems, you may find this file which contains additional options and arguments that can be passed to Logstash during startup.
*End of files to be considerate of*

* Let’s open the logstash.yml using the command nano logstash.yml and go to the Pipeline Configuration Settings section:
  * There are two updates that we need to make.
    * Uncomment both the following variables and change the value of config.reload.automatic to true:
      * config.reload.automatic: true
      * config.reload.interval: 3s
    * These changes will ensure Logstash looks at the configuration files every 3 seconds to see if there are any changes to the log sources which are being ingested.
      * Perform a restart using:
        * systemctl restart logstash.service
