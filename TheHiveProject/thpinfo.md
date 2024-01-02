# What is TheHive Project?

- Scalable, open-source and freely available Security Incident Response Platform, designed to assist security analysts & practitioners working in SOCs, CSIRTs and CERTs to track, investigate & act upon identified security incidents in a swift & collaborative manner.

## Based on 3 Core Functions

- Collaborate:
  - Multiple analysts from one organisation can work together on the same case simultaneously.
  - Through its live stream capabilities, everyone can keep an eye on the cases in real time.

- Elaborate:
  - Details of each case can be broken down into associated tasks, which can be created from scratch or through a template engine.
    - Analysts can record their progress, attach artifacts of evidence and assign tasks effortlessly.
  
- Act: A quick triaging process can be supported by allowing analysts to add observables to their cases
  - Leveraging tags, flagging IOCs and identifying previously seen observables to feed their threat intelligence.

## Features include (6)

- Case/Task Management:
  - Every investigation is meant to correspond to a case that has been created.
    - Each case can be broken down into one or more tasks for added granularity & even be turned into templates for easier management.
      - Analysts can also record their progress, attach pieces of evidence or noteworthy files, add tags & other archives to cases.
  
- Alert Triage:
  - Cases can be imported from SIEM alerts, email reports & other security event sources.
    - Feature allows an analyst to go through the imported alerts & decide whether or not they are to be escalated into investigations or incident response.

- Observable Enrichment with Cortex:
  - Cortex, an observable analysis & active response engine.
    - Cortex allows analysts to collect more information from threat indicators by performing correlation analysis & developing patterns from the cases.
      - <https://github.com/TheHive-Project/Cortex/>
  
- Active Response:
  - Allows analysts to use Responders & run active actions to communicate, share information about incidents, & prevent or contain a threat.

- Custom Dashboards:
  - Statistics on cases, tasks, observables, metrics & more can be compiled & distributed on dashboards that can be used to generate useful KPIs within an org.

- Built-in MISP Integration:
  - Another useful integration is with MISP, a threat intelligence platform for sharing, storing & correlating IOC of targeted attacks & other threats.
    - Allows analysts to create cases from MISP events, import IOCs or export their own identified indicators to their MISP communities.
