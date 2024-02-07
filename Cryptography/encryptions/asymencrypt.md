# What is Asymmetric Encryption?

* Asymmetric encryption makes it possible to exchange encrypted messages without a secure channel; we just need a reliable channel.
  * By reliable channel, we mean that we are mainly concerned with the channel’s integrity & not confidentiality.
    * Asymmetric encryption can be relatively slow to encrypt large files & vast amounts of data

* Asymmetric encryption algorithm, Would generate a key pair: a public key & a private key.
  * The public key is shared with the world, or more specifically, with the people who want to communicate with us securely.
  * The private key must be saved securely, & we must never let anyone access it.
    * Moreover, it is not feasible to derive the private key despite the knowledge of the public key.

*How does this key pair work?*

* If a message is encrypted with one key, it can be decrypted with the other. In other words:
  * If Alice encrypts a message using Bob’s public key, it can be decrypted only using Bob’s private key.
  * Reversely, if Bob encrypts a message using his private key, it can only be decrypted using Bob’s public key.

***Tools to Encrypt/Decrypt Keys***

* [GNU Privacy Guard (GPG)](./Tools/gpg.md)
* [OpenSSL Project](./Tools/openssl.md)

## We can achieve Confidentiality, Integrity, Authenticity, & Nonrepudiation, using asymmetric encryption

* Confidentiality by encrypting the messages using the recipient’s public key
  * The only requirement is that all parties have their public keys available for interested senders.
    * EX: Alice wants to ensure confidentiality in her communication with Bob.
      * She encrypts the message using Bob’s public key, & Bob decrypts them using his private key.
      * Bob’s public key is expected to be published on a public database or on his website, for instance.
        * When Bob wants to reply to Alice, he encrypts his messages using Alice’s public key, & Alice can decrypt them using her private key.

* EX: Bob wants to make a statement & wants everyone to be able to confirm that this statement indeed came from him.
  * Bob needs to encrypt the message using his private key; the recipients can decrypt it using Bob’s public key.
    * If the message decrypts successfully with Bob’s public key, it means that the message was encrypted using Bob’s private key.
      * What does this conclude?
        * 1st, the message was not altered across the way (communication channel); this proves the message integrity.
        * 2nd knowing that no one has access to Bob’s private key, we can be sure that this message did indeed come from Bob; this proves the message authenticity.
        * Finally, bc no one other than Bob has access to Bob’s private key, Bob cannot deny sending this message; this establishes nonrepudiation.

## Asymmetric Encryption algorithms?

* RSA
  * RSA got its name from its inventors, Rivest, Shamir, & Adleman. It works as follows:
    1. Choose 2 random prime #s, p & q. Calculate N = p × q.
    2. Choose 2 integers e & d such that e × d = 1 mod ϕ(N), where ϕ(N) = N − p − q + 1.
       * This step will let us generate the public key (N,e) & the private key (N,d).
    3. The sender can encrypt a value x by calculating y = xe mod N. (Modulus)
    4. The recipient can decrypt y by calculating x = yd mod N.
       * Note that yd = xed = xkϕ(N) + 1 = (xϕ(N))k × x = x.
       * This step explains why we put a restriction on the choice of e & d.
  * RSA security relies on factorization being a hard problem.
    * It is easy to multiply p by q; however, it is time-consuming to find p & q given N.
      * Moreover, for this to be secure, p & q should be pretty large #s.
        * EX: Each being 1024 bits (that’s a # with more than 300 digits).
          * It is important to note that RSA relies on secure random # generation, as with other asymmetric encryption algorithms.
            * IF an adversary can guess p & q, the whole system would be considered insecure.
