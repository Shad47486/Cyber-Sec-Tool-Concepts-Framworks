# What is the Telnet Protocol?

* The Telnet protocol is an application layer protocol used to connect to a virtual terminal of another computer.
  * Using Telnet, a user can log into another computer and access its terminal (console) to run programs, start batch processes, and perform system administration tasks remotely.
  * Telnet server uses the Telnet protocol to listen for incoming connections on port 23.

* How it works?
  * Telnet protocol is relatively simple.
    * When a user connects, they will be asked for a username and password.
    * Upon correct authentication, the user will access the remote system’s terminal.
    * Unfortunately, all this communication between the Telnet client and the Telnet server is not encrypted, making it an easy target for attackers.

* Challenges to telnet?
  * Although Telnet gave us access to the remote system’s terminal in no time, it is not a reliable protocol for remote administration as all the data are sent in cleartext
    * Making it easy to find the username and password

* Solution?
  * Using Secure Shell Host (SSH)
