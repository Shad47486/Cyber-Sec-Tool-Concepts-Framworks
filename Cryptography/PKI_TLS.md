# What is Public Key Infrastructure (PKI)?

* PKIs allow us to confirm the other party’s identity
  * How can you be confident that you are indeed communicating with the example.org server(s)?
  * In other words, how can you be sure that no man-in-the-middle intercepted the packets and altered them before they reached you?
    * The answer lies in the website certificate.


## How do Website Certificate work?

* Most browsers represent the encrypted connection with some kind of a lock icon.
  * This lock icon indicates that the connection is secured over HTTPS with a valid certificate.
  * We can use a validate the certificates from the signing of a Certifiate authority (CA)
    **For a certificate to get signed by a certificate authority, we need to:**
    * Generate Certificate Signing Request (CSR):
      * You create a certificate and send your public key to be signed by a 3rd party.
    * Send your CSR to a Certificate Authority (CA):
      * The purpose is for the CA to sign your certificate.
        * The alternative and usually insecure solution would be to self-sign your certificate.
    * For this to work, the recipient should recognize and trust the CA that signed the certificate.
      * As we would expect, our browser trusts DigiCert Inc as a signing authority; otherwise, it would have issued a security warning instead of proceeding to the requested website

* You can use openssl to generate a certificate signing request using the command:
  * openssl req -new -nodes -newkey rsa:4096 -keyout key.pem -out cert.csr
    * req -new
      * Create a new certificate signing request
    * -nodes
      * Save private key without a passphrase
    * -newkey
      * Generate a new private key
    * rsa:4096
      * Generate an RSA key of size 4096 bits
    * -keyout
      * Specify where to save the key
    * -out
      * Save the certificate signing request

* Once the CSR file is ready, you can send it to a CA of your choice to get it signed and ready to use on your server.
  * Once the client, i.e., the browser, receives a signed certificate it trusts, the SSL/TLS handshake takes place. The purpose would be to agree on the ciphers and the secret key.
    * A trusted third party is necessary for the system to be scalable.
