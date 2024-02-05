# What is Symmetric Encryption?

* Uses the same key for encryption and decryption.
  * Consequently, the communicating parties need to agree on a secret key before being able to exchange any messages.
*2 different types of encryption algorithms below:*
* Block Cipher symmetric encryption algorithms:
  * Converts the input (plaintext) into blocks and encrypts each block.
    * A block is usually 128 bits.
* Stream Ciphers:
  * Encrypt the plaintext byte by byte
    * EX: We want to encrypt the message “TANGO HOTEL MIKE”; each character needs to be converted to its binary representation.
      * If we use ASCII, “T” is 0x54 in hexadecimal, while “A” is 0x41, and so on.
      * The encryption method will process one byte at a time. This is represented in the figure below.

* Can be decrpyted and encrypted using OpenSSL or GNU Privacy Guard (GPG)

## How does it Work?

* Works by having the sender provides the encrypt process with the plaintext and the key to get the ciphertext.
  * The ciphertext is usually sent over some communication channel.

* The recipient provides the decrypt process with the same key used by the sender to recover the original plaintext from the received ciphertext.
  * W/O knowledge of the key, the recipient won’t be able to recover the plaintext.

### What where the different NIST encyrption standards that came from this?

* Data Encryption Standard (DES) in 1977
  * DES is a symmetric encryption algorithm that uses a key size of 56 bits. In 1997, a challenge to break a message encrypted using DES was solved.
    * It was demonstrated that it had become feasible to use a brute-force search to find the key and break a message encrypted using DES.
    * In 1998, a DES key was broken in 56 hours.
      * These cases indicated that DES could no longer be considered secure.

* Advanced Encryption Standard (AES) in 2001
  * symmetric encryption algorithm; however, it uses a key size of 128, 192, or 256 bits, and it is still considered secure and in use today.
**AES repeats the following four transformations multiple times:**
  * SubBytes(state):
    * This transformation looks up each byte in a given substitution table (S-box) and substitutes it with the respective value. The state is 16 bytes, i.e., 128 bits, saved in a 4 by 4 array.
  * ShiftRows(state):
    * The 2nd row is shifted by one place, the third row is shifted by two places, and the fourth row is shifted by three places. This is shown in the figure below.
  * MixColumns(state):
    * Each column is multiplied by a fixed matrix (4 by 4 array).
  * AddRoundKey(state):
    * A round key is added to the state using the XOR operation.
* The total number of transformation rounds depends on the key size.

### What are the Other different types if Symmertric?

* IDEA
  * International Data Encryption Algorithm (IDEA)

* 3DES
  * Triple DES (Data Encryption Standard) and is based on DES. We should note that 3DES will be deprecated in 2023 and disallowed in 2024.

* CAST5
  * Also known as CAST-128. Some sources state that CASE stands for the names of its authors: Carlisle Adams and Stafford Tavares.

* BLOWFISH
  * Designed by Bruce Schneier

* TWOFISH
  * Designed by Bruce Schneier and derived from Blowfish

* CAMELLIA128, CAMELLIA192, and CAMELLIA256
  * Designed by Mitsubishi Electric and NTT in Japan. Its name is derived from the flower camellia japonica.




















