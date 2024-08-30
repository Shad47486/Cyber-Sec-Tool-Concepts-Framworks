# Collecting Linux Logs with Wazuh

- Capturing logs from a Linux agent is a simple process similar to capturing events from a Windows agent
  - We will be using Wazuh’s log collector service to create an entry on the agent to instruct what logs should be sent to the Wazuh management server.

- Wazuh comes with many rules that enable Wazuh to analyze log files and can be found in: 
  - /var/ossec/ruleset/rules
    - Some common apps include:
      - Docker, FTP, WordPress, SQL Server, MongoDB, Firewalld, And many, many more (approximately 900).
- Or you can make ur own rule

- To insert Ruleset into wazuh agent so that it sends log back to Wazuh Management Servers configuration file located in:
  - /var/ossec/etc/ossec.conf
