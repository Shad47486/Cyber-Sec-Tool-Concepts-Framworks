# Shortcuts/steps to help when using Wireshark

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

## Filtering

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

- Apply as Column
  - Can right click or used analyse tab then apply as column feature
    - Adds columns to the packet list pane
      - Helpful to examine the appearance of a specific value/field across the available packets in the capture file.
        - Can be disabled/enalbed by clicking on the top of the packet list pane

- Follow Stream
  - Can use right-click menu or go to analyse tab, then follow, then pick the stream you want to follow (TCP, UDP, TLS, HTTP, HTTP/2, QUIC)
    - Following the protocol, streams help analyst recreate the app-level data & understand the event of intrest.
      - It is also possible to view the unencrypted protocol data like usernames, passwords, & other transferred data.
      - After following a stream Wireshark automatically creates & applies the req filter to view the specific stream 
        - Can use X button located on the right upper side of the display filter bar to remove the display filter 