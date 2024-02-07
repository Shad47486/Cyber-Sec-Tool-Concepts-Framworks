# What is Public Key Infrastructure (PKI)?

* PKIs allow us to confirm the other party’s identity
  * How can you be confident that you are indeed communicating with the example.org server(s)?
  * In other words, how can you be sure that no man-in-the-middle intercepted the packets & altered them before they reached you?
    * The answer lies in the website cert.

## How do Website cert work?

* Most browsers represent the encrypted connection with some kind of a lock icon.
  * This lock icon indicates that the connection is secured over HTTPS with a valid cert.
  * We can use a validate the certificates from the signing of a Certifiate authority (CA)
    **For a cert to get signed by a cert authority, we need to:**
    * Generate cert Signing Request (CSR):
      * You create a cert & send your public key to be signed by a 3rd party.
    * Send your CSR to a cert Authority (CA):
      * The purpose is for the CA to sign your cert.
        * The alt & usually insecure solution would be to self-sign your cert.
    * For this to work, the recipient should recognize & trust the CA that signed the cert.
      * As we would expect, our browser trusts DigiCert Inc as a signing authority; otherwise, it would have issued a security warning instead of proceeding to the requested website

* You can use openssl to generate a cert signing request using the command:
  * EX: openssl req -new -nodes -newkey rsa:4096 -keyout key.pem -out cert.csr
    * [More info on command](./Tools/openssl.md)

* Once the CSR file is ready, you can send it to a CA of your choice to get it signed & ready to use on your server.
  * Once the client, i.e., the browser, receives a signed cert it trusts, the SSL/TLS handshake takes place. The purpose would be to agree on the ciphers & the secret key.
    * A trusted third party is necessary for the system to be scalable.
