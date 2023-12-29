# General Steps That May be Used

1. Check SNORT versions being used & ensure config files are valid
   - Version:
     - snort -v
     - sudo snort -v
   - Testing:
     - sudo snort -c /etc/snort/snort.conf -T

2. May use snort as as a sniffer to using different arguments:
   - [Sniffermode details](./snortscripts.md)
     - Allows you too look for the detected problems

3. Make sure to log the activity to take a peek at the connections being made to different servers etc.
   - [log activity details](./snortscripts.md)
     - Make sure sudo and ownership of CLI is in the perfered state

4. Once IOC are found from the logged activities begin creating rules in the rules folder in snort based on the given problem:
   - [Creating_Snort_rules](./createrules.md)
     - This is the IDS/IPS part of the tool

5. Investigate the pcap files that are created to create anymore rules that might be needed!