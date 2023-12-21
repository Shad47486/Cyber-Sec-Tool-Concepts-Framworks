# What is Wazuh?

    - Open-source, freely available & extensive EDR solution.
    - Uses Management & Agent deployment
      - Manger is responsible for managing agents installed on the devices you'd like to monitor.
      - Agents monitor the processes & events that take place on the device, such as authentication and user management. 
        - Agents will offload these logs to a designated collector for processing, such as Wazuh.
    - Capable of auditing & monitoring on agent's configuration whilst proavtively recording event logs.
      - Audting Metrics Based on NIST, MITRE, GDPR

## Features/Good to Knows:

- [How to setup agents in windows OS](./agentsyswin.md)
- [How to Setup agents in Linux OS](./agentlinux.md)
  - [How to setup auditing in Linux OS](./auditinglinux.md)

## File locations: 

- Specific alerts file Wazuh Managment Server file: 
  - /var/ossec/logs/alerts/alerts.log

- Agent File Location:
  - C:\Program Files (x86)\ossec-agent\ossec.conf

- Adding event recorder rules (Sysmon) to Wazuh Managment Server:
  - /var/ossec/etc/rules/local_rules.xml