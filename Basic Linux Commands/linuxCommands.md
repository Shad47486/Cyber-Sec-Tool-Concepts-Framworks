# List of useful commands to use for linux to mannuver thru linux CMDS
- ls 

- cd [path] 
  - Move back or foward within box
    - cd .. = moves back
    - cd ~ = home dir
      - Or cd 
    - cd // = root dir

- rm [file]= removes files/folders 
    - rm -r [folder]= recersively deletes items inside a folder 
      - Directories/Folders will not be deleted without the -r parameter

- mv [file] [newfile] OR [file path for moving]
  - rename a file OR MOVE FILE

- touch [file] = 
  - Creates a file

- mkdir [folder]= 
  - Creates a direcotry/folder

- cp [file] [file2]
  - Copies a folder/file

- ping [ip/DNS]
  - Pings a ip address/cidr to see if communication to the internet is there

- nano [file]
  - Open doc

- cat [file]
  - Concatenate
    - Displays the contents of one or more files without having to open the file for editing.
      - Allows you to edit muiltple files without going into them, display contents of single or multiple files, redirect contents of multiple files, append contents to another file.

- pwd
  - print working directory

- grep 
  - Allows us to search the contents of files for specific values that we are looking for.
    - Used with the pipe operand (|)

- egrep
  - searchs a given data set of data and print every line which contains a given pattern. 
    - Like "find word" in browser Example: egrep 'word' path
      - Used with the pipe operand (|)

- awk 

- echo [file]
  - output any text that we provide
  
- whoami
  - Find out what user we're currently logged in as
    - Root, admin, guest, etc.

- checksec
  - tells you security information about a file.

- whois 
  - Allows you to query who a domain name is registered to. 
    - Syntax: 
      - whois <domain>

- dig 
  - Allows us to manually query recursive DNS servers of our choice for information about domains: 
  - Syntax: 
    - dig <domain> @<dns-server-ip>

- find
  - Helpful to find a specific file in the linux terminal

- sudo
  - Elevated privlages 
    - Can elevate to root user using "sudo su"

- chown
  - Changing ownership of files/directories
  - Can be used with sudo
    - EX: 
      - chown (username) (file)
      - chown (username) -R (directory)
        - -R means recursivly

- ps

- kill

- file [file]
  - Gives minor information about file

- strings [filename/path]
  - Lists down the strings present in a file

- ssh user@ip 
  - Allows us to remotely execute commands on another device remotely.
    - Any data sent between the devices is encyrpoted when it is sent over a network such as the internet

- histroy
  - Provides history of commands ran

- !x or !! 
  - x represents the number of command excuted within session
  - ! represents the excution of command 
    - EX: !10 means run the 10th command from my histroy
      - Can use history to see what command is the 10th command written
  - !! means to exucte previous command



# parameters to add on besides pipes
- a 
  - Short for all
    - ls -a

# File hash commands:
- Allows you to decrypt files using native commands:
  -md5sum [file]
  -sha1sum [file]
  -sha256sum [file]

# Pipe Operand (|):

- Transfer of standard output to some other destination
  - Form of redirection

- Operator (&)
  - Allows you to run commands in the background of ur terminal

- Operator (&&)
  - Allows you to combine multiple commands together in one line of your terminal.

- Redriect Operand (>)
  - To store the output in a file, overwriting the file if it already exists
    - EX: strings filename > output.txt or path to file

- Redriect Operand (>>)
  - To append the output to a file, creating the file if it doesn't exist, or adding to it if it does
    - EX: strings filename >> output.txt
    - Comapred to > operator it does the same function but appends the output rather than replacing it (meaning nothing is overwritten)