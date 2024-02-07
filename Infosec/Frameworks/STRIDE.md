# What is the STRIDE Framework?

* Threat modelling methodology also developed by Microsoft (Like DREAD Framework), which helps identify and categorise potential security threats in software development and system design.
  * Also provides what component of the CIA triad is violates (Policies Violated)
**The acronym STRIDE is based on six categories of threats: (below)**

* Spoofing
  * Unauthorised access or impersonation of a user or system.
    * Sending an email as another user.
    * Creating a phishing website mimicking a legitimate one to harvest user credentials.
      * Policy Violated = Authentication

* Tampering
  * Unauthorised modification or manipulation of data or code.
    * Updating the password of another user.
    * Installing system-wide backdoors using an elevated access.
      * Policy Violated = Integrity

* Repudiation
  * Ability to deny having acted, typically due to insufficient auditing or logging.
    * Denying unauthorised money-transfer transactions, wherein the system lacks auditing
    * Denying sending an offensive message to another person, wherein the person lacks proof of receiving one.
      * Policy Violated = Non-repudiation

* Information Disclosure
  * Unauthorised access to sensitive information, such as personal or financial data.
    * Unauthenticated access to a misconfigured database that contains sensitive customer info.
    * Accessing public cloud storage that handles sensitive documents.
      * Policy Violated =  Confidentiality

* Denial of Service
  * Disruption of the system's availability, preventing legitimate users from accessing it.
    * Flooding a web server with many requests, overwhelming its resources, and making it unavailable to legitimate users.
    * Deploying a ransomware that encrypts all system data that prevents other systems from accessing the resources the compromised server needs.
      * Policy Violated =  Availability

* Elevation of Privilege
  * Unauthorised elevation of access privileges, allowing threat actors to perform unintended actions.
    * Creating a regular user but being able to access the administrator console.
    * Gaining local administrator privileges on a machine by abusing unpatched systems.
      * Policy Violated =  Authorisation

## Threat Modeling WITH STRIDE

1. System Decomposition:
   * Break down all accounted systems into components, such as applications, networks, and data flows.
     * Understand the architecture, trust boundaries, and potential attack surfaces.

2. Apply STRIDE Categories:
   * For each component, analyse its exposure to the six STRIDE threat categories.
     * Identify potential threats and vulnerabilities related to each category.

3. Threat Assessment:
   * Evaluate the impact and likelihood of each identified threat.
     * Consider the potential consequences and the ease of exploitation and prioritise threats based on their overall risk level.

4. Develop Countermeasures:
   * Design and implement security controls to address the identified threats tailored to each STRIDE category.
     * EX: To enhance email security and mitigate spoofing threats, implement DMARC, DKIM, and SPF, which are email authentication and validation mechanisms that help prevent email spoofing, phishing, and spamming.

5. Validation and Verification:
   * Test the effectiveness of the implemented countermeasures to ensure they effectively mitigate the identified threats.
     * If possible, conduct penetration testing, code reviews, or security audits.

6. Continuous Improvement:
   * Regularly review and update the threat model as the system evolves and new threats emerge.
     * Monitor the effective countermeasures and update them as needed.
