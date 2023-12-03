# useful quick scripts: 

## Use smbclient to enumerate a list of file shares:
    - $ smbclient -L ip -U username

##  Protocol Negotiation Failed Troubleshootin:
    - smbclient -L ip -U username -m SMB2
      - or NT1, SMB2, SMB3