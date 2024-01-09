# Create Group Policy Object

- Create a GPO that will execute the installation script when our computers start up.
  - Open Active Directory Users and Computers console by:
    - Serching in run and typing in dsa.msc
  - Move Computers where you want to install SentinelOne to Workstations OU (Organizational Unit):
  - Open Group Policy Manager console by:
    - Searching in run and typing gpmc.msc
    - Create GPO in workstation or groups
      - Right click on object
    - Give a name to the new GPO
    - Edit the GPO
  - Go to Computer Configuration > Policies > Windows Settings > Scripts (Startup/Shutdown). Do a Right click Startup > Properties
    - Click Add… and Browse to the script

- Volia done.
