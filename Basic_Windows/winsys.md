# What is Window Registry?

- Collection of databases that contains the system's configuration data.
  - This configuration data can be about the hardware, the software, or the user's information.
    - Also includes data about the recently used files, programs used, or devices connected to the system.
      - Consists of Keys and Values. 
        - When you open the regedit.exe utility to view the registry, the folders you see are Registry Keys. 
          - Registry Values are the data stored in these Registry Keys. 
            - A Registry Hive is a group of Keys, subkeys, and values stored in a single file on the disk.

## Structure of registry (can be viewed using regedit.exe) in the run prompt

- HKEY_CURRENT_USER (sometimes called HKCU)
  - Contains the root of the configuration information for the user who is currently logged on.
  - The user's folders, screen colors, and Control Panel settings are stored here.
  - Information is associated with the user's profile.

- HKEY_USERS (sometimes called HKU)
  - Contains all the actively loaded user profiles on the computer.
    - HKEY_CURRENT_USER is a subkey of HKEY_USERS

- HKEY_LOCAL_MACHINE (sometimes called HKLM)
  - Contains configuration information particular to the computer (for any user).

- HKEY_CLASSES_ROOT (sometimes called HKCR)
  - Subkey of HKEY_LOCAL_MACHINE\Software
  - Information that is stored here makes sure that the correct program opens when you open a file by using Windows Explorer
  - HKCR key provides a view of the registry that merges the information from these two sources.
    - Provides this merged view for programs that are designed for earlier versions of Windows.
      - To change the settings for the interactive user, changes must be made under HKEY_CURRENT_USER\Software\Classes instead of under HKEY_CLASSES_ROOT.
  - To change the default settings, changes must be made under HKEY_LOCAL_MACHINE\Software\Classes
    - If you write keys to a key under HKEY_CLASSES_ROOT, the system stores the information under HKEY_LOCAL_MACHINE\Software\Classes.
    - If you write values to a key under HKEY_CLASSES_ROOT, and the key already exists under HKEY_CURRENT_USER\Software\Classes, the system will store the information there instead of under HKEY_LOCAL_MACHINE\Software\Classes.

- HKEY_CURRENT_CONFIG
  - Contains information about the hardware profile that is used by the local computer at system startup.

## If you only have access to a disk image, you must know where the registry hives are located on the disk. The majority of these hives are located in the C:\Windows\System32\Config directory and are:

1. DEFAULT (mounted on HKEY_USERS\DEFAULT)
2. SAM (mounted on HKEY_LOCAL_MACHINE\SAM)
3. SECURITY (mounted on HKEY_LOCAL_MACHINE\Security)
4. SOFTWARE (mounted on HKEY_LOCAL_MACHINE\Software)
5. SYSTEM (mounted on HKEY_LOCAL_MACHINE\System)

- Hives containing user information can be found in the User profile directory.
  - For Windows 7 and up, a user’s profile directory is located in C:\Users\<username>\ where the hives are:
    - NTUSER.DAT (mounted on HKEY_CURRENT_USER when a user logs in)
      - Located: C:\Users\<username>\
    - USRCLASS.DAT (mounted on HKEY_CURRENT_USER\Software\CLASSES)
      - Located: C:\Users\<username>\AppData\Local\Microsoft\Windows
        - *** BOTH NTUSER.DAT & USRCLASS.DAT ARE HIDDENT FILES**
  - AmCache hive: 
    - Windows creates this hive to save information on programs that were recently run on the system.
      - Located in C:\Windows\AppCompat\Programs\Amcache.hve

## Transaction Logs and Backups

- Windows often uses transaction logs when writing data to registry hives.
  - Meaning that the transaction logs can often have the latest changes in the registry that haven't made their way to the registry hives themselves
    - Transactrion Log Files Extension = .LOG & will be in the same directory as the hive itself (same name typically too)

- Registry backups are the opposite of Transaction logs
  - Backups of the registry hives located in the C:\Windows\System32\Config directory
  - Hives are copied to the C:\Windows\System32\Config\RegBack directory every ten days.

