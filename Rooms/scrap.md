
Scan the box: nmap -sV 10.10.56.134

Nmap is a free, open-source and powerful tool used to discover hosts and services on a computer network. In our example, we use Nmap to scan this machine to identify all services running on a particular port. Nmap has many capabilities; a table summarises some of its functionality below.

Nmap flag	Description
-sV	Attempts to determine the version of the services running
-p <x> or -p-	Port scan for port <x> or scan all ports
-Pn	Disable host discovery and scan for open ports
-A	Enables OS and version detection, executes in-build scripts for further enumeration 
-sC	Scan with the default Nmap scripts
-v	Verbose mode
-sU	UDP port scan
-sS	TCP SYN port scan
There are many Nmap "cheatsheets" online that you can use too.

No answer needed
Scan the box; how many ports are open?
Answer format: *

What version of the squid proxy is running on the machine?
Answer format: *.*.**

How many ports will Nmap scan if the flag -p-400 was used?
Answer format: ***

What is the most likely operating system this machine is running?
Answer format: ******

What port is the web server running on?
Answer format: ****

What is the flag for enabling verbose mode using Nmap?
Answer format: **
