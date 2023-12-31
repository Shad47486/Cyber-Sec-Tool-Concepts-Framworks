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
          - Network architecture & inspecting the traffic for a specific time frame can help detect the anomaly.
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
