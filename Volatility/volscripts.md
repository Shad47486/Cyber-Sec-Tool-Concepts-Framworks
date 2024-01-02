# Commands/scripts for vol

## Provides info about the host from the mem dump command below

- python3 vol.py -f <file> windows.info
  - windows.info or linux.info

## Basic way to get a listing of processes being used

- python3 vol.py -f <file> windows.pslist

## If process is attempting to hide their processes can change command to

- python3 vol.py -f <file> windows.psscan

## Listing all processes based on their parent process ID

- python3 vol.py -f <file> windows.pstree

## Identifying the network connections present at the time of extraction on the host machine

- python3 vol.py -f <file> windows.netstat
  - Can be unstable

## Listing All DLLs (Dynamic Link Library) associated with processes at the time of extraction

- python3 vol.py -f <file> windows.dlllist

## Identifying injected processes, PID, & Offset address (Hex, ASCII, & Disassembly view)

- python3 vol.py -f <file> windows.malfind

## Compare the mem file against yara rules

- python3 vol.py -f <file> windows.yarascan

## Searching for hooking & output its results

- python3 vol.py -f <file> windows.ssdt

## Searching for malicious driver files (2 methods)

- python3 vol.py -f <file> windows.modules
- python3 vol.py -f <file> windows.driverscan
