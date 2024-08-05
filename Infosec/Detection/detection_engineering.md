# What is Detection Engineering?

* Detection engineering is the continuous process of building and operating threat intelligence analytics to identify potentially malicious activity or misconfigurations that may affect your environment.
  * Requires a cultural shift with the alignment of all security teams and management to build effective threat-rich defence systems.

* Detection Types:
  * Environment-based detection
    * Focuses on looking at changes in an environment based on configurations and baseline activities that have been defined.
      * Within this detection, we have Configuration detection and Modelling.
        * Configuration Detection
          * We use current knowledge of the known environment and infrastructure to identify misalignments.
          * Configurations can cross domains, including network, asset or identity.
          * Benfits:
            * The easiest form of detection to create and maintain in static environments.
            * Under perfect conditions and coverage, it detects all malicious activity.
            * Individuals with different expertise can execute the detection.
            * Easy to combine with other detections for forensics and response.
          * Challenges:
            * Difficult to maintain in dynamic environments.
            * Limited visibility reduces effectiveness.
            * There’s an assumption of knowledge of the working infrastructure and configurations for effectiveness.
            * Frequent configuration changes can result in high false positives.
        * Modelling
          * Threat detection under this type is done by defining baseline operations and activities and recording any deviations that occur.
          * The primary assumption of this approach is that malicious activity can be sufficiently identified from benign activity.
            * Involves building an asset or activity profile that includes baseline events, time and data threshold
          * Benfits:
            * Used to identify unknown adversary activities due to model changes and not threat characteristics.
            * Easy to maintain in very static environments.
          * Challenges:
            * Provides no context of threat activity during investigations.
            * Difficult to maintain in dynamic environments.
            * Limited visibility reduces effectiveness.
            * Assumes in-depth knowledge of the working infrastructure and configurations.
            * Potentially adds existing malicious activity into the model.
  * Threat-based detection
    * Focuses on elements associated with an adversary’s activity, such as TTPs.
      * Under this, we have Indicators and Threat Behaviour detections.
        * Threat Behaviour detections
          * Allows analysts can focus their efforts more efficiently on responding to the threat and mitigate against it instead of utilising time and resources to understand how and why alerts were triggered.
          * Additionally, threat behaviour detection can be paired with established workflows and playbooks to provide best practices that can be followed during an investigation.
          * Benfits:
            * Withstands the adversary’s rate of change.
            * Easy to tune and adapt to different environments.
            * Low rates of false positives.
            * Integrates with defensive playbooks and automated remediation plans.
          * Challenges:
            * Due to the adversary’s complexities, lots of data is required to provide complete coverage.
            * Moderately difficult to make initial implementations due to baseline assessments.
            * Only detects similar threat behaviour based on the set analytic.
            * Modifications must be made if detections must be reused across industries.
        * Indicators
          * Indicators are pieces of information that identify a state and context of an element or entity.
            * There are both good indicators used to identify legitimate activities or resources, such as those used in whitelists, and bad indicators used for suspicious or malicious resources, such as in blacklists or malware IPs.
            * IOCs are commonly referenced and derived from investigations against malicious events.
            * By observing threat activities and investigations, analysts can use identified indicators to craft detections and adapt them based on an adversary’s rate of change.
          * Benfits:
            * Fastest detection to create and deploy.
            * Indicators raise specific threat contexts.
            * Useful for enriching data sources and detections.
            * Practical for scoping environments post investigation of indicators.  
          * Challenges:
            * The value of detection depends on the adversary’s rate of change.
            * Retroactive in nature, one needs to observe the indicator first.
            * Limited to some indicators that can be processed at a time.
            * Unknown indicator expiry or change timelines can lead to false detections.
    * Detection as Code (DAC)
      * Structured approach to writing detections by incorporating software engineering best practice principles
        * This means that detection engineers and analysts will handle detection processes and logic as code, offering scalability to address the rapidly changing environments and adversary capabilities.
        * DaC offers a code-driven workflow that creates fine-tuned detection processes that introduce critical elements found in Continuous Integration/Continuous Development (CI/CD) workflows.
        * EX:
          * Version Control: Most SIEMs and EDR products lack the ability to track changes made to alerts and their definitions.
            * By introducing version control, detection rules and processes can be quickly reviewed, tested and accounted for, enabling higher-quality detections.
          * Automation workflows: By adopting a CI/CD workflow, detection testing can be automated and allow quick transition and production delivery.
      * Benfits:
        * Customisable and Flexible Detections: Using a common language for detections, such as Sigma and YARA, offers an opportunity for DaC to be vendor-agnostic and be deployed across numerous SIEM, EDR, and XDR solutions.
        * Test-Driven Development: Quality testing of detection code can ensure that blind spots and false positive tests are identified earlier in the process and promote detection efficacy.
          * Additionally, this approach improves the quality of detections and ensures they are well documented.
        * Team collaborations: Using the CI/CD workflows eliminates isolation between security teams and fosters collaboration through the coding process.
        * Code Reusability: With detection patterns emerging over time, engineers can reuse code to perform similar functions across different detections, ensuring that the detection process moves on faster since there won’t be the need to start from the beginning.

## Detection Engineering Methodology

* 1st step involves Gap Analysis/Threat Modelling:
  * Looking at the environment and identifying key areas where organisations can improve threat detection
    * Can be done in a reactive or proactive way
      * Reactive: Assessing the most recent internal incident reports, taking note of the lessons learnt from the attacks and curving out missed areas of possible detection.
      * Proactive: Using the ATT&CK framework and various threat intelligence sources to map out potential areas of attack and the various TTPs that an adversary against your environment may use.

* Then Identifying logs and datasources (Baseline & Log collection):
  * With information about the relevant threat actors, TTPs and potential risks the organisation may face, sources of relevant data associated with the risks need to be identified.
  * This will determine what logs are currently available that will aid in defining detections against the threats and know which ones are missing and which are necessary.

* Baseline Creation:
  * Before using all the collected information about adversaries, their TTPs and any malicious behaviour, security analysts need to know what normal behaviour is and set their security baselines.
  * This will be a rolling process and requires participation from all departments within an organisation.
  * Setting up security baselines involves identifying the different types of devices running within an organisation based on their operating system, services and functions.
  * Can be grouped into 2 categories, High-level & Technical:
    * High-level: This sets broad OS independent standards guided by a specified security policy.
    * Technical: This consists of OS-based configuration standards outlining different system functions and the intended behaviours or activities.
      * EX: Technical baselines outline OS hardening policies, network activities, IAM policies, & app policies.

* Log Collectio
  * Once the baselines and sources of internal data have been identified and prioritised, the collection of logs and metadata useful for threat detection should be done.
  * Depending on the infrastructure setup, a centralised system may aggregate all logs using network sensors for network data and services such as Sysmon to collect host data.

* Rule Writing
  * Based on the infrastructure setup and SIEM services, detection rules will need to be written and tested against the data sources.
  * Detection rules test for abnormal patterns against logged events.
    * Network traffic would be assessed via Snort rules
    * Yara rules would evaluate file data.

* Finally, Deployment, Automation & Tuning:
  * Tested detection rules must be put into production to be assessed in a live environment.
    * Over time, the detections would need to be modified and updated to account for changes in attack vectors, patterns or environment.
      * This improves the quality of detections and encourages viewing detection as an ongoing process.

### Different Detection Engineering Frameworks?

* [MITRE](<https://attack.mitre.org/>)
  * MITRE is well-known for publishing identified CVEs that adversaries would look to exploit for their malicious activities.
    * Additionally, MITRE provides knowledge-based access that security analysts can use to track tactics and techniques commonly used by malicious actors across different platforms such as Windows, macOS, Linux, and Mobile.
  * The ATT&CK framework helps map out adversarial actions based on the infrastructure in use for detection engineering.
    * It guides what to look for, especially as part of the detection gap analysis phase
    * The CAR (Cyber Analytics Repository) knowledge base is used to detect adversary behaviours and prioritise them based on the ATT&CK framework.

* [Cyber Kill Chain](/Infosec/GRC/Frameworks/CyberKillChain.md)
  * Thanks to a military concept of an attack strategy, Lockheed Martin formulated the Cyber Kill Chain framework to define the necessary steps followed by adversaries.

* [Alerting and Detection Strategy Framework](<https://github.com/palantir/alerting-detection-strategy-framework>)
  * Palantir developed the ADS Framework to provide a guideline for documenting detection content.
  * A significant challenge faced by security teams, and Palantir being no exception, is alert fatigue and apathy, mainly caused by poor means of developing and implementing detection alerts that would result in effective incident response and mitigation.
  * The ADS Framework has a strict flow that detection engineers must follow before publishing detection rules into production.
    * Stages involved are:
      * Goal: Describes the intended reasons for setting up the alert and the type of behaviour that needs to be detected.
      * Categorisation: Mapping the detection to the MITRE ATT&CK framework to provide analysts with info on the TTPs for investigation and areas of the kill chain where the ADS will be used.
      * Strategy Abstract: Provides a top-level description of how the detection strategy being implemented functions by outlining what the alert will look for, the data sources, enrichment resources and ways of reducing false positives.
      * Technical Context: Describes the technical environment of the detection to be used, providing analysts and responders with all the info needed to understand the alert.
        * Security analysts should align this info with the platforms and tools for collecting and processing threat alerts.
      * Blind Spots and Assumptions: Describes any issues identified where suspicious activities may not trigger the strategy.
        * Assumptions and blind spots help clarify ways the ADS may fail or be bypassed by an adversary.
      * False Positives: Outlines occurrences where alerts may be triggered due to misconfigurations or non-malicious activities within the environment.
        * This makes it easy to configure your SIEM to limit alert generation to only targetted threats when pushed to production.
      * Validation: Every detection needs to be verified, and here, you can outline all the steps required to produce a true-positive event that would trigger the detection alert.
        * Consider this a unit test, which can even be a script or scenario used to generate an alert.
          * For an effective validation:
            * Develop a plan that will produce a true-positive outcome.
            * Document the process of the plan.
            * From the testing environment, test and trigger an alert.
            * Validate the strategy that triggered the alert.
      * Priority: Set up the alerting levels with which the detection strategy may be tagged.
        * This section provides the details of the criteria used to set up the preferences, and it is separate from the alerting levels shown through the SIEM.
      * Response: Provides details of how to triage and investigate a detection alert.
        * This info is helpful for analysts and responders to be able to prevent extreme repercussions.

* [Detection Maturity Level Model](<https://ryanstillions.blogspot.com/2014/04/the-dml-model_21.html>)
  * Ryan Stillions brought forward the Detection Maturity Level (DML) model in 2014 as a way for an organisation to assess its maturity levels concerning its ability to ingest and utilise cyber threat intelligence in detecting adversary actions.
    * According to Ryan, there are two guiding principles for this model:
      * An organisation's maturity is not measured by its capabilities of obtaining valuable intelligence but by its ability to apply it to detection and response.
      * W/O established detection functions, there is no opportunity to carry out response functions.
  * The DML model comprises nine dedicated maturity levels, numbered from 0 to 8, with the lowest value representing technical aspects of an attack and the highest level representing abstract and intelligence-based aspects of an attack.
    * The individual levels can be described as follows [Visual Diagram](/examples/Detectionmaturitymodel.png):
      * DML-8 Goals: The pinnacle of the model represents organisations that can detect an adversary's motive and goals.
        * Unfortunately, it is near impossible to conduct detections solely based on goals, as in most cases, it is a guessing game based on behavioural findings from lower DMLs.
      * DML-7 Strategy: Following closely after DML-8, this level is non-technical and represents the adversary's intentions and strategies to fulfil them.
        * Organisations at this level would have a mature intelligence source that will ensure they have context about an adversary's plans, which will be helpful to responders.
      * DML-6 Tactics: Organisations must be able to detect a tactic being used by an adversary without necessarily knowing which technique or tool they used.
        * Tactics are detectable after observing patterns of events that aggregate over time and conditions.
      * DML-5 Techniques: Techniques usually are specific to an individual or APT.
        * Therefore, adversaries leave behind evidence of their attack habits and behaviours and organisations that can detect when a particular threat actor is within their environment are at an advantage.
      * DML-4 Procedures: Organisations require to detect sequences of events from an adversary at this level.
        * They will be very organised and follow a given pattern, such as the pre-exfiltration reconnaissance.
      * DML-3 Tools: Detection of tools can fall into two phases: the transfer phase where the tool is downloaded via the network onto a host device and resides on a file system or in memory.
        * The second is detecting through the tool's functionality and operation.
          * In some cases, this detection level would require organisations to perform reverse engineering against adversarial tools, making it difficult to cause havoc by understanding their tools' capabilities.
      * DML-2 Host & Network Artefacts: Most organisational resources would be spent gathering IOCs and artefacts as threat intel at this level.
        * Unfortunately, in most cases, indicators are observed after the fact.
          * The threat actor would likely be causing havoc within the network when artefacts are picked up and investigated.
            * This has been described as "chasing the vapour trail of an aircraft".
      * DML-1 Atomic Indicators: This level comprises organisations utilising threat intel feeds in the form of lists of IP addresses and domains to detect threats.
      * DML-0 None: At the bottom of the model, organisations that operate at this level have no detection processes established.
  * Ryan described four critical use cases for the model, namely:
    * To provide a lexicon for more accessible communication of threat information.
    * To assess detection maturity against monitored threat actors.
    * To assess the maturity of security vendors and products in use.
    * To provide context to analysts by including the DML levels in Yara rules, Snort signatures and SIEM correlation rules.

