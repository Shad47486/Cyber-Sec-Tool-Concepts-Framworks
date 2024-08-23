# How does email work?

* Email is one of the most used services on the Internet.
  * There are various configurations for email servers; for instance, you may set up an email system to allow local users to exchange emails with each other with no access to the Internet.
    * H/O, we will consider the more general setup where different email servers connect over the Internet.

* Email delivery over the Internet requires the following components:
  * Mail Submission Agent (MSA)
  * Mail Transfer Agent (MTA)
  * Mail Delivery Agent (MDA)
  * Mail User Agent (MUA)
    * [Visual Representation](</examples/email_visual.png>)
      * The Visual shows the following five steps that an email needs to go through to reach the recipient’s inbox:
        1. A Mail User Agent (MUA), or simply an email client, has an email message to be sent. The MUA connects to a Mail Submission Agent (MSA) to send its message.
        2. The MSA receives the message, checks for any errors before transferring it to the Mail Transfer Agent (MTA) server, commonly hosted on the same server.
        3. The MTA will send the email message to the MTA of the recipient. The MTA can also function as a Mail Submission Agent (MSA).
        4. A typical setup would have the MTA server also functioning as a Mail Delivery Agent (MDA).
        5. The recipient will collect its email from the MDA using their email client.
      * Simple Analogy Version:
        1. You (MUA) want to send postal mail.
        2. The post office employee (MSA) checks the postal mail for any issues before your local post office (MTA) accepts it.
        3. The local post office checks the mail destination and sends it to the post office (MTA) in the correct country.
        4. The post office (MTA) delivers the mail to the recipient mailbox (MDA).
        5. The recipient (MUA) regularly checks the mailbox for new mail. They notice the new mail, and they take it.

* we need to rely on email protocols to talk with an MTA and an MDA. The protocols are:
* Simple Mail Transfer Protocol (SMTP)
  * [More info on SMTP](</Network/Protocols/SMTP/smtp_overview.md>)
* Post Office Protocol version 3 (POP3) or Internet Message Access Protocol (IMAP)
  * [More info on POP3](</Network/Protocols/POP3_IMAP/POP3_overview.md>)
  * [More info on IMAP](</Network/Protocols/POP3_IMAP/POP3_overview.md>)
