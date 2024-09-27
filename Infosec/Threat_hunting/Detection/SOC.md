# What is a Security Operation Centres (SOCs)?

* SOCs are meant to provide a location to centralise crisis communication for organisations and provide monitoring capabilities for physical, logical and network security.
  * The main advantage of an organisation having a SOC is to enhance their security incident handling through continuous monitoring and analysis.
    * This is achievable through having the right amount and implementation of people, processes and technologies that would support the capabilities of the SOC and business goals.

## SOC Capabilities/Challenges

* Capabilities:
  * Monitoring and Detection: This focuses on continuously scanning and flagging suspicious activities within a network environment.
    * It leads to awareness of emerging threats and how to prevent them in their early stages.
  * Incident Response: SOC teams operate as first responders when cyber threats are identified.
    * They perform operations such as isolating or shutting down infected endpoints, removing malware and stopping malicious processes.
  * Threat Intelligence: Monitoring environments continuously requires a constant flow of intel.
    * This ensures that SOC teams are always updated on the latest developments and have the best available resources to address emerging threats
  * Log Management: A SOC gathers, maintains and reviews logs of all network connections and activities within an organisation.
    * With all this information, baselines for regular activities can be established and provide evidence for forensic investigations.
  * Recovery and Remediation: Organisations rely on their SOC to provide a hub for recovery and remediation when incidents occur.
    * Additionally, the SOC provides effective communication with affected parties to ensure that the incidents are addressed.
  * Security Process Improvement: Adversaries are continuously refining their tactics and tools.
    * This means that the SOC must always carry out improvements by performing post-mortem investigations and identifying areas to work on.

* Challenges:
  * Alert fatigue: As a result of using numerous security tools, a huge number of alerts will be triggered within a SOC.
    * Many of these alerts are false positives or insufficient for an investigation, leaving analysts overwhelmed and unable to address any serious security events.
  * Disparate tools: Security tools are often deployed without integration within an organisation.
    * Security teams are tasked with navigating through firewall logs and rules which are handled independently from endpoint security logs.
      * This also leads to an overload of tools.
  * Manual Processes: SOC investigation procedures are often not documented, leading to a lack of efficient means of addressing threats.
    * Most rely on established tribal knowledge that was built by experienced analysts, and the processes are never documented.
  * Talent Shortage: SOC teams find recruiting and expanding their talent pool difficult to address the growing security landscape and sophisticated threats.
    * Combining this with the alert overload teams face, security analysts become more overwhelmed with the number of responsibilities they have to undertake, resulting in less efficient work and extended incident response times that allow adversaries to reign havoc within an organisation.

### SOAR vs SIEM

* SOAR
  * Fetches threat feeds from SIEM, threat intelligence, endpoint security.
  * Collects security alerts and intel using a centralized platform.
  * Orchestration and automation ensure less human intervention when addressing threats.
  * Employs workflows and playbooks to ensure end-to-end response automation.
    * Playbooks can also refer to standard operating procedure (SOP).

* SIEM
  * Centrally collected log and event data from security, network, server & app sources
  * Generates alerts to be assessed by analysts.
  * More human intervention is required to manage rules, use cases and alerts.
  * Limited response workflows result in longer response times.

#### SOAR Workflow

* Detection:  A security event may be triggered and detected by an integrated security system such as a network intrusion detection system (NIDS) or a SIEM.
* Enrichment: Threat intelligence would be gathered from feeds, reports and other sources to provide additional context about the event, such as the TTPS.
  * SOC analysts can use the orchestrated data to conduct deeper investigations.
* Triage: The SOAR would analyse the event, determining its severity and potential impact on the organisation.
  * This reduces MTTD and MTTR to security incidents.
* Response: Automated actions are set in motion to contain the threat and mitigate any potential damage.
  * EX: Implemented playbooks could trigger the isolation of compromised systems or block identified malicious IP addresses.
    * A new level of enhanced incident response.
* Remediation: Root cause analysis of the event is done through the coordinating efforts of security analysts and incident responders.
  * Additionally, patch management operations and vulnerability upgrades are automated efficiently.
* Reporting: Communication and reports about the incident and remediation are standardised to ensure a reliable and repeatable flow of information involving both internal and external stakeholders.
  * Actionable metrics may also be extracted.

##### SOAR Workflow Case Example 1

* Phishing Workflow
  * Phishing attacks remain the most common attack vector used in breaches.
    * Unfortunately for security analysts, investigating phishing emails becomes time-consuming and involves manual exercises such as analysing attachments and URLs.
      * SOAR solutions can execute these tasks in the background while other investigations are ongoing.
        * Additionally, remediation can be performed when a positive phishing email is identified.

* SOAR workflow would look like:
  1. The suspected emails have been received and isolated in a sandbox environment prepared for such events.
  2. A trigger is executed to create a ticket on the case management solution (such as TheHive).
     2. This will allow for better documentation and follow-up on the incident.
  3. Parse the email for URLs, attachments and other possible IOCs.
     3. If any IOCs are present, they will be extracted.
  4. File hashes will be generated for extracted attachments.
  5. A VirusTotal trigger is executed to analyse extracted URLs and file hashes.
  6. In the event there are no results from VirusTotal, a manual email analysis has to be done to ensure whether it is malicious.
  7. Malicious outcomes from automated or manual analysis trigger a deletion of the malicious email and a communication notification to the organisation.
  8. The incident ticket is updated with IOCs' results and reports generated.

##### SOAR Workflow Case Example 2

* The CVE is a classification list for publicly disclosed vulnerabilities based on a scoring system that evaluates the threat level of the vulnerability.
  * As a security analyst, you must always be on the lookout for publications on new CVEs and remediation plans.
  * SOARs can be used to orchestrate and automate vulnerability management processes, addressing critical issues based on released security advisories in a timely and efficient manner.

* Workflow for this scenario can be detailed as follows:
  1. The SOAR monitors advisory lists and pulls details, extracting any new CVE data.
  2. The SOAR queries the internal patch management system if the received CVE has been seen before and patched.
  3. If CVE has been addressed, end workflow.
     3. If not, the CVE will be assessed to see if it applies to any assets.
  4. If CVE is applicable, a tracking ticket is created and assigned to an analyst.
     4. If not, the patch management system is updated with the information, and the workflow ends.
  5. For a created CVE Ticket, the SOAR will compile a list of assets needing patching against the CVE.
  6. The patch management system is queried for the presence of the patch.
     6. The database is updated with the latest patch information if the patch is not present.
  7. The SOAR creates virtual test environments to test the patch.
     7. The patch is applied, and test metrics are logged.
  8. The SOAR updates the CVE ticket with test outcomes and notes success and failure rates.
  9. The patch is deployed to production assets.
     9. The analyst verifies the rollout of the patch.
  10. The SOAR conducts a vulnerability scan against the patched assets for the CVE.
      10. The analyst develops and deploys a mitigation plan if assets are still vulnerable.
  11. The CVE ticket is closed, vulnerabilities cleared, and patch management is updated with the CVE addressed.

