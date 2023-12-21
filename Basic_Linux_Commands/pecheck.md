# This is to understand what pecheck is used for and how it can be helpful:
  - Syntax: pecheck [file]
    -  What does this output?
      - Gives entropy data of .text, .rdata, .data & .rsrc
        - .text: This Section generally contains the CPU instructions executed when the PE file is run. This section is marked as executable.
        - .data: This Section contains the global variables and other global data used by the PE file.
        - .rsrc: This Section contains resources that are used by the PE file, for example, images, icons, etc.
      - Gives hash results such as md5, sha-1, sha-256, sha-512
