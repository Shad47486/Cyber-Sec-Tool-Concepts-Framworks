# How is Logging useful?

- Logs are a record of events within a system.
  - These records provide a detailed account of what a system has been doing, capturing a wide range of events such as user logins, file accesses, system errors, network connections, and changes to data or system configurations.
    - Information is typically stored in a log file
      - Log files contain aggregated entries of what occurred at any given time on a system.

- In the digital world, every interaction with a computer system – from authentication attempts, granting authorisation, accessing a file, and connecting to a network to encountering a system error – will always leave a digital footprint in the form of logs.
  - A single log entry may seem insignificant on its own.
  - But when log data is aggregated, analysed, and cross-referenced with other sources of information, it becomes a potent investigation tool.

## Log entry usually includes the following information

- A timestamp of when an event was logged
- The name of the system or application that generated the log entry
- The type of event that occurred
- Additional details about the event, such as the user who initiated the event or the device's IP address that generated the event

**Logs can answer critical questions about an event, such as:**

- 6 Ws:
  - What happened?
  - When did it happen?
  - Where did it happen?
  - Who is responsible?
  - Were their actions successful?
  - What was the result of their action?

### Log Types

- Specific log types can offer a unique perspective on a system's operation, performance, and security.
  - Most used log types:
    - Application logs, Audit logs, Secuirty logs, System logs, Server logs, Network logs, Database logs, Web Server logs.
  - Understanding the various log types, formats, and standards is critical for practical log analysis.
    - It enables an analyst to effectively parse, interpret, and gain insights from log data, facilitating troubleshooting, performance optimisation, incident response, and threat hunting.

- Application Logs:
  - Messages about specific applications, including status, errors, warnings, etc.

- Audit Logs: Activities related to operational procedures crucial for regulatory compliance.

- Security Logs: Security events such as logins, permissions changes, firewall activity, etc.

- Server Logs
  - Various logs a server generates, including system, event, error, and access logs.

- System Logs
  - Kernel activities, system errors, boot sequences, and hardware status.

- Network Logs
  - Network traffic, connections, and other network-related events.

- Database Logs
  - Activities within a database system, such as queries and updates.

- Web Server Logs
  - Requests processed by a web server, including URLs, response codes, etc.

### Log Formats

- Log format defines the structure and organisation of data within a log file.
  - It specifies how the data is encoded, how each entry is delimited, and what fields are included in each row.
  - These formats can vary widely and may fall into three main categories:
    - Semi-structured, Structured, and Unstructured.

- Semi-structured Logs:
  - These logs may contain structured and unstructured data, with predictable components accommodating free-form text
  - Typical structures can be:
    - Syslog Message Format:
      - A widely adopted logging protocol for system and network logs.
    - Windows Event Log (EVTX) Format
      - Proprietary Microsoft log for Windows systems.

- Structured Logs:
  - Following a strict and standardised format, these logs are conducive to parsing and analysis.
  - Typical structures can be:
    - Field Delimited Formats:
      - Comma-Separated Values (CSV) and Tab-Separated Values (TSV) are formats often used for tabular data.
  - JavaScript Object Notation (JSON)
    - Known for its readability and compatibility with modern programming languages.
  - W3C Extended Log Format (ELF)
    - Defined by the World Wide Web Consortium (W3C), customizable for web server logging.
      - It is typically used by Microsoft Internet Information Services (IIS) Web Server.
  - eXtensible Markup Language (XML)
    - Flexible and customizable for creating standardized logging formats.

- Unstructured Logs:
  - Comprising free-form text, these logs can be rich in context but may pose challenges in systematic parsing.
    - Typical structures can be:
      - NCSA Common Log Format (CLF)
        - A standardized web server log format for client requests. It is typically used by the Apache HTTP Server by default.
      - NCSA Combined Log Format (Combined)
        - An extension of CLF, adding fields like referrer and user agent.
          - typically used by Nginx HTTP Server by default.

#### Logging Standards

- Log standard is a set of guidelines or specifications that define how logs should be generated, transmitted, and stored.
  - Log standards may specify the use of particular log formats, but they also cover other aspects of logging, such as what events should be logged, how logs should be transmitted securely, and how long logs should be retained.

***Logging standards***

- [Common Event Expression (CEE)](<https://cee.mitre.org/>)
  - This standard, developed by MITRE, provides a common structure for log data, making it easier to generate, transmit, store, and analyse logs.

- [OWASP Logging Cheat Sheet](<https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html>)

- [Syslog Protocol](<https://datatracker.ietf.org/doc/html/rfc5424>)

- [NIST Special Publication 800-92](<https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-92.pdf>)

- [Azure Monitor Logs](<https://learn.microsoft.com/en-us/azure/azure-monitor/logs/data-platform-logs>)

- [Google Cloud Logging](<https://cloud.google.com/logging/docs>)

- [Oracle Cloud Infrastructure Logging](<https://docs.oracle.com/en-us/iaas/Content/Logging/Concepts/loggingoverview.htm>)

- [Virginia Tech - Standard for Information Technology Logging](<https://it.vt.edu/content/dam/it_vt_edu/policies/Standard_for_Information_Technology_Logging.pdf>)
