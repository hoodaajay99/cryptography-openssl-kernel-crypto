---
id: Diffie-Hellman-Key-Exchange
title: Diffie-Hellman Key Exchange
sidebar_label: Diffie-Hellman Key Exchange
---

## Diffie-Hellman Key Exchange

Diffie–Hellman key exchange is a method of securely exchanging cryptographic keys over a public channel.

The Diffie–Hellman key exchange method allows two parties that have no prior knowledge of each other to jointly establish a shared secret key over an insecure channel.

![diffie-hellman-key-exchange-algorithm-techskillo.png](assets/diffie-hellman-key-exchange-algorithm-techskillo.png)


This key can then be used to encrypt subsequent communications using a symmetric key cipher.

The Diffie-Hellman Key Exchange method was later used in RSA, an implementation of public-key cryptography using asymmetric algorithms.


## Diffie-Hellman Algorithm

The simplest implementation of Diffie-Hellman is based on selecting a prime number `p` and primitive root modulo of `p` called `g`.

Using Mathematical calculation around `Multiplicative group of integers modulo n`, Secret Key can be mathematically derived at both Alice and Bob side.

- Here Alice is the sender of the Message, and Bob is the Receiver of the Message.
- Both Alice and Bob publicly agree to use a prime number `p` = 23.
- They also publicly agree to use base `g` = 5, which is a primitive root modulo 23.
- Alice chooses a secret integer a = 4 (Alice Private Key). Alice calculates its Public Key `A = g^a mod p` and sends it to Bob.
    A = 5^4 mod 23 = 4
- Bob chooses a secret integer b = 3 (Bob Private Key). Bob calculates its own public key `B = g^b mod p` and sends it to Alice. 
    B = 5^3 mod 23 = 10
- Now Alice computes its Secret Key (To be used for Symmetric Encryption) `s = B^a mod p`
    s = 10^4 mod 23 = 18
- Bob computes its Secret Key (To be used for Symmetric Encryption) `s = A^b mod p`
    s = 4^3 mod 23 = 18
- Alice and Bob now share a secret (the number 18).


## Diffie-Hellman Limitations

- Improper values of prime number p and `g` primitive root modulo of `p` may weaken the Diffie-Hellman implementation.
- Original Diffie–Hellman exchange **does not provide authentication** of the communicating parties and is thus vulnerable to a **man-in-the-middle attack**.

> Original Diffie-Hellman provides basis for implementation of more advanced variants of the algorithm such as **Elliptic-curve Diffie–Hellman**

