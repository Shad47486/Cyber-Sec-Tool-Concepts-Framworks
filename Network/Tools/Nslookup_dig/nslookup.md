# What doe the command nslookup?

* Find the IP address of a domain name using nslookup
  * Stands for Name Server Look Up.

* To do so issue either commands:
  * nslookup DOMAIN_NAME
  * nslookup OPTIONS DOMAIN_NAME SERVER
    * This cmd consits of 3 main parameters:
      * OPTIONS contains the query type as shown in the table below.
        * For instance, you can use A for IPv4 addresses and AAAA for IPv6 addresses.
      * DOMAIN_NAME is the domain name you are looking up.
      * SERVER is the DNS server that you want to query.
        * You can choose any local or public DNS server to query
          * Cloudflare offers 1.1.1.1 and 1.0.0.1
          * Google offers 8.8.8.8 and 8.8.4.4
          * Quad9 offers 9.9.9.9 and 149.112.112.112

* Different query types:
  * EX: nslookup -type=A tryhackme.com 1.1.1.1
    * type=A means all IPv4 Addresses
      * Other types are:
        * AAAA = IPv6 Addresses
        * CNAME = Canonical Name
        * MX = Mail Servers
        * SOA = Start of Authority
        * TXT = TXT Records

* For more advanced DNS queries and functionality, you can use the 'dig' command
  * [more info on dig](<>)
