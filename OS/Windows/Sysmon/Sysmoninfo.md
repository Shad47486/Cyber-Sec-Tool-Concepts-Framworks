# What is Symon?

* Windows system service and device driver that logs and analyzes system activity to the Windows event log.

## To Start Sysmom (Start Powershell/CMD as admin)

* Run command to accept the end-user license agreement, & Pick a config file to use that u specify:
  * Sysmon.exe -accepteula -i ..\Configuration\"Filename"

## Best Practices Uses Sysmon

* Exclude > Include
  * When Creating Rules it is typically best to priortize excluding events rather than including events
  * Prevents you from accidently missing crusial events & only seeing the events that matter the most
* CLI Gives you further granular controls
  * Can use either Get-WinEvent or wevutil.exe to access & Filter logs (IF SIEM OR IDS is already there may not be needed)
* Knowing ur environment before implementation
  * Important when implementing any plateform or tool
    * YOU SHOULD HAVE A FIRM UNDERSTANDING OF THE NETWORK OR ENV U ARE WORKING WITHIN TO FULLY UNDERSTAND WHAT IS NORMAL AND WHAT IS SUSPICIOUS IN ORDER TO EFFECTIVELY CRAFT UR RULES

### Sysmon Syntax

* First, the regex will look for the INFORMATION string.
* Followed by an escaped open parenthesis \(.
* Followed by a number 1.
* Followed by an escaped close parenthesis \).
* And then any number of characters .+.
* Until it reaches the Hashes string.

* [Example to check](</OS/Windows/Sysmon/sysmonlog_ex.md>)
  * It describes an event where the user ran a PowerShell script named test.ps1 from his system using the powershell.exe executable initiated by the Explorer process (C:\Windows\explorer.exe)
    * First, the regex will look for the Microsoft-Windows-Sysmon/Operational: string.
    * Followed by any string of any length \S+.
    * Followed by an escaped open parenthesis.
    * Followed by an open parenthesis ( (Remember, this is where the extracted data will start).
    * Then by any digit character of any length \d+.
    * Then a closing parenthesis ) (This is where the extracted data ends).
    * And finally followed by an escaped closing parenthesis \).
      * After all of the above steps, the value of 1 will be extracted and stored in the id field as listed it the order option.
