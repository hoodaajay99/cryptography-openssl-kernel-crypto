---
id: Public-Key-Cryptosystem
title: Public Key Cryptosystem
sidebar_label: Public Key Cryptosystem
---


## Asymmetric Key Encryption

Asymmetric Key Encryption is the process of encryption where different keys are used for encrypting and decrypting the information.

Different keys used are called Private Key and Public Key. Both these keys are mathematically related hence usable for encryption and description independently.

Any Plaintext encrypted with Private Key can be decrypted with Public Key and vice versa.

## Examples of asymmetric key encryption

Public key cryptography algorithms today are used for key exchange or digital signatures.

- RSA
- Diffie-Hellman - Used for secret-key key exchange only
- Digital Signature Algorithm (DSA) - provides Digital signature for message - authentication
- Elliptic Curve Cryptography (ECC)
- Public Key Cryptography Standards (PKCS)
- Key Exchange Algorithm (KEA)

## Asymmetric Key Encryption - Block Diagram

![Asymmetric-Encryption.png](assets/Asymmetric-Encryption.png)

Asymmetric key encryption is extensively used today in many cryptosystems.


## Features of Asymmetric key encryption

- Asymmetric key encryption is also called Public key encryption.
- Each communicating entity in the system needs to have a pair of private and public - keys. These keys are mathematically related. When one key is used for encryption, - the other can be used for decryption.
- The Public key is accessible to everyone via public repository.
- The Private key is secured and kept secret and safe by the entity.
- Though public and private keys are related, one can not be derived from the other.
- Sender uses the Public Key of the Receiver to Encrypt and Send the data.
- Receiver uses its Private Key to Encrypt the data.
- Sufficiently Large Key Size is preferred.
- Process of encryption-decryption is more complex, hence slower than symmetric key - encryption
- Processing power of computer system required to run asymmetric algorithm is higher.
- Its comparatively Robust and scalable system as compared to Symmetric Key - Cryptosystem.

## Limitations of Asymmetric Key Cryptosystem

- Trust Issue:

    The receiver needs to trust that the public key that he is using in communications with any sender really is the public key of that sender and has not been spoofed by a malicious third party.

    Trust issue in Asymmetric Key Cryptosystem is solved through a Public Key Infrastructure (PKI).

    PKI consists of a trusted third party, which securely manages and attests to the authenticity of public keys.

    Any communicating entity say Entity1 shall submit and certify its public keys with the PKI, the trusted third party.

    Any communicating entity say Entity2 (who wants Public Key of Entity1) shall request Public keys from PKI, the trusted third party.

