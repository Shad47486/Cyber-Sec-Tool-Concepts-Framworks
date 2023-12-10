# List of useful commands to use for linux to mannuver thru linux CMDS

- ls 
  - Look inside a directory to see what files/folders there are

- cd [path] 
  - Move back or foward within box
    - cd .. = moves back

- rm [file]= removes files/folders 
    - rm -r [folder]= recersively deletes items inside a folder 
      - Directories/Folders will not be deleted without the -r parameter

- mv [file] [newfile] OR [file path for moving]
  - rename a file OR MOVE FILE

- touch [file] = 
  - Creates a file

- mkdir [folder]= 
  - Creates a direcotry/folder

- ping [ip/DNS]
  - Pings a ip address/cidr to see if communication to the internet is there

- nano [file]
  - Open doc

- cat [file]
  - Reading files

- grep 
  -  

- egrep
  - searchs a given data set of data and print every line which contains a given pattern. Like "find word" in browser Example: egrep 'word' path

- awk 

- echo [file]

- checksec
  - tells you security information about a file.

- whois 
  - Allows you to query who a domain name is registered to. 
    - Syntax: 
      - whois <domain>

- dig 
  - Allows us to manually query recursive DNS servers of our choice for information about domains: 
  - Syntax: 
    - dig <domain> @<dns-server-ip>

- find
  - Helpful to find a specific file in the linux terminal
