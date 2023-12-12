## To check if snort if working:
    - snort -V
      - Gives version & verifyies


## Ensureing config files is valid:
    - sudo snort -c (file/path) -T 
      - ex: sudo snort -c /etc/snort/snort.conf -T 

# SNIFFING with different Parameter/Commands "-i", "-v", "-d", "-de", "-X":
    - sudo snort -v-i (interface)
      - ex: sudo snort -v-i eth0

    - sudo snort -d
      -  Snort instance in JUST dumping packet data mode

    - snort -d -e
      - Snort instance in dump (-d) & link-layer header grabbing (-e) mode

    - sudo snort -X
      - Snort instance in full packet dump mode

# LOGGING with Differenent Parameters/Commands:

    - sudo snort -dev -l .
      - DONT FORGET THE DOT ITS NOT A MISTAKE
        - Creates a binary/TCPdump format of log

    - sudo snort -dev -K ASCII
      - Log packets in ASCII format.

    - sudo snort -r  
      - ***** MAY NEED TO DO "sudo su" to cd into files ****
      - Reading generated logs with parameter -r
        - Parameter also allows users to filter the binary log files.
          - You can filter the processed log to see specific packets with the "-r" parameter & Berkeley Packet Filters (BPF).
          - ex: 
            - sudo snort -r logname.log -X
              - -X helps you to display the full packet details.
            - sudo snort -r logname.log icmp
            - sudo snort -r logname.log tcp
            - sudo snort -r logname.log 'udp and port 53'
      - You can specify the number of processes with the parameter "-n"
        - EX:  snort -dvr logname.log -n 10

# Snort in IDS/IPS Mode:

  - sudo snort -c /etc/snort/snort.conf -N
    - Disables logging (-N)
    - CLI output will provide the info requested with the parameters
      - Could use -v or -X for more further details
        - No logs will be generated


  - sudo snort -c /etc/snort/snort.conf -D
    - Will start SNORT instance in background mode
    - CLI output will provide the info requested with the parameters
      - Could use just -v or -X & -l for more further details
        - No logs will be generated
          - After started in the background, you can use 'ps' command to check: 
            - ps -ef | grep snort
          - Can use 'kill' command to stop the process:
            - EX: sudo kill -9 2898

  - sudo snort -c /etc/snort/snort.conf -A (console, fast, cmg, full, none,)
    - Dont provide console output: "full", "fast" and "none" modes
    - Does provide alert info in the console: "console" and "cmg" modes
      - Can use 'console' parameter to help test user-created rules

  - sudo snort -c /etc/snort/snort.conf -q -Q --daq afpacket -i eth0:eth1 -A console