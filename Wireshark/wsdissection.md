# What is Packet/Protocol Dissection?

- Investigates packet details by decoding available protocols and fields.
  - Wireshark supports a long list of protocols for dissection, and you can also write your dissection scripts
    - Can be found here: <https://github.com/boundary/wireshark/blob/master/doc/README.dissector>

- This file will help show important info that might be needed during a dissection of packets

## Packet Details - Different Layers when dissecting packets

- Based on the 5 layer OSI model

- The Frame (Layer-1)
  - Will show what frame/packet, you are looking at & details that are specific to the physical layer of the OSI model.

- Source[MAC] (Layer-2):
  - Shows details of the source/destination MAC addresses
    - Data link layer of the 5-layer OSI model.

- Source[IP] (Layer-3):
  - Shows details about the source & destination IPv4 addresses.
    - Network layer of the 5-layer OSI model.

- Protocol (Layer-4):
  - Shows details of the protocol used (TCP/UDP) & source/destination protocols
    - Transport layer of the 5-layer OSI model.
- Protocol Errors (Extension of the 4th-layer):
  - Shows specific segments from TCP that needed to be reassembled.

- Application Protocol (Layer-5):
  - Shows details specific to the protocol.
    - HTTP, FTP, & SMB
  - Wireshark works of the 5-layer OSI model.
    - Meaning Wireshark does not consider session & presentation layers, although packets may contain info in them.
- Application Data (Extension of the 5th-laye):
  - Can show app-specific data from the app layer.

## TCP/UDP Connect Scans

- Relies on the three-way handshake (needs to finish the handshake process).
  - Usually conducted with nmap -sT command.
  - Used by non-privileged users (only option for a non-root user).
  - Usually has a windows size larger than 1024 bytes as the request expects some data due to the nature of the protocol.

- 2 different Handshake of Open TCP ports:
  - 1st handshake option (FOR OPEN TCP PORT)
  - SYN -->
  - <-- SYN, ACK
  - ACK -->
    - 2nd handshake option (FOR OPEN TCP PORT)
      - SYN -->
      - <-- SYN, ACK
      - ACK -->
      - RST, ACK -->
- Handshake of Closed TCP Port:
  - SYN -->
  - <-- RST, ACK

- TCP SYN scans
  - Doesn't rely on the three-way handshake (no need to finish the handshake process).
  - Usually conducted with nmap -sS command.
    - Used by privileged users.
  - Usually have a size less than or equal to 1024 bytes as the request is not finished and it doesn't expect to receive data.

- UDP Scans
  - Doesn't require a handshake process
  - No prompt for open ports
  - ICMP error message for close ports
  - Usually conducted with nmap -sU command.
  - Open/Closed UDP Port:
    - Open
      - UDP packet -->
    - Closed
      - UDP packet -->
      - ICMP Type 3, Code 3 message. (Destination unreachable, port unreachable)

## Looking for with Address Resolution Protocol (ARP) Poisoning/Spoofing/MAN IN THE MIDDLE (MITIM) atacks

- ARP is technology responsible for allowing devices to identify themselves on a network
  - ARP poisoning/spoofing/MAN IN THE MIDDLE (MITIM) atacks involve network jamming/manipulating by sending malicious ARP packets to the default gateway.
    - EX: Having two different ARP responses (conflict) for a particular IP address
      - However, it only shows the second occurrence of the duplicate value to highlight the conflict
        - Therefore, identifying the malicious packet from the legitimate one is the analyst's challenge!
        **TIPS/QUESTIONS!!**
          - Good to know network architecture & inspecting the traffic for a specific time frame can help detect the anomaly.
          - Is there a flood of ARP requests?
            - what mac address is it comming from?
          - Is there Malicious activity, scan or network problems?
          - Are they attempting to connect from differnt IPs?
            - If so from what IP/IPs?
          ***Ultimate aim is to manipulate the "IP to MAC address table" and sniff the traffic of the target host***

- Performing ARP analysis:
  - Works on the local network
  - Enables the communication between MAC addresses
  - Not a secure protocol
  - Not a routable protocol
  - It doesn't have an authentication function
    - Common patterns are request & response, announcement and gratuitous packets.

## Identifying Hosts/Analaysis: DHCP, NetBIOS and Kerberos

- When investigating a compromise or malware infection activity, a security analyst should know how to identify the hosts on the network apart from IP to MAC address match.
  - One of the best methods is identifying the hosts and users on the network to decide the investigation's starting point and list the hosts and users associated with the malicious traffic/activity.
    - Typically enterprise networks use a predefined pattern to name users and hosts. While this makes knowing and following the inventory easier, it has good and bad sides.
      - Makes it easy to identify a user or host by looking at a name, However, it will be easy to clone that pattern and live in the enterprise network for adversaries.
      - Protocols that can be used in Host and User identification:
        - Dynamic Host Configuration Protocol (DHCP) traffic
        - NetBIOS (NBNS) traffic
        - Kerberos traffic

## ### Tunneling Traffic: Domain Name System (DNS)/ICMP/ Analysis

- Involves looking into data coming from Traffic tunnelling/Port Fowarding by looking at different protocols such as, ICMP and Domain Name System (DNS):
  - Traffic tunnelling/Port Fowarding Involves transferring the data/resources in a secure method to network segments and zones.
    - This encapsulates the data so its good for enterprise use.
      - HOWEVER, attackers can use tunnelling to bypass security perimeters using the standard and trusted protocols used in everyday traffic like ICMP and Domain Name System (DNS).
        - ICMP Analysis:
          - Designed for diagnosing and reporting network communication issues.
          - Highly used in error reporting and testing.
            - As it is a trusted network layer protocol, sometimes it is used for denial of service (DoS) attacks; also, adversaries use it in data exfiltration and C2 tunnelling activities.
          - ICMP tunnelling attacks are anomalies appearing/starting after a malware execution or vulnerability exploitation.
            - As the ICMP packets can transfer an additional data payload, adversaries use this section to exfiltrate data and establish a C2 connection.
              - It could be a TCP, HTTP or SSH data
                - However, Most enterprise networks block custom packets or require administrator privileges to create custom ICMP packets.
                  - A large volume of ICMP traffic or anomalous packet sizes are indicators of ICMP tunnelling
                    - Adversaries could create custom packets that match the regular ICMP packet size (64 bytes), so it is still cumbersome to detect these tunnelling activities.
        - Domain Name System (DNS) Analysis:
          - Designed to translate/convert IP domain addresses to IP addresses (phonebook of the internet).
            - Since its essential for web service it is commonly used and trusted, and therefore often ignored
          - Similar to ICMP tunnels, DNS attacks are anomalies appearing/starting after a malware execution or vulnerability exploitation.
            - Adversary creates (or already has) a domain address and configures it as a C2 channel.
            - The malware or the commands executed after exploitation sends DNS queries to the C2 server.
              - However, these queries are longer than default DNS queries and crafted for subdomain addresses.
              - Unfortunately, these subdomain addresses are not actual addresses; they are encoded commands like: "encoded-commands.maliciousdomain.com"
            - When this query is routed to the C2 server, the server sends the actual malicious commands to the host.
              - Often missed and not detected by network perimeters.

## Cleartext Protocol: FTP & HTTP/User-Agent Analysis

- FTP is designed to transfer files with ease, so it focuses on simplicity rather than security.
  - Helps analyst find issues on an unsecure env such as:
    - MITM attacks
    - Credential stealing and unauthorised access
    - Phishing
    - Malware planting
    - Data exfiltration
  - Instead of just following the stream and reading the cleartext data, analyst should create statistics and key results from the investigation process.

- HTTP is a cleartext-based, request-response and client-server protocol
  - Standard type of network activity to request/serve web pages, and by default, it is not blocked by any network perimeter.
    - As a result of being unencrypted and the backbone of web traffic, HTTP is one of the must-to-know protocols in traffic analysis.
- User Agent Analysis:
  - Must Research for outcomes
    - Different user agent information from the same host in a short time notice.
    - Non-standard and custom user agent info.
    - Subtle spelling differences. ("Mozilla" is not the same as  "Mozlilla" or "Mozlila")
    - Audit tools info like Nmap, Nikto, Wfuzz and sqlmap in the user agent field.
    - Payload data in the user agent field.
      - EX: (http.user_agent contains "sqlmap") or (http.user_agent contains "Nmap") or (http.user_agent contains "Wfuzz") or (http.user_agent contains "Nikto")
  - "user-agent" field is one of the great resources for spotting anomalies in HTTP traffic.
  - Never whitelist a user agent, even if it looks natural.
  - User agent-based anomaly/threat detection/hunting is an additional data source to check and is useful when there is an obvious anomaly
    - If you are unsure about a value, you can conduct a web search to validate your findings with the default and normal user-agent info <https://explore.whatismybrowser.com/useragents/explore/>

## Encrypted Protocol Analysis: Decrypting HTTPS analysis

- This is caused by using the Hypertext Transfer Protocol Secure (HTTPS) protocol for enhanced security against spoofing, sniffing and intercepting attacks
  - HTTPS uses TLS protocol to encrypt communications, so it is impossible to decrypt the traffic and view the transferred data without having the encryption/decryption key pairs.
    - Attackers and malicious websites also use HTTPS so its not completly safe.
  - The packets will appear in different colours as the HTTP traffic is encrypted
    - Protocol and info details (actual URL address and data returned from the server) will not be fully visible.
  - Can take a look at the TLS protocol handshake processes:
    - TLS protocol handshake process/Analysis:
      1. First steps contain "Client Hello" and "Server Hello" messages.
      2. Then Key pairs are automatically created (per session) when a connection is established with an SSL/TLS-enabled webpage
         2. An encryption key log file is a text file that contains unique key pairs to decrypt the encrypted traffic session
         2. Must be using a sutible Browser to save these values as a key log file.
            2. To do so, you will need to set up an environment variable and create the SSLKEYLOGFILE, and the browser will dump the keys to this file as you browse the web
            2. Otherwise, it is not possible to create/generate a suitable key log file to decrypt captured traffic.
               2. You can use the "right-click" menu or "Edit --> Preferences --> Protocols --> TLS" menu to add/remove key log files
      3. Since SSL/TLS key pairs are created per session at the connection time, it is important to dump the keys during the traffic capture.
      4. If traffic details are visible after using the key log file, you may be presented with different data formats:
         1. Frame
         2. Decrypted TLS
         3. Decompressed Header
         4. Reassembled TCP
         5. Reassembled SSL
