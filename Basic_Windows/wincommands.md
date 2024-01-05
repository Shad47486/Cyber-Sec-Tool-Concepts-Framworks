# Commands to use in powershell or CMD in Windows OS

## Net Commands

[More Detailed info on net Commands](<https://www.lifewire.com/net-command-2618094>)

- Net Command
  - Manages almost any aspect of a network and its settings, including network shares, network print jobs, and network users.
  - Takes in the following forms
    - net [accounts | computer | config | continue | file | group | help | helpmsg | localgroup | name | pause | print | send | session | share | start | statistics | stop | time | use | user | view]

- List all network devices
  - net share Downloads=Z:\Downloads /GRANT:everyone,FULL

- List all ACTIVE connections
  - netstat -aon