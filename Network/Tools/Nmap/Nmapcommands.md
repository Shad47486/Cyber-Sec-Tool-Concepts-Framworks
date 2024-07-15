# Syntax

- nmap -[Command] [IP address/range/etc]

- Basic string for enumeration of an ip using nmap:
  - nmap -sV -sC -v [ip]

## Command

- sV: Parameter used to determine the version of the service running on port

- sC: Parameter scan with default NSE scripts.
  - Considered useful for discovery and safe

- v: Parameter increase the verbosity level (use -vv or more for greater effect)

- oN: Parameter normal output to the file normal.file

- sL: If you want to check the list of hosts that Nmap will scan
  - EX: nmap -sL -n 10.10.12.13/29

- sn
  - When you are only interested in host discovery without port-scanning
  - Omitting -sn will let Nmap default to port-scanning the live hosts.

- n
  - no DNS lookup

- R
  - reverse-DNS lookup for all hosts

- sn
  - host discovery only
