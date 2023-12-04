# Nmap 
- open-source network scanning tool employed for network discovery and security auditing
## Syntax:

nmap [Command] [IP address/range/etc]

## Parameters/Arguments

-sV: Parameter used to determine the version of the service running on port

-sC: Parameter scan with default NSE scripts. 
        * Considered useful for discovery and safe

-v: Parameter increase the verbosity level (use -vv or more for greater effect)

-oN: Parameter normal output to the file normal.file

Basic string for enumeration of an ip using nmap:
    - nmap -sV -sC -v -oN short [ip]
