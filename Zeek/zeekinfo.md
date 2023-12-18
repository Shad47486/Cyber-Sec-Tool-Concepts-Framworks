# What is Zeek? 
    -  Open-source & commercial passive Network Monitoring tool (traffic analysis framework)
       -  NSM and IDS framework. 
       -  It is heavily focused on network analysis. 
       -  The detection mechanism is focused on events.

# Pros: 
- It provides in-depth traffic visibility.
- Useful for threat hunting.
- Ability to detect complex threats.
- It has a scripting language and supports event correlation. 
- Easy to read logs.

# Common Use Cases: 
- Network monitoring.
- In-depth traffic investigation.
- Intrusion detecting in chained events. 

# Consists of 2 layers: 
- Event Engine layer:
  - Where the packets are processed 
    - Called the event core and is responsible for describing the event without focusing on event details
      - It is where the packages are divided into parts such as source and destination addresses, protocol identification, session analysis and file extraction.
-  Policy Script Interpreter layer: 
   -  Where the semantic analysis is conducted. 
      -  It is responsible for describing the event correlations by using Zeek scripts.

# What are the different framworks that Zeek uses?
- Logging
- Notice 
- Input
- Configuration 
- Intelligence
- Cluster
- Broker Communication
- Supervisor
- GeoLocation 
- File analysis
- Signature 
- Summary 
- NetControl 
- Packet Analysis
- TLS Decryption

What is the default log location for stored logs in ZEEK?
/opt/zeek/logs/

Can start zeek with: 
- zeekctl 
  - This is the ZeekContorl Module 
    - This module requires sudo perms 
- 