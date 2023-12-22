## Navigation

- Going to a specific packet:
  - ctrl+g or in go tab
    - Navigates between packets up and down
      - Also provides in-frame packet tracking and finds the next packet in the particular part of the conversation.

- Finding a sepcific packet by context within packet: 
  - ctrl+f or in edit tab

- Marking a packet:
  - ctrl+m or in edit tab or right clicking the specific packet
    - Good to mark if you find a sus packet that wireshark may not have picked up on
      - Changes packet color to black

- Packet Comments:
  - In edit tab or ctrl+alt+c
    - Helps for long investigations

- Export Packets:
  - In file tab
    - Helps analyst share only SUS packages & not giving redundant info about the processes being taken.

- Export Objects (Files):
  - In file tab
    - Important an analyst discover shared files & saves them for further investigation
      - Works for Protocols steams: DICOM, HTTP, IMF, SMB, TFTP

## Filtering (File/Packet)

- Apply As Filter:
  - Right click on the field you want to filter. go to apply filter, & then go to selceted
    - Enter in ur query
      - EX: 'ip_src == 145.245.160.237'
    - apply filter after query.

- Prepare as Filter
  - Does not apply filter but adds a required query to the pane & WAITS for the execution command (enter) 
    - Or another chosen filtering option by using the "and/or" from the right click menu

- Conversation Filter:
  - Right click on packet or go to analyse to find conversation filter feature
  - Suppose you want to investigate a specific packet number and all linked packets by focusing on IP addresses and port numbers
  - Helps view ONLY the related packet & hide the rest of the packets easily
    - For EX: Suppose you want to investigate a specific packet number and all linked packets by focusing on IP addresses and port numbers

- Colourise Conversation:
  - Can right click or go to view tab and then colourise converstion feature
    - To reset go back to view, colurise conversation, then reset colourisation.
  - Works similar to Conversation filter
    - Difference is it HIGHLIGHTS the linked packets W/O applying a display filter & decreaing the # of viewed packets

- Apply as Column:
  - Can right click or used analyse tab then apply as column feature
    - Adds columns to the packet list pane
      - Helpful to examine the appearance of a specific value/field across the available packets in the capture file.
        - Can be disabled/enalbed by clicking on the top of the packet list pane

- Follow Stream:
  - Can use right-click menu or go to analyse tab, then follow, then pick the stream you want to follow (TCP, UDP, TLS, HTTP, HTTP/2, QUIC)
    - Following the protocol, streams help analyst recreate the app-level data & understand the event of intrest.
      - It is also possible to view the unencrypted protocol data like usernames, passwords, & other transferred data.
      - After following a stream Wireshark automatically creates & applies the req filter to view the specific stream 
        - Can use X button located on the right upper side of the display filter bar to remove the display filter

- IP Filters:
  - Help analyst Filter the traffic according to IP lvl info from the packets (NETWORK LAYER or layer 3 of OSI)
    - Gives info such as IP addresses, version, TTL (time to live), type of service, flags, & checksum values.

- TCP & UDP Filters:

- Application Level Protocol Fiters (HTTP & DNS):

- Display Filter Expressions:

## Caputre Filter Syntax

- Filters use byte offsets hex values and masks with boolean operators:
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
    - le (<=>)
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