# What is passive reconnaissance?

* In passive reconnaissance, you rely on publicly available knowledge.
  * It is the knowledge that you can access from publicly available resources without directly engaging with the target.
    * Like you are looking at target territory from afar without stepping foot on that territory.
  * Activities of passive recon include:
    * Looking up DNS records of a domain from a public DNS server.
    * Checking job ads related to the target website.
    * Reading news articles about the target company.

## What tools are involved in passive reconnaissance?

* CLI based tools:
  * [whois](</Network/Tools/Whois/whois_overview.md>)
  * [nslookup](</Network/Tools/Nslookup_dig/nslookup.md>)
  * [dig](</Network/Tools/Nslookup_dig/dig_overview.md>)

* Website:
  * [DNSDumpster](<https://dnsdumpster.com/>)
    * Offers detailed answers to DNS queries, just type in the name of the website you are trying to obtain more info on
    * If we search DNSDumpster for tryhackme.com, we will discover the subdomain blog.tryhackme.com, which a typical DNS query cannot provide.
      * DNSDumpster will also represent the collected information graphically.
        * You can see the DNS and MX branching to their respective servers and also showing the IP addresses.
  * [Shodan.io](</https://www.shodan.io/>)
    * Can be helpful to learn various pieces of information about the client’s network, without actively connecting to it.
      * Furthermore, on the defensive side, you can use different services from Shodan.io to learn about connected and exposed devices belonging to your organization.
    * Shodan.io tries to connect to every device reachable online to build a search engine of connected “things” in contrast with a search engine for web pages.
      * Once it gets a response, it collects all the information related to the service and saves it in the database to make it searchable
      * We can learn several things related to our search, such as:
        * IP address
        * hosting company
        * geographic location
        * server type and version
