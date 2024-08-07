# What is DNS (Domain Name System)?

- Provides a simple way for us to communicate with devices on the internet without remembering complex numbers.
  - Much like every house has a unique address for sending mail directly to it, every computer on the internet has its own unique address to communicate with it called an IP address.
    - An IP address looks like the following 104.26.10.229, 4 sets of digits ranging from 0 - 255 separated by a period.

## Domain Hierarchy

- TLD (Top-Level Domain)
  - The most righthand part of a domain name
    - EX:  example.com TLD is .com.
  - 2 types of of TLD:
    - gTLD (Generic Top Level)
      - gTLD was meant to tell the user the domain name's purpose; for example, a .com would be for commercial purposes, .org for an organisation, .edu for education and .gov for government.
        - Due to such demand, there is an influx of new gTLDs ranging from .online , .club , .website , .biz and so many more.
    - ccTLD (Country Code Top Level Domain)
      - ccTLD was used for geographical purposes, for example, .ca for sites based in Canada, .co.uk for sites based in the United Kingdom and so on.
      - [TLD list](<https://data.iana.org/TLD/tlds-alpha-by-domain.txt>)

- Second-Level Domain
  - When registering a domain name, the second-level domain is limited to 63 characters + the TLD and can only use a-z 0-9 and hyphens (cannot start or end with hyphens or have consecutive hyphens).
    - EX: example.com the .com part is the TLD, and example is the Second Level Domain

- Subdomain
  - Sits on the left-hand side of the Second-Level Domain using a period to separate it
    - EX: admin.example.com the admin part is the subdomain
      - A subdomain name has the same creation restrictions as a Second-Level Domain, being limited to 63 characters and can only use a-z 0-9 and hyphens (cannot start or end with hyphens or have consecutive hyphens)
      - You can use multiple subdomains split with periods to create longer names, such as jupiter.servers.example.com.
        - But the length must be kept to 253 characters or less
      - There is no limit to the number of subdomains you can create for your domain name.

## Record Type

- A Record
  - These records resolve to IPv4 addresses
    - EX: 104.26.10.229

- AAAA Record
  - These records resolve to IPv6 addresses
    - EX: 2606:4700:20::681a:be5

- CNAME Record
  - Records resolve to another domain name
    - EX: RAWs online shop has the subdomain name store.raws.com which returns a CNAME record shops.shopify.com
      - Another DNS request would then be made to shops.shopify.com to work out the IP address.

- MX Record
  - These records resolve to the address of the servers that handle the email for the domain you are querying
    - EX: An MX record response for example.com would look something like alt1.aspmx.l.google.com
      - These records also come with a priority flag.
      - This tells the client in which order to try the servers, this is perfect for if the main server goes down and email needs to be sent to a backup server.

- TXT Record
  - Free text fields where any text-based data can be stored
    - TXT records have multiple uses, but some common ones can be to list servers that have the authority to send an email on behalf of the domain (this can help in the battle against spam and spoofed email).
      - They can also be used to verify ownership of the domain name when signing up for third party services.

## What happens when you make a DNS request?

1. When you request a domain name, your computer first checks its local cache to see if you've previously looked up the address recently; if not, a request to your Recursive DNS Server will be made.

2. A Recursive DNS Server is usually provided by your ISP, but you can also choose your own.
   2. This server also has a local cache of recently looked up domain names. If a result is found locally, this is sent back to your computer, and your request ends here (this is common for popular and heavily requested services such as Google, Facebook, Twitter).
   2. If the request cannot be found locally, a journey begins to find the correct answer, starting with the internet's root DNS servers.

3. The root servers act as the DNS backbone of the internet; their job is to redirect you to the correct Top Level Domain Server, depending on your request
   3. EX: You request <>, the root server will recognise the Top Level Domain of .com and refer you to the correct TLD server that deals with .com addresses.

4. The TLD server holds records for where to find the authoritative server to answer the DNS request.
   4. The authoritative server is often also known as the NS for the domain.
      4. EX: The NS for example.com is kip.ns.cloudflare.com and uma.ns.cloudflare.com.
         4. You'll often find multiple NS for a domain name to act as a backup in case one goes down.

5. An authoritative DNS server is the server that is responsible for storing the DNS records for a particular domain name and where any updates to your domain name DNS records would be made.
   5. Depending on the record type, the DNS record is then sent back to the Recursive DNS Server, where a local copy will be cached for future requests and then relayed back to the original client that made the request.
      5. DNS records all come with a TTL (Time To Live) value.
      5. This value is a number represented in seconds that the response should be saved for locally until you have to look it up again.
      5. Caching saves on having to make a DNS request every time you communicate with a server.
