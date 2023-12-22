# What is Packet/Protocol Dissection?

- Investigates packet details by decoding available protocols and fields.
  - Wireshark supports a long list of protocols for dissection, and you can also write your dissection scripts
    - Can be found here: <https://github.com/boundary/wireshark/blob/master/doc/README.dissector>

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