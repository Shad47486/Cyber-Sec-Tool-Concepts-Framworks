# REMnux: A Linux Toolkit for Malware Analysis

- PDF's are capable of containing many more types of code that can be executed without the user's knowledge. This includes:
  - Javascript
  - Python
  - Executables
  - Powershell Shellcode

- Malware infection via malicious macros (or scripts within Microsoft Office products such as Word and Excel) are some of the most successful attacks to date.
  - Typically associaled with malicious code known as a "dropper attack", where additional malicious programs are downloaded onto the host.

## Analysing Malicious PDF's

- peepdf
  - Command to do precursory analysis of a file to determine the presence of Javascript
    - EX: peepdf example.pdf:
      **simple step to create a script file for extracting with ppepdf:**
      - echo 'extract js > javascript-from-example.pdf' > extracted_javascript.txt
        - Explanation: extract js = extract all javascript & pipe > the contents into "javascript-from-example.pdf
      - We now need to tell peepdf the name of the script (extracted_javascript.txt) and the PDF file that we want to extract from (example.pdf):
        - peepdf -s extracted_javascript.txt example.pdf
      - You will see an output, in this case, a file named "javascript-from-example.pdf"
        - This file now contains our extracted Javascript, we can simply cat this to see the contents.

## Analysing Malicious Microsoft Office Macros

- vmonkey
  - parser engine that is capable of analysing visual basic macros without executing (opening the document).

- EX: vmonkey example.doc
  - Detected potentially malicious visual basic code within a macro.

### Entropy

- File entropy is very indicative of the suspiciousness of a file and is a prominent characteristic that these tools look for within a Portable Executable (PE).
  - At it's very simplest, file entropy is a rating that scores how random the data within a PE file is. 
    - With a scale of 0 to 8. 0 meaning the less "randomness" of the data in the file, where a scoring towards 8 indicates this data is more "random".
      - For example, files that are encrypted will have a very high entropy score. Where files that have large chunks of the same data such as "1's" will have a low entropy score.

- What does this mean?
  - Malware authors use techniques such as encryption or packing (we'll come onto this next) to obfuscate their code and to attempt to bypass anti-virus.
    - Because of this, these files will have high entropy.
**Packing and Unpacking**
- Packer's use an executable as a source and output's it to another executable.
  - This executable will have had some modifications made depending on the packer.
    - For example, the new executable could be compressed and/or obfuscated by using mathematics.
    - Legitimate software developers use packing to reduce the size of their applications and to ultimately protect their work from being stolen.
      - It is, however, a double-edged sword, malware authors reap the benefits of packing to make the reverse engineering and detection of the code hard to impossible.
***Executables***
- Executables have what's called an entry point
  - When launched, this entry point is simply the location of the first pieces of code to be executed within the file.
    - When an executable is packed, it must unpack itself before any code can execute.
      - Because of this, packers change the entry point from the original location to what's called the "Unpacking Stub".
    - The "Unpacking Stub" will begin to unpack the executable into its original state.
      - Once the program is fully unpacked, the entry point will now relocate back to its normal place to begin executing code.
    - It is only at this point can an analyst begin to understand what the executable is doing as it is now in it's true, original form.
**How to know if a Exe is packed?**
- Packed files have a few characteristics that may indicate whether or not they are packed:
  - Packed files will have a high entropy!
  - There are very few "Imports", packed files may only have "GetProcAddress" and "LoadLibrary".
  - Exe may have sections named after certain packers such as UPX.
    - We can verify that this was packed using UPX via tools such as PEID, or by manually comparing the executables sections and filesize differences.
      - Take look at the entry points at (common names for packers is UPX)
