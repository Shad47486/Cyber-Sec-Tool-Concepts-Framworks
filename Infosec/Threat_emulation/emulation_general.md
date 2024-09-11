# What is Threat Emulation?

* Threat emulation is meant to assist security teams and organisations, in general, in better understanding their security posture and their defence mechanisms and performing due diligence in their compliance.
  * This ensures they are provided with an adversary's perspective of an attack without the hassle of dealing with an actual threat with malicious intent.
    * Additionally, the organisation will be well prepared if a real-time and sophisticated attack is initiated against them.

* With this know-how, the following common assumptions about an attack would be avoided:
  * "We applied all patches."
  * "Our applications have multi-factor authentication applied."
  * "We have the network segmented, implemented a DMZ, and traffic flows through a proxy."
  * "Nothing will go through our firewalls, antivirus and IDS solutions."

* *Emulation vs Simulation*
  * There is no standard definition of this discipline within the industry, as people use different terminologies to mean roughly the same thing.
    * The familiar words used are threat emulation, adversary emulation, attack simulation and purple teaming.
      * Threat emulation is an intelligence-driven impersonation of real-world attack scenarios and TTPs in a controlled environment to test, assess and improve an organisation's security defences and response capabilities.
        * This means that you seek to behave as the adversary would.
        * Threat emulation aims to identify and mitigate security gaps before attackers exploit them.
        * Emulation can be conducted as a blind operation - mainly as a Red Team engagement and unannounced to the rest of the defensive security team - or as a non-blind operation involving all security teams and ensuring knowledge sharing.
      * Threat simulation commonly represents adversary functions or behaviour through predefined and automated attack patterns that pretend to represent an adversary.
        * This implies that the actions taken during the exercise will combine TTPs from one or more groups but not an exact imitation of a particular adversary.

* Threat emulation would be seen to have several key characteristics which line up well with the Pyramid of Pain.
  * Real-world threats: The MITRE ATT&CK framework and cyber threat intelligence are common information sources to ensure threat TTPs are based on actual breaches, APTs and campaigns.
  * Behaviour-focused: The execution of TTPs during an emulation exercise aims to tune defences based on behaviours and not signatures, thus adapting to the elements of the Pyramid.
  * Transparency: Disclosure of activities between the Red and Blue teams during execution ensures that the security posture is improved holistically.
  * Collaborative: Due to the common goal of improving organisational security, threat emulation allows teams to collaborate in their efforts.
  * Repeatable: Some emulation tasks would be done multiple times in the course on an exercise or numerous exercises.
    * These tasks can be automated, creating a baseline of continuous practical security assessments and deployment

* Emulation can be applied to numerous instances, each with its own goals:
  * Assessments & Improvement: The goal is to test personnel, assess security processes and evaluate the technology adopted.
  * Capability Development: Emulation enables the creation, modification and application of tools and analytics derived from TTPs.
  * Professional Development: What better way to teach and promote knowledge sharing about adversary behaviours and frameworks?
    * This breaks down the barriers between red and blue teams and fosters collaboration missions.

* Threat emulation exercises provide vital insights to organisations to assess, manage and improve their abilities to protect their systems effectively against adversaries.

## Emulation Methodologies

* Threat emulation methodologies are strategies, plans and procedures used to simulate and test network defences and systems against adversaries.
  * There are various methodologies, each with its unique approach and level of technicality, but all share the goal of discovering weaknesses in security.
    * It is essential to know that no adversary is alike. However, they would follow a methodology and have their workflows.

* [MITRE ATT&CK](<https://attack.mitre.org/>)
  * The MITRE ATT&CK Framework is an industry-known knowledge base that provides information about known adversarial TTPs observed in actual attacks and breaches.
    * Threat emulation teams can extract many benefits from integrating ATT&CK with their engagements as it would make it efficient when writing reports and mitigations related to the behaviours experimented with.
  * The MITRE ATT&CK matrix visually represents attackers' techniques to accomplish a specific objective.
    * It showcases 14 tactics, from reconnaissance to impact and within each tactic, several adversary techniques are listed and describe the activity carried out.
    * An extension of the ATT&CK matrix is the Navigator, a web-based tool for exploring ATT&CK matrices by creating colour-coded heatmap layers of techniques and sub-techniques used by a particular adversary.

* [Atomic Testing](<https://github.com/redcanaryco/atomic-red-team>)
  * The Atomic Red Team is a library of emulation tests developed and curated by Red Canary that can be executed to test security defences within an organisation.
    * The testing framework provides a mechanism for learning what malicious activities look like and provide telemetry from every test to facilitate defence improvements.
    * The atomics (individual tests) are mapped to the MITRE ATT&CK framework, providing a pivot between threat profiles and emulation.
      * Atomic Red Team supports emulation on a wide range of platforms, not only on known OSs but also in Cloud Environments

* [TIBER-EU Framework](<https://www.ecb.europa.eu/pub/pdf/other/ecb.tiber_eu_framework.en.pdf>)
  * The Threat Intelligence-based Ethical Red Teaming (TIBER-EU) is the European framework developed to deliver controlled, bespoke, intelligence-led emulation testing on entities and organisations' critical live production systems.
    * It is meant to provide a guideline for stakeholders to test and improve cyber resilience through controlled adversary actions.
    * The TIBER_EU framework follows a three-phase process for end-to-end adversary testing:
      1. Preparation Phase
         * During this phase, the security teams involved in the test are established, and the entity's management determines and approves the scope.
         * This represents the formal launch of adversarial testing by ensuring all the planning and procurement processes are fulfilled.
      2. Testing Phase
         * The Threat Intelligence team will prepare a detailed report to showcase the threat areas for the organisation and set up the necessary attack scenarios based on interested adversarial behaviour.
           * Meanwhile, the Red Team will use this report to craft the emulation tests against the systems, people and processes that underpin critical functions.
             * The Blue Team will look for the attacks and assess how their defence systems perform against them.
               * This ultimately forms the aspect of collaboration between the various security teams.
      3. Closure Phase
         * Once tests are run and defences measured, the emulation team must consider reporting and remediation measures.
           * Each group will draft their analysis reports, including details of the tests conducted, findings and recommendations for technical controls, policies, procedures and awareness training.

* [CTID Adversary Emulation Library](<https://github.com/center-for-threat-informed-defense/adversary_emulation_library>)
  * The Center for Threat-Informed Defense is a non-profit research and development organisation operated by MITRE Engenuity.
    * Its mission is to promote the practice of threat-informed defence.
      * With this mission, they have curated an open-source adversary emulation plan library, allowing organisations to use the plans to evaluate their capabilities against real-world threats.
        * The library provides users with two approaches to their emulation:
          * Full Emulation: This is a comprehensive approach to emulating a particular adversary, for example, APT29, typically from initial access to exfiltration.
            * An ex of this approach can be found in this APT29 Adversary Emulation repository.
          * Micro Emulation: This approach is more focused, emulating behaviours across multiple adversaries, such as file access or process injection techniques.
            * You can view existing emulation plans from CTID micro emulation plans on the linked repository.

* *Following methodolgies is a process*
  * [More info on threat emulation process](/Infosec/Threat_emulation/emulation_process.md)
