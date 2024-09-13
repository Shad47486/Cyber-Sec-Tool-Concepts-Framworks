# What is the preperation phase of a incident response?

* The preparation phase of a IR is to ensures that the org can effectively react to a breach with laid down procedures.
  * Numerous elements should be covered during the Preparation phase, including:
    * People
    * Policy, communication and documentation.
    * Technology
      * Following these phases involves knowing what is happening within your org's digital assets or getting visibility into your org.

## Preparing The People

* It is highly known that the easiest and most accessible attack point for any org is its people.
  * Your employees and teammates are adversarial targets, mainly through social engineering and phishing tactics.
    * Therefore, preparing your team effectively to recognise and address incidents before, during, and after is essential.

* Creation of CSIRT Teams
  * You must create a cyber security incident response team (CSIRT) that includes business, technical, legal counsel, and public relations experts with relevant skills and authority to act upon decisions during a cyber attack.
  * Following the team's creation, the members will require appropriate permissions under a well-established access control policy. 
    * This access must be well organised and controlled, with proper notifications to system administrators when the CSIRT uses privileged access.

* Training & Assessment Sessions
  * As we have identified some ways attackers target people, the most effective way to ensure they are well-equipped with knowledge about these attacks is through constant training, assessment, and awareness sessions.
    * Conducting social engineering campaigns, testing user susceptibility towards spear phishing attacks, and providing current affairs training will be crucial towards preparing your team.
      * This training also applies to your end users and customers, who would act as your sensors and alert sources when they pick up anything suspicious happening on their end.
      * Additionally, incident handlers must be familiar with forensic imaging tools, how to read audit logs, and performing analysis using honeypots and vulnerable systems.
        * This will allow them to identify suspicious events when they occur and can conduct practical forensics when the need arises.

### Preparing The Documentation

* Incident documentation would be a lifesaver for an org.
  * The information gathered could be used as evidence in a criminal cyber attack or instrumental in developing mitigation plans, and lessons learned assessments.
    * This means that incident responders need to develop note-taking and detail-oriented skills

* Policies
  * Defining principles and guidelines for security processes is vital while conducting your preparation.
    * This ensures that techniques are well-known towards handling an incident.
      * The policies need to be visible to employees, users and other stakeholders
        * EX: Using warning banners, which would inform on the prohibition of unauthorised activities and limit the presumption of privacy within the org.
      * Additionally, the policies should outline the org's authority towards monitoring the network and all the systems under its roof.
        * Policies would need to be reviewed by a legal team and aligned to local privacy laws and regulations.

* Communication Plan & Chain of Custody
  * Accompanying the policies would be a communication plan outlining who within the CSIRT team should be the point of contact and what procedures should be followed
    * EX: CSIRT may have operations members who are always on call to receive reports on suspected incidents.
      * These reports should trigger a chain of actions, including when to notify law enforcement, media personnel, or third parties.
      * Additionally, the team would keep track of the flow of information and manage evidence forms and documents, such as the chain of custody documents.
    * These documents are meant to track the flow of information, evidence handling and reporting when addressing any incident.
      * [A template of such a document can be found here](/Infosec/Incident_response/chainofcustody.pdf)

* Response Procedures
  * Incident handling should be viewed as an org operation, ensuring every member has a role to avert damages and revert to normal operations.
    * This means that default procedures need to be defined and approved by management.
      * Effectiveness and timeliness are crucial when security defences have been breached; thus, orderly processes would determine the nature of handling breaches.

#### Preparing The Technology

* The people and policies set up by the CSIRT would require the backing of tools and solutions to protect and defend their org's technological infrastructure.
  * Any incident response operation involves the org of devices, systems, and technologies that will facilitate the prevention, detection, and mitigation of any occurrence.
    * As a result, knowing your technical infrastructure is essential to the incident response process.

* Asset Inventory Classification
  * It is crucial to identify high-value assets within the org, together with their technical composition.
    * This will comprise the infrastructure, intellectual property, client and employee data, and brand reputation.
      * Protecting these assets ensures that the CIA of the org's services, data, and processes are intact, which also helps maintain credibility.
        * Additionally, the asset classification will be helpful for the prioritisation of protective and detective measures for the assets.
    * An example of an inventory list would include attruibutes such as:
      * asset types (EX: mail servers, web servers , vpn servers)
      * Asset Name (EX websrv1, mailsrv1, vpn1)
      * Operating System (EX: Ubuntu server 2019, windowser server 2022)
      * Asset IP address: (EX: 192.168.0.2 or even a subnet range 192.168.0.0/16)

* Technical Instrumentation
  * Once the inventory has been identified, this should be followed up with telemetry about the network infrastructure, which is essential for incident response.
    * This means mapping every network device, cloud platform, system, and application.
      * Having this infrastructural picture simplifies the implementation of system and sensor-based detection mechanisms
        * These mechanisms include anti-malware, endpoint detection and response (EDR) tools, data loss prevention (DLP), intrusion detection and prevention systems (IDPS), and log collection capabilities.
      * One key aspect of the telemetry collection is network subnetting.
        * This is a means of logically grouping network devices and IPs with specific access and usage permissions and policies, utilising firewalls, demilitarised zones, and IP segmentation.
          * These telemetry and incident details can be collected and tracked using tools like [TheHive Project](/red_team_tools/TheHiveProject/thpinfo.md).

* Investigation Capabilities
  * To conduct any investigations during an attack or breach, incident responders must ensure they can validate executing scripts and installers on all endpoints and hosts within their network and implement technical capabilities to facilitate attack containment, analysis, and replication.
    * There should be means of collecting forensic evidence using disk and memory imaging tools, secure storage only accessible to the CSIRT, and analysis tools such as sandboxes.
      * Accompanying these efforts should be an incident-handling *jump bag*.
        * This bag contains all the necessary tools for incident response.
        * Each kit will be unique; however, as an incident responder, the following items are worth having in your arsenal:
          * Media drives to store evidence being collected.
          * Disk imaging and host forensic software such as FTK Imager, EnCase, and The Sleuth Kit.
          * Network tap to mirror and monitor traffic.
          * Cables and adapters such as USB, SATA, and card readers to accommodate common scenarios.
          * PC repair kits that include screwdriver sets and tweezers.
          * Copies of incident response forms and communication playbooks.

##### What does visibility entail?

* Visibility covers collecting audit and logs data, monitoring threat intelligence feeds on emerging adversarial tactics, techniques, and procedures (TTPs) and ingesting vendor patch advisories.
  * These information sources allow the org to detect, identify, assess, alert, and mitigate unauthorised and abnormal activity within the network.
    * Internal visibility revolves around log management, and having maximum coverage should be part of the cyber resilience and incident handling strategies.
    * External visibility entails being aware of what is happening within the community and the threat landscape.

* Knowing the benefits that visibility will provide within the incident-handling process is essential.
  * The following are a few of the benefits:
    * Provides factual information about access to resources, time of access, and who conducted the activity.
    * Visibility through log management can help improve the effectiveness of processes, policies, and procedures.
    * With log data collected, incidents can be handled using concrete evidence.
    * Compliance with regulations is made to be easier with the collection of log data.
    * Keeps you up-to-date with emerging threats, TTPs, and signatures.
    * Ensures that systems are patched up regularly.

* Every computing device within an org's network can generate and store logs.
  * The challenge of aggregating the logs is addressed by using SIEM solutions, which provide a central storage and analysis platform. 
    * Logs must be secured from any modification once recorded.
    * Additionally, as a CSIRT team member, you should be aware that the collection of logs enables the other stages of the incident response process to run as smoothly as possible.

* Common types of log entries to enable and monitor include:
  * Event: These logs record information about a system or network occurrence, such as login attempts, application events and network traffic.
  * Audit: These cover a sequential recording of activities within a system by capturing who performed an action, what activity was initiated, and how the system responded.
    * There are two classes of audit logs: Success and Failure.
  * Error: When a problem occurs within a system, such as service failure, the events would be recorded as error logs.
  * Debug: During the testing of systems and services, debug logs are recorded to help find problems and facilitate troubleshooting.

* The log entries would be sourced from various avenues within an org's infrastructure.
  * Some familiar sources of logs include:
    * Network logs: These are mainly collected from network devices such as switches and routers and through packet capture solutions.
    * Host perimeter logs: These are mainly facilitated by firewalls, proxies, and VPN servers.
      * They contain information about allowed and denied actions transmitted to the org's host devices.
    * System logs: These logs record events and services being run by the operating system.
    * Application logs: These are logs collected from the applications being run internally.
      * They may include web apps, cloud services, databases and proprietary tools.

* Following the preperation phase is typically the Identification & Scoping Phase
  * [More info on Identification & Scoping Phase](/Infosec/Incident_response/identification.md)
