# What is the PASTA Framework?

* Process for Attack Simulation and Threat Analysis (PASTA), is a structured, risk-centric threat modelling framework designed to help organisations identify and evaluate security threats and vulnerabilities within their systems, applications, or infrastructure.
  * Provides a systematic, 7-step processes that enables security teams to understand potential attack scenarios better, assess the likelihood & impact of threats, & priortise remediation efforts accordingly.
    * Created by Tony UcedaVélez and Marco Morana in their book: "Risk Centric Threat Modeling: Process for Attack Simulation and Threat Analysis" 2015

## PASTAs 7-step Methodology/Guidelines

1. Define the Objectives
   * Establish the scope of the threat modelling exercise by identifying the systems, applications, or networks being analysed and the specific security objectives and compliance requirements to be met.
   * Guidelines:
     * Set clear and realistic security objectives for the threat modelling exercise.
     * Identify relevant compliance requirements and industry-specific security standards.

2. Define the Technical Scope
   * Create an inventory of assets, such as hardware, software, and data, and develop a clear understanding of the system's architecture, dependencies, and data flows.
     * Guidelines:
       * Identify all critical assets, such as systems and applications, that handle sensitive data owned by the organisation.
       * Develop a thorough understanding of the system architecture, including data flows and dependencies.

3. Decompose the Application
   * Break down the system into its components, identifying entry points, trust boundaries, and potential attack surfaces.
     * This step also includes mapping out data flows and understanding user roles and privileges within the system.
       * Guidelines:
         * Break down the system into manageable components or modules.
         * Identify and document each component's possible entry points, trust boundaries, attack surfaces, data flows, and user flows.

4. Analyse the Threats
   * Identify potential threats to the system by considering various threat sources, such as external attackers, insider threats, and accidental exposures.
     * This step often involves leveraging industry-standard threat classification frameworks or attack libraries.
     * Guidelines:
       * Research and list potential threats from various sources, such as external attackers, insider threats, and accidental exposures.
       * Leverage threat intelligence feeds and industry best practices to stay updated on emerging threats.

5. Vulnerabilities and Weaknesses Analysis
   * Analyse the system for existing vulnerabilities, such as misconfigurations, software bugs, or unpatched systems, that an attacker could exploit to achieve their objectives.
     * Vulnerability assessment tools and techniques, such as static and dynamic code analysis or penetration testing, can be employed during this step.
     * Guidelines:
       * Use a combination of tools and techniques, such as static and dynamic code analysis, vulnerability scanning, and penetration testing, to identify potential weaknesses in the system.
       * Keep track of known vulnerabilities and ensure they are addressed promptly.

6. Analyse the Attacks
   * Simulate potential attack scenarios and evaluate the likelihood and impact of each threat.
     * This step helps determine the risk level associated with each identified threat, allowing security teams to prioritise the most significant risks.
     * Guidelines:
       * Develop realistic attack scenarios and simulate them to evaluate their potential consequences.
       * Create a blueprint of scenarios via Attack Trees and ensure that all use cases are covered and aligned with the objective of the exercise.

7. Risk and Impact Analysis
   * Develop and implement appropriate security controls and countermeasures to address the identified risks, such as updating software, applying patches, or implementing access controls.
     * The chosen countermeasures should be aligned with the organisation's risk tolerance and security objectives.
     * Guidelines:
       * Assess the likelihood and impact of each identified threat and prioritise risks based on their overall severity.
       * Determine the most effective and cost-efficient countermeasures for the identified risks, considering the organisation's risk tolerance and security objectives.

### What are the benfits of using The PASTA Framework?

* The framework is adaptable to unique objectives and helps organisations align with compliance requirements by systematically identifying and addressing security risks while ensuring proper security controls are in place.

* Like the other frameworks, PASTA fosters collaboration between stakeholders, such as developers, architects, and security professionals, promoting a shared understanding of security risks and facilitating communication across the organisation.

* In addition, the PASTA methodology helps organisations meet compliance requirements by systematically identifying and addressing security risks and ensuring that appropriate security controls are in place.

* Lastly, the primary reason to use PASTA is its comprehensive and systematic process, ensuring a thorough analysis of the entire risk landscape. Organisations can proactively address security risks by employing PASTA, tailoring the seven-step methodology to their unique needs, and maintaining a solid security posture.
