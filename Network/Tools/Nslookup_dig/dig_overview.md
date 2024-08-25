# What is does the command Domain Information Groper (dig) do?

* 'dig' is a advanced DNS queries and offer more functionality then nslookup

* How to use the dig command:
  * dig @SERVER DOMAIN_NAME TYPE
    * DOMAIN_NAME is the name of the domain
      * Ex: dig google.com
    * @SERVER selects the server we want to query
      * EX: dig @1.1.1.1 google.com
    * TYPE specifies the record type
      * EX: dig @1.1.1.1 google.com MX
