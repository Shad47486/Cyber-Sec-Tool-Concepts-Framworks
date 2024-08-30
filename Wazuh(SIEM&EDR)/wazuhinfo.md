# What is Wazuh?

* Open-source, freely available & extensive EDR solution.
  * This system uses rules to search for potential security threats or issues in logs from various sources, such as operating system logs, application logs, endpoint security logs, etc.
* Uses Management & Agent deployment
  * Manger is responsible for managing agents installed on the devices you'd like to monitor.
  * Agents monitor the processes & events that take place on the device, such as authentication and user management.
    * Agents will offload these logs to a designated collector for processing, such as Wazuh.
* Capable of auditing & monitoring on agent's configuration whilst proavtively recording event logs.
  * Audting Metrics Based on NIST, MITRE, GDPR
* Can work on top of the ELK stack

* [Office Wazuh Github](<https://github.com/wazuh/wazuh/tree/master>)

## Setting up/Features/Commands

* [How to setup agents in windows OS](/WAZUH(SIEM&EDR)/agentsandapi/agentsyswin.md)
* [How to Setup agents in Linux OS](/WAZUH(SIEM&EDR)/agentsandapi/agentlinux.md)
  * [Setting up auditing in Linux OS](/WAZUH(SIEM&EDR)/agentsandapi/auditinglinux.md)

* [Setting up API](/WAZUH(SIEM&EDR)/agentsandapi/wauzh_api.md)

## File locations

* Specific alerts file Wazuh Managment Server file:
  * /var/ossec/logs/alerts/alerts.log

* Agent File Location:
  * C:/Program Files (x86)/ossec-agent/ossec.conf

* Adding event recorder rules (Sysmon) to Wazuh Managment Server:
  * /var/ossec/etc/rules/local_rules.xml

* 'audit' rules are located in:
  * /etc/audit/rules.d/audit.rules

### Decoders

* One of the many features of Wazuh is that it can ingest logs from different sources and generate alerts based on their contents.
  * H/O, various logs can have varied data types and structures.
    * To manage this, Wazuh uses Decoders that use regex to extract only the needed data for later use.
      * In order to use a decoder you must know what information your trying to extract first
        * Typically seen used with [SYSMON Logs](</OS/Windows/Sysmon/Sysmoninfo.md>)

* Decoders are broken up into different blocks when being writtten out:
  * [EX rule being used for decoders section](<Wazuh(SIEM&EDR)/decoders_and_rules/windows-decoders.xml>) & [EX log being used for this decoder section](/Wazuh(SIEM&EDR)/examplelogs/log1.md)
    * decoder name - The name of this decoder.
      * Note: Multiple decoder blocks can have the same name; think of this as though they are being grouped together.
    * parent - The name of the parent decoder.
      * The parent decoder is processed first before the children are
    * prematch - Uses regular expressions to look for a match.
      * If this succeeds, it will process the "regex" option below.
    * regex - Uses regular expressions to extract data.
      * Any string in between a non-escaped open and closed parenthesis is extracted.
    * order - Contains a list of names to which the extracted data will be stored.
  * [More info on Wazuh decoders syntax](<https://documentation.wazuh.com/current/user-manual/ruleset/ruleset-xml-syntax/decoders.html>)

* When Testing the ruleset for the decoder the output will have 3 phases:
  * Phase 1 (Completed pre-decoding) is the pre-decoding phase.
    * The event log is parsed, and the header details like timestamp, hostname, and program_name are retrieved.
      * This is done automatically on the backend by Wazuh.
  * Phase 2 (Completed Decoding) is the decoding phase, where the decoders do their magic.
    * When done, all the extracted data from the declared decoder blocks are displayed here.
  * Phase 3 (Completed filtering (rules)) involves using rules (More info on rules in the next section)
    * Phase 3 shows what information an alert would contain when a rule is triggered, like "id", "level", "description", etc.

#### Rules

* Rules contain defined conditions to detect specific events or malicious activities using the extracted data from decoders.
  * An alert is generated on the Wazuh dashboard when an event matches a rule.

* [EX ruleset being used for rules Section](</Wazuh(SIEM&EDR)/decoders_and_rules/sysmon-rules.xml>) & [EX log being used for this rules section](/Wazuh(SIEM&EDR)/examplelogs/log2.md)
  * Rules blocks have multiple options:
    * rule id - The unique identifier of the rule.
    * rule level - The classification level of the rule ranges from 0 to 15.
      * Each number corresponds to a specific value and severity, as listed in the [Wazuh rules classification doc's](<https://documentation.wazuh.com/current/user-manual/ruleset/rules/rules-classification.html>).
    * if_group - Specifies the group name that triggers this rule when that group has matched.
    * field name - The name of the field extracted from the decoder.
      * The value in this field is matched using regular expressions.
    * group -  Contains a list of groups or categories that the rule belongs to.
      * It can be used for organizing and filtering rules.
  * Using the example rule set for this lets say we want to see svchost.exe we would need to change the log to make the required ruleset change from id 184665 to id 184666
    * EX for this log is NOT provided but can be found in a typically sysmonlog
      * change "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" to "C:\WINDOWS\system32\svchost.exe" to get a different rule set

* [More info on Wazuh rules syntax](<https://documentation.wazuh.com/current/user-manual/ruleset/ruleset-xml-syntax/rules.html>)

* In Wazuh, rules are processed based on several factors determining rule order.
  * One factor that will be discussed that is relevant to making custom rules is the "if" condition prerequisites.
    * EXs (not the only ones but these are common ones):
      * if_sid - Specifies the ID of another rule that triggers this rule.
      * if_group - Specifies the group name that triggers this rule when that group has matched.
  * These "if" condition prerequisites are considered the "parent" that must be evaluated first.
    * BC of this parent-child relationship, it is essential to note that Wazuh Rules are triggered from a top-to-down manner.
      * When rules are processed, the condition prerequisites are checked, and the rule order is updated.

#### Custom rules

* Reason why you may need custom rules:
  * You want to enhance the detection capabilities of Wazuh.
  * You are integrating a not-so-well-known security solution.
  * You use an old version of a security solution with an older log format.
  * You recently learned of a new attack and want to create a specific detection rule.
  * You want to fine-tune a rule.
    * You can fine-tune the custom rule by adding more child rules, each focusing on specific related data from the logs


* [EX for this will be based on linux OS rules](</Wazuh(SIEM&EDR)/decoders_and_rules/auditd_rules.xml>) & [EX log being used for this rules section](/Wazuh(SIEM&EDR)/examplelogs/log3.md)
  * The log describes an event wherein a touch command (probably as root user) was used to create a new file called malware.py in the /var/log/audit/tmp_directory1/ directory
    * The command was successful, and the log was generated based on an audit rule with the key "audit-wazuh-w".
      * When Wazuh ingests the above log, the pre-existing rule below will get triggered bc of the value of <match>:
    * [Override the rules used in the the example for this section](</Wazuh(SIEM&EDR)/decoders_and_rules/local_rules.xml>)
      * The rule above will get triggered if a file is created in the downloads, tmp, or temp folders and the blocks here mean:
        * group name="audit," - We are setting this to the same value as the grouped rules in audit_rules.xml.
        * rule id="100002" - Each custom rule needs to have a unique ID.
          * Custom IDs start from 100001 onwards.
            * Since there is already an existing example rule that uses 100001, we are going to use 100002.
        * level="3" - We are setting this to 3 (Successful/Authorized events) bc a file created in these folders isn't necessarily malicious.
        * if_sid - We set the parent to rule ID 80790 bc we want that rule to be processed before this one.
        * field name="audit.directory.name" - The string here is matched using regex.
          * In this case, we are looking for tmp, temp, or downloads matches.
            * This value is compared to the audit.cwd variable fetched by the auditd decoder.
        * description - The description that will appear on the alert.
          * Variables can be used here using the format $(variable.name).
        * group - Used for grouping this specific alert.
          * We just took the same value from rule 80790.

* You can fine-tune the custom rule by adding more child rules, each focusing on specific related data from the logs
