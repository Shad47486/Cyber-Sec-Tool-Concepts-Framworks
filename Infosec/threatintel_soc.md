# What is Threat Intelligence

* Threat Intelligence is the analysis of data and information using tools and techniques to generate meaningful patterns to mitigate against potential risks associated with existing or emerging threats targeting orgs, industries, sectors or governments.

* There are different classifications of Threat Intelligence, and the primary types of it are:
  * Strategic Intel: High-level intel that looks into the org's threat landscape and maps out the risk areas based on trends, patterns and emerging threats that may impact business decisions.
  * Technical Intel: Examines evidence and artefacts of attacks an adversary uses.
    * Incident Response teams can use this intel to create a baseline attack surface to analyse and develop defence mechanisms.
  * Tactical Intel: Assesses adversaries' tactics, techniques, and procedures (TTPs).
    * This intel can strengthen security controls and address vulnerabilities through real-time investigations.
  * Operational Intel: Assesses an adversary's specific motives and intent to perform an attack.
    * Security teams may use this intel to understand the critical assets available in the org (people, processes, and technologies) that threat actors may target.

* These classifications may give you an idea of how you operate with the data.
  * H/O threat intel is the most common of the four classes and is mainly known as IOC-based Threat Intelligence.

## Consumers and Producers

* *Do you build the knowledge base, or do you consume the knowledge of others?*
  * The common notion of Threat Intelligence is the dataset of known bad IOCs collated by different entities.
    * It may be malicious URLs hosting malware or IP addresses of suspicious connections.
      * But would you know how this information is gathered for the disposal of security analysts?
        * First we need to differentiate the concept of *Producers and Consumers* of Threat Intelligence.
    * Another example could be a collection of IOCs based on internal incidents handled by an org.
      * These orgs expect a more significant number of incidents compared to small orgs with fewer assets to be compromised or user activity to be monitored.
        * The results of these collections are then further analysed, attributed to potential threat actors, and published eventually to help other orgs.
          * ﻿These examples summarise that not every org can be a Producer.
            * It requires a vast set of collected data, the capacity to determine expected normal behaviour, and the capability to analyse and pinpoint unknown potential threats.

* Producers
  * Threat Intelligence Producers gather, analyse and disseminate threat intelligence data for others and themselves.
    * These Producers create reports, advisories, and resources that are shared within the broader cybersecurity community.
      * This group includes cybersecurity vendors, research labs and orgs specialising in collecting and interpreting data on emerging cyber threats.
    * Producers typically collect data using various methods and techniques.
      * Standard methods include network monitoring, which involves monitoring an org's network traffic to identify abnormal behaviour from the inside or a honeypot server exposed externally.

* Consumers
  * Threat Intelligence Consumers are orgs or individuals who consume Threat Intelligence created by Producers.
    * The information gathered from different sources is utilised to improve the org's security posture.
  * How does this group typically leverage the intelligence data shared with them?
    * Identifying vulnerabilities - Consumers can use published vulnerabilities discovered due to zero days launched by threat actors to identify vulnerabilities in an org's infrastructure.
      * Advisories such as CVE publications are commonly utilised to determine if an org is impacted by it and apply mitigations if needed.
    * Prevention and Detection - Consumers can use IOCs to prevent intrusions by blocking these artefacts or detect them by applying them to threat detection rules.
    * Incident Response - Consumers can use intelligence data to respond more effectively to incidents as the data may confirm the likelihood of the attack and the potentially attributed tactics and techniques.
    * Collaborating with others - Information sharing is not only for Producers but also for Consumers.
      * Data analysis of IOCs may still require human assessment, so it is helpful to share info that is validated to be beneficial for Security OpS.

### Are you a Consumer or a Producer?

* Assessing whether your org is a Threat Intelligence Consumer or Producer depends on the roles and responsibilities of your security team and the overall cybersecurity strategy of your org.

* Producer
  * Collect and analyse internal and external data to produce actionable threat intelligence that helps identify and prevent cyber threats.
  * Create and distribute threat intelligence reports to other orgs, such as industry peers, regulators, or law enforcement agencies.

* Consumer
  * Monitor the org's network and systems for potential security threats and vulnerabilities, and leverage external intelligence to supplement their analysis and understanding of those threats.
  * Use threat intelligence feeds and reports from 3rd-party providers to identify potential security threats and vulnerabilities and integrate that information into your org's security posture.

* Once you have defined your role, you may also consider assessing your current practices based on the following:
  * Producer
    * Understanding - Evaluate the quality of the intelligence produced by your org, including the information's relevance, accuracy, and timeliness.
    * Collection - Evaluate your org's ability to collect and analyse data from various sources, including network logs, endpoint data, and other sources.
    * Analytics - Assess your security team's technical and analytical skills, including their ability to detect and analyse threats and communicate their findings to other groups.
    * Application - Evaluate your org's ability to respond to threats based on the threat intelligence produced.
  * Consumer
    * Understanding - Assess your org's understanding of threat intelligence and whether it is effectively being used to enhance your org's security posture.
    * Collection - Evaluate your org's ability to collect and consume threat intelligence from various sources.
    * Analytics - Evaluate your org's ability to analyse and process the threat intelligence that is being collected.
    * Application - Evaluate your org's ability to respond to threats identified through threat intelligence.

#### Intelligence-driven Prevention

* Your org has determined that you are a consumer of Threat Intelligence from reliable sources; your task is to apply the concepts of being a consumer by deploying controls to prevent threats in your infrastructure.

* To start with, we can first simplify the types of IOCs that are commonly distinguished in Threat Intelligence feeds:
  * Domains - Typically attributed to URLs used to host malicious files, C2 callbacks or email domains used for spam.
  * IP Addresses - Commonly attributed to addresses known to execute attacks seen from external assets or outbound callbacks from malware.

* IP Blocking via Firewall:
  * IP blocking is a well-known security measure that involves blocking ingress or egressing network traffic based on the device's IP address attempting to initiate a network connection.
    * It is typically done using a Firewall, a security system that controls the traffic based on predetermined rules.
  * Configuring firewall rules could be overwhelming, but having a direction to deny connections from a known malicious IP address is a good start in preventing malicious connections, such as:
    * Prevent intrusive connections against external applications that may affect service uptime or compromise via a known vulnerability.
    * Prevent connection attempts to the threat actor's infrastructure after successful malware execution.

* Domain Blocking through Email Gateways:
  * Similar to IP blocking, we can configure Email Gateways to prevent known malicious domains from forwarding incoming email messages based on the sender's domain.
    * Email Gateways also depend on a ruleset, which should contain the block list of domains known to send spam or phishing emails.
      * Once the block list is populated, the Email Gateway prevents threat actors from reaching the inbox of the target users in the org.
      * Benfits:
        * Preventing spam emails from reaching employees' inboxes reduces the potential attack surfaces of a threat actor in compromising the organisation.
        * Most of the time, an organisation takeover starts with the execution of a malicious attachment or submitting credentials to a phishing website.
          * An additional prevention layer slightly reduces the burden on the users' phishing awareness capabilities.

* Domain Blocking through DNS Sinkhole:
  * DNS Sinkhole is a security measure that mitigates connections to a malicious domain.
    * This is typically done by redirecting all DNS requests from a known malicious domain to a sinkhole, preventing the resolution to their counterpart IP addresses.

#### Intelligence-driven Detection

* You have successfully deployed preventive mechanisms to mitigate known IOCs in your infrastructure.
  * To maximise the capabilities of your detection and response, you are now tasked to improve the detection capabilities of your tooling.

* Optimising Detection Capabilities:
  * IOC Topics & Detection Use Case:
    * IP Address - Connections via Firewall logs wherein the direction of the connection dictates the potential root cause:
      * Egress connection to a malicious IP indicates a potential execution of malware, thus communicating with a threat actor's IP address.
      * Ingress connection from a malicious IP dictates an intrusion attempt from malicious actors, showing traces of the pre-exploitation phase.
    * URL - Connections via Proxy logs wherein the HTTP method dictates the nature of the connection:
      * HTTP GET requests indicate a potential download of malicious files or access to a phishing website.
        * Moreover, HTTP POST requests indicate a potential submission of credentials or exfiltration of stolen files.
    * Domain - Malicious domains seen in DNS logs directly indicate a malicious activity in either of the following:
      * The domain hosts malware or additional files for its execution chain.
      * The domain is a phishing website.
      * The domain is being used for a C2 connection.
