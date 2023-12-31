# Running Zeek with pcap files

zeek -C -r sample.pcap
    - to view: ls -l

## Runnning Zeek on pcaps with signatures (.sig)

- zeek -C -r sample.pcap -s sample.sig

## Running Zeek on pcap with zeek scripts (.zeek)

- zeek -C -r file.pcap file.zeek

## Running Zeek on pcap with a zeek script & signature

- zeek -C -r ftp.pcap -s file.sig file.zeek

## To Extract specific columns from log files

- zeek-cut [name of fields from file & dont include use "" or '']
  - Cuts specific columns from zeek logs
    - EX:
      - cat signatures.log | zeek-cut uid src_addr dst_addr
        - [More info on specific zeek data/fields](<https://corelight.com/products/zeek-data/>)

## Loading local scripts

- zeek -C -r ftp.pcap local
  - Can load all base scripts by easily running the local command

## Loading Specific Scripts

- zeek -C -r ftp.pcap /opt/zeek/share/zeek/path/to/file.zeek
