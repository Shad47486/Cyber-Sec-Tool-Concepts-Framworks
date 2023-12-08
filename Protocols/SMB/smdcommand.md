## SMB Commands

## Syntax: 
smbclient [commands] 
    - Example: 
        smbclient \\\\<target ip>\\backup -U svc-admin


## Parameters/Commands: 
- L 
    - will list shares


# Within smbclient after entering user and pass (if any)
- ls
  - Same as CMD 
- cd 
  - Same as CMD
- get 
  - retrieves a file
- mget 
  - retrieve multiple files
- mput
  - upload multiple files  
- put 
  - upload a file