# What is the OpenSSL Project?

* Maintains the OpenSSL software.
  * Program that allows for Symmetric & Asymmetric Encryption Keys & Algorithms

## How to Encrypt and Decrypt?

* We can encrypt a file using OpenSSL using the following command:
  * EX: openssl aes-256-cbc -e -in message.txt -out encrypted_message
* We can decrypt the resulting file using the following command:
  * EX: openssl aes-256-cbc -d -in encrypted_message -out original_message.txt

* To make the encryption more secure and resilient against brute-force attacks, we can add -pbkdf2 to use the Password-Based Key Derivation Function 2 (PBKDF2)
  * Moreover, we can specify the number of iterations on the password to derive the encryption key using -iter NUMBER. To iterate 10,000 times, the previous command would become:
    * EX: openssl aes-256-cbc -pbkdf2 -iter 10000 -e -in message.txt -out encrypted_message
  * The decryption command becomes:
    * EX: openssl aes-256-cbc -pbkdf2 -iter 10000 -d -in encrypted_message -out original_message.txt

### OpenSSL on RSA & (Asymmetric Encryption)

*Real values for p and q in RSA, let’s create a real keypair:*

* For RSA, we used "genrsa" to generate an RSA private key.
  * Using -out, we specified that the resulting private key is saved as private-key.pem.
  * We added 2048 to specify a key size of 2048 bits.
  * EX: openssl genrsa -out private-key.pem 2048

* We specified that we are using the RSA algorithm with the rsa option.
  * We specified that we wanted to get the public key using -pubout.
  * We set the private key as input using -in private-key.pem and saved the output using -out public-key.pem.
    * EX: openssl rsa -in private-key.pem -pubout -out public-key.pem

* We are curious to see real RSA variables, so we used -text -noout.
  * The values of p, q, N, e, and d are prime1, prime2, modulus, publicExponent, and privateExponent, respectively.

* If we already have the recipient’s public key, we can encrypt it with the command:
  * EX: openssl pkeyutl -encrypt -in plaintext.txt -out ciphertext -inkey public-key.pem -pubin

* The recipient can decrypt it using the command:
  * EX: openssl pkeyutl -decrypt -in ciphertext -inkey private-key.pem -out decrypted.txt

*Diffie-Hellman Key:*

* we need to specify the option "dhparam" to indicate that we want to generate Diffie-Hellman parameters
  * Along with the size in bits (2048 or 4096)

* We can view the prime number P and the generator G using the command:
  * EX: openssl dhparam -in dhparams.pem -text -noout

### OpenSSL on Cert Signing

* You can use openssl to generate a Cert Signing Request (CSR) using the command:
  * openssl req -new -nodes -newkey rsa:4096 -keyout key.pem -out cert.csr
    * req -new
      * Create a new Cert signing request
    * -nodes
      * Save private key without a passphrase
    * -newkey
      * Generate a new private key
    * rsa:4096
      * Generate an RSA key of size 4096 bits
    * -keyout
      * Specify where to save the key
    * -out
      * Save the cert signing request

* The following command will generate a Self-Signed Cert:
  * EX: openssl req -x509 -newkey -nodes rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365
    * -x509
      * indicates that we want to generate a self-signed cert instead of a cert request.
    * -sha256
      * specifies the use of the SHA-256 digest.
    * -days 365
      * Means it will be valid for 1 year

* To view certs:
  * openssl x509 -in cert.pem -text
