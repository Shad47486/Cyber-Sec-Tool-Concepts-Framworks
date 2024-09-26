# TIP for tools

- Recommended practice to image the system or make a copy of the required data and perform forensics on it.
  - Process is called data acquisition.

## What are Data Acquisition Tools that can be used with Windows (Non-Native apps)?

- Some Registry Hives are restricted, like %WINDIR%\System32\Config, meaning to aquire these files we need to use tools like:
- KAPE
  - Live data acquisition and analysis tool which can be used to acquire registry data.
    - Primarily a command-line tool but also comes with a GUI
      - [More info on Kape](/KAPE/kapeinfo.md)
- Autopsy
  - Gives you the option to acquire data from both live systems or from a disk image.
    - After adding your data source, navigate to the location of the files you want to extract, then right-click and select the Extract File(s) option.
- FTK Imager
  - Similar to Autopsy and allows you to extract files from a disk image or a live system by mounting the said disk image or drive in FTK Imager.

## Tools to view extracted files from Data Acquisition Tools?

- Once we have extracted the registry hives, we need a tool to view these files as we would in the registry editor.
- Since the registry editor only works with live systems and can't load exported hives, we can use the following tools:
  - Registry Viewer:
    - Has a similar user interface to the Windows Registry Editor.
      - It only loads one hive at a time, and it can't take the transaction logs into account.
  - Zimmerman's Registry Explorer:
    - handful of tools that are very useful for performing Digital Forensics and Incident Response (DFIR)
  - RegRipper:
    - Utility that takes a registry hive as input and outputs a report that extracts data from some of the forensically important keys and values in that hive.
      - The output report is in a text file and shows all the results in sequential order.
        - Does not take the transaction logs into account
        - Available in both a CLI and GUI
