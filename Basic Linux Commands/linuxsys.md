# Linux comes in many different flavors, called DISTRIBUTIONS:
  - Ubuntu, Redhat, ArchLinux, Open SUSE, Linux Mint, CentOS, Debian

To find OS relase info:
  - location = /etc/os-release
    - Command to display: /etc/os-release

To find user account info (Ubuntu):
  - Location of dir: /etc/passwd
    - Command to display: cat /etc/passwd| column -t -s :
      - What does the output of x mean?
        - That the info was stored in the location: etc/shadow

To find Group information: 
  - Location of dir: etc/group
    - Command to display: cat /etc/group

To find Sudoers List information (list of people users who can use elevated privileges or sudo): 
  - Location of dir: /etc/sudoers
    - Command to display info: sudo cat /etc/sudoers
   
To find Login information: 
  - Location of dir: /var/log
    - Includes log files such as wtmp & btmp:
      - btmp file saves info about failed logins
      - wtmp keeps historical data of logins
        - Both files are not regular text files that can be read using cat, less, or vim
          -  They are binary files that need to be read using the last utility
  -  Command to display info: sudo last -f /var/log/wtmp

To find Authentication logs (every user that authenticates on a linux host is logged in the auth log): 
  - Location of file: /var/log/auth.log
    - Command to display info: cat /var/log/auth.log
      - Command can be furthered using the tail,head, more, or less commands
        - EX: cat /var/log/auth.log |tail
       




























      
