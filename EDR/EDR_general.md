# What is an Endpoint Detection and Response (EDR)?

* An EDR solution provides a proactive approach toward threat detection and visibility through near real-time monitoring of events on endpoints and evaluates them based on a rules-based automated response and analysis.

* The main functions of an EDR are:
  * Monitor and collect activity data from endpoints that could indicate a threat.
  * Analyse this data to identify threat patterns.
  * Automatically respond to identified threats, remove or contain them, and notify security personnel
  * Forensics and analysis tools to research identified threats and search for suspicious activities.

* The functions of an EDR can be broken down into the aggregation of data on an endpoint and how the data is analysed and used to detect threats.
  * Endpoint Data Recording
    * Aggregating network communication, events, process executions, file activities, commands, user operations, etc.
    * Telemetry data points.
    * Storage of data on endpoints, in a server, or in a hybrid approach.
  * Investigation of Data & Responding
    * Sweep (search) for indicators of Compromise to understand the impact of detections.
    * Find the root cause of detection and remediate/prevent/investigate again.
    * Hunt for indicators of Attack based on behaviour rules or threat intelligence. Automatic (detection) or manual.

## What are Components of an EDR?

* Detection: Fundamentally, EDR solutions are tasked with threat detection.
  * EX: with file analysis, EDRs can flag suspicious files at the sight of any malicious behaviour.
    * The detection process is also based on how good the threat intelligence sources are.
* Response/ Containment: EDRs provide response features that help investigate, detect, remediate and contain threats.
  * The actions here include host segmentation, file deletion/cleanup and conducting investigations through sandboxing conditions.
  * Advanced EDR solutions have the capability to trigger an automated response based on a set of preconfigured rules.
* Integration: EDRs extend endpoint visibility through the collection and aggregation of data.
  * Therefore, in addressing endpoint security, EDR solutions need to work smoothly with existing security solutions in an organisation.
* Insights: Real-time analysis of events is becoming very common, providing a rapid evaluation and correlation of threat data.
  * Through complex machine learning and artificial intelligence algorithms, EDR solutions can automate threat identification and perform behavioural analysis, mapping them to frameworks such as the MITRE ATT&CK.
* Forensics: In-depth investigation of past threats provides valuable information on the inner workings of exploits and how a breach was successful.
  * With this, EDR solutions can outline threat timelines and identify lurking threats that go undetected.
