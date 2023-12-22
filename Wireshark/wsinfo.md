# What is WireShark?

- One of the most potent traffic analyser tools available in the wild.
- Serves multipe purpose such as:
  - Detecting and troubleshooting network problems, such as network load failure points and congestion.
  - Detecting security anomalies, such as rogue hosts, abnormal port usage, and suspicious traffic.
  - Investigating and learning protocol details, such as response codes and payload data.

- You can merge .pcap files & view file details from packets

- Displayed everything in packet portion size 

- Based on the 5 layer OSI model.

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

## Color Meanings

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

## 2 Types of Filtering
  
- Capture Filters:
  - Used for capturing only the packets valid for the used filter

- Display Filters:
  - Used for viewing the packets valid for the used filter.