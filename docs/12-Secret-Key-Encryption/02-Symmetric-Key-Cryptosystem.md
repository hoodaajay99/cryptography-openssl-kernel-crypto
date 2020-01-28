---
id: Symmetric-Key-Cryptosystem
title: Symmetric Key Cryptosystem
sidebar_label: Symmetric Key Cryptosystem
---

## Symmetric Key Cryptosystem

Symmetric Key Cryptosystem is also called Symmetric Key Encryption or Secret Key Cryptography (SKC)

Symmetric Key Encryption is the process of encryption where same keys are used for encrypting and decrypting the information.

The Key here is kept secret and not shared publicly, thats why it is called Secret Key Cryptography (SKC).

Both the communicating parties are provided with the Secret Key either via PreShared key mechanism or via some confidential Key exchange between the communicating parties (More on that Later).

The study of symmetric cryptosystems is referred to as symmetric cryptography. Symmetric cryptosystems are also sometimes referred to as secret key cryptosystems.

## Examples of symmetric key encryption

Digital Encryption Standard (DES)
Triple-DES (3DES)
Advanced Encryption Standard (AES)
International Data Encryption Algorithm (IDEA)
Rivest Ciphers - RC5, RC6
BlowFish
TwoFish
GSM/GPRS/KASUMI - Used in Telecom Networks
Salsa and ChaCha - Used in Data Networks
Tiny Encryption Algorithm (TEA)/TWINE - Used in IOT Networks

## Symmetric Key Encryption - Block Diagram

![Symmetric_Encryption.png](assets/Symmetric_Encryption.png)

Symmetric key encryption is extensively used today in many cryptosystems.

## Features of Symmetric key encryption

- Communication entities using symmetric key encryption must share a common Secret key - prior to exchange of encrypted information.
- Common Secret keys can be pre configured, pre communicated or exchanged over the - network/medium in real time, just before the communication.
- Secret Keys should be changed regularly to prevent any attack on the system.
- A robust mechanism needs to be implemented to exchange the key between the - communicating parties.
- As keys are recommended to be changed regularly, this mechanism becomes expensive - and cumbersome.
- Longer Length of Key (number of bits) in encryption usually improves the robustness - of the Cryptosystem, but at the same time may require more resources to encrypt or - decrypt.
- So Length of Key is chosen decisively.
- Symmetric Algorithms are comparatively less complex than asymmetric algorithm
- Processing power of computer system required to run symmetric algorithm is less.

## Limitations of Symmetric Key Cryptosystem

- Key Management Issues:

    Before any communication, both the sender and the receiver need to agree on a secret symmetric key. It requires a secure key exchange mechanism in place.

- Trust Issues:

    Since the sender and the receiver use the same symmetric key, there is an implicit requirement that the sender and the receiver should trust each other. For example, it may happen that the receiver has lost the key to an attacker and the sender is not informed.

- Scalability Issues:

    Its not possible to derive, communicate, store, apply and secure Symmetric Keys in large scale application. So Symmetric Key cryptosystem independently is not very scalable.

In todays world, transactions, like e-commerce, happen between non-familiar and non-trusted parties at an enormous scale and speed. It is simply not possible to manage Keys or establish trust at such a scale. Thus the challenges listed above make it difficult to operate a Cryptosystem based on just the Symmetric Key encryption.
