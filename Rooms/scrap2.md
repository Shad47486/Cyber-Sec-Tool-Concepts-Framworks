An alert triggered: "Anomalous DNS Activity".

The case was assigned to you. Inspect the PCAP and retrieve the artefacts to confirm this alert is a true positive. 

Answer the questions below
Investigate the dns-tunneling.pcap file. Investigate the dns.log file. What is the number of DNS records linked to the IPv6 address?

Answer format: ***
Investigate the conn.log file. What is the longest connection duration?

Answer format: *.******
Investigate the dns.log file. Filter all unique DNS queries. What is the number of unique domain queries?

Answer format: *
There are a massive amount of DNS queries sent to the same domain. This is abnormal. Let's find out which hosts are involved in this activity. Investigate the conn.log file. What is the IP address of the source host?

db.rhodes.edu
