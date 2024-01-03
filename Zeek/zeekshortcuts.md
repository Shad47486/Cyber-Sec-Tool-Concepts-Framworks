# Running Zeek with pcap files

zeek -C -r sample.pcap
    - to view: ls -l

## Runnning Zeek on pcaps with signatures (.sig)

- zeek -C -r sample.pcap -s sample.sig

## Running Zeek on pcap with zeek scripts (.zeek)

- zeek -C -r file.pcap file.zeek

## Running Zeek on pcap with a zeek script & signature

- zeek -C -r ftp.pcap -s file.sig file.zeek

## Loading local scripts

- zeek -C -r ftp.pcap local
  - Can load all base scripts by easily running the local command

## Loading Specific Scripts

- zeek -C -r ftp.pcap /opt/zeek/share/zeek/path/to/file.zeek

## To Extract specific columns from log files

- zeek-cut [name of fields from file & dont include use "" or '']
  - Cuts specific columns from zeek logs
    - EX:
      - cat signatures.log | zeek-cut uid src_addr dst_addr
        - [More info on specific zeek data/fields](<https://corelight.com/products/zeek-data/>)

## Reading Log files generated (should be added after using zeek-cut command if used)

- cat file.log | sort | uniq
  - Outputing all info from the log file

- cat file.log | sort | uniq -c
  - Remove duplicate values.

- cat file.log | sort -nr
  - Reverse string characters.

- cat file.log | rev
  - Reverse string characters.

- cat file.log | cut -f 1
  - Cut field 1.

- cat file.log | cut -d '.' -f 1-2
  - Split the string on every dot and print keep the first two fields.

- cat file.log | grep -v 'test'
  - Display lines that  don't match the "test" string.

- cat file.log | grep -v -e 'test1' -e 'test2'
  - Display lines that don't match one or both "test1" and "test2" strings.

- cat file.log | file
  - View file information.

- cat file.log | grep -rin Testvalue1 * | column -t | less -S
  - Search the "Testvalue1" string everywhere, organise column spaces and view the output with less.

- View the command history:
  - histroy

- Execute the 10th command in history:
  - !10
    - or any other #th command in history

- Execute the previous command:
  - !!

- Read sample.txt file:
  - cat sample.txt

- Read the first 10 lines of the file:
  - head smaple.txt

- Read the last 10 lines of the file:
  - tail sample.txt

- Cut the 1st field:
  - cat test.txt | cut -f 1

- Cut the 1st column:
  - cat test.txt | cut -c1

- Filter specific keywords:
  - cat test.txt | grep 'keywords'

- Sort outputs alphabetically:
  - cat test.txt | sort

- Sort outputs numerically:
  - cat test.txt | sort -n

- Eliminate duplicate lines:
  - cat test.txt | uniq

- Count line numbers:
  - cat test.txt | wc -l

- Show line numbers
  - cat test.txt | nl

- Print line 11:
  - cat test.txt | sed -n '11p'

- Print lines between 10-15:
  - cat test.txt | sed -n '10,15p'

- Print lines below 11:
  - cat test.txt | awk 'NR < 11 {print $0}'

- Print line 11:
  - cat test.txt | awk 'NR == 11 {print $0}'
