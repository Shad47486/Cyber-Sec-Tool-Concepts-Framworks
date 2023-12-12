## To check if snort if working:
    - snort -V
      - Gives version and verifyies


## Ensureing config files is valid:
    - sudo snort -c (file/path) -T 
      - ex: sudo snort -c /etc/snort/snort.conf -T 

# SNIFFING with different Parameter/Commands "-i", "-v", "-d", "-de", "-X":
    - sudo snort -v-i (interface)
      - ex: sudo snort -v-i eth0

    - sudo snort -d
      -  Snort instance in JUST dumping packet data mode

    - snort -d -e
      - Snort instance in dump (-d) and link-layer header grabbing (-e) mode

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
          - You can filter the processed log to see specific packets with the "-r" parameter and Berkeley Packet Filters (BPF).
          - ex: 
            - sudo snort -r logname.log -X
              - -X helps you to display the full packet details.
            - sudo snort -r logname.log icmp
            - sudo snort -r logname.log tcp
            - sudo snort -r logname.log 'udp and port 53'
      - You can specify the number of processes with the parameter "-n"
        - EX:  snort -dvr logname.log -n 10

