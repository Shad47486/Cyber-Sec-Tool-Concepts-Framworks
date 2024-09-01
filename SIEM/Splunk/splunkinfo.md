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

## Search & Reporting App Overview

- Search & Reporting App is the default interface used to search and analyze the data on the Splunk Home page.
  1. Search Head:
     - Search Head is where we use search processing language queries to look for the data.
  2. Time Duration:
     - This tab option provides multiple options to select the time duration for the search.
       - All-time will display the events in real-time.
       - Similarly, the last 60 minutes will display all the events captured in the last hour.
  3. Search History:
     - This tab saves the search queries that the user has run in the past along with the time when it was run.
       - It lets the user click on the past searches and look at the result.
         - The filter option is used to search for the particular query based on the term.
  4. Data Summary:
     - This tab provides a summary of the data type, the data source, and the hosts that generated the events as shown below.
       - This tab is very important feature used to get a brief idea about the network visibility.
  5. Field Sidebar:
     - The Field Sidebar can be found on the left panel of Splunk search.
        - This sidebar has two sections showing selected fields and interesting fields.
          - Also provides quick results, such as top values and raw values against each field.

### Data Manipulation

- Splunk needs to be properly configured to parse and transform the logs appropriately.
  - Some of the issues being highlighted are:
    - Event Breaking:
      - Configure Splunk to break the events properly.
    - Multi-line Events:
      - Configure Splunk to configure multi-line events properly.
    - Masking:
      - Some logs contain sensitive data.
        - To comply with the PCI DSS standard, info like credit card numbers must be masked to avoid any violation.
    - Extracting custom fields:
      - In the weblogs, some fields are redundant and need to be removed.
