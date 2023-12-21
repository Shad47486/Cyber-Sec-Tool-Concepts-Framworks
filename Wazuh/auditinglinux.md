# Wazuh utilises the 'auditd' package that can be installed on Wazuh agents running on Debian/Ubuntu and CentOS operating systems

- 'auditd' monitors the system for certain actions and events and will write this to a log file.
  - We can then use the log collector module on a Wazuh agent to read this log file and send it to the Wazuh management server for processing.

## How to use 'auditd'?

- First, we will need to install the auditdpackage and an auditdplugin
  - 'sudo apt-get install auditd audispd-plugins'
  - 'sudo systemctl enable auditd.service'
    - & the 'sudo systemctl start auditd.service'

- Configure 'auditd' to create a rule for the commands & events that we wish for to monitor