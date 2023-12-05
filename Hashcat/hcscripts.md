# Benchmark MD4 hashes
hashcat -b -m 900

# Create a hashcat session to hash Kerberos 5 tickets using wordlist
hashcat -m 13100 -a 0 --session crackin1 hashes.txt wordlist.txt -o output.pot

# Crack MD5 hashes using all char in 7 char passwords
hashcat -m 0 -a 3 -i hashes.txt ?a?a?a?a?a?a?a -o output.pot

# Crack SHA1 by using wordlist with 2 char at the end 
hashcat -m 100 -a 6 hashes.txt wordlist.txt ?a?a -o output.pot

# Crack WinZip hash using mask (Summer2018!)
hashcat -m 13600 -a 3 hashes.txt ?u?l?l?l?l?l?l?d?d?d?d! -o output.pot

# Crack MD5 hashes using dictionnary and rules
hashcat -a 0 -m 0 example0.hash example.dict -r rules/best64.rules

# Crack those hashes! Rubeus AS-REP Roasting uses hashcat mode 18200
hashcat -m 18200 hash.txt Pass.txt
    - Make sure to put 23 before userin the hash.txt file
      - EX: in the hash.txt file it should contain a hash such as: $krb5asrep$Admin2@CONTROLLERlocal:0126977B812E34C4BB44EBFD019034EF$E42F3863992D2E4C67BAF856399E268D7958B8F38EE8C2DE02F14721E11EAFD0725F435CB9BF370ECDA0B9C10D83E8117E23D2ECEE3961367F4713E47D8DE189AF15CDF2CD8A1A26FE8ABCAA6860545536065412F6D11FF26157AC2B9DF8E415333E605657B30AE3C7EE13AAF44BC82A1419FD6F95F2232A46729DDD2BB466FF2564140BD986089A4CC82C2EA5E52D3491ADCDDF0DD4E212D150B9A3383A91DB48FFB32A8479582EDBCEDB006A744D5FAE0C59B3A9059DD91F2175C91D0B2B7FD470EC6839CCAA744CA393634B260045A3782074821F04AE0F244704704CC8ACCFB16C4F9C953F3441D57256A4CF4109E1F4791B
      - so make sure to add the 23 before the user: 
      !!!!!!!$krb5asrep$23$Admin2@CONTROLLER.local:!!!!!!
