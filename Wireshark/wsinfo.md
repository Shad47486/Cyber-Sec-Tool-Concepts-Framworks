# What is WireShark? (Also contains tip/tricks)

- One of the most potent traffic analyser tools available in the wild.
- Serves multipe purpose such as:
  - Detecting and troubleshooting network problems, such as network load failure points and congestion.
  - Detecting security anomalies, such as rogue hosts, abnormal port usage, and suspicious traffic.
  - Investigating and learning protocol details, such as response codes and payload data.

- You can merge .pcap files & view file details from packets

- Displayed everything in packet portion size

- Based on the 5 layer OSI model.

- You can save previsouly used filters in bookmarks

- You can create profiles for different investigation needs!
  - Edit --> Configuration Profiles
    OR
  - lower right bottom of the status bar --> Profile

***Wireshark Can also help you to create FIREWALL RULES READY TO IMPLEMENT WITH A COUPLE OF CLICKS.***

- To do so go to: "Tools --> Firewall ACL Rules" menu
  - Once you use this feature, it will open a new window and provide a combination of rules (IP, port and MAC address-based) for different purposes.
    - Note that these rules are generated for implementation on an outside firewall interface.
- Currently, Wireshark can create rules for:
  - Netfilter (iptables)
  - Cisco IOS (standard/extended)
  - IP Filter (ipfilter)
  - IPFirewall (ipfw)
  - Packet filter (pf)
  - Windows Firewall (netsh new/old format)

## When loading a .pcap file in wireshark, what are the 3 panes that are shown? What do they do?

- Packet List Pane (Center of the screen where all packes can be seen):
  - mmary of each packet (source and destination addresses, protocol, and packet info).
    - Can click on the list to choose a packet for further investigation. Once you select a packet, the details will appear in the other panels.

- Packet Details Pane (Bottom Left):
  - Detailed protocol breakdown of the selected packet.

- Packet Bytes Pane (Bottom Right):
  - Hex and decoded ASCII representation of the selected packet.
    - Highlights the packet field depending on the clicked section in the details pane.

## What are the 2 color schemas?

- Temp rules that are only available during a program session
- Perm rules that are saved under the preference file (profile) & available For the next progrma session

## Packet Color Meanings

- Blue
  - Information on usual workflow
    - Severity = Chat

- Cyan
  - Notable Events like app error codes
    - Severity = Note

- Yellow
  - Warnings like unusual error codes or problem statments
    - Severity = Warn

- Red
  - Problems like malformed packets
    - Severity = Error

- Black
  - Marked packets from the user

## Packet Filter Toolbar (search bar in the middle)

- Where you can create & apply ur display ffilters
  - Packet filters are defined in lowercase
  - Packet Filters have autocomplete feature to break down protocol details, & each detail is represented by a "dot"
  - Packet filters have 3 color representation
    - Green = valid filter
    - Red = Invalid Filter
    - Yellow = Warning Filter
      - Yello means it works but it is unreliable, & it is suggested to change it with a valid filter.

## 2 Types of Filtering
  
- Capture Filters:
  - Used for capturing only the packets valid for the used filter

- Display Filters:
  - Used for viewing the packets valid for the used filter.

## Simple Navigation/Features

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
