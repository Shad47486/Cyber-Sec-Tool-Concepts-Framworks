[+] THE NARRATOR




Good Job! Glad to have you in the team!



[+] J.A.V.A.

Congratulations sir. It is inspiring watching you work.



[+] You

Thanks team. J.A.V.A. can you do a quick scan for me? We haven't investigated the outbound traffic yet. 



[+] J.A.V.A.

Yes, sir. Outbound traffic investigation has begun. 



[+] THE NARRATOR

The outbound traffic? Why?



[+] YOU

We have stopped some inbound access attempts, so we didn't let the bad guys get in. How about the bad guys who are already inside? Also, no need to mention the insider risks, huh? The dwell time is still around 1-3 months, and I am quite new here, so it is worth checking the outgoing traffic as well.



[+] J.A.V.A.

Sir, persistent outbound traffic is detected. Possibly a reverse shell...



[+] YOU

You got it!



[+] J.A.V.A.

Sir, you need to observe the traffic with Snort and identify the anomaly first. Then you can create a rule to stop the reverse shell. GOOD LUCK!

Answer the questions below
First of all, start Snort in sniffer mode and try to figure out the attack source, service and port.

Then, write an IPS rule and run Snort in IPS mode to stop the brute-force attack. Once you stop the attack properly, you will have the flag on the desktop!

Here are a few points to remember:

Create the rule and test it with "-A console" mode. 
Use "-A full" mode and the default log path to stop the attack.
Write the correct rule and run the Snort in IPS "-A full" mode.
Block the traffic at least for a minute and then the flag file will appear on your desktop.
Stop the attack and get the flag (which will appear on your Desktop)
Answer format:
***{********************************}

What is the used protocol/port in the attack?
Answer format: ***/****

Which tool is highly associated with this specific port number?
Answer format: **********


Host: 
10.10.251.27: 80

Threats: 
10.100.1.33