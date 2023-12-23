# What to do to make a case?

- Start:
  - Click New case tab
    - Fields to input:
      - Severity:
        - Showcases the level of impact the incident being investigated has on the environment from low to critical levels.
      - Traffic Light Protocol (TLP):
        - Set of designations to ensure that sensitive info is shared with the appropriate audience.
          - The range of colours represents a scale between full disclosure of information (White) and No disclosure/ Restricted (Red).
            - More info about the definitions on the CISA website <https://www.cisa.gov/tlp>.
      - Permissible Actions Protocol (PAP):
        - Used to indicate what an analyst can do with the information, whether an attacker can detect the current analysis state or defensive actions in place.
          - Uses a colour scheme similar to TLP and is part of the MISP taxonomies <https://www.misp-project.org/taxonomies.html#_pap>

- Then:
  - We add the corresponding tactic and technique associated with the case
    - Used from MITRE ATT&CK. <https://attack.mitre.org/tactics/enterprise/>
      - Provides additional information that can be helpful to map out the threat

## Obeservable tab

- Where case observables will be added from the Observable tab
- Details include:
  - Type *:
    - The observable dataType
      - IP address, Hash, Domain
  - Value *:
    - Your observable value
      - 8.8.8.8, 127.0.0.1
  - One observable per line:
    - Create one observable per line inserted in the value field.
  - One single multiline observable:
    - Create one observable, no matter the number of lines
      - Long URLs
  - TLP *:
    - Define here the way the information should be shared.
  - Is IOC:
    - Check if this observable is considered an Indicator of Compromise
      - Emotet IP
  - Has been sighted:
    - Has this observable been sighted on your information system?
  - Ignore for similarity:
    - Do not correlate this observable with other similar observables.
  - Tags **:
    - Insightful information Tags.
      - Malware IP; MITRE Tactics
  - Description **:
    - Description of the observable
