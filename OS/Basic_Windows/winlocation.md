# Locations that are good to know about & what these files/folders/registries do

- [Windows Folder/Registrys/Files Location Cheatsheet](./wincheetsheet.pdf)

***IMPORTANT BELOW***

- Hives are located in the C:\Windows\System32\Config directory and are

***IMPORTANT ABOVE***

## Good first step in windows forensics is to make to get System Info such as

- OS Version:
  - Location: SOFTWARE\Microsoft\Windows NT\CurrentVersion

- Control Sets:
  - Contain the machine’s configuration data which is used for controlling system startup.
    - Consists of 2~3 seperate controlsets:
      - ControlSet001
        - Points to the Control Set that the machine booted with
          - Location: SYSTEM\ControlSet001
      - ControlSet002
        - Will be the last known good configuration.
          - Location: SYSTEM\ControlSet002
      - Windows creates a volatile Control Set when the machine is live, called the CurrentControlSet
        - Location: HKLM\SYSTEM\CurrentControlSet
          - Best for getting most accurate sys info.
    - To find out which control set is being used we would look at the following registry value location:
      - SYSTEM\Select\Current
    - For last known good config we would look at the registry location:
      - SYSTEM\Select\LastKnownGood

- Getting Computer Name Location:
  - SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName

- Time Zone Info Location:
  - SYSTEM\CurrentControlSet\Control\TimeZoneInformation

- Network Interfaces and Past Networks:
  - SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces
    - Each Interface is represented with a unique identifier (GUID) subkey, which contains values relating to the interface’s TCP/IP configuration
      - Key will provide us with information like IP addresses, DHCP IP address and Subnet Mask, DNS Servers, and more
        - Location for info on past connected networks on a given machine:
          - SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\Unmanaged
          - SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\Managed
            - These registry keys contain past networks as well as the last time they were connected. The last write time of the registry key points to the last time these networks were connected.

- Autostart Programs (Autoruns):
  - Following registry keys include information about programs or commands that run when a user logs on.
    - Locations:
      - NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Run
      - NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\RunOnce
      - SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce
      - SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run
      - SOFTWARE\Microsoft\Windows\CurrentVersion\Run
  - Following registry key contains information about services:
    - Location: SYSTEM\CurrentControlSet\Services
      - If the start key is set to 0x02, this means that this service will start at boot.

- SAM hive and user information:
  - Contains user account information, login information, and group information.
    - Locations: SAM\Domains\Account\Users
      - Indepth info: includes the relative identifier (RID) of the user, number of times the user logged in, last login time, last failed login, last password change, password expiry, password policy and password hint, and any groups that the user is a part of.

## Next Steps are to look at the usage of files/folders

- Recent Files:
  - Windows maintains a list of recently opened files for each user.
    - Information is stored in the NTUSER hive & can be found:
      - NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs
        - Provide the "Most Recently Used" (MRU) File field when viewing
        - Provides File extension for recently used files

- Office Recent Files:
  - Microsoft Office also maintains a list of recently opened documents.
    - Information is stored in the NTUSER hive (just like recent files) & can be found:
      - NTUSER.DAT\Software\Microsoft\Office\VERSION
        - EX: NTUSER.DAT\Software\Microsoft\Office\15.0\Word
    - Starting from Office 365, MS now ties the location to the user's live ID
      - Location: NTUSER.DAT\Software\Microsoft\Office\VERSION\UserMRU\LiveID_####\FileMRU

- ShellBags:
  - Place where Users can change this layout according to their preferences & are different for each user
    - Typically, the info about the windows 'shell' is stored & can identify the Most Recently Used files and folders
      - Location in the user hives:
        - USRCLASS.DAT\Local Settings\Software\Microsoft\Windows\Shell\Bags
        - USRCLASS.DAT\Local Settings\Software\Microsoft\Windows\Shell\BagMRU
        - NTUSER.DAT\Software\Microsoft\Windows\Shell\BagMRU
        - NTUSER.DAT\Software\Microsoft\Windows\Shell\Bags
      - Doesnt work well with registry explorer so its best to use Eric Zimmerman's tools called the ShellBag Explorer shows us the information in an easy-to-use format

- Windows Explorer Address/Search Bars:
  - Another way to identify a user's recent activity is by looking at the paths typed in the Windows Explorer address bar or searches performed using the following registry keys, respectively.
    - Locations:
      - NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths
      - NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery

## Next Step may be to look at any evidence of execution

- User Assist registry keys allows windows to keeps track of applications launched by the user using Windows Explorer for statistical purposes.
  - Keys contain info about the programs launched, the time of their launch, and the number of times they were executed
    - However, programs that were run using the CLI can't be found in the User Assist keys.
  - User Assist key is present in the NTUSER hive, mapped to each user's GUID.
    - Location: NTUSER.DAT\Software\Microsoft\Windows\Currentversion\Explorer\UserAssist\{GUID}\Count

- ShimCache Hive:
  - Mechanism used to keep track of application compatibility with the OS and tracks all applications launched on the machine.
    - Main purpose in Windows is to ensure backward compatibility of applications
      - Stores file name, file size, and last modified time of the executables.
      - Also called Application Compatibility Cache (AppCompatCache)
    - Location:
      - SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache
        - To read ShimCache data in a human-readable format, we go to another tool from eric zimmerman called "AppCompatCache Parse" using the following command in the app:
          - AppCompatCacheParser.exe --csv "<"path to save "output" -f "<"path to SYSTEM hive for data "parsing" -c "control set to parse"
            - output can be viewed using EZviewer, another one of Eric Zimmerman's tools.

- AmCache Hive (related to ShimCache):
  - Performs a similar function to ShimCache, and stores additional data related to program executions.
    - Data includes execution path, installation, execution and deletion times, and SHA1 hashes of the executed programs
    - Location:
      - C:\Windows\appcompat\Programs\Amcache.hve
    - Information about the last executed programs can be found at the following location in the hive:
      - Amcache.hve\Root\File\{Volume GUID}\

- BAM/DAM:
  - Both of these are a part of the Modern Standby system in Microsoft Windows.
    - Background Activity Monitor (BAM) keeps a tab on the activity of background applications
      - Location: SYSTEM\CurrentControlSet\Services\bam\UserSettings\{SID}
    - Desktop Activity Moderator (DAM) is a part of Microsoft Windows that optimizes the power consumption of the device
      - Location: SYSTEM\CurrentControlSet\Services\dam\UserSettings\{SID}

## Lastly Would be to look at any external Devices/USB devices

- Device identification:
  - Keep track of USB keys plugged into a system
    - Location:
      - SYSTEM\CurrentControlSet\Enum\USBSTOR
      - SYSTEM\CurrentControlSet\Enum\USB
    - Store the vendor id, product id, and version of the USB device plugged in and can be used to identify unique devices

- First/Last Times:
  - Following registry key tracks the first time the device was connected, the last time it was connected and the last time the device was removed from the system.
    - Location: SYSTEM\CurrentControlSet\Enum\USBSTOR\Ven_Prod_Version\USBSerial#\Properties\{83da6326-97a6-4088-9453-a19231573b29}\####
      - ####'s sign from above example ^ can be replaced by the following digits to get the required information:
        - 0064 = First Connection time
        - 0066 = Last Connection time
        - 0067 = Last removal time

- USB device Volume Name:
  - Device name of the connected drive
    - Location: SOFTWARE\Microsoft\Windows Portable Devices\Devices
      - We can compare the GUID we see here in this registry key and compare it with the Disk ID we see on keys mentioned in device identification to correlate the names with unique devices.
