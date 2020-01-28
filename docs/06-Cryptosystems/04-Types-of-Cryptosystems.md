---
id: Types-of-Cryptosystems
title: Types of Cryptosystems
sidebar_label: Types of Cryptosystems
---

## Types of Cryptosystem

> Please note that Cryptosystem are somewhat synonymous to Cryptographic Algorithms


There are several ways of classifying Cryptosystem (cryptographic algorithms). Here we will categorize the cryptosystems based on the manner in which encryption-decryption is performed and the number of keys that are employed for encryption and decryption.

Mainly three types of Cryptosystem will be discussed:

1. Symmetric Key Encryption or Secret Key Cryptography (SKC)
2. Asymmetric Key Encryption or Public Key Cryptography (PKC)
3. Hash Functions or Digest/Digital fingerprinting

## Symmetric Key Encryption

Symmetric Key Encryption is also called Secret Key Cryptography (SKC)

Symmetric Key Encryption is the process of encryption where same keys are used for encrypting and decrypting the information. 

The Key here is kept secret and not shared publicly, thats why it is called Secret Key Cryptography (SKC). 

Both the communicating parties are provided with the Secret Key either via PreShared key mechanism or via some confidential Key exchange between the communicating parties (More on that Later).

The study of symmetric cryptosystems is referred to as **symmetric cryptography**. Symmetric cryptosystems are also sometimes referred to as **secret key cryptosystems**.

### Examples of symmetric key encryption

- Digital Encryption Standard (DES)
- Triple-DES (3DES)
- Advanced Encryption Standard (AES)
- International Data Encryption Algorithm (IDEA)
- Rivest Ciphers - RC5, RC6
- BlowFish
- TwoFish
- GSM/GPRS/KASUMI - Used in Telecom Networks 
- Salsa and ChaCha - Used in Data Networks
- Tiny Encryption Algorithm (TEA)/TWINE - Used in IOT Networks

### Symmetric Key Encryption - Block Diagram

![Symmetric_Encryption.png](assets/Symmetric_Encryption.png)

Symmetric key encryption is extensively used today in many cryptosystems.

### Features of Symmetric key encryption

- Communication entities using symmetric key encryption must share a common Secret key prior to exchange of encrypted information.
- Common Secret keys can be pre configured, pre communicated or exchanged over the network/medium in real time, just before the communication. 
- Secret Keys should be changed regularly to prevent any attack on the system.
- A robust mechanism needs to be implemented to exchange the key between the communicating parties. 
- As keys are recommended to be changed regularly, this mechanism becomes expensive and cumbersome.
- Longer Length of Key (number of bits) in encryption usually improves the robustness of the Cryptosystem, but at the same time may require more resources to encrypt or decrypt. 
- So Length of Key is chosen decisively.
- Symmetric Algorithms are comparatively less complex than asymmetric algorithm 
- Processing power of computer system required to run symmetric algorithm is less. 

### Limitations of Symmetric Key Cryptosystem

- **Key Management Issues**: 

    Before any communication, both the sender and the receiver need to agree on a secret symmetric key. It requires a secure key exchange mechanism in place.

- **Trust Issues**:
    
    Since the sender and the receiver use the same symmetric key, there is an implicit requirement that the sender and the receiver should `trust` each other. For example, it may happen that the receiver has lost the key to an attacker and the sender is not informed.

- **Scalability Issues**:

    Its not possible to derive, communicate, store, apply and secure Symmetric Keys in large scale application. So Symmetric Key cryptosystem independently is not very scalable.  

In todays world, transactions, like e-commerce, happen between non-familiar and non-trusted parties at an enormous scale and speed. It is simply not possible to manage Keys or establish trust at such a scale. Thus the challenges listed above make it difficult to operate a Cryptosystem based on just the Symmetric Key encryption.

These limitations of symmetric key encryption gave rise to asymmetric key encryption schemes.

## Asymmetric Key Encryption

Asymmetric Key Encryption is the process of encryption where different keys are used for encrypting and decrypting the information.

Different keys used are called `Private Key` and `Public Key`. Both these keys are  mathematically related hence usable for encryption and description independently.

Any Plaintext encrypted with `Private Key` can be decrypted with `Public Key` and vice versa.

### Examples of symmetric key encryption

Public key cryptography algorithms today are used for **key exchange** or **digital signatures**.

- RSA
- Diffie-Hellman - Used for secret-key key exchange only
- Digital Signature Algorithm (DSA) - provides Digital signature for message authentication
- Elliptic Curve Cryptography (ECC)
- Public Key Cryptography Standards (PKCS)
- Key Exchange Algorithm (KEA)

### Asymmetric Key Encryption - Block Diagram

![Asymmetric-Encryption.png](assets/Asymmetric-Encryption.png)

Asymmetric key encryption is extensively used today in many cryptosystems.

### Features of Asymmetric key encryption

- Asymmetric key encryption is also called Public key encryption.
- Each communicating entity in the system needs to have a pair of private and public keys. These keys are mathematically related. When one key is used for encryption, the other can be used for decryption.
- The Public key is accessible to everyone via public repository.
- The Private key is secured and kept secret and safe by the entity.
- Though public and private keys are related, one can not be derived from the other.
- Sender uses the Public Key of the Receiver to Encrypt and Send the data.
- Receiver uses its Private Key to Encrypt the data.
- Sufficiently Large Key Size is preferred.
- Process of encryption-decryption is more complex, hence slower than symmetric key encryption
- Processing power of computer system required to run asymmetric algorithm is higher.
- Its comparatively Robust and scalable system as compared to Symmetric Key Cryptosystem. 

### Limitations of Asymmetric Key Cryptosystem

- **Trust Issue:**

    The receiver needs to trust that the public key that he is using in communications with any sender really is the public key of that sender and has not been spoofed by a malicious third party.

    Trust issue in Asymmetric Key Cryptosystem is solved through a **Public Key Infrastructure (PKI)**.
    
    PKI consists of a trusted third party, which securely manages and attests to the authenticity of public keys. 
    
    Any communicating entity say Entity1 shall submit and certify its public keys with the PKI, the trusted third party.
    
    Any communicating entity say Entity2 (who wants Public Key of Entity1) shall request Public keys from PKI, the trusted third party.


## Cryptography using Hash Functions

Hash functions, also called `message digests` or `one-way encryption`, are algorithms that, in essence, use no key. A fixed-length hash value is computed based upon the `plaintext` that makes it impossible for either the contents or length of the plaintext to be recovered.

### Examples of Hash Functions

- Message Digest (MD) algorithms - MD2, MD3, MD4, MD5 etc
- Secure Hash Algorithm (SHA) - SHA1, SHA2, SHA3
- Whirlpool

### Hash Functions - Block Diagram

![Hash-Functions.png](assets/Hash-Functions.png)

Asymmetric key encryption is extensively used today in many cryptosystems.

### Features of Cryptography using Hash Functions

- Hash functions are simply Algorithms that convert a Plaintext into generally fixed-size Hash Value.
- Hash Value is called `message digests`.
- Hash functions don't need a Key.
- It should never be possible to know the original Plaintext from Message digests.
- Length of Message digests generally define the robustness of Hash Functions encryption.
- Cryptography using Hash Functions provides Message Integrity Service in a Cryptosystem.
- Objective of a good Hashing Algorithm is minimize Hash collisions.

> Hash collisions define a scenario where multiple Plaintext values generate the same Hash Value (Digest). The same Hash Values are referred to as Hash collisions. 

## Summary - Symmetric vs Asymmetric Encryption vs Hash Functions

| Topic | Symmetric Encryption | Asymmetric Encryption | Hash Functions |
|:--:|:--:|:--:|:--:|
| The Basics | Symmetric encryption makes use of a single key for both encryption and decryption. | Asymmetric encryption uses different keys for encryption and decryption. It applies a public key for encryption, while a private key is used for decryption. | Hash Functions encrypt a PlainText into fix-size Hash value called Digest without use of a Key | 
| Algorithms | Symmetric encryption using algorithms like 3DES, DES, RC4, AES and QUAD.| Asymmetric encryption uses RSA and ECC algorithms to create the public and private keys.| Hash functions have algorithms like MD5, SHA3 and Whirlpool | 
| Performance | While Symmetric encryption is fast in its execution. | Asymmetric encryption tends to be slower in execution as a result of more complex algorithms which come with a high computation burden.| Hash Functions are comparatively fast in its execution | 
| Purpose | Symmetric encryption is utilized for bulk data transmission.| Asymmetric encryption is mostly used for securely exchanging secret keys.| Hash functions are used for Data Integrity |
