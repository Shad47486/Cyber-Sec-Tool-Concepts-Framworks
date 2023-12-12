# Snort is open-source, rule-based Network Intrusion Detection and Prevention System (NIDS/NIPS).

Features include: 
Live traffic analysis
Attack and probe detection
Packet logging
Protocol analysis
Real-time alerting
Modules & plugins
Pre-processors
Cross-platform support! (Linux & Windows)

## 3 Main modes: 
Sniffer Mode 
    - Read IP packets and prompt them in the console application.
Packet Logger Mode 
    - Log all IP packets (inbound and outbound) that visit the network.
NIDS (Network Intrusion Detection System)  and NIPS (Network Intrusion Prevention System) Modes 
    - Log/drop the packets that are deemed as malicious according to the user-defined rules.

Syntax:
snort -[command] 
    - May need to use sudo for some commands
      - Reason being could be due to ownership of certain logfiles

## General Commands/parameters:

-V
    - This parameter provides information about your instance version.

-v
    - Verbose
      - Display the TCP/IP output in the console

-c
    - Identifying the configuration file (path can work aswell)

-T
    - Snort's self-test parameter, you can test your setup with this parameter.

-q
    - Quiet mode prevents snort from displaying the default banner and initial information about your setup.

# Different Sniffer mode commands/parameters:
-v
    - Verbose
      - Display the TCP/IP output in the console

-d 
    - Display the packet data (payload)

-e 
    - Display the link-layer (TCP/IP/UDP/ICMP) header

-X 
    - Display the full packet details in HEX

-i 
    - This parameter helps to define a specific network interface to listen/sniff. 
      - Once you have multiple interfaces, you can choose a specific interface to sniff. 

# Packet Logger Mode commands/parameters
-l
    - Logger mode, target log and alert output directory. Default output folder is /var/log/snort
      - The default action is to dump as tcpdump format in /var/log/snort

-K ASCII
    - Log packets in ASCII format.

-r
    - Reading option, read the dumped logs in Snort.

-n
    - Specify the number of packets that will process/read. 
      - Snort will stop after reading the specified number of packets.

## Running Snort in IDS/IPS mode parameter/commands:
  - IDS/IPS mode helps you manage the traffic according to user-defined rules.
    - SNORT will create an "alert" file if the traffic flow triggers an alert.

-c
    - Defining the configuration file.

-T
    - Testing the configuration file.

-N
    - Disable logging.

-D
    - Background mode.

-A 
    - ALERT MODES (5 options);
      - full: 
        - Full alert mode, providing all possible information about the alert. 
          - This one also is the default mode; once you use -A and don't specify any mode, snort uses this mode.
            - No console output for this mode
            -  contain all possible information on the action.
      - fast:
        - Fast mode shows the alert message, timestamp, source and destination IP, along with port numbers.
          -  Contain summary information on the action like direction and alert header.
          - No console output for this mode
      - console: 
        - Provides fast style alerts on the console screen.
          - Basic header & rule info
            - Less performance 
      - cmg: 
        - CMG style, basic header details with payload in hex and text format.
          - Full packet details along with rule info
      - none: 
        - Disabling alerting.
          - No console output for this mode
            - No alert file 
              - SNORT only generates log file.


## Using with PCAP files & SNORT (parameter/commands):

-r / --pcap-single=
    - Read a single pcap

--pcap-list=""
    - Read pcaps provided in command (space separated).

--pcap-show
    - Show pcap name on console during processing.