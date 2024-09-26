# What is Event Tracing for Windows (ETW)?

* Windows OS logging feature that provides a mechanism to trace and log events raised by user-mode applications and kernel-mode drivers.
  * ETW provides the capability for applications and drivers to write events.
  * For cybersecurity defenders, this becomes a vital source of detection information.

* ETW is made up of three distinct parts:
  * Controllers: These applications are used to configure event tracing sessions.
    * They also initiate the providers.
      * EX of a Controller is logman.exe.
    * Providers: These are the applications that produce event logs.
    * Consumers: These applications subscribe and listen to events in real-time or from a file.

## What is Windows Event Viewer?

* Windows systems and applications provide event logs that would be useful for troubleshooting and understanding the activities being performed.
  * These logs include system access notifications, security changes, operating system errors, hardware failures, and driver malfunctions.
  * To find this native app search for “Event Viewer” on the Start menu.

* The event information is categorised under these types of levels:
  * Information: Describes the successful operation of a driver, application or service.
    * Basically, a service is calling home.
  * Warning: Describes an event that may not be a present issue but can cause problems in the future.
  * Error: Describes a significant problem with a service or application.
  * Success Audit: Outlines that an audited security access operation was successful.
    * EX: a user’s successful login to the system.
  * Failure Audit: Outlines that an audited security access operation failed.
    * EX: a failed access to a network drive by a user.

* Windows logs are placed under different categories, with 3 major ones used for system troubleshooting and investigations:
  * Application: Records log events associated with system components such as drivers and interface components that run an app.
  * System: Records events related to programs installed and running on the system.
  * Security: Records events associated with security, such as logon attempts and resource access.




