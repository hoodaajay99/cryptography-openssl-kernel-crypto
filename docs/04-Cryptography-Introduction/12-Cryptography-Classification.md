---
id: Cryptography-Classification
title: Cryptography Classification
sidebar_label: Cryptography Classification
---

## What is a Cipher?

In cryptography, a cipher is an algorithm for performing encryption or decryption. It is series of well-defined steps that can be followed to achieve encryption or decryption operation.

## Types of Ciphers

Ciphers can be categorized in many ways:

- By whether they use Classical approach such as Substitution or are based on Modern Mathematical Algorithms 
- By whether they work on blocks of symbols usually of a fixed size (block ciphers), or on a continuous stream of symbols (stream ciphers).
- By whether the same key is used for both encryption and decryption (symmetric key algorithms), or if a different key is used for each (asymmetric key algorithms).

Following is a diagram which tries to categorize Ciphers based on many approach:

![Classification-of-Cryptography-TeckSkillo.png](assets/Classification-of-Cryptography-TeckSkillo.png)

## Classical Ciphers

Classical cipher are types of ciphers that were used historically, but have been replaced by modern cryptographic algorithms. 

Most classical ciphers have been practically computed, solved and are also very simple to break with modern technology.

## Types of classical ciphers

Majorly categorized into two types, **Substitution ciphers** and **Transposition cipher**

### Substitution ciphers

In a substitution cipher, letters (or groups of letters) are systematically replaced throughout the message for other letters (or groups of letters).

A well-known example of a substitution cipher is the **Caesar cipher**.

Substitution ciphers can be further divided into Monoalphabetic Substitution Ciphers and Polyalphabetic Substitution Cipher.

- **Monoalphabetic Substitution Ciphers:**
 
  - Just one cipher alphabet is used, eg. "a, c, d, x, p".
  - Example: **Caesar cipher**

- **Polyalphabetic Substitution Cipher:**

  - Multiple cipher alphabets are used, eg a matrix of alphabets
  - Examples: **Vigenère cipher**

### Transposition ciphers

In a transposition cipher, the letters themselves are kept unchanged, but their order within the message is scrambled according to some well-defined scheme.

Transposition ciphers can be further divided into **Keyed Transposition Ciphers** and **NonKeyed Transposition Cipher**.


## Modern Ciphers

Modern Ciphers or Encryption are types of ciphers that are used in modern computer age.

This stream of Modern Ciphers is completely based on the ideas of mathematics such as number theory and computational complexity theory as well as concepts of probability. 


## Symmetric and Asymmetric Cyphers

Modern Ciphers can be categorized based on whether the same key is used for both encryption and decryption (symmetric key algorithms), or if a different key is used for each (asymmetric key algorithms).

## Symmetric key Ciphers

Symmetric key Ciphers use a Single Key, both for encryption and decryption. This Single Key can be **"Shared Secret Key"** or a **Random Session Key** when used for a single session. 

Message  to be transmitted is encrypted with the Shared Secret Key by the Sender. Same Shared Secret Key is used by the receiver to decrypt the Message.

Examples of Symmetric key Ciphers are RC4, QUAD, AES, DES, Blowfish, 3DES etc.


## Asymmetric key Ciphers

Asymmetric key Ciphers use a pair of keys called "Private Key" and "Public Key". Both Sender and Receiver has its own pair of Keys. The "Private Key" is confidential and kept secret, whereas "Public Key" is made public via "Key Repositories" Service. "Key Repositories" stores public keys of all the entities using Asymmetric key Ciphers.

"Private Key" and "Public Key" so used are mathematically related with each other. A Message encrypted with "Public Key" can be decrypted with its related "Private Key" and vice versa.

Examples of asymmetric key encryption algorithms are Diffie-Hellman and RSA algorithm.


## Block ciphers vs Stream Ciphers

Alternatively, Modern Symmetric Ciphers can be categorized based on whether they work on blocks of symbols usually of a fixed size (block ciphers), or on a continuous stream of symbols (stream ciphers).

### Block ciphers

Block cipher is an algorithm operating on fixed-length groups of bits, called blocks.

Block Cipher are **Deterministic**. In a block cipher, a given plaintext block will always encrypt to the same ciphertext when using the same key.

Block ciphers can operate in one of several modes:

- Electronic Code-book (ECB) mode
- Cipher Block Chaining (CBC) mode
- Cipher Feedback (CFB) mode
- Output Feedback (OFB) mode
- Counter (CTR) mode

Examples of Block Cyphers are AES, DES, 3DES, IDEA, BlowFish

### Stream ciphers

Stream ciphers operate on a **single bit (byte or computer word)** at a time and implement some form of **feedback mechanism** so that the key is constantly changing.

Stream ciphers are **Non-Deterministic**. Same plaintext will encrypt to different ciphertext in a stream cipher with each encryption.

Types:

- Self-synchronizing stream ciphers
- Synchronous stream 

Examples of Stream Cyphers are ISAAC, Quad, Fish, RC4 and Seal.

## Services provided by Modern Ciphers
- Confidentiality of information.
- Data Integrity.
- Authentication.
  - Message authentication.
  - Entity authentication.
- Non-repudiation.

## Techniques used with Modern Ciphers

- Encryption and it's key
- Hash functions
- Message Authentication Codes (MAC)
- Digital Signatures

## Classical Ciphers vs Modern Ciphers

| Classical Ciphers | Modern Ciphers |
|:--:|:--:|
| It believes in the concept of security through obscurity | Its security depends on the publicly known mathematical algorithm |
| Characters of the plain text are manipulated | Operations are performed on binary bit sequence |
| The whole of the ecosystem is required to communicate confidentially | Here, only the parties who want to execute secure communication possess the secret key |
| These are weaker as compared to modern encryption. | The encryption algorithm formed by this encryption technique is stronger as compared to classical encryption algorithms |


