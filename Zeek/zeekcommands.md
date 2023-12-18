Starting command: 
- zeekctl 
  - FOR CLI CONTROL interface

- zeek 
  - FOR CLI general commands

# Parameters
-r 
- Read option, read/process a pcap file  

-C
- Ignoring checksum errors

-v 
- Version info

# Can use the "ZeekControl" mode with the following commands as well;
- zeekctl status 
- zeekctl start 
- zeekctl stop

# To use Zeek with pcap files:
zeek -C -r sample.pcap 
    - to view: ls -l

