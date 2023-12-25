# What is Splunk?

- Platform for collecting, storing, and analysing machine data.
  - Provides various tools for analysing data, including search, correlation, and visualisation
    - Can be used in any size org.

## What are the phases for Incident Handling/Response Life Cycle?

1. Preparation:
   - Readiness of an organization against an attack
     - Meaning documenting the requirements, defining the policies, incorporating the security controls to monitor like EDR / SIEM / IDS / IPS, etc.
       - Includes hiring/training the staff.
2. Detection and Analysis:
   - Detecting an incident and the analysis process of the incident
     - Covers getting alerts from the security controls like SIEM/EDR investigating the alert to find the root cause
       - Also covers hunting for the unknown threat within the organization.
3. Containment, Eradication, and Recovery:
   - Actions needed to prevent the incident from spreading and securing the network.
     - Involves steps taken to avoid an attack from spreading into the network, isolating the infected host, clearing the network from the infection traces, and gaining control back from the attack.
4. Post-Incident Activity / Lessons Learnt:
   - Identifying the loopholes in the organization's security posture, which led to an intrusion, and improving so that the attack does not happen next time.
     - Steps involve identifying weaknesses that led to the attack, adding detection rules so that similar breach does not happen again, and most importantly, training the staff if required.

## Cyber Kill Chain

- A method of mapping an attackers activity and their cyber attack

- Phases include:
  - Reconnaissance
  - Weaponization
  - Delivery
  - Exploitation
  - Installation
  - Command & Control
  - Actions on Objectives
    - **SOMETHING TO NOTE ABOUT THE CYBER KC is that we don't need to follow the sequence of the cyber kill chain during the Investigation bc One finding in one phase will lead to another finding that may have mapped into some other phase. ***
      - Good to use OSINT tool when needed


## Log Sources for investigations that could be helpful

- wineventlog
  - Contains Windows Event logs
- winRegistry
  - Contains the logs related to registry creation / modification / deletion etc.
- XmlWinEventLog
  - Contains the sysmon event logs. It is a very important log source from an investigation point of view.
- fortigate_utm
  - Contains Fortinet Firewall logs
- iis
  - contains IIS web server logs
- Nessus:scan
  - Contains the results from the Nessus vulnerability scanner.
- Suricata
  - Contains the details of the alerts from the Suricata IDS.
    - This log source shows which alert was triggered and what caused the alert to get triggered— a very important log source for the Investigation.
- stream:http
  - Contains the network flow related to http traffic.
- stream: DNS
  - Contains the network flow related to DNS traffic.
- stream:icmp
  - Contains the network flow related to icmp traffic.
