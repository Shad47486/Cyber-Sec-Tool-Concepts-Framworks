# To use Zeek with pcap files:
zeek -C -r sample.pcap 
    - to view: ls -l

# To Extract specific columns from log files: 
- zeek-cut
  - Cuts specific columns from zeek logs
    - EX: 
      -  cat signatures.log | zeek-cut uid src_addr dst_addr
=