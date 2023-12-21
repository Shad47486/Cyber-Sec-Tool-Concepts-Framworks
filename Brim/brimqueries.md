# Different Query Refernces

- Basic Search
  - Can search any string & numeric value.

- Logical operators
  - or, and, not

- Filter Values
  - "field_name" == "value"

- List Specific log file contents
  - _path=="log name"

- Count field values
  - count () by "field"

- Sort findings
  - sort

- Cut specific field from a log file
  - _path=="conn" | cut "field name"

- List unique values
  - uniq

## General Query Scripts

- Communicated Hosts
  - Identifying the list of communicated hosts is the first step of the investigation.
  - Helps analysts to detect possible access violations, exploitation attempts and malware infections.-r 
    - _path=="conn" | cut id.orig_h, id.resp_h | sort | uniq

- Frequently Communicated Hosts:
  - After having the list of communicated hosts, it is important to identify which hosts communicate with each other most freq.
  - Helps analysts to detect possible data exfiltration, exploitation and backdooring activities.
    - _path=="conn" | cut id.orig_h, id.resp_h | sort | uniq -c | sort -r

- Most Active Ports:
  - Attackers use multiple ways of hiding and bypassing methods to avoid detection.
    - However, since the data is evidence, it is impossible to hide the packet traces.
      - Helps analysts to detect silent and well-hidden anomalies by focusing on the data bus and used services.
        - _path=="conn" | cut id.resp_p, service | sort | uniq -c | sort -r count
        - _path=="conn" | cut id.orig_h, id.resp_h, id.resp_p, service | sort id.resp_p | uniq -c | sort -r

- Long Connections:
  - long connections could be the first anomaly indicator.
    - If the client is not designed to serve a continuous service, investigating the connection duration between two IP addresses can reveal possible anomalies like backdoors.
      - _path=="conn" | cut id.orig_h, id.resp_p, id.resp_h, duration | sort -r duration

- Transferred Data:
  - If the client is not designed to serve and receive files and act as a file server, it is important to investigate the total bytes for each connection.
    - Helps analyst distinguish possible data exfiltration or suspicious file actions like malware downloading and spreading.
      - _path=="conn" | put total_bytes := orig_bytes + resp_bytes | sort -r total_bytes | cut uid, id, orig_bytes, resp_bytes, total_bytes

- DNS & HTTP Queries:
  - Abnormal connections can help detect C2 communications and possible compromised/infected hosts.
    - Helps analyst to detect malware C2 channels & support the investigation hypothesis.
      - _path=="dns" | count () by query | sort -r
      - _path=="http" | count () by uri | sort -r

- Suspicious Hostnames:
  - Investigating the DHCP logs provides the hostname and domain information.
    - Helps analysts to detect rogue hosts.
    - _path=="dhcp" | cut host_name, domain

- Suspicious IP addresses:
  - Helps analyst identify suspicious and out of ordinary IP addresses
  - _path=="conn" | put classnet := network_of(id.resp_h) | cut classnet | count() by classnet | sort -r

- Detect Files:
  - Helps analyst to detect the transfer of malware or infected files by correlating the hash values
    - filename!=null

- SMB Activity:
  - Helps analyst to detect possible malicious activities like exploitation, lateral movement and malicious file sharing.
    - _path=="dce_rpc" OR _path=="smb_mapping" OR _path=="smb_files"

- Known Patterns:
  - Alerts are generated against the common attack/threat/malware patterns and known by endpoint security products, firewalls and IDS/IPS solutions
    - This data source highly relies on available signatures, attacks and anomaly patterns. 
      - Investigating available log sources containing alerts is vital for a security analyst.
      - event_type=="alert" or _path=="notice" or _path=="signatures"
