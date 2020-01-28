---
id: What-is-a-Cryptosystem
title: What is a Cryptosystem
sidebar_label: What is a Cryptosystem
---

## What is a Cryptosystem

A Cryptosystem is an implementation of cryptographic techniques and their associated infrastructure.

The Goal of a Cryptosystem to provide information security services. Cryptosystem provides security services such as Privacy/confidentiality, Authentication, Integrity, Non-repudiation and Key exchange.

Typically, a cryptosystem consists of three algorithms, one for key generation, one for encryption, and one for decryption.

> A cryptosystem is also called `Cipher System`.

Following is an example of Cryptosystem that provides confidentiality to the message being transmitted.

![cryptosystem.jpg](assets/cryptosystem.jpg)

Above example shows a Cryptosystem to achieve Confidentiality. 

Here a `Sender` is encrypting the message `PlainText` using a mathematical algorithm `Encryption Algorithm` and a key `Encryption Key` into encrypted message called `CypherText`. CypherText is sent to the receiver. 

The `Receiver` is receiving the `CypherText` and decrypting the encrypted message `CypherText` into `PlainText` using a mathematical algorithm `Decryption Algorithm` and a key `Decryption Key`.

The `Interceptor` in the middle here, even if receives the `CypherText`, It will not be able to decode it, because it does not have the `Decryption Key`.

The objective of this simple cryptosystem is that at the end of the process, only the sender and the receiver will know the plaintext.

### Cryptosystem Representation

Cryptosystem is also represented as below: 

```
C = Ek(P)
P = Dk(C)
```

Where:

P = plaintext
C = ciphertext
E = the encryption method
D = the decryption method
k = the key.

## Components of a Cryptosystem

Many components of a basic cryptosystem are as follows:

### Plaintext

It is the message to be protected during transmission.

### Encryption Algorithm

It is some mathematical formulae implemented as cryptographic algorithm that generates a `ciphertext` for any given `plaintext` and `encryption key`.

C = Ek(P)

### Ciphertext

It is the scrambled version of the `plaintext` produced by the `encryption algorithm` using a specific the `encryption key`. 

The ciphertext is sent on public networks. It can be intercepted or compromised by anyone who has access to the communication channel.

### Decryption Algorithm

It is some mathematical formulae implemented as cryptographic algorithm that generates a `plaintext` for any given `ciphertext` and `encryption key`.

P = Dk(C)

### Encryption Key

It is a random stream of bytes that is known to the sender. The sender inputs the encryption key into the encryption algorithm along with the plaintext in order to compute the ciphertext.

### Decryption Key

It is a random stream of bytes that is known to the receiver. Receiver uses the  decryption key to decrypt the ciphertext.

The decryption key may not be same as the encryption key, in which case it is mathematically related to the encryption key, for example in Asymmetric Cryptography.

## Key Space

For a given cryptosystem, a collection of all possible decryption keys is called a key space. 

For Example: 
For a 1 bit key, keysapce will be 0 and 1. 
For a 2 bit key, keysapce will be 00 and 01, 10 and 11
Similarly for 48 bit key, keysapce will have (2^48-1) keys.