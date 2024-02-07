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

### How to use OpenSSL on RSA (Asymmetric Encryption)

*To see real values for p and q, let’s create a real keypair (uUing the 3 following steps below):*

* With openssl, we used "genrsa" to generate an RSA private key.
  * Using -out, we specified that the resulting private key is saved as private-key.pem.
  * We added 2048 to specify a key size of 2048 bits.
  * EX: openssl genrsa -out private-key.pem 2048

* Using openssl, we specified that we are using the RSA algorithm with the rsa option.
  * We specified that we wanted to get the public key using -pubout.
  * We set the private key as input using -in private-key.pem and saved the output using -out public-key.pem.
    * EX: openssl rsa -in private-key.pem -pubout -out public-key.pem

* We are curious to see real RSA variables, so we used -text -noout.
  * The values of p, q, N, e, and d are prime1, prime2, modulus, publicExponent, and privateExponent, respectively.

* If we already have the recipient’s public key, we can encrypt it with the command:
  * EX: openssl pkeyutl -encrypt -in plaintext.txt -out ciphertext -inkey public-key.pem -pubin

* The recipient can decrypt it using the command:
  * EX: openssl pkeyutl -decrypt -in ciphertext -inkey private-key.pem -out decrypted.txt
