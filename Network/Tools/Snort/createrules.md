# Extra info on website - https://www.snort.org/downloads

## Snort rules structure

- Rules cannot be processed W/O A HEADER
- Rules options are "optional" parts, however, it is almost impossible to detect sophisticated attacked W/O using the rule options
  - IDS mode action is alert
  - IPS mode action is reject
- MUST BE IN THE local.rules FILE TO ADD RULES

## Rules start with the header & ends with a rule option

- Rule header
  - Starts with the action (alert, drop, reject), then the protocol (TCP, UDP, ICMP), Source Ip (any), source port (any), direction (<>), destination IP(any), & destination port (any0)
- Rule Options are:
  - msg: Quick identifier of the rule
  - reference:
  - sid (rule ID):  
  - Rev (revision information):

## RULE SYNTAX/LOCATION

- Syntax:
  - action protocol source(ip & port) direction(<> or ->) destination(ip & port) (msg:"";reference:CVE;sid:#;rev:#;)
    - EX:
      - alert icmp any any <> any any (msg:"ICMP packet found";refernce:CVE-xxxx;sid:100001;rev:1;)
- Once rules are created it should be in ur "local.rules" file
  - Located /etc/snort/rules/local.rules

## Actions (Rule Header-Parameter)

- Several actions for rules:
  - alert:
    - Generate an alert & log the packet
      - For IPS mode
  - log
    - Log the packet
  - drop
    - Block & log the packet
  - reject:
    - Block the packet, log it & terminate the packet session
      - For IPS mode
- MAKE SURE TO TEST ACTIONS BEFORE CREATING RULES FOR LIVE SYSTEMS

## Protocol (Rule Header-Parameter)

- Identifies the type of protocol that filtered for the rule.
  - SNORT ONLY TAKES 4 PROTOCOLS (IP, TCP, UDP, ICMP)
    - However you can look at app flows using port #s & options
      - EX: if you want to detect FTP traffic, you cant use the FTP keyword but can filter TCP traffic on port 21
        - Using port filtering script

## IP & Port #s (Rule Header-Parameter)

- Identify the source & destination IPs/Ports
- List of different commands/scripts:
  - IP filtering
    - alert icmp 192.168.1.56 any <> any any  (msg: "ICMP Packet From "; sid: 100001; rev:1;)
  - Filter an IP range
    - alert icmp 192.168.1.0/24 any <> any any  (msg: "ICMP Packet Found"; sid: 100001; rev:1;)
  - Filter Multiple IP range
    - alert icmp [192.168.1.0/24, 10.1.1.0/24] any <> any any  (msg: "ICMP Packet Found"; sid: 100001; rev:1;)
  - Exclude IP Address/ranges
    - alert icmp !192.168.1.0/24 any <> any any  (msg: "ICMP Packet Found"; sid: 100001; rev:1;)
  - Port Filtering
    - alert tcp any any <> any 21  (msg: "FTP Port 21 Command Activity Detected"; sid: 100001; rev:1;)
  - Excule a specific port
    - alert tcp any any <> any !21  (msg: "Traffic Activity Without FTP Port 21 Command Channel"; sid: 100001; rev:1;)
      - Negation operator is used for excluding specific addresses & ports "!"
        - Creats alert for each ICMP packet not originating from the 192.168.1.0/24 subnet
  - Filter a port range (type-1, type-2, type-3, type-4)
    - Type-1: alert tcp any any <> any 1:1024   (msg: "TCP 1-1024 System Port Activity"; sid: 100001; rev:1;)
      - alerts for each tcp packet sent to prots between 1-1024
    - Type-2: alert tcp any any <> any :1024   (msg: "TCP 0-1024 System Port Activity"; sid: 100001; rev:1;)
      - Alert for each TC papacket sent to prots less than or equal to 1024
    - Type-3: alert tcp any any <> any 1025: (msg: "TCP Non-System Port Activity"; sid: 100001; rev:1;)
      - Alert for each TCP packet sent to source port higher than or equal to 1025
    - Type-4: alert tcp any any <> any [21,23] (msg: "FTP and Telnet Port 21-23 Activity Detected"; sid: 100001; rev:1;)
      - Alert for 21 AND 23 not inbetween

## Direction (Rule Header-Parameter)

- Indicate the traffic flow to be filtered by Snort
  - "->" Source to destination flow (no such thing as <-)
  - "<>" Bidirectional flow
    - Left (<) side shows source
    - right (>) side shows destination

## SNORT Rule OPTIONS (tail)

- 3 Main rule options:
  - General Rule, Payload Rule, Non-Payload Rule

## General rule options is a fundamental rule option for SNORT (paramters)

- Msg
  - basic prompt & quick identifier of the rule
    - When triggered msg field will appear in the console or log
      - EX: ICMP packet found
- Sid (Snort Rule IDs)
  - Pre-defined scope
    - Each sid MUST HAVE proper format
      - 3 different scopes:
        - <100 - Reservered rules
        - 100-999,999 - Rules came with the build
        - >=1,000,000 - Rules created by users
          - SIDS SHOULD NOT OVERLAP (EACH SID IS UNIQUE)
- Refernce:
  - Additional info to explain the purpose of the rule or threat pattern
    - Can be CVE id or external info
      - Quicker info to give to analyst
- Rev
  - Help analyst to have the revision info of each rule
    - Easier to understand for improvements
      - Each rev number is unique
        - No auto-backup feature of the rule history

## Payload rule option is used to help investigate the payload data, which is helpful to detect specific payload patterns (concepts)

- Content ( REALLY IMPORTANT TO FIND CONTENT SPECIFIC FOR UR NEEDS)
  - Make sure it mataches payload data by ASCII, HEX, or both.
    - Can use this multiple times in a single rule
      - More specific pattern match features the longer time to investigate a packet
        - EX: Alert for HTTP packet containing GET for both ASCII & HEX (Case Sensitive)
          - ASCII Mode:
            - alert tcp any any <> any 80  (msg: "GET Request Found"; content:"GET"; sid: 100001; rev:1;)
          - Hex Mode:
            - alert tcp any any <> any 80  (msg: "GET Request Found"; content:"|47 45 54|"; sid: 100001; rev:1;)
- Nocase
  - Disable Case sensitivity (Enhancing Content Searches)
    - EX:
      - alert tcp any any <> any 80  (msg: "GET Request Found"; content:"GET"; nocase; sid: 100001; rev:1;)
- Fast_pattern
  - Prioriotise content search to speed up the payload search options (SNORT uses the biggest content To evaluate against the rules, by default)
    - This pattern selects the initial packet match with the specific value for further investigation
      - IT IS case senstive, can be used once per rule, REQUIRED when using multiple 'content' options
      - EX: Following ules have 2 content options & faster pattern option tells to snort to use the first content option ("GET") for the intial packet match
        - alert tcp any any <> any 80  (msg: "GET Request Found"; content:"GET"; fast_pattern; content:"www";  sid:100001; rev:1;)

## Non-payload detection rule options focus on non-payload data and will help create specific patterns and identify network issues (Concept)

- ID
  - Filtering the IP id field
    - EX:
      - alert tcp any any <> any any (msg: "ID TEST"; id:123456; sid: 100001; rev:1;)
- Flags
  - Filtering based on the TCP flags:
    - F-Fin
    - S-SYN
    - R-RST
    - P-PSH
    - A-ACK
    - U-URG
  - EX:
    - alert tcp any any <> any any (msg: "FLAG TEST"; flags:S;  sid: 100001; rev:1;)
- Dsize
  - Filtering the packet payload size:
    - dsize:min<>max;
    - dsize:>100
    - dsize:<100
    - EX:
      - alert ip any any <> any any (msg: "SEQ TEST"; dsize:100<>300;  sid: 100001; rev:1;)
- Sameip
  - Filtering the source & destination IP for dups:
    - EX:
      - alert ip any any <> any any (msg: "SAME-IP TEST";  sameip; sid: 100001; rev:1;)
