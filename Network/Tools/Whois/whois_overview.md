# What is 'WHOIS'?

* WHOIS is a request and response protocol that follows the RFC 3912 specification.
  * A WHOIS server listens on TCP port 43 for incoming requests.
  * The domain registrar is responsible for maintaining the WHOIS records for the domain names it is leasing.
  * The WHOIS server replies with various information related to the domain requested.
    * From this info we can learn:
      * Registrar: Via which registrar was the domain name registered?
      * Contact info of registrant: Name, org, address, phone, among other things.
        * Unless made hidden via a privacy service
      * Creation, update, and expiration dates: When was the domain name first registered? When was it last updated? And when does it need to be renewed?
      * Name Server: Which server to ask to resolve the domain name?

## How to get info from whois?

* To get this information, we need to use a whois client or an online service.
  * Many online services provide whois information; H/O, it is generally faster and more convenient to use your local whois client.

* Syntax:
  * whois DOMAIN_NAME
    * Where DOMAIN_NAME is the domain about which you are trying to get more information.
