# Linux comes in many different flavors, called DISTRIBUTIONS:

- Ubuntu, Redhat, ArchLinux, Open SUSE, Linux Mint, CentOS, Debian

## To find OS relase info:

- location = /etc/os-release
  - Command to display: /etc/os-release

## To find user account info (Ubuntu):

- Location of dir: /etc/passwd
  - Command to display: cat /etc/passwd| column -t -s :
    - What does the output of x mean?
      - That the info was stored in the location: etc/shadow

## To find Group information:

- Location of dir: etc/group
  - Command to display: cat /etc/group

## To find Sudoers List information (list of people users who can use elevated privileges or sudo):

- Location of dir: /etc/sudoers
  - Command to display info: sudo cat /etc/sudoers
  
## To find Login information:

- Location of dir: /var/log
  - Includes log files such as wtmp & btmp:
    - btmp file saves info about failed logins
    - wtmp keeps historical data of logins
      - Both files are not regular text files that can be read using cat, less, or vim
        - They are binary files that need to be read using the last utility
- Command to display info: sudo last -f /var/log/wtmp

## To find Authentication logs (every user that authenticates on a linux host is logged in the auth log):

- Location of file: /var/log/auth.log
  - Command to display info: cat /var/log/auth.log
    - Command can be furthered using the tail,head, more, or less commands
      - EX: cat /var/log/auth.log |tail

## Hostname info:

- Location of dir: /etc/hostname
  - Command for info: cat etc/homename
  
## Timezone info:

- Location of dir: etc/timezone
  - Command for info: cat /etc/timezone

## Network Congfiguration:

- Location of dir: /etc/network/interfaces
  - Command for info: cat /etc/network/interfaces

## To find info about the MAC & IP Addresses of the different interfaces:

- Use the ip utility
  - Command: ip address show

## Active Network Connections:

- Knowing the active network connections provides additional context to an investigation
- Can use he netstat utility to find network connections on a Linux Host
  - command for info: netstat -natp
  
## Checking on running processes:

- ps aux

## Looking at the config files for the DNS name assignment:

- Location of dir: /etc/hosts
  - Command to read the host file name: cat /etc/hosts
- Location of dir for info about DNS servers that a linux host talks to for DNS resolution: /etc/resolv.conf
  - Command to read this file: cat /etc/resolv.conf

## Crontabs:

- Location of dir: /etc/crontab
  - This file runs a time interval after which the commad has to run, the username that run the command , & the command itself.
  - Can contain scripts to run, where the script that needs to be run will be placed in the disk, & the command to run will be added to this file.

## Service startup (backgroud services after every sys boot):

- Location of dir: /etc/init.d
  - Command to check content: ls /etc/init.d/

## Commands stored in the .bashrc file (list of actions to be performed)

- Good place to look for persistence
- Can display contents using: cat ~/.bashrc
- System-wide settings are stored in /etc/bash.bashrc & /etc/profile files.  

## Commands that run on a Linux host using sudo are stored in the auth log (should use the 'grep' command to filter search):

- Location of dir: /var/log/auth.log
  - Command to output log info: cat /var/log/auth.log* |grep -i COMMAND|tail

## Command other than the ones run using sudo are stored in the bash history:

- History stored separately for each user
  - AKA you would need to go thru each users file individually
    - Command to use to output info: cat ~/.bash_history

## Files accessed using vim:

- Location of dir: .viminfo (in the home dir)
  - File contains CLI history, search, string history, etc. for opened files
- Command to view info: cat ~/.viminfo


## Log files location:

- /var/log

## Where to find Syslog msgs that are recorded by the host about system activity (Recommended to use tail, head, more, less to filter results):

- Location of dir: var/log/syslog
  - Command to view Syslog: cat /var/log/syslog* | head

## Where to find auth logs info about users and auth-related logs (Recommended to use tail, head, more, less to filter results):

- Location of log file: var/log/auth.log*
  - Command to view auth info: cat /var/log/auth.log* |head

## Third-party log file storage location:

- /var/log/directory