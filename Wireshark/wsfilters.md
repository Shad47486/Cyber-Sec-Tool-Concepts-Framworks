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


## Capture Filtering (Protocol Filtering) (Commands/Operators used in display filter search bar)

- IP Filters (Used with Display Filter Search Bar):
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

- TCP & UDP Filters (Used with Display Filter Search Bar):
  - Helps analysts filter the traffic according to protocol-level info from the packets
    - Transport layer of the OSI model & include info such as:
      - Source & destination ports, sequence number, acknowledgement number, windows size, timestamps, flags, length & protocol errors.
  - Common Filters Include:
    - tcp.port == 80
      - Show all TCP packets with port 80
    - tcp.srcport == 1234
      - Show all TCP packets originating from port 1234
    - tcp.dstport == 80
      - Show all TCP packets sent to port 80
    - udp.port == 53
      - Show all UDP packets with port 53
    - udp.srcport == 1234
      - Show all UDP packets originating from port 1234
    - udp.dstport == 5353
      - Show all UDP packets sent to port 5353

- Application Level Protocol Fiters (HTTP & DNS) (Used with Display Filter Search Bar):
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

- Display Filter Expressions (Used with Display Filter Search Bar):
  - Stores all supported protocol structures to help analysts create display filters
    - Helpful when an analyst cant recall the required filter for a specific protocol or is unsure about the assignable values for a filter
    - Shows info such as:
      - Shows all protocol fields, accepted value types (integer or string) & predefined values (if any)

### Advanced Filtering (Commands/Operators used in display filter search bar)

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
