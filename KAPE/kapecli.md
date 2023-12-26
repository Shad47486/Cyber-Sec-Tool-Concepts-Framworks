# Information Based on KAPE's CLI version

- KAPE is a command-line tool at heart but has the GUI version to make things easier still
  - For a list of all the different switches that can be used with KAPE, open an elevated PowerShell (Run As Administrator), go to the path where the KAPE binary is located, and type kape.exe
    - While collecting Targets, the switches tsource, target and tdest are required
    - Similarly, when processing files using Modules, module and mdest are required switches
      - Other switches are optional as per the requirements of the collection.
        - EX: Collecting data from a target or compound target & process it using !ezparser module

## Batch Mode

- KAPE can be ran in Batch Mode, meaning:
  - We can provide a list of commands for KAPE to run in a file named _kape.cli
    - Then we keep this file in the directory containing the KAPE binary.

## Commands/Parameters/Arugement

- (--target)
  - What the target is and will be used with --tdests:
    - EX: --target KapeTriage

- (--tsource) Works similarily to (--msource)
  - Target Source (tsource) or Module Source (msource)
    - EX: --tsource C:

- (--tdest)
  - Target Destination
    - EX: --tdest C:\Users\thm-4n6\Desktop\target

- (--tflush)
  - Will remove/delete any contents from the target source

- (--module)
  - Modules used for processing/parsing Targets DESTINATION (--tdest)
    - --module !EZParser
      - (ERIC ZIMMERMAN TOOL)


- (--mdest)
  - Module Destination
    - EX:

### Scripts:

- Collect triage data defined in the KapeTriage Target and save it to the provided destination.
  - EX: kape.exe --tsource C: --target KapeTriage --tdest C:\path\for\destination

- Processing Target destination (--tdest) with modules from something like eric zimmermans !EXparser:
  - EX: kape.exe --tsource C: --target KapeTriage --tdest C:\Users\thm-4n6\Desktop\Target --mdest C:\Users\thm-4n6\Desktop\module --module !EZParser

- Running KAPE in BATCH MODE (Written within the _kapecli. file & must be present in the same dir)
  - EX: --tsource C: --target KapeTriage --tdest C:\Users\thm-4n6\Desktop\Target --mdest C:\Users\thm-4n6\Desktop\module --module !EZParse
    - This mode can be used if you need someone to run KAPE for you, you will keep all the commands in a single line, and all you need is for the person to right-click and run kape.exe as administrator.
