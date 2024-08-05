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






