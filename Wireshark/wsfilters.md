# Filtering (Menu on the top & Right-Click Menu)

- Apply As Filter (Menu Tab/Right-Click Menu):
  - Enter in ur query
    - EX: 'ip_src == 145.245.160.237'
  - Apply filter after query.

- Prepare as Filter (Menu Tab/Right-Click Menu):
  - Does not apply filter but adds a required query to the pane & WAITS for the execution command (enter)
    - Or another chosen filtering option by using the "&/or" from the right click menu

- Conversation Filter (Menu Tab/Right-Click Menu):
  - Suppose you want to investigate a specific packet number & all linked packets by focusing on IP addresses & port numbers
  - Helps view ONLY the related packet & hide the rest of the packets easily
    - For EX: Suppose you want to investigate a specific packet number & all linked packets by focusing on IP addresses & port numbers

- Colourise Conversation (Menu Tab/Right-Click Menu):
  - To reset go back to view, colurise conversation, then reset colourisation.
    - Works similar to Conversation filter
  - Difference is it HIGHLIGHTS the linked packets W/O applying a display filter & decreaing the # of viewed packets

- Apply as Column (Menu Tab/Right-Click Menu):
  - Adds columns to the packet list pane
    - Helpful to examine the appearance of a specific value/field across the available packets in the capture file.
      - Can be disabled/enalbed by clicking on the top of the packet list pane

- Follow Stream (Menu Tab/Right-Click Menu):
  - Pick the stream you want to follow (TCP, UDP, TLS, HTTP, HTTP/2, QUIC)
    - Following the protocol, streams help analyst recreate the app-level data & understand the event of intrest.
      - It is also possible to view the unencrypted protocol data like usernames, passwords, & other transferred data.
      - After following a stream Wireshark automatically creates & applies the req filter to view the specific stream
        - Can use X button located on the right upper side of the display filter bar to remove the display filter

- If needed, for more info on how these filters are important during analysis, look at wireshark dissection markdown file.
  - [wsdissection.md file](./wsdissection.md)

## Caputre Filter Syntax  (Commands/Operators used in display filter search bar)

- Filters use byte offsets hex values & masks with boolean operators:
  - It is not easy to understand/predict the filter's purpose at first glance:
    - Scope
    - Direction
    - Protocol
      - Sample filter to capture port 80 traffic:
        - tcp port 80
      - More info of Wireshark Syntax here: <https://www.wireshark.org/docs/man-pages/pcap-filter.html>
      - Quick Reference: Capture (Menu Tab) --> Capture Filters

- Display Filter Syntax EX:
  - Sample Filter to capture port 80 traffic:
    - tcp.port == 80
      - More info for different syntax at: <https://www.wireshark.org/docs/dfref/>
    - Using scope, comparison operators, &/or Logical Expressions

- Comparison Operators:
  - Can create display filters by using different comparison operators to find the event of interest.
    - eq (==)
      - Equal to
        - EX: ip.src == 10.10.10.1000
    - ne (!=)
      - Not Equal to
        - EX: ip.src != 10.10.10.100
    - gt (>)
      - greater than
        - EX: ip.ttl > 250
    - lt (<)
      - less than
        - EX: ip.ttl < 10
    - ge (>=)
      - Greater than or equal to
        - EX: ip.ttl >= 0xFA
    - le (<=)
      - Less than or equal to
        - EX: ip.ttl <= 0xA

- Logical Expressions:
  - Wireshark supports boolean syntax & you can create display filters by using logical operators as well.
    - and (&&)
      - Logical AND
        - EX: (ip.src == 10.10.10.100) AND (ip.src == 10.10.10.111)
    - or (||)
      - Logical OR
        - EX: (ip.src == 10.10.10.100) OR (ip.src == 10.10.10.111)
    - not (!)
      - Logical NOT
        - EX: !(ip.src == 10.10.10.222)

### IP Filters Capture Filtering (Used with Display Filter Search Bar)
  
- Help analyst Filter the traffic according to IP lvl info from the packets (NETWORK LAYER or layer 3 of OSI)
  - Gives info such as IP addresses, version, TTL (time to live), type of service, flags, & checksum values.

- Common Filters include:
  - ip
    - Shows all ip packets
  - ip.addr == 10.10.10.111
    - Shows all packets containing IP address 10.10.10.111
  - ip.addr == 10.10.10.0/24
    - Show all packets containing IP addresses from 10.10.10.0/24 subnet.
  - ip.src == 10.10.10.111
    - Show all packets originated from 10.10.10.111
  - ip.dst == 10.10.10.111
    - Show all packets sent to 10.10.10.111
  - ip.addr vs ip.src/ip.dst
    - ip.addr filters the traffic w/o considering the packet direction.
    - The ip.src/ip.dst filters the packet depending on the packet direction.

### TCP & UDP Filters (Used with Display Filter Search Bar)

- Helps analysts filter the traffic according to protocol-level info from the packets
  - Transport layer of the OSI model & include info such as:
    - Source & destination ports, sequence number, acknowledgement number, windows size, timestamps, flags, length & protocol errors.

- Common Filters (TCP):
  - tcp
    - Global search
  - tcp.port == 80
    - Show all TCP packets with port 80
  - tcp.srcport == 1234
    - Show all TCP packets originating from port 1234
  - tcp.dstport == 80
    - Show all TCP packets sent to port 80
  - tcp.flags == 2
    - Shows Only SYN flag
      - tcp.flags.syn == 1
        - SYN flag is set.
  - tcp.flags == 16
    - Shows Only ACK flag.
      - tcp.flags.ack == 1
        - ACK flag is set.
  - tcp.flags == 18
    - Shows Only SYN, ACK flags.
      - (tcp.flags.syn == 1) and (tcp.flags.ack == 1)
        - SYN and ACK are set.
  - tcp.flags == 4
    - Shows Only RST flag.
      - tcp.flags.reset == 1
        - RST flag is set.
  - tcp.flags == 20
    - Shows Only RST, ACK flags.
      - (tcp.flags.reset == 1) and (tcp.flags.ack == 1)
        - RST and ACK are set
  - tcp.flags == 1
    - Shows Only FIN flag
      - tcp.flags.fin == 1
        - FIN flag is set.
  - tcp.flags.syn==1 and tcp.flags.ack==0 and tcp.window_size > 1024
    - Shows # of TCP Connect scan patterns in a capture file.
  - tcp.flags.syn==1 and tcp.flags.ack==0 and tcp.window_size <= 1024
    - Shows # of TCP SYN scan patterns in a capture file

- Common Filters (UDP):
  - udp
    - Global search
  - udp.port == 53
    - Shows all UDP packets with port 53
  - udp.srcport == 1234
    - Shows all UDP packets originating from port 1234
  - udp.dstport == 5353
    - Shows all UDP packets sent to port 5353
  - icmp.type==3 and icmp.code==3
    - Shows # of UDP scan patterns in a capture file.

### Application Level Protocol Fiters (HTTP & DNS) (Used with Display Filter Search Bar)

- Help analysts filter the traffic according to apps protocol level info from the packets
  - Application layer of the OSI model & include info such as:
    - Payload & linked data, depending on the protocol type

- Common Filters Include:
  - http
    - Show all HTTP packets
  - http.response.code == 200
    - Show all packets with HTTP response code "200"
  - http.request.method == "GET"
    - Show all HTTP GET requests
  - http.request.method == "POST"
    - Show all HTTP POST requests
  - dns
    - Show all DNS packets
  - dns.flags.response == 0
    - Show all DNS requests
  - dns.flags.response == 1
    - Show all DNS responses
  - dns.qry.type == 1
    - Show all DNS "A" records

### Address Resolution Protocol (ARP) Filters (Used with Display Filter Search Bar)

- Technology responsible for allowing devices to identify themselves on a network.
  - Helps analyst deal with ARP poisoning/spoofing/MITM attacks

- Common Filter (ARP):
  - arp
    - Global Search
  ***Commands for grabbing Low hanging fruits Below***
  - arp.opcode == 1
    - Opcode 1: ARP requests.
  - arp.opcode == 2
    - Opcode 2: ARP responses.
  - arp.dst.hw_mac==00:00:00:00:00:00
    - Hunt: Arp scanning
  - arp.duplicate-address-detected or arp.duplicate-address-frame
    - Hunt: Possible ARP poisoning detection
  - ((arp) && (arp.opcode == 1)) && (arp.src.hw_mac == target-mac-address)
    - Hunt: Possible ARP flooding from detection
  ***Commands for grabbing Low hanging fruits Above***

### Identifying Hosts: DHCP, NetBIOS and Kerberos (Used with Display Filter Search Bar)

- When investigating a compromise or malware infection activity, a security analyst should know how to identify the hosts on the network apart from IP to MAC address match.
  - Protocols that can be used in Host and User identification:
    - Dynamic Host Configuration Protocol (DHCP) traffic
    - NetBIOS (NBNS) traffic
    - Kerberos traffic
  - Helps Analyst identify the hosts on the network apart from IP to MAC address match.

- Common Filters for DHCP Analysis:
  - dhcp or bootp
    - Global Search
  - dhcp.option.dhcp == 3
    - Packets contain the hostname information
      - "DHCP Request"
    - Grabbing Low Handing Fruits with DHCP Requests
      - dhcp.option.hostname contains "keyword"
        - Option 12: Hostname.
        - Option 50: Requested IP address.
        - Option 51: Requested IP lease time.
        - Option 61: Client's MAC address.
  - dhcp.option.dhcp == 5
    - Packets represent the accepted requests
      - "DHCP ACK"
    - Grabbing Low Handing Fruits with DHCP ACK
      - dhcp.option.domain_name contains "keyword"
        - Option 15: Domain name.
        - Option 51: Assigned IP lease time.
  - dhcp.option.dhcp == 6
    - Packets represent denied requests
      - "DHCP NAK"
    - Grabbing Low Handing Fruits with DHCP ACK
      - Option 56: Message (rejection details/reason).
        - These msgs can be uniq according to the case/situation, it is suggested to read the msg instead of filtering it
          - Analyst could create a more reliable hypothesis/result by understanding the event circumstances.

- Common Filters for NetBIOS (Network Basic Input/Output System or NBNS) Analysis:
  - nbns
    - Global search
  - "NBNS" options for grabbing the low-hanging fruits:
    - nbns.name contains "keyword"
      - Queries: Query details.
        - Query details could contain "name, Time to live (TTL) and IP address details"

- Common Filters for Kerberos Analysis:
  - kerberos
    - Global search.
  - kerberos.CNameString contains "keyword"
    - User account search:
      - CNameString: The username
    - kerberos.CNameString and !(kerberos.CNameString contains "$")
      - Some packets could provide hostname information in this field.
        - To avoid this confusion, filter the "$" value. The values end with "$" are hostnames, and the ones without it are user names.
  - Grabbing the low-hanging fruits:
    - kerberos.pvno == 5
      - Protocol version.
    - kerberos.realm contains ".org"
      - Domain name for the generated ticket.
    - kerberos.SNameString == "krbtg"
      - Service and domain name for the generated ticket.

### Tunneling Traffic: Domain Name System (DNS) and ICMP Filters (Used with Display Filter Search Bar)

- Involves looking into data coming from Traffic tunnelling/Port Fowarding by looking at different protocols such as, ICMP and Domain Name System (DNS):
  - Traffic tunnelling/Port Fowarding Involves transferring the data/resources in a secure method to network segments and zones.
    - This encapsulates the data so its good for enterprise use.
      - HOWEVER, attackers can use tunnelling to bypass security perimeters using the standard and trusted protocols used in everyday traffic like ICMP and Domain Name System (DNS).
        - Help analyst:
          - Investigate the DNS packet lengths and target addresses to spot these anomalies.

- Common Filters for ICMP Analysis Filters:
  - icmp
    - Global Seach
  - "ICMP" options for grabbing the low-hanging fruits:
    - data.len > 64 and icmp
      - Packet length.
      - ICMP destination addresses.
      - Encapsulated protocol signs in ICMP payload.

- Common Filters For Domain Name System (DNS) Analysis Filters:
  - dns
    - Global search
  - "DNS" options for grabbing the low-hanging fruits:
    - dns contains "dnscat"
      - Known patterns like dnscat and dns2tcp.
    - dns.qry.name.len > 15 and !mdns
      - Long DNS addresses with encoded subdomain addresses.
      - !mdns: Disable local link device queries.

### Cleartext Protocol Analysis: FTP (Used with Display Filter Search Bar)

- FTP is designed to transfer files with ease, so it focuses on simplicity rather than security.
  - Helps analyst find issues on an unsecure env such as:
    - MITM attacks
    - Credential stealing and unauthorised access
    - Phishing
    - Malware planting
    - Data exfiltration
  - Instead of just following the stream and reading the cleartext data, analyst should create statistics and key results from the investigation process.

- Common Filters for FTP:
  - ftp
    - Global search
    - FTP options for grabbing the low-hanging fruits:
      - ftp.response.code
        - 200 means command was successsful
          - x1x series: Information request responses.
            - 211: System status.
            - 212: Directory status.
            - 213: File status
          - x2x series: Connection messages.
            - 220: Service ready.
            - 227: Entering passive mode.
            - 228: Long passive mode.
            - 229: Extended passive mode.
          - x3x series: Authentication messages.
            - 230: User login.
            - 231: User logout.
            - 331: Valid username.
            - 430: Invalid username or password
            - 530: No login, invalid password.
        - ftp.response.code == 530
          - Bruteforce signal: List failed login attempts.
  - ftp.request.command
    - EX: ftp.request.command == "USER"
      - USER: Username.
      - PASS: Password.
      - CWD: Current work directory.
      - LIST: List.
  - ftp.request.arg
    - EX: ftp.request.arg == "password"
  - (ftp.response.code == 530) and (ftp.response.arg contains "username")
    - Bruteforce signal: List target username.
  - (ftp.request.command == "PASS" ) and (ftp.request.arg == "password")
    - Password spray signal: List targets for a static password.

### Cleartext Protocol Analysis: HTTP (Used with Display Filter Search Bar)

- Hypertext Transfer Protocol (HTTP) is a cleartext-based, request-response and client-server protocol
  - Following attacks could be detected with the help of HTTP analysis:
    - Phishing pages
    - Web attacks
    - Data exfiltration
    - Command and control traffic (C2)
  - Different analysis of user agents and log4j may be needed

- Common Filters for HTTP:
  - http or http2
  - HTTP2 is a revision of the HTTP protocol for better performance and security.
    - It supports binary data transfer and request&response multiplexing.
  - http.request
    - Request: listing all requests (GET, POST, ETC)
  - http.response.code == xxx
    - 200 OK: Request successful.
    - 301 Moved Permanently: Resource is moved to a new URL/path (permanently).
    - 302 Moved Temporarily: Resource is moved to a new URL/path (temporarily).
    - 400 Bad Request: Server didn't understand the request.
    - 401 Unauthorised: URL needs authorisation (login, etc.).
    - 403 Forbidden: No access to the requested URL.
    - 404 Not Found: Server can't find the requested URL.
    - 405 Method Not Allowed: Used method is not suitable or blocked.
    - 408 Request Timeout:  Request look longer than server wait time.
    - 500 Internal Server Error: Request not completed, unexpected error.
    - 503 Service Unavailable: Request not completed server or service is down.
  - http.user_agent contains "nmap"
    - User agent: Browser and operating system identification to a web server application.
  - http.request.uri contains "admin"
    - Request URI: Points the requested resource from the server.
      - URI: Uniform Resource Identifier
  - http.request.full_uri contains "admin"
    - Full *URI: Complete URI information.
  - http.server contains "apache"
    - Server: Server service name.
  - http.host contains "keyword"
    - Host: Hostname of the server
    - http.host == "keyword"
  - http.connection == "Keep-Alive"
    - Connection: Connection status.
  - data-text-lines contains "keyword"
    - Line-based text data: Cleartext data provided by the server.

- Common Filters for User Agent Analysis:
  - http.user_agent
    - Global Search
  - Must Research outcomes for grabbing the low-hanging fruits:
    - EX: (http.user_agent contains "sqlmap") or (http.user_agent contains "Nmap") or (http.user_agent contains "Wfuzz") or (http.user_agent contains "Nikto")
    - Things To note:
      - Subtle spelling differences. ("Mozilla" is not the same as  "Mozlilla" or "Mozlila")
      - Audit tools info like Nmap, Nikto, Wfuzz and sqlmap in the user agent field.
      - Payload data in the user agent field.

- Common Filters for potential LOG4j:
  - http.request.method == "POST"
    - Attack from log4j typically start with a post
  - (ip contains "jndi") or ( ip contains "Exploit")
    - There are known cleartext patterns: "jndi:ldap" and "Exploit.class".
  - (frame contains "jndi") or ( frame contains "Exploit")
    - There are known cleartext patterns: "jndi:ldap" and "Exploit.class".
  - (http.user_agent contains "$") or (http.user_agent contains "==")

### Encrypted Protocol Analysis: Decrypting HTTPS Analysis (Used with Display Filter Search Bar)

- When investigating web traffic, analysts often run across encrypted traffic.
  - HTTPS uses TLS protocol to encrypt communications, so it is impossible to decrypt the traffic and view the transferred data without having the encryption/decryption key pairs.
  - The packets will appear in different colours as the HTTP traffic is encrypted.
    - Involves TLS handshake
      - You can use the "right-click" menu or "Edit --> Preferences --> Protocols --> TLS" menu to add/remove key log files
    - More info on HTTPS for this look at diesstion markdown file:
      - [HTTPS Analysis](./wsdissection.md)

- Common filters for HTTPS:
  - http.request
    - Request: Listing all requests
  - tls
    - TLS: Global TLS search
      - tls.handshake.type == 1
        - TLS Client Request
      - tls.handshake.type == 2
        - TLS Server response
  - ssdp
    - Local Simple Service Discovery Protocol (SSDP)
      - (http.request or tls.handshake.type == 1) and !(ssdp)
        - Client Hello
      - (http.request or tls.handshake.type == 2) and !(ssdp)
        - Server Hello

#### Display Filter Expressions (Used with Display Filter Search Bar)

- Stores all supported protocol structures to help analysts create display filters
  - Helpful when an analyst cant recall the required filter for a specific protocol or is unsure about the assignable values for a filter
  - Shows info such as:
    - Shows all protocol fields, accepted value types (integer or string) & predefined values (if any)

#### Advanced Filtering (Commands/Operators used in display filter search bar)

- Filter: "contains"
  - Comparison operator that searches a value inside packets.
    - Case-Senstive & provides similar functionality to the "Find" option by focusing on a specific field
      - EX: Finding all Apache Servers\
        - Meaning you have to list all HTTP packets where packets "server" field contains "Apache":
          - http.server contains "Apache"

- Filter: "matches"
  - Comparison operator that search a pattern of regular expressions
  - CASE INSENSTIVE & complex queries have a margin of error
    - EX: Finding all .php & .html
      - Meaning you have to first list all HTTP packets where 'host' fields match keywords ".php" or ".html"
        - http.host matches "\.(php|html)"

- Filter: "in"
  - Set membership that searches a value or field inside of a specific scope/range.
    - EX: find all packets that use ports 80, 443, 8080
      - Meaning you have to list all TCP packets where "port" fields have values 80,443,8080
        - tcp.port in {80 443 8080}

- Filter: "upper"
  - Function that converts a string to uppercase
    - EX: Find all "APACHE" servers.
      - Meaning you have to convert all HTTP packets' "server" fields to uppercase & list packets with the "APACHE" keyword.
        - upper(http.server) contains "APACHE"

- Filter: "lower"
  - Function that converts a string value to lowercase
    - EX: Find all "apache" servers.
      - Meaning you have to Convert all HTTP packets' "server" fields info to lowercase & list packets with the "apache" keyword.
        - lower(http.server) contains "apache"

- Filter: "string"
  - Function that converts a non-string value to a stirng
    - EX: Find all frames with odd numbers.
      - Meaning you have to convert all "frame number" fields to string values, & list frames end with odd values.
        - string(frame.number) matches "[13579]$"
