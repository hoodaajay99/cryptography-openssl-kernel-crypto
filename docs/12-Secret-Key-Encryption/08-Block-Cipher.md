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

Many well-known encryption algorithms are block ciphers. A few of the most popular block ciphers are DES/3DES, AES, Blowfish, and Twofish.

- **DES and 3DES**

    The **Data Encryption Cipher (DES)** is an algorithm developed by IBM as a submission to the US National Bureau of Standards (precursor to National Institute of Standards and Technology) for a contest to select a government-approved block cipher. DES is a Feistel cipher with a 64-bit block size and a 56-bit key. Due to (legitimate) concerns about the security of a 56-bit key, it became common to run a plaintext through three DES encryptions in sequence, each using a different key (producing a 168-bit key). This variation is called 3DES or Triple DES.
 
- **Advanced Encryption Standard (AES)**

    The **Advanced Encryption Standard (AES)** was developed by two Belgian cryptographers, Joan Daemen and Vincent Rijmen, as a submission to the National Institute of Technology (NIST) for a competition to replace DES. The algorithm, originally called Rijndael, uses a fixed block size of 128 bits and key sizes of 128, 192, or 256 bits. Each version uses a slightly different key schedule, which will be described in a later post.
    
- **Blowfish**

    Blowfish is a block cipher developed by Bruce Schneier, a cryptographer and cyber security researcher. Blowfish is a 16-round Feistel ciper and uses a 64-bit block and variable key length from one to four hundred and forty-eight bits. Blowfish was designed as a replacement to DES and placed in the public domain by Schneier to make it accessible to anyone.

- **Twofish**

    Twofish is based upon the Blowfish algorithm (and co-written by Blowfish's author). It was entered in the competition to select AES but lost to Rijndael. Twofish uses a 128-bit block size and has a maximum key size of 128 bits. Like Blowfish, Twofish is in the public domain and freely usable by anyone.

