# Threat Emulation Process

* Developing an internal emulation engagement process for an organisation must be iterative, aligned with recorded cyber security goals, intelligence-driven, and methodical.
  * Security teams can revisit the iterative process, make adjustments where fit and improve the exercise while emulating a given adversary.
  * As an overview, the process's steps are as follows:
    1. Define Objectives
    2. Research Adversary TTPs
    3. Planning the Threat Emulation Engagement
    4. Conducting the Emulation
    5. Concluding and Reporting

## 1. Defining Emulation Objectives

* This step is crucial to ensure the exercise remains focused and on track.
  * The objectives should be clearly defined, specific, and measurable.
    * The scope of the exercise should also be clearly defined, including what the emulation will target as specific systems and data.
    * EX: the aim might be to identify how an attacker could gain access to sensitive data on a particular server

### 2. Research Adversary TTPs

* This step aims to accurately model the behaviour of the target adversary so that the emulation team can conduct the exercise realistically and practically.
  * It involves gathering as much information about the threat and identifying behaviours that can be tested based on the set environment.
  * We can break down this process into the following steps:
    * 2.1. Information Gathering
      * This step starts by gathering information about threats you would be concerned about.
        * This is to avoid instances of selecting arbitrary and non-concerning adversaries such as APT41 that deals with cyber espionage, as opposed to financial fraud.
        * This information can be gathered from various sources, including threat intelligence reports, previous attacks, and publicly available information.
          * More important to note is that as a threat emulation engineer, you would need to start with internal sources, such as network owners, CTI analysts, the cyber defence team and system administrators.
            * These groups will provide information about threats they have seen or heard about and characterise threats based on threat intelligence reports and insights from prior incidents.
    * 2.2. Select The Emulated Adversary
      * With our shortlist of adversaries, we must narrow it down to one we can emulate.
        * To do so, we can follow a set of critical factors that will influence our selection.
          * Relevance: Here, we need to align the adversary to be selected to the engagement objectives and the company's goals.
            * This may even include looking at the geographical relevance of particular APTs.
          * Available CTI: Threat intelligence is vital for providing trustworthy information about a threat.
            * For a robust emulation plan, you would need enough reliable resources around the TTPs.
          * TTP Complexity: Executing a fruitful emulation plan for complex adversaries who use sophisticated tools and procedures may take a long time.
            * Here, we must establish whether existing tools can handle the emulation or whether custom ones are required.
          * Available Resources: These are primarily in-house resources that must be provisioned for a smooth operation.
            * Budget, time and personnel must be allocated appropriately during the emulation process.
    * 2.3. Select The Emulated TTPs
      * This step aims to accurately model the behaviour of the target adversary so that the exercise can be conducted realistically and practically.
        * The TTPs selected to emulate will drive the rules of engagement, implementations and operations flow of the emulation.
        * To select which one to emulate, we must understand the TTPs to prioritise our selection.
          * We can visualise these TTPs using the ATT&CK Navigator and look at the specific behaviours the threat group is known to use.
        * After this, pivoting to CTI resources, such as those listed within the ATT&CK description, would provide information about how the original TTP was executed.
          * This will be followed by creating a scenario outline for the selected TTP, with appropriate context and sources to fulfil its emulation.
    * 2.4. Construct TTP Outline
      * The outline aims to drive follow-up threat emulation activities, such as explaining the planned emulation activities, stating the scope and rules of engagement and how the TTPs will be implemented during the exercise.

#### 3. Planning the Threat Emulation Engagement

* Since threat emulation involves conducting and mimicking actual cyber attacks, significant problems may ensue if not properly planned and coordinated.
  * The issues may include disclosure of private data, data loss and unplanned system downtime.

* Planning the emulation activities through defining the rules of engagement for the exercise, including communication and approvals, is vital to avert these risks.
  * Planning also involves determining the resources needed for the activity, such as personnel, time, and equipment.

* 3.1 Threat Emulation Plans
  * Threat Emulation Plans are a collection of resources used to organise and set a step-by-step execution of instructions for adversary behaviours based on a particular set of TTPs.
    * A well-defined plan will contain the elements of the threat emulation process as well as the following components:
      * Engagement Objectives: We have seen that the objectives are defined at the beginning of the process to understand the need for threat emulation.
      * Scope: The departments, users and devices upon which emulation activities are permitted should be defined explicitly.
      * Schedule: The dates and times when the activities should occur and when deliverables are due should be defined
        * This helps avoid conflicts between emulation activities and legitimate business operations.
      * Rules of Engagement: The acceptable adversary behaviour to be emulated must be planned and discussed.
        * This also includes mitigation actions for any high-risk TTPs used during the exercise.
      * Permission to Execute: Explicit written consent to conduct the emulation activities must be provided by sufficient authority from the organisation.
        * This helps avoid acting out independently and risking legal or criminal problems.
      * Communication Plan: The emulation team and organisation stakeholders must have a plan to communicate information concerning the emulation activities.
        * You need to define the timings, communication channels, and any collaboration efforts to be included.

#### 4. Conducting the Emulation

* This step involves carrying out the attack using the TTPs identified in the research phase.
  * This step requires skilled professionals who can accurately replicate the tactics and techniques of the target adversary.
  * The exercise should be conducted controlled and safely, and any issues should be addressed immediately.
    * During the execution of the emulation, some resources would be needed to implement the TTPs.
      * This will be your emulation lab, comprising an attack platform, an analysis platform used to gather forensic details and analyse artefacts and your test systems where the TTPs would be deployed.

* 4.1. Planning the Deployment
  * Let's say we wish to emulate the Initial Access TTPs.
    * We can use ATT&CK to understand the TTPs and map them out using the Navigator.

* 4.2. Implementation of TTP
  * This is where the deployment of actual TTPs happens.

* 4.3. Detections & Mitigations
  * Since emulation is a cross-team and collaborative endeavour, the defence team must find ways to detect and mitigate against emulated TTPs.
    * Depending on the organisational setup, the SOC would use standard cyber security tools to collect, correlate and analyse TTP behaviour and logs for detection.
    * MITRE provides a list of mitigation efforts for the adversarial TTPs, and this can be provided as recommendations and implemented as part of the emulation.

##### 5. Observe Results

* While going through the emulation engagement, the observing team (typically Blue Team) must identify artefacts that point to the emulation activity.
  * This will be through the analysis of logs, evaluation of event logs and tracking of networking traffic.
    * The output of these results would help to understand if the TTP was successful at its mission, blocked or detected by the security measures available.

##### 6. Document & Report Findings

* Once results have been obtained, the teams must document and report the findings.
  * Documentation provides empirical evidence to demonstrate the cyber security effectiveness of the process.
  * Reporting should cover the exercise procedures, as outlined in the emulation plan and what was executed, the impact faced and recommendations that would be offered to avert the threat.
