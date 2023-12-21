# What is Zeek?

    -  Open-source & commercial passive Network Monitoring tool (traffic analysis framework)
       -  NSM and IDS framework. 
       -  It is heavily focused on network analysis. 
       -  The detection mechanism is focused on events.

## Pros:

- It provides in-depth traffic visibility.
- Useful for threat hunting.
- Ability to detect complex threats.
- It has a scripting language and supports event correlation.
- Easy to read logs.
  - Well structured and tab-seperated ASCII files (requires some effort to read)

## Common Use Cases:

- Network monitoring.
- In-depth traffic investigation.
- Intrusion detecting in chained events.

## Consists of 2 layers:

- Event Engine layer:
  - Where the packets are processed
    - Called the event core and is responsible for describing the event without focusing on event details
      - It is where the packages are divided into parts such as source and destination addresses, protocol identification, session analysis and file extraction.
- Policy Script Interpreter layer:
  - Where the semantic analysis is conducted.
    - It is responsible for describing the event correlations by using Zeek scripts.

## What are the different framworks that Zeek uses?

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

## What is the default log location for stored logs in ZEEK?
/opt/zeek/logs/

## Different Zeek Log Files:

- Network Protocol Logs (Files):
  - conn.log, dce_rpc.log, dhcp.log, dnp3.log, dns.log, ftp.log, http.log, irc.log, kerberos.log, modbus.log, modbus_register_change.log, mysql.log, ntlm.log, ntp.log, radius.log, rdp.log, rfb.log, sip.log, smb_cmd.log, smb_files.log, smb_mapping.log, smtp.log, snmp.log, socks.log, ssh.log, ssl.log, syslog.log, tunnel.log.

- File Analysis Result Logs (Files):
  - files.log, ocsp.log, pe.log, x509.log.

- Network Control & flow Logs (Files):
  - netcontrol.log, netcontrol_drop.log, netcontrol_shunt.log, netcontrol_catch_release.log, openflow.log.

- Detection & Possible Indicator Logs (Files):
  - netcontrol.log, netcontrol_drop.log, netcontrol_shunt.log, netcontrol_catch_release.log, openflow.log.

- Network Flow Logs (Files):
  - known_certs.log, known_hosts.log, known_modbus.log, known_services.log, software.log.

- Additional Log Cover External Alerts, Inputs & Failures (misc.) (Files):
  - barnyard2.log, dpd.log, unified2.log, unknown_protocols.log, weird.log, weird_stats.log.

- Zeek Diagnositc Logs Cover System Msgs, Actions, & Some Statistics (Files)
  - broker.log, capture_loss.log, cluster.log, config.log, loaded_scripts.log, packet_filter.log, print.log, prof.log, reporter.log, stats.log, stderr.log, stdout.log.


## Most Commonly used log and how frequent they are updated:

- known_hosts.log
  - List of hosts that completed TCP handshakes
    - Updated Daily

- known_services.log
  - List of servicces used by host
    - Updated Daily

- known_certs.log
  - List of SSL certifcates
    - Updated Daily

- software.log
  - List of software used on the network
    - Updated Daily

- notice.log
  - Anomalies detected by Zeek
    - Updated PER SESSION

- intel.log
  - Traffic contains malicious patterns/indicators
    - Updated PER SESSION

- signatures.log
  - List of triggered signatures
    - Updated PER SESSION

## How Zeek Signatures are broken up:

- Signatures ID:
  - Consists of Unique Signature Name

- Conditions:
  - Header: filtering the packet headers for specific source & destination addresses, protocol, & port #'s.
  - Content: Filtering the packet payload for specific value/pattern.
  - Whats are Conditions & filters that can be used in the Condtion field?
    - Header:
      - src-ip: Source IP.
      - dst-ip: Destination IP.
      - src-port: Source port.
      - dst-port: Destination port.
      - ip-proto: Target protocol. Supported protocols; TCP, UDP, ICMP, ICMP6, IP, IP6
    - Content:
      - payload: Packet payload.
      - http-request: Decoded HTTP requests.
      - http-request-header: Client-side HTTP headers.
      - http-request-body: Client-side HTTP request bodys.
      - http-reply-header: Server-side HTTP headers.
      - http-reply-body: Server-side HTTP request bodys.
      - ftp: Command line input of FTP session
    - Context:
      - same-ip = Filtering the source & destination addresses for duplication.

    - Action:
      - Event = Signature match msg
    - Comparison Operators:
      - ==, !=, <, <=, >, >=
    - FILTERS accept string, numeric and regex values.

- Actions: 
  - Default Action: Create the "signatures.log" fgile in case of a signature match
  - Additional Action: Trigger a Zeek Script.

## Signature files can consist of multiple signatures:

- Therefore we can have one file for each protocol/situation/threat type

### Zeek Supports Snort rules aswell using a script called snort2bro, which converts snort rules to Zeek (also know as bro) signatures.

## Zeek has its own event-driven scripting language:

- Locations of scripts:
  - Already installed Zeek Scripts are found:
    - "/opt/zeek/share/zeek/base"
      - DO NOT MODIFY
  - User-Generated or modified Scripts
    - "/opt/zeek/share/zeek/site"
  - Policy Scripts
    - "/opt/zeek/share/zeek/policy"
  - To automatically load/use script in sniffing mode (must identify the script in the zeek config files)
    - "/opt/zeek/share/zeek/site/local.zeek"
      - Or can be used for a single run, just like signatures.
    - You can call scripts in live monitoring mode by loading them with the command load @/script/path or load @script-name in local.zeek file.
- Zeek extension = .zeek

## Zeeks different Frameworks:

- You can easily see the usage of framworks in scripts by the script calling a specific framework
  - Typically seen as: load @ $PATH/base/frameworks/framework-nam
- Hashes Framework:
  - Prebuilt function of the file framework and have MD5, SHA1 and SHA256 hashes of the detected files.
    - Source Location: /opt/zeek/share/zeek/policy/frameworks/files/hash-all-files.zeek
           -  Syntax:
              - zeek -C -r case1.pcap /opt/zeek/share/zeek/policy/frameworks/files/hash-all-files.zeek
              OR if already in dir:
              -  zeek -C -r case1.pcap hash-demo.zeek

- Extract Files Framework:
  - File framework can extract the files transferred.
    - Source Location: /opt/zeek/share/zeek/policy/frameworks/files/extract-all-files.zeek
      - Will automatically create a folder/directory called "extract_files"
        - Use "file" command to determine the file type of extracted files
          - EX within extract_files folder/dir:
            - file *| nl

- Intelligence Framework:
  - Can work with data feeds to process & correlate events and identify anomalies
    - Requires a feed to match and create alerts from the network traffic
      - Source Location: /opt/zeek/intel/zeek_intel.txt