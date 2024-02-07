# Deploying SentinelOne in a Active Directory environment

- REQUIRES A TOKEN FIRST FROM SENTINELONE
  - We can't use the native msi GPO software installation for this one.
  - Add token property with the msiexec command, this way:
    - /i : install
    - /q : Quiet mode, no user interaction
    - /norestart : do not restart after the installation is complete
      - Allows us to write the installation script
    - C:\>msiexec /i "SentinelInstaller_windows.msi" /q /norestart SITE_TOKEN="PUTLONGKEY INHERE"

- Using the batch script in install folder to install sentinelone agent
  - [install](/install/SOinstall.msi)
- From Active Directory save batch script and SentinelOne msi package to C:\Windows\SYSVOL\sysvol\std.local\scripts\SentinelOne
  - Then create GPO objects