# Different Phases from Cyber Kill Chain

* Reconnaissance Phase
  * An attempt to discover and collect information about a target
    * Could be knowledge about the system in use, the web application, employees or location, etc.
      * EX:
        * Identifying the ip addresses attempting to perform reconnassance activity on our web servers
          * IF THIS WERE A PROBLEM WE WOULD BE ABLE TO SEE IT ON THE WEB TRAFFIC COMING INTO OUR NETWORK & FROM THERE we can take further action
        * Make sure to validate ur finding (maybe by digging further into the weblogs)

* Exploitation Phase:
  * The attacker needs to exploit the vulnerability to gain access to the system/server.
    * Questions that would be helpful to ask yourself:
      * What IPs from the recon phase were found sending requests to our server
      * What web scanner did they use to attempt the scan?
      * What kind of traffic was being used?
      * Did I look at inbound traffic comming in?
      * Is there a CMS being used that is compromised?
        * Joomla, php, etc
      * Is there any login attempts on any services in the network?
        * Did they use a landing page?

* Installation Phase:
  * Once the attacker has successfully exploited the security of a system, he will try to install a backdoor or an application for persistence or to gain more control of the system.
    * Questions to ask youself:
      * How did you get compromised?
      * Any malicious payloads/programs/apps uploaded to the server from any attacker's IP & installed into the ocmpromised server?
      * What traffic do I need to narrow down to?
      * Any odd files being downloaded?
        * Was anything executed onto the server?
          * Look at event codes 1 (process creation)

* Action on Objectives Phase:
  * What happened from this attack:
    * Deface of a website?
      * What ended up on the website?

* Command and Control Phase:
  * How are they communicating with our servers?

* Weaponization Phase:
  * This is where Adversaries would:
    * Create Malware / Malicious document to gain initial access / evade detection etc.
    * Establish domains similar to the target domain to trick users.
    * Create a Command and Control Server (C2) for the post*exploitation communication/activity etc.
      * Mainly uses OSINT tools such as:
        * [Robtex](<https://www.robtex.com/>):
          * Threat Intel site that provides information about IP addresses, domain names, etc.
        * [Virustotal](<https://www.virustotal.com/gui/home/upload>)
          * OSINT site used to analyze suspicious files, domains, IP, etc.

* Delivery Phase:
  * Attackers create malware and infect devices to gain initial access or evade defenses and find ways to deliver it through different means.
  * Helps to understand more about the attacker and their methodology!
    * How has the info we have obtained up until this point to use OSINT tools to find any malware linked with the advesary:
      * [ThreatMiner](<https://www.threatminer.org/host.php?q=23.22.63.114#gsc.tab=0&gsc.q=23.22.63.114&gsc.page=1>)
        * Threat intelligence portal that provides information on indicators of compromise (IOC) such as domains, IP address, malware samples (MD5, SHA1 and SHA256), SSL certificates, WHOIS information and malicious URLs such as phishing and malware links
      * [Hybrid*Analysis](<https://www.hybrid*analysis.com/>)
        * Free malware analysis service for the community that detects and analyzes unknown threats using a unique Hybrid Analysis technology.
      * [Virustotal](<https://www.virustotal.com/gui/home/upload>)
        * OSINT site used to analyze suspicious files, domains, IP, etc.
