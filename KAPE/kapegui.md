# Information Based on KAPE's GUI version

- Typically used with the gkape.exe for GUI versions

- To collect 'Targets' We will go ahead by enabling the Use Target Options checkbox.
- If we want to perform forensics on the same machine on which KAPE is running, we will provide C:\ for the Target source.
  - We can select the target destination of our choice.
    - All the triage files will be copied to the Target destination that we provide.

- Modules box can be enalbed to use modules along with targets
  - Modules source does not need to be defined, HOWEVER, modules destintation does need to be defined.
  - When using both Target and Module Options, providing Module Source is not required.

- When creating the query in the GUI it will show you what query is being created/used on the bottom of the app

## CheckBoxes/Buttons

- BE CAREFUL OF THE FLUSH CHECKBOX FOR BOTH TARGET AND MODULES
  - This will delete all the contents of the Target destination
- Add %d will append date info to the directory name where the collected data is saved.
- Add %m will append machine info to the Target destination directory

- We can select if we want to process Volume Shadow Copies by enabling Process VSCs

- We can select the transfer checkbox if we want to transfer the collected artifacts through an SFTP server or an S3 bucket.
  - For transfer, the files must be enclosed in a container, which can be Zip, VHD, or VHDX
    - Can also provide Exclusion based on SHA-1 hash and KAPE will not copy the excluded files.
    - When enclosing in a container, we will need to give a Base name that will be used for all the created files.
      - Not required if we are not transferring files or enclosing them in a container.

- The 'Execute!' button in the bottom right corner will execute the command.
