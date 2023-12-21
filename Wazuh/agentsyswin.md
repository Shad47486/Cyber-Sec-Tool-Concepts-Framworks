#  Collecting Windows Logs with Wazuh

- All sorts of actions and events are captured and recorded on a Windows
  - Includes:
    - Athentication attempts, networking connections, files that were accessed, and the behaviours of applications and services.

- Can use Agent to aggregate these events recorded by Sysmon for processing to the Wazuh Manager.
  - To use Sysmon First agree to EULA with this command: "Sysmon64.exe -accepteula -i detect_powershell.xml"
    - Can use event viewer to view sysmon action
- After this, configure the agent to send events to Wazuh Management Server within ossec.conf file:
  - C:\Program Files (x86)\ossec-agent\ossec.conf
- We need to tell Wazuh Management Server to add Sysmon as a rule to visualize these events:
  - /var/ossec/etc/rules/local_rules.xml