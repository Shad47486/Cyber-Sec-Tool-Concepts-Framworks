## To Start Sysmom (Start Powershell/CMD as admin)
## Run command to accept the end-user license agreement, & Pick a config file to use that u specify: Sysmon.exe -accepteula -i ..\Configuration\"Filename"


## Best Practices Uses Sysmon
    - Exclude > Include 
      - When Creating Rules it is typically best to priortize excluding events rather than including events
      - Prevents you ftrom accidently Missing crusial Events & only Seeing the Events that matter the most
    - CLI Gives you Further Granular Controls
      - Can use Either Get-WinEvent or wevutil.exe to access & Filter logs (IF SIEM OR IDS is already there may not be needed)
    - Knowing ur environment before implementation
      - Important when implementing any plateform or tool
        - YOU SHOULD HAVE A FIRM UNDERSTANDING OF THE NETWORK OR ENV U ARE WORKING WITHIN TO FULLY UNDERSTAND WHAT IS NORMAL AND WHAT IS SUSPICIOUS IN ORDER TO EFFECTIVELY CRAFT UR RULES

## How many event ID 3 events are in C:\Users\THM-Analyst\Desktop\Scenarios\Practice\Filtering.evtx?
# Using a command: 
  $events = Get-WinEvent -Path C:\Users\THM-Analyst\Desktop\Scenarios\Practice\Filtering.evtx” | Where-Object {$_.Id -eq “3”}
# Followed by 
  - $events.Count

# How to Look for UTC time created of the first network event in C:..?
  - using a new vairable $time we can add an existing variable and add onto it
  - $time = $events | Select-Object -Last 1 
  - Call the new variable using
    - $time.Properties[1].Value

# Looking for full registry Keys: (Event ID: 12,13,14)
  - $Registry_Event = Get-WinEvent -Path .\Investigation-1.evtx | Where-Object {(($_.Id -eq "12") -or ($_.Id -eq "13") -or ($_.Id -eq "14")) -and ($_.Properties[4].Value -like "*svchost.exe*")} | Select-Object *
- $Registry_Event.Properties[5]

# Looking for device name when being called 
$Read_Event = Get-WinEvent -Path .\Investigation-1.evtx | Where-Object {($_.Id -eq "9") -and ($_.Properties.Value -like "*svchost.exe*")} | Select-Object *

($Read_Event | Select-Object -First 1).Properties[4].Value