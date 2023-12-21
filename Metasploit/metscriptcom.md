# Commands/scripts:

To get into CLI: 
"msfconsole"
    - ls ping clear (linux commands that can be used with metspolit)
# Setting Parameters: 
setg
    - You can use the setg command to set values that will be used for all modules.

set
    - set a value using a module and you switch to another module, you will need to set the value again

set rhosts
    - "Remote Host" * IP address of the target system or a network range can be set EX: Supports CIDR range notation (/16, /24, etc.) or A network range (10.10.10.x – 10.10.10.y)

set rport
    - “Remote port” Port on the target system the vulnerable application is running on.

set payload
    - The payload you will use with the exploit.

set lhost
    - The attacking machine (your AttackBox or Kali Linux) IP address.

set lport
    - The port you will use for the reverse shell to connect back to. This is a port on your attacking machine, & you can set it to any port not used by any other app.

set session 
    - Each connection established to the target system using Metasploit will have a session ID. 
    - You will use this with post-exploitation modules that will connect to the target system using an existing connection.

# TO unset parameters: 
"unset"/"unset all"
    - Clear any parameter value using the unset command or clear all set parameters with the unset all command.

# Commmands: 
exploit/run
    - You can use the setg command to set values that will be used for all modules.

session
    - Command can be used from the msfconsole prompt or any context to see the existing sessions.

background
    - You can use the background command to background the session prompt and go back to the msfconsole prompt.

search
    - The output of the search command provides an overview of each returned module. 
    - You can see the type of module (auxiliary, exploit, etc.) and the category of the module (scanner, admin, windows, Unix, etc.).

info
    - Further information about modules or whatever the context is about. 
      - Syntax: info exploit/windows/smb/ms17_010_eternalblue

use
    - how to use things like modules that are selected. 
      - Syntax: use exploit/windows/smb/ms17_010_eternalblue

options/show options
    - Can be used in any context followed by a module type (auxiliary, payload, exploit, etc.) to list available modules.