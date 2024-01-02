# What is Brim?

- Open-source desktop application that processes pcap files and logs files, with a primary focus on providing search and analytics.
  - It uses the Zeek log processing format.
  - Also supports Zeek signatures and Suricata Rules for detection.
- Good for pcap files > 1gb that Wireshark might have trouble dealing with.

## What types of data can Brim take as input?

- Packet Capture Files:
  - Pcap files created with tcpdump, tshark & Wireshark like apps.
- Log File:
  - Structured log Files like Zeek logs.

## Landing page

- Pools:
  - Data resources, investigated pcap and log files.
- Queries:
  - List of available queries.
    - Help us to correlate finding and find the event of the interest
- History:
  - List of launched queries.

### Default Queries

- Activity Overview:
  - General Info of the pcap file
    - Provides info that is valuable for accomplishing further investigation and creating custom queries.

- Windows Networking Activity:
  - Focuses on Windows networking activity and details the source and destination addresses and named pipe, endpoint and operation detection.
    - Helps investigate and understand specific Windows events like SMB enumeration, logins and service exploiting.

- Unique Network Connections and Transferred Data:
  - These 2 queries provide info on unique connections & connection-data correlation.
    - Helps analyst detect weird & malicious connections & sus & beaconing activities.

- DNS & HTTP methods:
  - Queries provide the list of the DNS queries and HTTP methods
    - Helps analysts to detect anomalous DNS & HTTP traffic.

- File Activity:
  - Query provides the list of the available files.
    - Helps analysts to detect possible data leakage attempts and suspicious file activity.
      - Provides info on the detected file MIME and file name and hash values (MD5, SHA1).
  
- IP Subnet Statistics:
  - Query provides the list of the available IP subnets.
    - Helps analysts detect possible communications outside the scope and identify out of ordinary IP addresses.

- Suricata Alerts:
  - Queries provide information based on Suricata rule results
    - Three different queries are available to view the available logs in different formats
      - category-based, source and destination-based, and subnet based
