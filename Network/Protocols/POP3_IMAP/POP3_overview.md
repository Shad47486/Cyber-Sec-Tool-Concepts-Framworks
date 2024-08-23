# What is Post Office Protocol version 3 (POP3)?

* POP3 is a protocol used to download the email messages from a Mail Delivery Agent (MDA) server.
  * [Visual Here](</examples/email_visual.png>)
    * The mail client connects to the POP3 server, authenticates, downloads the new email messages before (optionally) deleting them.
    * In general, your mail client (MUA) will connect to the POP3 server (MDA), authenticate, and download the messages.
      * Although the communication using the POP3 protocol will be hidden behind a sleek interface.
    * Based on the default settings, the mail client deletes the mail message after it downloads it.
      * The default behaviour can be changed from the mail client settings if you wish to download the emails again from another mail client.

* Typical POP3 Session over telnet client:
  1. The user connects to the POP3 server at the POP3 default port 110.
  2. Authentication is required to access the email messages; the user authenticates by providing his username USER frank and password PASS D2xc9CgD.
  3. Using the command STAT, we get the reply +OK 1 179; based on RFC 1939, a positive response to STAT has the format +OK nn mm
     * nn is the number of email messages in the inbox
     * mm is the size of the inbox in octets (byte).
  4. The command LIST provided a list of new messages on the server, and RETR 1 retrieved the first message in the list.

* Challenges:
  * As the username and password are sent in cleartext, any third party watching the network traffic can steal the login credentials (if using telnet).
  * Accessing the same mail account via multiple clients using POP3 is usually not very convenient as one would lose track of read and unread messages.
  * To keep all mailboxes synchronized, we need to consider other protocols, such as IMAP.
