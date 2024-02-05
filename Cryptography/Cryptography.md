# What is some general terminology & tips to know about cryptograpgy?

* Cryptography’s role starts with checking the certificate. For a certificate to be considered valid, it means it is signed. Signing means that a hash of the certificate is encrypted with the private key of a trusted third party; the encrypted hash is appended to the certificate.
*General Terminology Below*
* Cryptographic Algorithm or Cipher:
  * This algorithm defines the encryption and decryption processes.

* Key:
  * The cryptographic algorithm needs a key to convert the plaintext into ciphertext and vice versa.

* plaintext is the original message that we want to encrypt

* ciphertext is the message in its encrypted form

## DIfferent types of Encryptions

* Symmetric Encryption
  * AES 192 & 256, International Data Encryption Algorithm (IDEA), Triple DES (Data Encryption Standard), CAST5 (CAST-128), BLOWFISH, TWOFISH, CAMELLIA (128, 192 & 256)
    * Can be encrypted/decrypted using GNU Privacy Guard (GPG) or OpenSSL

* Asymmetric Encryption
  * Diffie-Hellman Key Exchange, RSA, etc.
    * Can be encrypted/decrypted using OpenSSL

### What is Hashing?

* A cryptographic hash function is an algorithm that takes data of arbitrary size as its input and returns a fixed size value, called message digest or checksum, as its output.
  * EX: sha256sum (linux cmd) calculates the SHA256 (Secure Hash Algorithm 256) message digest.
    * SHA256, as the name indicates, returns a checksum of size 256 bits (32 bytes).
      * This checksum is usually written using hexadecimal digits.
        * Knowing that a hexadecimal digit represents 4 bits, the 256 bits checksum can be represented as 64 hexadecimal digits.
          * It is worth stressing that the length of the resulting message digest or checksum is the same, no matter how small or big the file is.

* What can this help with?
  * Storing passwords & Detecting modifications

* What are the different hashing algorithms?
  * SHA224, SHA256, SHA384, SHA512
  * RIPEMD160
  * Older Algorithms:
    * MD5 (Message Digest 5)
    * SHA-1
**Hash-based message authentication code (HMAC):**
* Msg authentication code (MAC) that uses a cryptographic key in addition to a hash function.
  * NEEDS:
    * secret key
    * inner pad (ipad) a constant string. (RFC2104 uses the byte 0x36 repeated B times. The value of B depends on the chosen hash function.)
    * outer pad (opad) a constant string. (RFC2104 uses the byte 0x5C repeated B times.)

* Calculating the HMAC follows the following steps as shown in the figure:
  1. Append zeroes to the key to make it of length B, i.e., to make its length match that of the ipad.
  2. Using bitwise exclusive-OR (XOR), represented by ⊕, calculate key ⊕ ipad.
  3. Append the message to the XOR output from step 2.
  4. pply the hash function to the resulting stream of bytes (in step 3).
  5. Using XOR, calculate key ⊕ opad.
  6. Append the hash function output from step 4 to the XOR output from step 5.
  7. Apply the hash function to the resulting stream of bytes (in step 6) to get the HMAC.
     * To calculate the HMAC on a Linux system, you can use any of the available tools such as hmac256 (or sha224hmac, sha256hmac, sha384hmac, and sha512hmac, where the secret key is added after the option --key) 


























