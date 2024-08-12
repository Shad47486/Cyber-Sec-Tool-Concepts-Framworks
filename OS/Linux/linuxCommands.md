# General info

- Process can be in considered a background OR a foreground process
  - 

## List of useful commands to use for linux to mannuver thru linux CMDS

- ls
  - Shows what is currently in the dir/folder

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
  - Simple txt opener
    - Close & Save
      - ctr +  x

- vim [file]
  - Advanced txt opener

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
  - Viewing different processes occuring
    - To see process run by other users & those that don't run from a session:
      - ps aux

- kill [process ID/#]
  - Kills processes
    - Signals that we can send to a procdess when it is killed:
      - SIGTERM
        - Kills the process, BUT allows it to do some cleanup tasks beforehand
      - SIGKILL
        - Kill the process - DOESNT DO ANY CLEANUP AFTER THE FACT
      - SIGSTOP
        - Stops/Suspends a process

- file [file]
  - Gives minor information about file

- strings [filename/path]
  - Lists down the strings present in a file

- histroy
  - Provides history of commands ran

- !x or !!
  - x represents the number of command excuted within session
  - ! represents the excution of command
    - EX: !10 means run the 10th command from my histroy
      - Can use history to see what command is the 10th command written
  - !! means to exucte previous command

- sudo gedit /path/to/file
  - Lets you edit a file using the linux text editor (getdit)
    - Can be useful when you need to go to multiple directorys and edit different files

- exiftool (File)
  - ExifTool is a platform-independent Perl library plus a command-line application for reading, writing and editing meta information in a wide variety of files.
  - Works on EXIF, GPS, IPTC, XMP, makernotes, and other metadata information in image, audio and video

- binwalk
  - Fast, easy to use tool for analyzing, reverse engineering, and extracting firmware images.

- wget [URL] or [IP-address]
  - Download files from the web VIA HTTP (As if you were acessing the filew in ur browser)

- systemctl [option] [service]
  - Allows us to interact with the systemd process/daemon.
    - 4 options: start, stop, enable, & disable

- fg
  - brings us back to focus on different processes.

## Transferring Files From Your Host - Secure Copy Protocol (SCP - SSH)

- ssh user@ip
  - Allows us to remotely execute commands on another device remotely.
    - Any data sent between the devices is encyrpoted when it is sent over a network such as the internet

- scp [File Name] [user@0.0.0.0:home/ubuntu/transferred.txt]
  - Allows you to transfer files between two computers using the SSH protocol to provide both authentication and encryption.
    - SOURCE AND DESTINATION FORMAT
      - Starts with file name on local system [File Name] and then user of remote system followed by the remote ip & the files new name on our system [user@0.0.0.0:home/ubuntu/transferred.txt]

## Serving Files From Your Host - WEB

- python3 -m [http.server]
  - Python3's "HTTPServer" will serve the files in the directory where you run the command
    - Native feature in UBUNTU
  - This module turns your computer into a quick and easy web server that you can use to serve your own files, where they can then be downloaded by another computing using commands such as curland wget

## File hash commands

- Allows you to decrypt files using native commands:
  -md5sum [file]
  -sha1sum [file]
  -sha256sum [file]

## Pipe Operand (|)

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
