# What is Simple Mail Transfer Protocol (SMTP)?

* SMTP is used to communicate with an MTA server.
  * BC SMTP uses cleartext, where all cmds are sent w/o encryption, we can use a basic Telnet client to connect to an SMTP server and act as an email client (MUA) sending a message.

* SMTP server listens on port 25 by default.
  * To see basic communication with an SMTP server, we used Telnet to connect to it.
  * *How to Use it*
    * Once connected, we issue 'helo hostname' and then start typing our email.
      * After helo, we issue mail from:, rcpt to: to indicate the sender and the recipient.
      * When we send our email message, we issue the command data and type our message.
      * We issue <CR><LF>.<CR><LF> (or Enter . Enter to put it in simpler terms).
        * *The SMTP server now queues the message.*

