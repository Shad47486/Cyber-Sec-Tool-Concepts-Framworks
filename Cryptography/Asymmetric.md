# What is Asymmetric Encryption?

* Generates a key pair: a public key and a private key
  * Public key is shared with the world, or more specifically, with the people who want to communicate with us securely.
  * The private key must be saved securely, and we must never let anyone access it.
    * Moreover, it is not feasible to derive the private key despite the knowledge of the public key.

* Compared to Symmetric encryption, Asymmetric encryption makes it possible to exchange encrypted messages w/o a secure channel; we just need a reliable channel.
  * By reliable channel, we mean that we are mainly concerned with the channel’s integrity and not confidentiality.
  * In real-life scenarios, asymmetric encryption can be relatively slow to encrypt large files and vast amounts of data.

* Can be decypted and encrypyed using OpenSSL

* May use RSA algorithms
  * RSA relies on secure random number generation, as with other asymmetric encryption algorithms.

## How does it Work?

* If a message is encrypted with one key, it can be decrypted with the other. In other words:
  * If Alice encrypts a message using Bob’s public key, it can be decrypted only using Bob’s private key.
    * Reversely, if Bob encrypts a message using his private key, it can only be decrypted using Bob’s public key.

### What can we use Asymmetric Encryption to achieve?

* Confidentiality
  * By encrypting the messages using the recipient’s public key.
  * EX: Alice wants to ensure confidentiality in her communication with Bob. She encrypts the message using Bob’s public key, and Bob decrypts them using his private key.
    * Bob’s public key is expected to be published on a public database or on his website, for instance.
    * When using asymmetric encryption, Alice encrypts the messages using Bob's public key before sending them to Bob. Bob decrypts the messages using his private key.
      * When Bob wants to reply to Alice, he encrypts his messages using Alice’s public key, and Alice can decrypt them using her private key.
        * Bob encrypts the messages using Alice's public key before sending them to Alice.
          * Alice decrypts the messages using her private key.
            * In other words, it becomes easy to communicate with Alice and Bob while ensuring the confidentiality of the messages & the only requirement is that all parties have their public keys available for interested senders.

* Integrity, Authenticity, and Nonrepudiation

* EX: Bob wants to make a statement and wants everyone to be able to confirm that this statement indeed came from him.
  * Bob needs to encrypt the message using his private key; the recipients can decrypt it using Bob’s public key.
    * If the message decrypts successfully with Bob’s public key, it means that the message was encrypted using Bob’s private key.
  * Being decrypted successfully using Bob’s public key leads to a few interesting conclusions:
    * First, the message was not altered across the way (communication channel); this proves the message integrity.
    * Second, knowing that no one has access to Bob’s private key, we can be sure that this message did indeed come from Bob; this proves the message authenticity.
    * Finally, because no one other than Bob has access to Bob’s private key, Bob cannot deny sending this message; this establishes NONREPUDIATION.

### Diffie-Hellman Key Algorithim Exchange (Asymmetric Encryption Algorithm)

* It allows the exchange of a secret over a public channel.
  * Allows two parties to agree on a secret over an insecure channel.
    * However, the discussed key exchange is prone to a Man-in-the-Middle (MitM) attack

* We will need two mathematical operations: power and modulus. xp, i.e., x raised to the power p, is x multiplied by itself p times.
  * Furthermore, x mod m, i.e., x modulus m, is the remainder of the division of x by m.

* Can use openssl to generate them
  * We need to specify the option dhparam to indicate that we want to generate Diffie-Hellman parameters along with the specified size in bits, such as 2048 or 4096.














