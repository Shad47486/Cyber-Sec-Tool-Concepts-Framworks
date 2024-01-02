# Directory involves dealing with phishing related problems, tools to use, solutions for the problems, & tips/tricks

- Different Types of malicious emails:
  - Spam:
    - Unsolicited junk emails sent out in bulk to a large number of recipients. The more malicious variant of Spam is known as MalSpam.
  - Phishing:
    - Emails sent to a target(s) purporting to be from a trusted entity to lure individuals into providing sensitive information.
  - Spear phishing:
    - Takes phishing a step further by targeting a specific individual(s) or organization seeking sensitive information.  
  - Whaling:
    - Is similar to spear phishing, but it's targeted specifically to C-Level high-position individuals (CEO, CFO, etc.), and the objective is the same.
  - Smishing:
    - Takes phishing to mobile devices by targeting mobile users with specially crafted text messages.
  - Vishing:
    - Is similar to smishing, but instead of using text messages for the social engineering attack, the attacks are based on voice calls.

- Typical characteristics phishing emails:
  - The sender email name/address will masquerade as a trusted entity (email spoofing)
    - [What Is Email Spoofing?](<https://www.proofpoint.com/us/threat-reference/email-spoofing>)
  - The email subject line and/or body (text) is written with a sense of urgency or uses certain keywords such as Invoice, Suspended, etc.
  - The email body (HTML) is designed to match a trusting entity (such as Amazon)
  - The email body (HTML) is poorly formatted or written (contrary from the previous point)
  - The email body uses generic content, such as Dear Sir/Madam.
  - Hyperlinks (oftentimes uses URL shortening services to hide its true origin)
  - A malicious attachment posing as a legitimate document
    - [Malicious Email Attachments](<https://www.proofpoint.com/us/threat-reference/malicious-email-attachments>)

- Hyperlinks and IP addresses should be 'defanged'.
  - Defanging is a way of making the URL/domain or email address unclickable to avoid accidental clicks, which may result in a serious security breach.
    - Replaces special characters, like "@" in the email or "." in the URL, with different characters
      - EX: <http://www.suspiciousdomain.com>, will be changed to <hxxp[://]www[.]suspiciousdomain[.]com>
        - Can use CyberChef for the defang process

- BEC (Business Email Compromise)
  - When an adversary gains control of an internal employee's account and then uses the compromised email account to convince other internal employees to perform unauthorized or fraudulent actions.

## How are emails deliverd?

- A handful of protocols are involved with the "magic" that takes place when you hit SEND in an email client.
  - 3 specific protocols involved:
    - SMTP (Simple Mail Transfer Protocol) - It is utilized to handle the sending of emails.
    - POP3 (Post Office Protocol) - Is responsible transferring email between a client and a mail server.
      - Emails are downloaded and stored on a single device.
      - Sent messages are stored on the single device from which the email was sent.
      - Emails can only be accessed from the single device the emails were downloaded to.
      - If you want to keep messages on the server, make sure the setting "Keep email on server" is enabled, or all messages are deleted from the server once downloaded to the single device's app or softwa
    - IMAP (Internet Message Access Protocol) - Is responsible transferring email between a client and a mail server
      - Emails are stored on the server and can be downloaded to multiple devices.
      - Sent messages are stored on the server.
      - Messages can be synced and accessed across multiple devices.
  - How it works example:
    - Alexa composes an email to Billy (<billy@johndoe.com>) in her favorite email client. After she's done, she hits the send button.
    - The SMTP server needs to determine where to send Alexa's email. It queries DNS for information associated with johndoe.com.
    - The DNS server obtains the information johndoe.com and sends that information to the SMTP server.
    - The SMTP server sends Alexa's email across the Internet to Billy's mailbox at johndoe.com.
    - In this stage, Alexa's email passes through various SMTP servers and is finally relayed to the destination SMTP server.
    - Alexa's email finally reached the destination SMTP server.
    - Alexa's email is forwarded and is now sitting in the local POP3/IMAP server waiting for Billy.
    - Billy logs into his email client, which queries the local POP3/IMAP server for new emails in his mailbox.
    - Alexa's email is copied (IMAP) or downloaded (POP3) to Billy's email client.

## What is the syntax for the email header/body?

- Internet Message Format (IMF)
  - The email HEADER contains information about the email, such as the email servers that relayed the email
    - From - the sender's email address
    - Subject - the email's subject line
    - Date - the date when the email was sent
    - To - the recipient's email address
      - [How Do I View Email Headers For A Message?](<https://mediatemple.zendesk.com/hc/en-us/articles/204644060-how-do-i-view-email-headers-for-a-message>)
      - [Understanding An Email Header](<https://mediatemple.zendesk.com/hc/en-us/articles/204643950-understanding-an-email-header>)
  - The email BODY contains text and/or HTML formatted text

## What information Should we collect when analyzing sus or malicious emails?

- Email Header info:
  - Sender email address
  - Sender IP address
  - Reverse lookup of the sender IP address
  - Email subject line
  - Recipient email address (this information might be in the CC/BCC field)
  - Reply-to email address (if any)
  - Date/time

- Email Body info:
  - Any URL links
    - If an URL shortener service was used, then we'll need to obtain the real URL link
  - The name of the attachment
  - The hash value of the attachment
    - hash type MD5 or SHA256, preferably the latter

## What tools can we use when analyzing sus or malicious emails?

- Email HeaderTools:
  - [Messageheader](<https://toolbox.googleapps.com/apps/messageheader/analyzeheader>) or [Message Header Analyzer](<https://mha.azurewebsites.net/>)
    - Analyzes SMTP message headers, which help identify the root cause of delivery delays.
      - Copy and paste the entire email header and run the analysis tool.
    - You can detect misconfigured servers and mail-routing problems.
  - [IPinfo.io](<https://ipinfo.io/>)
    - you can pinpoint your users’ locations, customize their experiences, prevent fraud, ensure compliance, and so much more
  - [URLScan.io](<https://urlscan.io/>)
    - Free service to scan and analyse websites.
    - When a URL is submitted to urlscan.io, an automated process will browse to the URL like a regular user and record the activity that this page navigation creates.
      - This includes the domains and IPs contacted, the resources (JavaScript, CSS, etc) requested from those domains, as well as additional info about the page itself.
      - Will take a screenshot of the page, record the DOM content, JavaScript global variables, cookies created by the page, and a myriad of other observations.
        - If the site is targeting the users one of the more than 400 brands tracked by urlscan.io, it will be highlighted as potentially malicious in the scan results.
  - [Talos Reputation Center](<https://talosintelligence.com/reputation>)
    - Overall a good tool to deal with phishing