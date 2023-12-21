# Syntax: 
python3 vol.py [parameter/command] [os].[plugin]
    - OS can be mac., windows., linux.

## parameter/command: 
-h 
    - Help 

-f 
    - file path/name
      - Typically using a file named 'vmem' WITH PARANTHESIS

os-plugin:
os.info
    - Image info based on best possible OS profile

os.pslist
    - Basic way of listing processes

os.psscan
    - Technique of listing processes will locate processes by finding data structures that match _EPROCESS
      - IF MALWARE IS ATTEMPTING TO HIDE THEIR PROCESS THAT .pslist cant find

os.pstree
    - List all process based on their parent process ID, using the same method as .pslist
      - Useful for analyst to geta full story during the time of extraction.

os.netstat
    - identify the network connection present at the time of extraction on the host machine

os.dlllist
    - List all DLLS assocated with processes at the time of extraction

os.malfind
    - Identifying injected processes, PID, & Offset address
    - Works by scanning the heap & identifying processes that have the exe bit set RWE or RX &/or no mem mapped file on disk (File-less malware)
    - MZ header is an indicator of a os executable file.

os.yarascan
    - will search for strings, patterns, and compound rules against a rule set. 
    - You can either use a YARA file as an argument or list rules within the command line.

os.ssdt
    - Looks for hooking on SSDT
      - Allows us to see if adversary can hook into this table & modify pointers to point to a location the rootkit controls

os.modules
    - Lists of loaded kernel modules
        - Useful in identifying active malware
        - May miss for malicious file that are idly waiting or hidden
    - Also Works as a way to scan for drivers

os.driverscan
    - Scan for drivers present on the system at the time of extraction 
    - Can help identify driver files in the kernel that the modules plugin might have missed or were hidden? 