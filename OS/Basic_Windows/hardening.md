# How to harden Windows?

## Identity & Access Management (IAM)

* 2 types of windows accounts:
  * Admin
    * Admin account should only be used to carry out tasks like software installation and accessing the registry editor, service panel, etc.
  * Standard
    * Routine functions like access to regular applications, including Microsoft Office, browser, etc., can be allowed to standard accounts.

* Both Can be seen & created in the control panel > User accounts
  * Users can authenticatate themselves using a password OR the new feature called "Windows Hello"
    * Windows Hello allows authenticating someone based on “something you have, something you know or something you are”.
      * Settings > Accounts > Sign-in Options.

* User account Control (UAC):
  * Feature that enforces enhanced access control and ensures that all services and applications execute in non-administrator accounts.
    * Helps mitigate malware's impact and minimises privilege escalation by bypassing UAC.
    * Actions requiring elevated privileges will automatically prompt for admin user account credentials if the logged-in user does not already possess these
    *FOLLOW PRINCIPLE OF LEAST PRIVILEGE*

* Local Policy and Group Policies Editor:
  * Group Policy Editor is a built-in interactive tool by Microsoft that allows to configure and implement local and group policies.
    * Mainly use this feature when part of a network; however, we can also use it for a workstation to limit the execution of vulnerable extensions, set password policies, and other administrative settings.

* Password Policies:
  * Design password policies to maximise our security
    * EX (Security settings > Account Policies > Password policy):
      * Passwords must contain both uppercase and lowercase characters.
      * Check passwords against leaked or already hacked databases or a dictionary of compromised passwords.
      * In case of 6 failed login attempts within 15 minutes, the account will remain locked for at least 1 hour.

* Lockout policy:
  * To protect your system password from being guessed by an attacker, we can set out a lockout policy so the account will automatically lock after certain invalid attempts
    * Local Security Policy > Windows Settings > Account Policies > Account Lockout Policy

## Network Management

* Windows Defender Firewall (WF.msc)
  * Built-in application that protects computers from malicious attacks and blocks unauthorised traffic through inbound and outbound rules or filters.

* Disable unused Networking Devices
  * Network devices like routers, ethernet cards, WiFI adapters etc., enable data sharing between computers.
    * If the device is improperly configured or not being used by the owner, it is recommended to disable the interface so that threat actors cannot access them and use them for data retrieval from the victim's computer.
  * Control panel > System and Security Setting > System > Device Manager

* DISABLE SMB PROTOCOL
  * SMB is a file-sharing protocol exploited by hackers in the wild.
    * The protocol is primarily used for file sharing in a network; therefore, you must disable the protocol if your computer is not part of a network by issuing the following command in PowerShell.

* Protecting Local Domain Name System (DNS)
  * Naming system that translates Fully Qualified Domain Names (FQDN) into IP addresses.
    * If the attacker places himself in the middle, he may intercept and manipulate DNS requests and point them to attacker-controlled systems since DNS replies are neither authenticated nor encrypted.
    * location = C:\Windows\System32\Drivers\etc\hosts
  * The hosts file located in Windows acts like local DNS and is responsible for resolving hostnames to IP addresses.
    * Malicious actors try to edit the file's content to reroute traffic to their command and control server.

* Mitigating Address Resolution Protocol Attack  
  * Address resolution protocol resolves MAC addresses from given IP addresses saved in the workstations ARP cache.
    * The ARP offers no authentication and accepts responses from any user in the network.
      * An attacker can flood target systems with crafted ARP responses, which point to an attacker-controlled machine and put him in the middle of communication between the targeted hosts.
  * IN CMD = arp -a

* Preventing Remote Access to Machine
  * Remote access provides a way to connect to other computers/networks even located at a different geographical location for file sharing and remotely make changes to a workstation.
    * Microsoft has developed a Remote Desktop Protocol (RDP) for connecting with other computers.
      * Hackers have exploited the protocol in the past, like the famous Blue Keep vulnerability, to gain unauthorised access to the target system.
    * To Disable = settings > Remote Desktop

## Application Managment

* Trusted Application Store & SAFE APP INSTALLATION
  * Microsoft Store offers a complete range of applications (games, utilities) and allows downloading non-malicious files through a single click.
    * Malicious actors bind legitimate software with trojans and viruses and upload it on the internet to infect and access the victim's computer.
      * Therefore, downloading applications from the Microsoft Store ensures that the downloaded software is not malicious.
        * In "run" type ms-windows-store:
  * To only allow installation of applications from the MS Store on your computer go to Setting > Select Apps and Features and then select The Microsoft Store only

* Malware Removal through Windows Defender Anti Virus
  * Windows Defender Anti Virus is a complete anti-malware program capable of identifying malicious programs and taking remedial measures like quarantine.
    * The program used to have an entire Graphical User Interface; however, Windows 10 and newer versions manage the same through Windows Security Centre.
      * 4 main functions:
        * Real-time protection - Enables periodic scanning of the computer.
        * Browser integration - Enables safe browsing by scanning all downloaded files, etc.
        * Application Guard - Allows complete web session sandboxing to block malicious websites or sessions to make changes in the computer.
        * Controlled Folder Access - Protect memory areas and folders from unwanted applications.

* Microsoft Office Hardening
  * Microsoft Office Suite is one of the most widely used application suites in all sectors, including financial, telecom, education, etc.
  * Malicious actors abuse its functionality through macros, Flash applets, object linking etc., to achieve Remote Code Execution.

* AppLocker
  * Feature that allows users to block specific executables, scripts, and installers from execution through a set of rules.

* Protecting the Browser through Microsoft Smart Screen
  * Microsoft SmartScreen helps to protect you from phishing/malware sites and software when using Microsoft Edge.
  * It helps to make informed decisions for downloads and lets you browse safely in Microsoft Edge by:
    * Displaying an alert if you are visiting any suspicious web pages.
    * Vetting downloads by checking their hash, signature etc against a malicious software database
    * Protecting against phishing and malicious sites by checking visited websites against a threat intelligence database.
  * To turn on the Smart Screen, go to Settings > Windows Security > App and Browser Control > Reputation-based Protection.
    * Scroll down and turn on the SmartScreen option

## Storage Management

* Data Encryption Through BitLocker
  * Encryption of the computer is one of the most vital things to which we usually pay little attention.
    * The worst nightmare is that someone gets unfettered access to your devices' data.
    * Encryption ensures that you or someone you share the recovery key with can access the stored content.
    * A trusted Platform Module chip TPM is one of the basic requirements to support BitLocker device encryption

* Windows Sandbox
  * Run applications safely, we can use a temporary, isolated, lightweight desktop environment called Windows Sandbox.
  * We can install software inside this safe environment, and this software will not be a part of our host machine, it will remain sandboxed.
  * Once the Windows Sandbox is closed, everything, including files, software, and states will be deleted. We would require Virtualisation enabled on our OS to run this feature.
    * We cannot try this in the attached VM but the steps for enabling the Sandbox feature are as below:
      * Click Start > Search for 'Windows Features' and turn it on > Select Sandbox > Click OK to restart

* Windows Secure Boot
  * ﻿Secure boot – an advanced security standard - checks that your system is running on trusted hardware and firmware before booting, which ensures that your system boots up safely while preventing unauthorised software access from taking control of your PC, like malware.
    * You are already in a secure boot environment if you run a modern PC with Unified Extensible Firmware Interface UEFI (the best replacement for BIOS) or Windows 10.

* Enable File Backups
  * If you somehow lose essential data/files, you can recover the loss by restoring it, if you have a file backup option.
    * Creating file backups is the best option to avoid disasters like malware attacks or hardware failure.
      * You can enable the file backup option through Settings > Update and Security > Backup
**MAKE SURE TO UPDATE WINDOWS**
