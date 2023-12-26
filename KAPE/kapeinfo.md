# What is Kroll Artifact Parser and Extractor (KAPE)?

- Parses and extracts Windows forensics artifacts.
  - Tool that can significantly reduce the time needed to respond to an incident by providing forensic artifacts from a live system or a storage device much earlier than the imaging process completes.
    - Primary Purpose (2):
      - Collect files
      - Process the collected files as per the provided options.
        - Uses Targets & Modules to do this (2):
          - Targets to define the forensic artifact that needs to be extracted.
          - Modules are programs that process the collected artifacts and even extracts info from them.
    - Extraction works on like systems, mounted images, or the f-response utility
- kape.exe will startup the CLI version
- gkape.exe will startup the GUI version

## How does KAPE work?

- The collection of files (targets) KAPE adds the files to a queue and copies them in two passes.
  - In the 1st pass, it copies the files that it can
    - Works for files that the OS has not locked
  - Rest of the files are passed to a secondary queue
- Secondary queue is processed using a different technique that uses raw disk reads to bypass the OS locks & copy the files.
  - Copied files are saved with orginal timestamps & metadata & stored in a similar directory structure.
- Once data is collected, KAPE can proicess it using modules:
  - EX: KAPE will collect and copy the Prefetch file to our target destination during the target collection.
    - Running a Prefetch Parser (PECmd) module on this target will extract the prefetch file and save it in a CSV file.

### Target Options

- Targets are the artifacts that need to be collected from a system or image and copied to our provided destination.
  - EX: Windows prefetch folder can be used as a target.
    - Esentially targets copy files from one place to another.
- Last 4 files at the bottom are guides & templates to create targets & Compount Targets of our own

- Targets use the .tkape extension for files
  - This is how a target is defined for KAPE
    - *** .tkape file contain info about the artifact that we want to collect, such as the path, category, & file masks to collect.**

### Modules Options

- Run specific tools against the provided set of files.
  - Goal is not to copy files from one place to another but rather run some command and store the output.
    - Ouput is generally CSV or TXT files.
- Last 4 files at the bottom are guides & templates to create targets & Compount Targets of our own.

- The bin directory contains executables that we want to run on the system but are not natively present on most systems.
  - KAPE will run executables either from the bin directory or the complete path.
    -  Eric Zimmerman's tools are examples of what can be kept in the bin directory (generally not present on windows sys)
