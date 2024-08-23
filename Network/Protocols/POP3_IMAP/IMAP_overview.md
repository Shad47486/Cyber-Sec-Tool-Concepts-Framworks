# What is Internet Message Access Protocol (IMAP)?

* IMAP is more sophisticated than POP3
  * IMAP makes it possible to keep your email synchronized across multiple devices (and mail clients).
    * In other words, if you mark an email message as read when checking your email on your smartphone, the change will be saved on the IMAP server (MDA) and replicated on your laptop when you synchronize your inbox.
      * Default Port is 143

* *Sample IMAP commands Using Telnet with IMAP servers:*
  * We use Telnet to connect to the IMAP server’s default port, and then we authenticate using LOGIN username password
  * IMAP requires each command to be preceded by a random string to be able to track the reply.
  * So we added c1, then c2, and so on.
  * Then we listed our mail folders using LIST "" "*", before checking if we have any new messages in the inbox using EXAMINE INBOX
