# What is Metasploit?

- It is a widely used exploitation framework Can support all phases of a penetration testing engagement, from info gathering to post-exploitation.
- Allow information gathering, scanning, exploitation, exploit development, post-exploitation, and more

## Different Modules

- Auxiliary:
  - Any supporting module, such as scanners, crawlers and fuzzers, can be found here.
  
- Encoders:
  - Allows you to encode the exploit and payload in the hope that a signature-based antivirus solution may miss them.

- Evasion:
  - Opposite of encoders as it will consider direct attempts to evade antivirus software

- Exploits:
  - Neatly organized by target system.

- NOPS:
  - do nothing, literally (No operations)
    - Often used as a buffer to achieve consistent payload sizes. 
      - Represented in the Intel x86 CPU family they are represented with 0x90, following which the CPU will do nothing for one cycle

- Payloads:
  - Codes that will run on the target system.
  - Metasploit offers the ability to send different payloads that can open shells on the target system.
    - 4 different directors under payload: adapters, singles, stagers, stages
      - Adapters = Wraps single payloads to convert them into different formats.
        - EX: A normal single payload can be wrapped inside a PowerShell adapter, which will make a single PowerShell command that will execute the payload.
      - Singles/Inlines = Self-contained payloads that do not need to download an additional component to run.
        - Add user, launch notepad.exe, etc.
      - Stagers
        - Responsible for setting up a connection channel between Metasploit and the target system.
          - Good for working with stage payloads
            - Stagers (Staged Payloads)
              - Will first upload a stager on the target system then download the rest of the payload (stage) Provides some advantages as the initial size of the payload will be relatively small compared to the full payload sent at once.
      - Stages
        - Downloaded by the stager.
          - Will allow you to use larger sized payloads.

- Post:
  - Will be useful on the final stage of the penetration testing process listed above, post-exploitation.
