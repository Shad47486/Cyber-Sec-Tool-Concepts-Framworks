# Just a working file area

**[+] THE NARRATOR
J&Y Enterprise is one of the top coffee retails in the world. They are known as tech-coffee shops and serve millions of coffee lover tech geeks and IT specialists every day. 
They are famous for specific coffee recipes for the IT community and unique names for these products. Their top five recipe names are;

WannaWhite, ZeroSleep, MacDown, BerryKeep and CryptoY.

J&Y's latest recipe, "Shot4J", attracted great attention at the global coffee festival. J&Y officials promised that the product will hit the stores in the coming months.
The super-secret of this recipe is hidden in a digital safe. Attackers are after this recipe, and J&Y enterprises are having difficulties protecting their digital assets.
Last week, they received multiple attacks and decided to work with you to help them improve their security level and protect their recipe secrets.  
This is your assistant J.A.V.A. (Just Another Virtual Assistant). She is an AI-driven virtual assistant and will help you notice possible anomalies. Hey, wait, something is happening...

[+] J.A.V.A.

Welcome, sir. I am sorry for the interruption. It is an emergency. Somebody is knocking on the door!

[+] YOU

Knocking on the door? What do you mean by "knocking on the door"?

[+] J.A.V.A.

We have a brute-force attack, sir.

[+] THE NARRATOR

This is not a comic book! Would you mind going and checking what's going on! Please... 

[+] J.A.V.A.

Sir, you need to observe the traffic with Snort and identify the anomaly first. Then you can create a rule to stop the brute-force attack. GOOD LUCK!

Answer the questions below
First of all, start Snort in sniffer mode and try to figure out the attack source, service and port.

Then, write an IPS rule and run Snort in IPS mode to stop the brute-force attack. Once you stop the attack properly, you will have the flag on the desktop!

Here are a few points to remember:

Create the rule and test it with "-A console" mode.
Use "-A full" mode and the default log path to stop the attack.
Write the correct rule and run the Snort in IPS "-A full" mode.
Block the traffic at least for a minute and then the flag file will appear on your desktop.

1. Stop the attack and get the flag (which will appear on your Desktop)
Answer format: ***{********************************}

What is the name of the service under attack?
2. Answer format: ***

What is the used protocol/port in the attack?
3. Answer format: ***/**


IPs: 
10.100.1.242 (attackers?)
& 
10.10.70.65 (host/root)
&
10.10.245.36 (attackers?)
10.10.140.29:22


HTTP traffic:
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /bin/ps command atte)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS ps command attempt";)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS wget command attempt)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS uname -a command att)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /usr/bin/id command )
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS id command attempt";)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS echo command attempt)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS kill command attempt)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS chmod command attemp)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS chgrp command attemp)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS chown command attemp)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS chsh command attempt)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS tftp command attempt)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /usr/bin/gcc command)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS gcc command attempt")
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /usr/bin/cc command )
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS cc command attempt";)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /usr/bin/cpp command)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS cpp command attempt")
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /usr/bin/g++ command)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS g++ command attempt")
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS bin/python access at)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS python access attemp)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS bin/tclsh execution )
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS tclsh execution atte)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS bin/nasm command att)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS nasm command attempt)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /usr/bin/perl execut)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS perl execution attem)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS nt admin addition at)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS traceroute command a)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS ping command attempt)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS netcat command attem)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS nmap command attempt)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS xterm command attemp)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS X application to rem)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS lsof command attempt)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS rm command attempt";)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS mail command attempt)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS mail command attempt)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /bin/ls| command att)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /bin/ls command atte)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /etc/inetd.conf acce)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /etc/motd access"; f)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS /etc/shadow access";)
alert tcp 10.100.1.242 any -> 10.10.70.65 80 (msg:"WEB-ATTACKS conf/httpd.conf atte)
