# What is Elasticstack?

- Collection of different open source components linked together to help users take the data from any source and in any format and perform a search, analyze and visualize the data in real-time.
  - Goes from Elastic Seach -> Logstask -> Beats -> Kibana

- The stack works by:
  - Using Beats different data shipping agents to collect data from endpoints that have agents installed
    - EX: Like Winlogbeats being used to collect win event logs, Packetbeat to collet network traffic flow.
  - Using Logstash to collect data from beats, ports or files, etc.
    - Then parses/normalizes it into field value pairs, & store them into elasticsearch
      - Elasticsearch acts as a db used to search & analyze the data.
        - Kibana is responsible for displaying and visualizing the data stored in elasticsearch.
          - Data stored in elasticseach can easily be shaped into different visualizations, time charts, infographics, etc., using Kibana.

## Elastic Seach (Elasticseach)

- full-text search and analytics engine used to store JSON-formated documents.
  - Important component used to store, analyze, perform correlation on the data, etc.
    - Supports RESTFul API to interact with the data.

## Logstash

- Data processing engine used to take the data from different sources, apply the filter on it or normalize it, and then send it to the destination which could be Kibana or a listening port.
  - Logstash config file is divided into 3 parts:
    - 'input' part is where the user defines the source from which the data is being ingested
      - [Supported Inpout Plugins Doc](<https://www.elastic.co/guide/en/logstash/8.1/input-plugins.html>)
    - 'filter' part is where the user specifies the filter options to normalize the log ingested above.
      - [Supported Filter Plugins Doc](<https://www.elastic.co/guide/en/logstash/8.1/filter-plugins.html>)
    - 'Output' part is where the user wants the filtered data to send.
      - Can be a listening port, Kibana Interface, elasticsearch database, a file, etc.
        - [Supported Output Plugins Doc](<https://www.elastic.co/guide/en/logstash/8.1/output-plugins.html>)

## Beats

- Host-based agent known as Data-shippers that is used to ship/transfer data from the endpoints to elasticsearch.
  - Each beat is a single-purpose agent that sends specific data to the elasticsearch.
    - Available Beats:
      - Filebeat:
        - Lightweight shipper for logs & other data
      - Metricbeat:
        - Lightweight shipper for metric data
      - Packetbeat:
        - Lightweight Shipper for network data
      - Winlogbeat:
        - Lightweight Shipper for Win event logs
      - Auditbeat:
        - Lightweight Shipper for audit data
      - Heartbeat:
        - Lightweight Shipper for uptime Monitoring
      - Functionbeat:
        - Lightweight Shipper for cloud data.


## Kibana

- Web-based data visualization that works with elasticsearch to analyze, investigate and visualize the data stream in real-time.
  - Allows Users to create multiple visualizations and dashboards for better visibility
