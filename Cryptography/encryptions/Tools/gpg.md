# What is GNU Privacy Guard (GPG)?

* Implements the OpenPGP standard.
  * Program that allows for Symmetric & Asymmetric Encryption
  * [More info on GPG](<https://gnupg.org/>)

## How to use?

* To encrypt a file using GnuPG (GPG) using the following command:
  * EX: gpg --symmetric --cipher-algo CIPHER message.txt
    * where CIPHER is the name of the encryption algorithm.
      * You can check supported ciphers using the command gpg --version.
    * The encrypted file will be saved as message.txt.gpg.
    * The default output is in the binary OpenPGP format.

* If you prefer to create an ASCII armoured output, which can be opened in any text editor, you should add the option --armour.
  * EX: gpg --armor --symmetric --cipher-algo CIPHER message.txt

* To Decrypt:
  * EX: gpg --output original_message.txt --decrypt message.gpg
