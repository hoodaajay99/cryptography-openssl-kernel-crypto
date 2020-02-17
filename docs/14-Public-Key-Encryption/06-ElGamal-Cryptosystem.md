---
id: ElGamal-Cryptosystem
title: ElGamal Cryptosystem
sidebar_label: ElGamal Cryptosystem
---


## ElGamal encryption

In cryptography, the ElGamal encryption system is an **asymmetric key encryption algorithm** for public-key cryptography which is based on the Diffie–Hellman key exchange.

> The **Digital Signature Algorithm (DSA)** is a variant of the ElGamal signature scheme (and not Encryption)

ElGamal encryption can be defined over any cyclic group `G`, such as multiplicative group of integers modulo n. Its security depends upon the difficulty of a certain problem in `G` related to computing discrete logarithms.

## ElGamal algorithm

Consists of following steps:

- Key generation: Public and Private Key
- Encryption
- Decryption

## Practical use

- ElGamal cryptosystem is usually used as part of a hybrid cryptosystem where the message itself is encrypted using a symmetric cryptosystem and ElGamal is then used to encrypt only the symmetric key. 
- Asymmetric cryptosystems like ElGamal are usually slower than symmetric ones for the same level of security.
- It is faster to encrypt the message, which can be arbitrarily large, with a symmetric cipher, and then use ElGamal only to encrypt the symmetric key.