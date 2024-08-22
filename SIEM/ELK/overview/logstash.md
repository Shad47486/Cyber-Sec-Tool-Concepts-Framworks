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
  * [Elasticsearch output config doc](<https://tryhackme.com/r/room/logstash>)
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

## Example of Writing Input Configurations

* The configuration files are located in the /etc/logstash/conf.d/ directory.
  * EX: Take the input from TCP port 5456, which sends JSON formatted logs, apply the appropriate filter, and send it to Elasticsearch.
    * [TCP filter config file](</SIEM/ELK/configurationandexamples/tcp_ELKfilter.conf>)
    * We will save this configuration with the extension <any name>.conf into the path /etc/logstash/conf.d/ to make it work

* [File Input Plugin](</SIEM/ELK/configurationandexamples/input/fileinput.conf>)
  * This plugin reads data from files on the local system or network.
    * path: Specifies the path to the file(s) to be read.
    * start_position: Defines where Logstash should start reading the file.
      * In this example, “beginning” means it will start reading from the beginning of the file.
    * sincedb_path: Sets the path to the sincedb file, which keeps track of the current position of the file read.

* [Beats Input Plugin](</SIEM/ELK/configurationandexamples/input/beatsinput.conf>)
  * This plugin receives data from Beats, lightweight shippers that send data to Logstash.
    * port: Specifies the port number on which Logstash should listen for Beats connections.

* [TCP Input Plugin](</SIEM/ELK/configurationandexamples/input/tcpinput.conf>)
  * This plugin listens for data on a specified TCP port.
    * port: Sets the TCP port on which Logstash should listen for incoming data.
    * codec: Defines the codec to be used for decoding the incoming data.
      * In this example, the data is expected to be in JSON format

* [UDP Input Plugin](</SIEM/ELK/configurationandexamples/input/udpinput.conf>)
  * This plugin listens for data on a specified UDP port.
    * port: Sets the UDP port on which Logstash should listen for incoming data.
    * codec: Specifies the codec to be used for decoding the incoming data.
      * In this example, the data is treated as plain text.

* [HTTP Input Plugin](</SIEM/ELK/configurationandexamples/input/httpinput.conf>)
  * This plugin sets up an HTTP endpoint to receive data via HTTP requests.

### Example of Writing Filter Configurations

* [Adding a field using the mutate filter](</SIEM/ELK/configurationandexamples/filter/mutatefilter.conf>)
  * This configuration utilizes the mutate filter to add a new field called new_field with the value "new_value" to each event.
    * The mutate filter provides various operations for modifying fields.

* [Converting a field to lowercase using the mutate filter](</SIEM/ELK/configurationandexamples/filter/lowercasemutate.conf>)
  * his configuration employs the mutate filter to convert the value of the field_name field to lowercase.
    * The original value will be replaced with its lowercase equivalent.

* [Extracting data using the grok filter](</SIEM/ELK/configurationandexamples/filter/grokfilter.conf>)
  * This configuration uses the grok filter to extract data from the message field based on a predefined pattern (%{PATTERN}).
    * The extracted data will be stored in a new field called field_name.

* [Removing empty fields using the prune filter](</SIEM/ELK/configurationandexamples/filter/emptyprunefilter.conf>)
  * This configuration utilizes the prune filter to remove empty fields from the event, except for those specified in the whitelist_names parameter.
    * Only fields field1 and field2 will be retained in the event.

* [Replacing field values using the translate filter](</SIEM/ELK/configurationandexamples/filter/translatefilter.conf>)
  * This configuration utilizes the translate filter to replace the value of the country field with its corresponding value from the dictionary.
    * If the country field is "US", it will be replaced with "United States", and if it is "CA", it will be replaced with "Canada"

* [Dropping events based on a condition using the if-else statement](</SIEM/ELK/configurationandexamples/filter/ifelse_filter.conf>)
  * In this configuration, the if-else statement checks the value of the status field.
    * If the value is "error", the event is dropped using the drop filter.
    * Otherwise, if the condition is not met, the event proceeds for further transformations or filters.

* [Parsing key-value pairs using the kv filter](</SIEM/ELK/configurationandexamples/filter/keyvaluefilter.md>)
  * This configuration uses the kv filter to parse key-value pairs in a field.
    * The field_split parameter specifies the delimiter between key-value pairs (& in this case), and the value_split parameter specifies the delimiter between keys and values (= in this case).

* [Performing conditional field renaming using the rename filter](</SIEM/ELK/configurationandexamples/filter/rename_filter.conf>)
  * This configuration employs the rename filter to rename the field old_field to new_field.
    * Additionally, it adds a new field called another_field with the value "value".
      * The rename filter allows for conditional field renaming.

#### Example of Writing Output Configurations/Plugins

* [Sending data to Elasticsearch using the elasticsearch output plugin](</SIEM/ELK/configurationandexamples/output/datatoelastic.conf>)
  * This configuration uses the elasticsearch output plugin to send events to an Elasticsearch cluster.
    * The hosts parameter specifies the Elasticsearch server’s address and defines the index name where the data will be stored.

* [Writing data to a file using the file output plugin](</SIEM/ELK/configurationandexamples/output/datatofile.conf>)
  * This configuration utilizes the file output plugin to write events to a specified file (/path/to/output.txt). Each event will be appended to the file as a separate line.

* [Sending data to a message queue using the rabbitmq output plugin](</SIEM/ELK/configurationandexamples/output/datatorabbitmq.conf>)
  * This configuration configures the rabbitmq output plugin to send events to a RabbitMQ server.
    * The host parameter specifies the RabbitMQ server’s address, while exchange and routing_key define the exchange and routing key for message routing within RabbitMQ.

* [Forwarding data to another Logstash instance using the logstash output plugin](</SIEM/ELK/configurationandexamples/output/datatologstash.conf>)
  * This configuration sets up the logstash output plugin to forward events to another Logstash instance.
    * The host parameter specifies the destination Logstash server’s address, and the port parameter defines the port to which the events will be sent.

* [Sending data to a database using the jdbc output plugin](</SIEM/ELK/configurationandexamples/output/datatodatabase.conf>)
  * This configuration utilizes the jdbc output plugin to insert events into a MySQL database.
    * The connection_string parameter specifies the database connection details, and the statement parameter defines the SQL INSERT statement.
      * The parameters parameter provides values for the placeholders in the statement.

* [Forwarding data to a TCP server using the tcp output plugin](</SIEM/ELK/configurationandexamples/output/datatotcpserver.conf>)
  * This configuration sets up the tcp output plugin to forward events to a remote TCP server.
    * The host parameter specifies the destination server’s address, and the port parameter defines the port to which the events will be sent.

* [Sending data to a message broker using the kafka output plugin](</SIEM/ELK/configurationandexamples/output/datatokafka.conf>)
  * This configuration utilizes the kafka output plugin to publish events to an Apache Kafka topic.
    * The bootstrap_servers parameter specifies the Kafka server’s address, and the topic_id parameter defines the topic to which the events will be sent.

* [Forwarding data to a WebSocket endpoint using the websocket output plugin](</SIEM/ELK/configurationandexamples/output/datatowebsocket.conf>)
  * This configuration creates the websocket output plugin to send events to a WebSocket endpoint.
    * The url parameter specifies the WebSocket server’s URL and the specific endpoint (/my_endpoint) to which the events will be sent.

* [Sending data to a Syslog server using the syslog output plugin](</SIEM/ELK/configurationandexamples/output/datatosyslog.conf>)
  * This configuration configures the syslog output plugin to send events to a Syslog server.
    * The host parameter specifies the Syslog server’s address, the port parameter defines the port to which the events will be sent, and the protocol parameter specifies the transport protocol (in this case, UDP).

* [Writing data to the console for debugging using the stdout output plugin](</SIEM/ELK/configurationandexamples/output/datatoconsole_debug.conf>)
  * This configuration uses the stdout output plugin to print events to the console.
    * It is primarily used for debugging purposes to visually inspect the processed events and verify the Logstash pipeline’s transformations.

##### Logstash: Running Configurations

* Configuration# 1: Stdin/Stdout
  * We will take the input from the terminal using the stdin plugin and send the output back to the terminal using the output plugin stdout.
    * [Config files would look like this](</SIEM/ELK/configurationandexamples/stdin_stdout.conf>)
      * Let’s try this out using the following command:
        * ./bin/logstash -e 'input{stdin{}} output{stdout{}}'

* Configuration #2: Reading authentication logs
  * We will see how we can get authentication logs located at /var/log/auth.log, apply some filters, and send them over to the destination of our choice.
    * [Reading authentication logs config](</SIEM/ELK/configurationandexamples/read_auth_logs.conf>)
      * Save this configuration to a file called logstash.conf and run the following command from the location:
        * /usr/share/bin/logstash
        * logstash -f logstash.conf
