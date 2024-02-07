# What are Symmetric Keys?

* A symmetric encryption algorithm uses the same key for encryption & decryption.
  * Consequently, the communicating parties need to agree on a secret key before being able to exchange any messages.

* Can use both stream and block ciphers.
  * Stream Chipers
  * Block Chipers
    * Converts the input (plaintext) into blocks and encrypts each block.
      * A block is usually 128 bits.
        * EX: Lets say we want to encrypt the msg "TANGO HOTEL MIKE"
          * Each character needs to be converted to its binary representation.
            * If we use ASCII, “T” is 0x54 in hexadecimal, while “A” is 0x41, and so on.
            * The encryption method will process one byte at a time. This is represented in the figure below.

***Benfits of Symmetric Encryption Algorithms***

* After both parties agree on a encryption algorithm and agreed on a specific key it can help achieve:
  * Confidentiality: If someone intercepted the encrypted message, they wouldn’t be able to recover the plaintext.
    * Consequently, all messages exchanged between both parties are confidential as long as they are sent encrypted.
  * Integrity: When 1 party receives an encrypted message and decrypts it successfully using the key both parties agreeed upon, both parties can be sure that no one could tamper with the message across the channel.
    * When using secure modern encryption algorithms, any minor modification to the ciphertext would prevent successful decryption or would lead to gibberish as plaintext.
      * However if more parties are added a new key has to be generated for every new party, which could lead to compromised keys.
  * Authenticity:
    * Being able to decrypt the ciphertext using the secret key also proves the authenticity of the message because only both parties know the secret key.

***Tools to Encrypt/Decrypt Keys***

* [GNU Privacy Guard (GPG)](./Tools/gpg.md)
* [OpenSSL Project](./Tools/openssl.md)

## What is the procces of using a symmetric key encryption algorithm?

* The sender provides the encrypt process with the plaintext & the key to get the ciphertext.
  * The ciphertext is usually sent over some communication channel.
  * On the other end, the recipient provides the decrypt process with the same key used by the sender to recover the original plaintext from the received ciphertext.
    * W/O knowledge of the key, the recipient won’t be able to recover the plaintext.

### Different types of Symmetric keys algorithm?

* Data Encryption Standard (DES):
  * National Institute of Standard & Technology (NIST) published DES 1977.
    * Is a Block Chiper
    * DES is a symmetric encryption algorithm that uses a key size of 56 bits. In 1997, a challenge to break a message encrypted using DES was solved.
    * Consequently, it was demonstrated that it had become feasible to use a brute-force search to find the key & break a message encrypted using DES. In 1998, a DES key was broken in 56 hours.

* Advanced Encryption Standard (AES):
  * NIST published the AES in 2001 (more modern and safer then DES).
    * Is a Block Chiper
  * Uses a key size of 128, 192, or 256 bits & repeats the following four transformations multiple times:
    * SubBytes(state):
      * This transformation looks up each byte in a given substitution table (S-box) & substitutes it with the respective value.
        * The state is 16 bytes, i.e., 128 bits, saved in a 4 by 4 array.
    * ShiftRows(state):
      * The second row is shifted by one place, the third row is shifted by two places, & the fourth row is shifted by three places.
    * MixColumns(state):
      * Each column is multiplied by a fixed matrix (4 by 4 array).
    * AddRoundKey(state):
      * A round key is added to the state using the XOR operation.

* IDEA
  * International Data Encryption Algorithm (IDEA)
    * Is a Is a Block Chiper

* 3DES
  * Triple DES (Data Encryption Standard) and is based on DES. We should note that 3DES will be deprecated in 2023 and disallowed in 2024.
    * Is a Block Chiper

* CAST5 (CAST-128)
  * Some sources state that CASE stands for the names of its authors: Carlisle Adams and Stafford Tavares.
    * Is a Block Chiper

* BLOWFISH
  * Designed by Bruce Schneier
    * Is a Block Chiper

* TWOFISH
  * Designed by Bruce Schneier and derived from Blowfish
    * Is a Block Chiper

* CAMELLIA128, CAMELLIA192, and CAMELLIA25
  * Designed by Mitsubishi Electric and NTT in Japan. Its name is derived from the flower camellia japonica.
    * Is a Block Chiper
