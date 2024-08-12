# How to manipulate data in SPLUNK?

* Splunk is a powerful data analytics platform used for searching, monitoring, and analyzing large amounts of machine-generated data.
  * Data parsing in Splunk involves extracting relevant fields and transforming the data into a structured format for efficient analysis.

* Step 1: Understand the Data Format
  * First, you need to understand the data format you want to parse. Splunk supports various data formats, such as CSV, JSON, XML, syslog, and more.
    * Determine the format of your data source and the relevant fields you want to extract.

* Step 2: Identify the Sourcetype
  * In Splunk, the sourcetype represents the format of the data being indexed.
    * It helps Splunk apply the appropriate parsing rules.
  * If your data source does not have a pre-defined sourcetype, you can create a custom one in Splunk.

* Step 3: Configure props.conf
  * The props.conf file defines data parsing settings for specific sourcetypes or data sources.
  * It resides in the $SPLUNK_HOME/etc/system/local directory.
    * [EX of how you can configure props.conf](/SIEM/Splunk/configurations/props_temp.conf)
      * /path/to/your/data is the path to your data source
      * your_sourcetype is the name of the sourcetype you want to assign to that data.

* Step 4: Define Field Extractions
  * You can define regular expressions (regex) or use pre-built extraction techniques to parse fields from the data.
    * [EX of defining field extractions in props.conf](/SIEM/Splunk/configurations/props_regex.conf)
      * Replace your_sourcetype with the actual sourcetype name you defined.
      * fieldname1 and fieldname2 represent the names of the fields you want to extract
        * regular_expression1 and regular_expression2 are the regex used to match and extract the desired values.

* Step 5: Save and Restart Splunk
  * After making changes to props.conf, save the file, and restart Splunk to apply the new configurations.
    * You can do this using the Splunk web interface or by using the CLI.

* Step 6: Verify and Search the Data
  * Once Splunk restarts, you can search and verify that the data is being parsed correctly.
    * You can use the extracted fields to filter and analyze the data effectively.

## Splunk Configuration files

* Splunk uses several configuration files to control various data processing and indexing aspects.
  * *Configuration files include: inputs.conf, props.conf, transforms.conf, indexes.conf, outputs.conf, authentication.conf*

* inputs.conf
  * Purpose: Defines data inputs and how to collect data from different sources.
    * EX: Suppose you want to monitor a specific log file.
      * [EX configure inputs.conf](/SIEM/Splunk/configurations/inputs_temp.conf)

* props.conf
  * Purpose: Specifies parsing rules for different sourcetypes to extract fields and define field extractions.
    * EX: Suppose you have a custom sourcetype named my_sourcetype and want to extract fields using regular expressions.
      * [Define in props.conf](/SIEM/Splunk/configurations/props_temp.conf)

* transforms.conf
  * Purpose: Allows you to define field transformations and enrichments on indexed events.
  * EX: Suppose you want to add a new event field based on existing field values.
    * [transforms.conf](/SIEM/Splunk/configurations/transforms_temp.conf)

* indexes.conf
  * Purpose: Manages the configuration of indexes in Splunk, including storage, retention policies, and access control.
  * EX: Suppose you want to create a new index named my_index with specific settings.
    * [Configure indexes.conf](/SIEM/Splunk/configurations/indexes_temp.conf)

* outputs.conf
  * Purpose: Specifies the destination and settings for sending indexed data to various outputs, such as remote Splunk instances or 3rd-party systems.
  * EX: Suppose you want to forward your indexed data to a remote Splunk indexer.
    * [Configure outputs.conf](/SIEM/Splunk/configurations/outputs_temp.conf)

* authentication.conf
  * Purpose: Manages authentication settings and user authentication methods.
  * EX: Suppose you want to enable LDAP authentication for Splunk users.
    * [Configure authentication.conf](/SIEM/Splunk/configurations/authentication_temp.conf)

* [STANZAS in Splunk Configurations](/SIEM/Splunk/stanzas_in_splunk.md)
  * Splunk configurations contain various stanza configurations that define how data is processed and indexed

* [How to create a simple SPLUNK app](/SIEM/Splunk/splunk_app.md)

### Event Boundaries - Understanding the problem

* Event breaking in Splunk refers to breaking raw data into individual events based on specified boundaries.
  * Splunk uses event-breaking rules to identify where one event ends, and the next begins.

* To configure Splunk to break the events in this case, we have to make some changes to the props.conf file using regex to determine the end of the event.
  * [EX using VPN logs](/SIEM/Splunk/configurations/vpn_logs.md)
    * If we look closely, all events end with the terms DISCONNECT or CONNECT.
      * We can use this information to create a regex pattern (DISCONNECT|CONNECT)
        * [Create props,conf in your custom app](/SIEM/Splunk/configurations/props_vpn.conf)
          * This configuration tells Splunk to take the sourcetype to merge all lines and it must break the events when you see the pattern matched in the mentioned regex.

* Save the file and restart Splunk using the command /opt/bin/splunk restart.
  * Open the Splunk instance at 10.10.62.108:8000 and navigate to the search head.

#### Masking Sensitive Data

* Masking sensitive fields, such as credit card numbers, is essential for maintaining compliance with standards like PCI DSS and HIPAA.
  * Splunk provides features like field masking and anonymization to protect sensitive data.

* The *sedcmd* configuration setting is used in the props.conf file to modify or transform data during indexing.
  * It allows us to apply regex-based substitutions on the incoming data before indexing it.
    * The sedcmd setting uses the syntax and functionality of the Unix sed command.
  * *Here’s a brief explanation of how the sedcmd works in props.conf:*
    * Open the props.conf file in your Splunk configuration directory.
    * Locate or create a stanza for the data source you want to modify.
    * Add the sedcmd setting under the stanza.
    * Specify the regex pattern and the replacement string using the s/ syntax similar to the sed command.
  * [EX of using sedcmd in props.conf to modify a field called myField](/SIEM/Splunk/configurations/props_sedcmd.conf)
    * In this example, the sedcmd setting is applied to the data from a specific source path.
      * It uses the regex pattern oldValue and replaces it globally with newValue using the g flag in the myField field.
      * This transformation occurs before Splunk indexes the data.
    * It is important to note that, this sedcmd is just one of the configuration settings props.conf used for data transformation.
      * There are other options available, such as REGEX, TRANSFORMS, etc.
