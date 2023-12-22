# There are multiple Statistics options ready to investigate to help users see the big picture in terms of the scope of the traffic, avaible protocols-specific details like DHCP, DNS, & HTTP/2

## Resolved Addresses

- Statistics (menu tab) --> Resolved Addresses
  - Helps analysts identify IP addresses and DNS names available in the capture file by providing the list of the resolved addresses and their hostnames
    - Hostname info is taken from DNS answer in the capture file
      - Analysts can quickly indentify the accessed resouces by using this menu.

## Protocol Hierarchy

- Statistics (menu tab) --> Protocol Hierarchy
  - This option breaks down all available protocols from the capture file & helps analysts view the protocols in a tree view based on packet counters & %'s.
    - Allows analysts to view the overall usage of the ports & services & focus on the event of intrest.
      - YOU CAN RIGHT-CLICK & FILTER THE EVENTS OF INTREST

## Conversations

- Statistics (menu tab) --> Converstations
  - Converstations = epresents traffic between two specific endpoints.
    - This option will show a list of the conversations in five base formats:
      - Ethernet, IPv4, IPv6, TCP & UDP.
    - This allows analyst to indentify all convsersation & contact endpoints for the event of intrest.

## Endpoints

- Statistics (menu tab) --> Endpoints
  - Option provides unique information for a single information field
    - Ethernet, IPv4, IPv6, TCP and UDP
      - Similar to conversation option but this allows analyst to identify the UNIQUE endpoints in the capture file & use it for the event of intrest.
  - Also supports resolutions for MAC addresses, IP & Port names, & IP geolocation  to human-readable format.
    - For Mac address Resolution:
      - Activate with the Name Resolution Button in the lower left corner of the endpoints window
    - For IP & port name Resolution:
      - Must be enabled since this option is disabled by default:
        - Edit (menu tab) --> Preferences (Edit tab) --> Name Resolution
    - For IP Geolocation Resolution:
      - Must be enabled since this option is disabled since it need SUPPLEMENTARY data like from GeoIP DB files
        - Provide the path of geo file data using these steps:
          - Edit --> Preferences --> Name Resolution --> MaxMind database directories
            - Supports MaxMind DB


## IPv4 & IPv6

- Statistics (menu tab) --> IPv4 Statistics
  - Analysts can identify and list all events linked to specific IP versions in a single window and use it for the event of interest. 

## DNS

- Statistics (menu tab) --> DNS
  - Breaks down all DNS packets from the capture file 
    - Helps analysts view the findings in a tree view based on packet counters & %'s of the DNS protocol
    - Analysts can view the DNS service's overall usage, including rcode, opcode, class, query type, service and query stats and use it for the event of interest

## HTTP

- Statistics (menu tab) --> HTTP 
  - Breaks down all HTTP packets from the capture file 
    - Helps analysts view the findings in a tree view based on packet counters & %'s of the HTTP protocol.
    - Analysts can view the HTTP service's overall usage, including request & codes and the original requests
