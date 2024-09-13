# What is Incident Response (IR)?

* IRs cover the technical aspect of dealing with an incident.
  * Responsible for answering the primary question:
    * WHAT HAPPENED?????

* To answer What happened during an IR the IR team uses several techniques and technologies
  * Often begin with Security Operations Centre (SOC) analysts to review info provided with the event that triggered the alert.
    * Using one of the following tools:
      * EDR or AV Alert:
        * Usually these tools would create an alert for anomalous activity that has occurred on a specific host.
          * EX: The EDR could alert that there were attempts made to monitor the keystrokes of a user.
      * Network Tap Alert:
        * Network taps provide alerts for anomalous network activity.
          * EX: There could be an alert that a host is scanning other hosts in the estate.
      * Security Information and Event Management (SIEM) Alert
        * The SIEM system could alert on a custom rule that was created by the analysts.
          * EX: an impossible travel rule where a user's account is being logged in from two different countries simultaneously.

* *Setting up an incident response capability requires orgs to make several decisions, including having a specific definition for the term "incident" to fit a clear scope.*
  * Therefore, we can differentiate events and incidents as the following:
    * Event: This is an observed occurrence within a system or network.
      * It ranges from a user connecting to a file server, a user sending emails, or anti-malware software blocking an infection.
    * Incident: This is a violation of security policies or practices by an adversary to negatively affect the org through actions such as exfiltrating data, encrypting through ransomware, or causing a denial of services.

## What is the Incident Management (IM)?

* IM covers the process aspect of dealing with an incident.
  * Responsible for answering the primary question:
    * HOW DO WE RESPOND TO WHAT HAPPENED?

* IM has to take care of several things, such as:
  * Triaging the incident to accurately update the severity of the incident as new information becomes available and getting more stakeholders involved to help deal with the incident, such as Subject Matter Experts (SMEs).
  * Guiding the incident actions through the use of playbooks.
  * Deciding which containment, eradication, and recovery actions will be taken to deal with the incident.
  * Deciding the communication that will be sent internally and externally while the team deals with the incident.
  * Documenting the information about the incident, such as the actions taken and the effect that they had on dealing with the incident.
  * Closing the incident and taking the information to learn from the incident and improve future processes and procedures.

*What are the different levels of IM?*

* Level 1: SOC Incident:
  * Often not even classified as incidents & are require a purely technical approach.
    * These levels of incidents can happen several times a day and are usually quick to deal with and the analyst deals with this themselves.
      * EX: A user has reported a phishing email
        * Analyst finds that it is an isolated event and therefore simply updates the mail filtering rules to block the sender

* Level 2: Computer Emergency Response Team (CERT) Incident:
  * Where we don't yet have enough to raise the alarm bells.
    * Still, we are concerned and therefore performing additional investigation to determine the scope of the incident.
    * Usually, the analyst would request assistance and more members of the SOC team would get involved.
      * EX: A user has reported a phishing email
        * We would be investigating if any of those users interacted with the email.
        * We would also like to better understand what the email does.

* Level 3: Computer Security Incident Response Team (CSIRT) Incident:
  * At this point, the entire SOC team will focus on the single incident to deal with it & the entire SOC is placed on high alert and actively working to resolve the incident.
    * Analysts and the forensic team work to uncover the full scope of the incident and the management team is taking action against the threat actor to contain the spread of the malware, eradicate it from hosts where it is discovered, and recover affected systems.
    * If the team is able to stop the spread of the attack before any disruptions can occur or the threat actor can escalate their privileges within the estate, the CSIRT team will close the incident.
    * H/O if it is determined that the scope is larger through investigation, we would invoke a Crisis Management Team (CMT) Incident.

* Level 4: Crisis Management Team (CMT) Incident:
  * The CMT would usually consist of several key business stakeholders such as the entire executive suite, members from the legal and communication teams, as well as other external parties, such as the regulator or police.
    * ALL HANDS ARE ON DECK.
  * At this level, we start to move into the territory of what is called "nuclear" actions.
    * Rather than simple actions to contain, eradicate, and recover, this team can authorise the use of nuclear actions, such as taking the entire org offline to limit the incident's damage.

### Process of IM based on NIST Special Publication 800-61 Standards

1. Starts with Preperation
2. Detection & Analysis
3. Containment
4. Eradication
5. Recovery
6. Post-incident Activity
   * [More info on NISTIM](<https://nvlpubs.nist.gov/nistpubs/specialpublications/nist.sp.800-61r2.pdf>)

### Process of IR

* The notable IR process consists of the following phases:
  * [Preparation](/Infosec/Incident_response/preperation.md)
    * Ensures that the org can effectively react to a breach with laid down procedures.
  * [Identification](/Infosec/Incident_response/identification.md)
    * Operational deviations must be noted and determined to cause adverse effects.
  * [Analysis or Scoping](/Infosec/Incident_response/anaylsis.md)
    * The org determines the extent of a security incident, including identifying the affected systems, the type of data at risk, and the potential impact on the org.
  * [Containment](/Infosec/Incident_response/containment.md)
    * Damage limitation is paramount, therefore, isolating affected systems and preserving forensic evidence is required.
  * [Eradication](/Infosec/Incident_response/eradication_remediation.md)
    * Adversarial artefacts and techniques will be removed, restoring affected systems.
  * [Recovery and Lessons Learned](/Infosec/Incident_response/lesson_learned.md)
    * Business ops are to resume fully after removing all threats and restoring systems to full function.
      * Additionally, the org considers the experience, updates its response capabilities, and conducts updated training based on the incident.

* *An incident response plan (IRP) is a document that outlines the steps an org will take to respond to an incident.*
  * The IRP should be the org's Swiss Army knife, comprehensively covering all aspects of the incident response process, roles and responsibilities, communication channels between stakeholders, and metrics to capture the effectiveness of the IR process.
  * To have an effective incident response plan, you would have gone through numerous iteration processes via creating templates and refactoring the process.
    * This ensures that you can ingest incident data and mitigate breaches as they occur accurately. The templates would also be valuable in creating incident reports.
  * Accompanying an incident response plan is the use of playbooks.
    * The playbooks would provide the org with actions and procedures to identify, contain, eradicate, recover and track successful incident mitigation measures.

#### What are common Pitfalls during an incident?

* Insufficient Hardening
  * Typically implemented BEFORE AN INCIDENT or AFTER AN INCIDENT
    * Results in an increased amount of incidents and while most can be stopped before there is actual damage, it only takes one successful incident to be very costly for an org

* Insufficient Logging
  * Often it is seen that orgs are not performing adequate logging of information (AKA 'Flying Blind')
    * A common problem is the cost of ingesting log information
      * Results in some incidents only being detected later when there is already an impact or it may not be possible to accurately determine the incident scope.

* Insufficient- and Over-Alerting
  * Sometimes we receive the logs, but we are not doing anything useful with them.
    * This is why threat hunting is important
      * Threat hunting helps to identify information that can be converted into new alerts that would let the team know when there is something worth investigating.
        * H/O may lead to team ignoring the alert if it makes to much noise
          * This may lead to the team simply ignoring the alert if it arises until its an actual threat.
        * Therefore threat hunters should be careful to not create new alerts, but to ensure that their signal-to-noise ratio is optimised.

* Insufficient Determination of Incident Scope
  * A big mistake that often happens during incident response and management is not understanding the incident scope.
    * It is often impossible to fully understand the incident scope, best efforts should be made.
  * Insufficient Accountability
    * It is incredibly important to understand that there is a difference between discussing containment, eradication, and recovery actions and performing them

* Insufficient Backups
  * In the event that an incident results in disruptive actions such as ransomware being deployed, the only saving grace is backups that can be used to recover the estate.
    * However, if backup processes and policies were not clearly established and followed, it would not be possible to recover from the incident.
      * Furthermore, sometimes backups are not sufficiently isolated.
        * In modern times where the primary focus is on availability, often legacy backups are removed in favour of new HA & DR environments.
          * H/O the issue is that if ransomware executes on the main system, it is replicated as such in the DR environment.
          * Therefore, offline and remote backups are just as important today.
