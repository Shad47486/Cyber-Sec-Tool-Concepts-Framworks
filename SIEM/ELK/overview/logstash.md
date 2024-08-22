# Logstash Overview

* Logstash is a data processing engine that takes data from different sources, applies the filter or normalizes it, and then sends it to the destination, Kibana, or a listening port.
*A Logstash configuration file is divided into three parts:*
* Input
  * Logstash provides a wide range of input plugins that allow you to ingest data from diverse sources such as log files, system metrics, databases, message queues, APIs, and more
  * These input plugins facilitate data collection in various formats and protocols
    * [Reference Documentation for Input](<https://www.elastic.co/guide/en/logstash/current/input-plugins.html>)
    * [TCP input Doc](<https://www.elastic.co/guide/en/logstash/current/plugins-inputs-tcp.html>)
  * Below is the list of the top 10 input plugins with a brief explanation:
    * File
      * Reads data from files in real-time or as a batch.
        * Useful for ingesting log files or other structured data stored on the local file system.
    * Beats
      * Ingests data from Beats shippers (such as Filebeat or Metricbeat), lightweight agents designed to ship various data types to Logstash.
    * TCP
      * Listens for incoming TCP connections and reads data from them.
        * Useful for receiving data from network devices or other systems over TCP.
    * UDP
      * Listens for incoming UDP packets and reads data from them.
        * Ideal for receiving log data or other types of data sent over UDP.
    * Syslog
      * Collects logs sent in the Syslog format over UDP or TCP and is commonly used for gathering logs from various network devices or applications.
    * HTTP
      * Acts as a web server and reads data from HTTP requests.
        * Useful for receiving data from webhooks, REST APIs, or other HTTP-based sources.
    * JMX
      * Monitors Java applications by connecting to Java Management Extensions (JMX) and collecting metrics and other data.
    * SNMP Trap
      * Receives SNMP traps, which are notifications sent by network devices to alert management systems of specific events.
    * RabbitMQ
      * Consumes messages from a RabbitMQ message broker.
        * Enables Logstash to receive data from other systems via RabbitMQ.
    * Amazon S3
      * Downloads objects from Amazon S3 buckets.
        * Useful for ingesting data stored in S3, such as log files or other files in various formats.

* Filter (optional)
  * Once the data is ingested, Logstash provides a rich set of filter plugins that enable you to manipulate and transform the data.
    * Filters allow you to parse, enrich, modify, and filter incoming data.
    * You can perform operations like extracting specific fields, converting data formats, applying regular expressions, adding timestamps, and enriching data with external sources.
  * [Reference Documentation for Filter](<https://www.elastic.co/guide/en/logstash/current/filter-plugins.html>)
  * Below is the list of the top 10 input plugins with a brief explanation:
    * Grok
      * Parses unstructured log data using custom patterns and extracts structured fields from it.
    * Mutate
      * Performs various mutations on event fields, such as renaming, removing, converting data types, and more.
    * Date
      * Parses and manipulates dates and timestamps in event fields.
        * Allows you to extract, format, or convert timestamps to a desired configuration.
    * JSON
      * Parses JSON-encoded strings in event fields and converts them into structured data.
        * Useful for working with JSON log files or messages.
    * CSV
      * Parses comma-separated values (CSV) data in event fields and converts them into structured data.
    * GeoIP
      * Enriches IP addresses in event fields with geo info, such as country, city, latitude, and longitude.
    * UserAgent
      * Parses User-Agent strings in event fields and extracts information about the client or device making the request.
    * Drop
      * Drops events that match specific conditions.
        * Useful for filtering out unwanted events based on certain criteria.
    * Translate
      * Translates values in event fields based on defined mappings.
        * It can be used for data normalization or mapping codes to meaningful values.
    * DNS
      * Performs DNS (Domain Name System) lookups on event fields containing IP addresses or hostnames and provides additional information.

* Output
  * After the data is processed through filters, Logstash provides output plugins to send the transformed data to different destinations.
    * These destinations can include Elasticsearch for indexing and search, various databases, message queues, cloud storage services, monitoring systems, and more.
  * [Reference Documentation for Outputs](<https://www.elastic.co/guide/en/logstash/current/output-plugins.html>)
  * Some of the common output plugins are explained below:
    * Elasticsearch
      * Sends events to Elasticsearch, a popular search and analytics engine.
        * Allows you to index and store data for further analysis and search.
    * File
      * Writes events to files on the local file system or a network-mounted file system.
        * Useful for storing data locally or archiving log files.
    * STDOUT
      * Prints events to the console (standard output).
        * Useful for debugging or quick data inspection.
    * Kafka
      * Produces messages to an Apache Kafka message broker.
        * Enables Logstash to send data to other systems via Kafka.
    * Redis
      * pushes events to a Redis data structure server.
        * Useful for publishing data to other systems or building real-time dashboards.
    * Amazon S3
      * Uploads events to Amazon S3 buckets.
        * Useful for storing data in S3 for long-term storage or backup purposes.
    * Graphite
      * Sends events to a Graphite server, commonly used for real-time graphing and metrics monitoring.
    * StatsD
      * Sends metrics data to a StatsD server for aggregation and monitoring.
        * They are commonly used in conjunction with Graphite or other monitoring tools.
    * Logz.io
      * Ships events to Logz.io, a cloud-based log management and analytics platform.
        * Suitable for centralized log analysis and monitoring.
    * InfluxDB
      * Writes events to an InfluxDB time-series database.
        * Useful for storing and analyzing timestamped data, such as metrics or sensor readings.
