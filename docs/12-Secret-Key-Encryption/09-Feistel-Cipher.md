---
id: Feistel-Cipher
title: Feistel Cipher
sidebar_label: Feistel Cipher
---

## Feistel Ciphers

Feistel Cipher is not a specific scheme of block cipher. It is a design model from which many different block ciphers are derived. 

A large proportion of block ciphers use the scheme, including the Data Encryption Standard (DES)

A cryptographic system based on Feistel cipher structure uses the same algorithm for both encryption and decryption.

> It is also known as a **Feistel network**

![feistel-cipher-techskillo.png](assets/feistel-cipher-techskillo.png)


## Encryption Process

The encryption process uses the Feistel structure consisting multiple rounds of processing of the plaintext, each round consisting of a “substitution” step followed by a permutation step.

- The **input block** to each round is divided into **two halves**, the left half denoted as `Ln`, and Right Half denoted as `Rn`, where `n` is the round.
- A mathematical function `F` along with a sub Key for each round `Kn` is applied to the right half of each round `Rn`.
- The output of mathematical function `F` is XORed with Left Half of each round `Ln`.
- Now the bits in `Ln` are swapped with the bits in `Rn`. ie two Halves are swapped.
- The output after swap operation is fed into the next round.
- The number of rounds are specified by the algorithm design.
- Once the last round is completed then the two sub blocks, `Rn` and `Ln` are concatenated in this order to form the ciphertext block.

### Decryption Process

The process of decryption in Feistel cipher is almost similar. Instead of starting with a block of plaintext, the ciphertext block is fed into the start of the Feistel structure and then the process thereafter is exactly the same as described in the given illustration.


### Feisel Structure design

Feisel Structure design is defined by following parameters

- Plain Text is split into two equal halves
- No of Rounds
- Master Key and derived Sub Keys.
- Swapping of bits after each round.

