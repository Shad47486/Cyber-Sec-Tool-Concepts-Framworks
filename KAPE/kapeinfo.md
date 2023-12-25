# What is Kroll Artifact Parser and Extractor (KAPE)?

- Parses and extracts Windows forensics artifacts.
  - Tool that can significantly reduce the time needed to respond to an incident by providing forensic artifacts from a live system or a storage device much earlier than the imaging process completes.
    - Primary Purpose (2):
      - Collect files
      - Process the collected files as per the provided options.
        - Uses Targets & Modules to do this (2):
          - Targets to define the forensic artifact that needs to be extracted.
          - Modules are programs that process the collected artifacts and even extracts info from them.
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
  - EX: windows prefetch can be used as a target.

### Modules Options