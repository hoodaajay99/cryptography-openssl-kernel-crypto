---
id: Block-Cipher
title: Block Cipher
sidebar_label: Block Cipher
---

## Block Cipher

A block cipher is an encryption method that applies a deterministic algorithm along with a symmetric key to encrypt a block of text, rather than encrypting one bit at a time as in stream ciphers.

For example, a common block cipher, AES, encrypts 128 bit blocks with a key of predetermined length: 128, 192, or 256 bits.

![Block-Cipher-Mode-Teckskillo.png](assets/Block-Cipher-Mode-Teckskillo.png)

Block cipher modes of operation have been developed to eliminate the chance of encrypting identical blocks of text the same way, the ciphertext formed from the previous encrypted block is applied to the next block.

A block of bits called an **initialization vector (IV)** is also used by modes of operation (eg in CBC mode) to ensure ciphertexts remain distinct even when the same plaintext message is encrypted a number of times.

## Various modes of operation for block ciphers

- CBC (cipher block chaining), 
- CFB (cipher feedback), 
- CTR (counter), and 
- GCM (Galois/Counter Mode) 


## Various block cipher Algorithms

- DES
- 3DES
- AES
- Blowfish
- Twofish


