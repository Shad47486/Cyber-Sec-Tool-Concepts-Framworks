# What is Kroll Artifact Parser and Extractor (KAPE)?

- Parses and extracts Windows forensics artifacts.
  - Tool that can significantly reduce the time needed to respond to an incident by providing forensic artifacts from a live system or a storage device much earlier than the imaging process completes.
    - Primary Purpose (2):
      - Collect files
      - Process the collected files as per the provided options.
        - Uses Targets & Modules to do this (2):
          - Targets to define the forensic artifact that needs to be extracted.
          - Modules are programs that process the collected artifacts and even extracts info from them.

## How does KAPE work?

- The collection of files (targets) KAPE adds the files to a queue and copies them in two passes.