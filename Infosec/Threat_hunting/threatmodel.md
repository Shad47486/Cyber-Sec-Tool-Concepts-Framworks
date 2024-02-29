# What is Threat Modeling?

* Systematic approach to identifying, prioritising, & addressing potential security threats across the org.
  * By simulating possible attack scenarios & assessing the existing vulnerabilities of the org's interconnected systems & applications, threat modelling enables orgs to develop proactive security measures & make informed decisions about resource allocation.

* Aims to reduce an org's overall risk exposure by identifying vulnerabilities & potential attack vectors, allowing for adequate security controls & strategies.
  * This process is essential for constructing a robust defence strategy against the ever-evolving cyber threat landscape.

## Threat, Vulnerability & Risk

* Threat
  * Refers to any potential occurrence, event, or actor that may exploit vulnerabilities to compromise information confidentiality, integrity, or availability.
    * May come in various forms, such as cyber attacks, human error, or natural disasters.
      * EX: Occurrence of someone breaking inside your home & taking all your belongings.

* Vulnerability
  * A weakness or flaw in a system, application, or process that may be exploited by a threat to cause harm.
    * May arise from software bugs, misconfiguration, or design flaws.
      * EX: Weaknesses in your home security, such as broken locks or open windows.

* Risk
  * The possibility of being compromised because of a threat taking advantage of a vulnerability.
    * A way to think about how likely an attack might be successful & how much damage it could cause.
      * EX: Likelihood of being burglarised due to living in a neighbourhood with a high crime rate or a lack of an alarm system.

### High Level Process of Threat Model

1. Defining the scope
   * Identify the specific systems, applications, & networks in the threat modelling exercise.

2. Asset Identification
   * Develop diagrams of the organisation's architecture & its dependencies.
     * It is also essential to identify the importance of each asset based on the information it handles, such as customer data, intellectual property, & financial information.

3. Identify Threats
   * Identify potential threats that may impact the identified assets, such as cyber attacks, physical attacks, social engineering, & insider threats.

4. Analyse Vulnerabilities & Prioritise Risks
   * Analyse the vulnerabilities based on the potential impact of identified threats in conjunction with assessing the existing security controls.
     * Given the list of vulnerabilities, risks should be prioritised based on their likelihood & impact.

5. Develop & Implement Countermeasures
   * Design & implement security controls to address the identified risks, such as implementing access controls, applying system updates, & performing regular vulnerability assessments.

6. Monitor & Evaluate
   * Continuously test & monitor the effectiveness of the implemented countermeasures & evaluate the success of the threat modelling exercise.
     * EX: of a simple measurement of success is tracking the identified risks that have been effectively mitigated or eliminated.

### Various types of models

* There are various methods to perform threat modelling.
  * Not all the methods have the same purpose; some focus on risk or privacy concerns, while some are more customer-focused
    * [Spoofing, Tampering, Repudiation, Information Disclosure, Denial Of Service, and Elevation/Escalation of Privilege (STRIDE)](/Infosec/Frameworks/STRIDE.md)
    * [Damage Potential, Reproducibility, Exploitability, Affected Users and Discoverability (DREAD)](/Infosec/Frameworks/DREAD.md)
    * [Process for Attack Simulation and Threat Analysis(PASTA)](/Infosec/Frameworks/PASTA.md)
