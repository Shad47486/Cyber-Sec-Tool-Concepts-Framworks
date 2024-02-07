# Syntax

- gobuster dir -u [ip/domainname] -w [wordlist.txt]
or
- gobuster -u [ip/domainname] -w [wordlist.txt] dir
  - Basic Directory search
    - EX:
      - gobuster dir -u http://10.10.179.83 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 100

## Parameters

- -u
  - Used to state the website we're scanning

- -w
  - Takes a list of words to iterate through to find hidden pages
