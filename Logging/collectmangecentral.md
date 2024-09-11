# Info on Log Collection, Log Management, & Log Centralisation

## Log collection

* Log collection is an essential component of log analysis, involving the aggregation of logs from diverse sources such as servers, network devices, software, and databases.

* For logs to effectively represent a chronological sequence of events, it's crucial to maintain the system's time accuracy during logging.
  * Utilising the Network Time Protocol (NTP) is a method to achieve this synchronisation and ensure the integrity of the timeline stored in the logs.
    * NTP-based time synchronisation may not be possible to replicate with the VM since it has no internet connectivity
    * Time synchronisation can be performed automatically on Linux-based systems or manually initiated by executing the following command:
      * ntpdate pool.ntp.org

* Step-by-step process for a comprehensive data set to review:
  * Identify Sources
    * List all potential log sources, such as servers, databases, applications, and network devices.
  * Choose a Log Collector
    * Opt for a suitable log collector tool or software that aligns with your infrastructure.
  * Configure Collection Parameters
    * Ensure that time synchronisation is enabled through NTP to maintain accurate timelines, adjust settings to determine which events to log at what intervals, and prioritise based on importance.
  * Test Collection
    * Once configured, run a test to ensure logs are appropriately collected from all sources.

*How to use Rsyslog to collect Logs?*

* Configure rsyslog to log all sshd messages to a specific file, such as /var/log/websrv-02/rsyslog_sshd.log
  1. Start by Open a Terminal.
  2. Then ensure rsyslog is Installed:
     2. You can check if rsyslog is installed by running the command:
     2. sudo systemctl status rsyslog
  3. Create a Configuration File: Use a text editor to create a new configuration file
      3. EX:
      3. gedit /etc/rsyslog.d/collect.conf
      3. nano /etc/rsyslog.d/collect.conf
      3. vi /etc/rsyslog.d/collect.conf
      3. vim /etc/rsyslog.d/collect.conf
      OR create the file and then read into using:
      3. touch /etc/rsyslog.d/collect.conf
  4. Add the Configuration: Add the following lines in /etc/rsyslog.d/collect.conf to direct the config file to the specific directory /var/log/websrv-02/rsyslog_sshd.log:
     4. This is an collect of adding sshd messages to the specific directory:
      5. [Collect Config File](./scripts/collect.conf)
  5. Save and Close the Configuration File.
  6. Restart rsyslog: Apply the changes by restarting rsyslog with the command:
     1. sudo systemctl restart rsyslog
  7. Verify the Configuration:
     1. You can verify the configuration works by initiating an SSH connection to localhost via ssh localhost or by checking the log file after a minute or two.

* IMPORTANT: If remote forwarding of logs is not configured, tools such as scp / rsync, among others, can be utilised for the manual collection of logs.

## Log Management

* Efficient Log Management ensures that every gathered log is stored securely, organised systematically, and is ready for swift retrieval.

* Step-by-step process for effective log managament:
  * Storage
    * Decide on a secure storage solution, considering factors like retention period and accessibility.
  * Organisation
    * Classify logs based on their source, type, or other criteria for easier access later.
  * Backup
    * Regularly back up your logs to prevent data loss.
  * Review
    * Periodically review logs to ensure they are correctly stored and categorised.

*How to use Rsyslog to Manage Logs?*

* Using logrotate to automates log file rotation, compression, and management, ensuring that log files are handled systematically.
  * Allows automatic rotation, compression, and removal of log files.
  1. Create a Configuration File:
     1. sudo gedit /etc/logrotate.d/manage.conf
     1. sudo nano /etc/logrotate.d/manage.conf
     1. sudo vi /etc/logrotate.d/manage.conf
     1. sudo vim /etc/logrotate.d/manage.conf
  2. Define Log Settings:
     2. EX: [Manage Config File](./scripts/manage.conf)
  3. Save & Close the file
  4. Manual Execution:
     4. sudo logrotate -f /etc/logrotate.d/manage.conf

## Log Centralisation

* Log centralisation is pivotal for swift log access, in-depth analysis, and rapid incident response
  * A unified system allows for efficient log management with tools that offer real-time detection, automatic notifications, and seamless integration with incident management systems.
    * Centralising your logs can significantly streamline access and analysis

* Step-by-step process for effective Log Centralisation:
  * Choose a Centralised System
    * Opt for a system that consolidates logs from all sources, such as the Elastic Stack or Splunk.
  * Integrate Sources
    * Connect all your log sources to this centralised system.
  * Set Up Monitoring
    * Utilise tools that provide real-time monitoring and alerts for specified events.
  * Integration with Incident Management
    * Ensure that your centralised system can integrate seamlessly with any incident management tools or protocols you have in place.

*How to use Rsyslog to Centralize Logs?*

1. 
