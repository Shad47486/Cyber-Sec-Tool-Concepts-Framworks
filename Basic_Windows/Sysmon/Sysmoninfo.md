# What is Symon?

- Windows system service and device driver that logs and analyzes system activity to the Windows event log.

## To Start Sysmom (Start Powershell/CMD as admin)

- Run command to accept the end-user license agreement, & Pick a config file to use that u specify:
  - Sysmon.exe -accepteula -i ..\Configuration\"Filename"


## Best Practices Uses Sysmon

- Exclude > Include
  - When Creating Rules it is typically best to priortize excluding events rather than including events
  - Prevents you ftrom accidently Missing crusial Events & only Seeing the Events that matter the most
- CLI Gives you Further Granular Controls
  - Can use Either Get-WinEvent or wevutil.exe to access & Filter logs (IF SIEM OR IDS is already there may not be needed)
- Knowing ur environment before implementation
  - Important when implementing any plateform or tool
    - YOU SHOULD HAVE A FIRM UNDERSTANDING OF THE NETWORK OR ENV U ARE WORKING WITHIN TO FULLY UNDERSTAND WHAT IS NORMAL AND WHAT IS SUSPICIOUS IN ORDER TO EFFECTIVELY CRAFT UR RULES