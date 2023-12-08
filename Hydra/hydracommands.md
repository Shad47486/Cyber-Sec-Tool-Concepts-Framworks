To find passwords found from a .txt file from FTP: 
    - hydra -t 4 -l [users] -p /path_to_DIR_Of_possible_passwords -vV [IP] [protocol]
      - Ex: hydra -t 4 -l john -p /usr/share/etc. -vV 10.10.10.6 ftp
        - anonymous