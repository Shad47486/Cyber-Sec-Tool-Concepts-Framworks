# Different Phases from Cyber Kill Chain

- Reconnaissance Phase
  - An attempt to discover and collect information about a target
    - Could be knowledge about the system in use, the web application, employees or location, etc.
      - EX:
        - Identifying the ip addresses attempting to perform reconnassance activity on our web servers
          - IF THIS WERE A PROBLEM WE WOULD BE ABLE TO SEE IT ON THE WEB TRAFFIC COMING INTO OUR NETWORK & FROM THERE we can take further action
        - Make sure to validate ur finding (maybe by digging further into the weblogs)

- Exploitation Phase:
  - The attacker needs to exploit the vulnerability to gain access to the system/server.
    - Questions that would be helpful to ask yourself:
      - What IPs from the recon phase were found sending requests to our server
      - What web scanner did they use to attempt the scan?
      - What kind of traffic was being used?
      - Did I look at inbound traffic comming in?
      - Is there a CMS being used that is compromised?
        - Joomla, php, etc
      - Is there any login attempts on any services in the network?
        - Did they use a landing page?

- Installation Phase:
  - Once the attacker has successfully exploited the security of a system, he will try to install a backdoor or an application for persistence or to gain more control of the system.
    - Questions to ask youself:
      - How did you get compromised?
      - Any malicious payloads/programs/apps uploaded to the server from any attacker's IP & installed into the ocmpromised server?
      - What traffic do I need to narrow down to?
      - Any odd files being downloaded?
        - Was anything executed onto the server?
          - Look at event codes 1 (process creation)

- Action on Objectives Phase:
  - What happened from this attack:
    - Deface of a website?
      - What ended up on the website?

- Command and Control Phase
  - How are they communicating with our servers?

- Weaponization Phase

- Delivery Phase