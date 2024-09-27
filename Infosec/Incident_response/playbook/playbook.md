# What is a playbook? What is it used for? How do you automate it?

* Playbooks are processes that define in detail what granular steps need to be taken for each different type of alert that we receive.
  * The reason being is during incident responses differences of opinion might arise regarding what steps to take to contain and eradicate a threat.
    * While some might prefer searching on one portal for threat intelligence related to a particular artefact, others might have more confidence in another portal, and others might believe it's unnecessary to search on any portal altogether.
      * To avoid such conflicts, processes that define in such granularity what steps might be taken for each type of incident are needed (Aka the playbook)
  * There should be a different playbook for each type of incident:
    * Phishing
    * Malware
    * Account Compromise
    * Policy violation
    * Ransomware
    * ETC.

* [Example of phishing playbook info found here](/Infosec/Incident_response/playbook/phishingPB.md)
* [Example of malware playbook info found here](/Infosec/Incident_response/playbook/malwarePB.md)

* When monitoring is set up in a SOC, one major part is building use cases.
  * *Since most orgs produce terabytes of logs daily, it is impossible to properly view and analyse them manually.*
    * So, use cases are built to flag suspicious activity that needs further investigation.
  * Once the use case is triggered, the analyst analyses the logs which triggered the use case and decides what actions must be taken (aka actions written in the playbooks)
    * Therefore, we can reasonably assume that every use case created by the detection engineering team needs to have a playbook assigned to it.
      * However, while the detection engineering team might develop hundreds of use cases, only a dozen playbooks are created for them.
      * While there is a unique playbook for every use case, multiple use cases might trigger a single playbook, making it a one-to-many mapping [as you can see here](/examples/playbooktree.png)

* Depending on the orgs dynamics, some of these steps might be automated.
  * The 1st step in automating something is often to divide it into small, repeatable steps, which the playbooks already do.
    * Therefore, a SOC team might use a SOAR platform to automate partial or complete playbooks, relieving a lot of pressure from the analysts and making their lives easier
      * However, this process often takes time, and not everything can be automated.
        * So, different orgs are at varying levels of automation at any given time, depending on their resources and goals.
      * Nevertheless, having well-defined playbooks helps orgs take the next step towards automation and reducing alert fatigue from the analysts.

* Creating playbooks, use cases, and an IR plan makes it very simple for the analysts to understand what to do in any scenario.
  * They have docs to help them perform their jobs effectively, which means that the SOC's output is consistent, and there is little room for ambiguity.
  * Playbooks also help the SOC teams identify opportunities to automate repetitive tasks and make their jobs easier.

## Playbooks: Preparation

* Naturally, playbooks are designed to follow the steps of the IR process.
  * Therefore, most organisations divide playbooks by the different steps of the IR process.
  * Preparation is the first step

* Most organisations don't include this stage of the IR process in their playbooks.
  * *Since preparation is the stage of IR before the detection or identification of an incident, and a playbook is triggered after an incident is detected, it makes sense that this part is not present in most organisation's playbooks.*
    * H/O this does not mean that no preparation needs to be done regarding playbook development.
      * This phase is usually covered in the prerequisites part of the playbook.

* Like the IR process, the prerequisites of playbooks are created to ensure that the capability of detecting, investigating, and responding to an incident is available.
  * W/O this capability, the playbook might never trigger.
  * The following points should be ensured before a playbook is created, and these prerequisites can be indicated at the start of the playbook.
    * All relevant logs are present and integrated into the SIEM.
    * The logs are appropriately parsed, and the required fields are extracted and searchable.
    * The logs contain all the required fields, such as machine info, IP info, process name, and more.
    * Use cases are created on the specific behaviour that needs to be flagged and responded to.
    * The recommended security controls are applied, representing the organisation's policies.

* Playbooks often contain workflow diagrams that help users understand the process.
  * This workflow diagram can be the first step when creating a playbook, which can be explained and expanded to add more details.
    * [EX: workflow diagram of this stage of the IR process will look like the following illustration.](/examples/PBworkflow.png)

### Playbooks: Detection and Analysis

* As a checklist, we can ensure the following points are considered in the detection and analysis part of the playbook:
  * Alert trigger
  * Initial verification of data from the logs
  * Verify potential IOC data (hashes, IP addresses, domain names, etc.) from e.g. OSINT, threat intelligence feeds, internal documentation
  * Verify metadata of the IOCs (parent process, command line instructions, domain age, open ports, etc.) to understand the context
  * Depending on the results of the above investigation, either close the incident or escalate it for containment, eradication and recovery

#### Playbooks: Containment, Eradication, and Recovery

* Escalation Process
  * In most organisations, the L1 analyst will work on the identification and analysis part of the IR process, also called triage.
    * If the incident is a False Positive, it will be closed.
  * H/O, it will be escalated to the L2 analyst if it is a True Positive.
    * The L2 analyst will take it through the containment, eradication, and recovery part, taking help from the L3 analyst where required, mainly including forensics analysis, malware analysis, or other advanced analysis.
      * The L3 or the incident responder will also create and maintain the playbooks, updating them as required.
  * Most organisations follow the process defined above.
    * H/O, each organisation might make a few changes to the process to suit their needs.

* The IR process's containment, eradication, and recovery phase is only triggered when the incident is a True Positive.
  * Therefore, the checklist here will focus mainly on limiting and reversing the impact of the incident.
  * We can chalk out the following checklist for this phase of the IR process:
  * Identify the root cause of the incident.
  * Identify the impact and the affected assets.
  * Contain the threat by isolating the affected assets and limiting connectivity.
  * Perform actions to remove the impact of the threat from the affected assets.
  * Bring the assets back to the last known good configuration.
  * Resume services as usual for all the affected assets.

#### Playbooks: Post-Incident Activity

* Post-incident activity is the last stage of the IR process.
  * The steps to be taken at this stage vary from incident to incident and will depend on the gaps identified during the process.
  * The following questions are addressed during post-incident activity.
    * Why did the incident happen (or using the 5 Whys method, which help reach the root cause)?
    * What gaps were identified, which, if plugged, would have helped avoid the incident?
    * How can we improve People, Processes, and Technology to avoid such incidents in the future?
    * What steps, if taken, could have minimised the impact of the incident?

* As might be evident, this activity will be highly subjective based on the organisational dynamics, the type of incident, the impact, and the gaps found during the incident investigation.
  * Therefore, it isn't easy to outline specific steps in playbooks that might be taken as part of this stage of the IR process.
    * *Hence, this part is generally not added to the playbooks.*
      * Instead, the post-incident activity is guided by broad guidelines outlined in the *IR plan instead of the playbooks.*
