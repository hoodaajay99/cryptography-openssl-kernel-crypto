---
id: Stream-Cipher
title: Stream Cipher
sidebar_label: Stream Cipher
---

## Stream Ciphers

A stream cipher is a symmetric key cipher algorithm where plaintext digits are combined with a pseudorandom cipher digit stream (**Keystream**).

In a stream cipher, each plaintext digit is encrypted one at a time with the corresponding digit of the keystream, to give a digit of the ciphertext stream.

## Example

As shown in the example below, the pseudorandom bit generator is used to generate a sequence of random bit stream called **Keystream**. This Keystream is XOred with the plaintext to arrive at the ciphertext.

Suppose the original message (plain text) is “blue sky” in ASCII (i.e. text format). When you convert these ASCII into equivalent binary values, it will give the output in 0’s and 1’s form. Let it be translated in 010111001.

![Stream-Cipher-TechSkillo.png](assets/Stream-Cipher-TechSkillo.png)

XOR produces an output of 1 when one input is 0, and the other is 1. The output is 0 if either both the inputs are 0 or both the inputs are 1.

## Types of Stream Cipher

A stream cipher generates successive elements of the keystream based on its internal state. 

Stream ciphers are divided into two types based on how its internal state is updated.

### Synchronous stream ciphers

In a synchronous stream cipher a stream of pseudo-random **digits is generated independently of the plaintext and ciphertext messages**, and then combined with the plaintext (to encrypt) or the ciphertext (to decrypt).

In a synchronous stream cipher, the sender and receiver must be exactly in step for decryption to be successful. If digits are added or removed from the message during transmission, synchronization is lost.

If, however, a digit is corrupted in transmission, rather than added or lost, only a single digit in the plaintext is affected and the error does not propagate to other parts of the message.

## Self-synchronizing stream ciphers

It uses several of the **previous N ciphertext digits to compute the keystream**. 

Such schemes are known as self-synchronizing stream ciphers, asynchronous stream ciphers or ciphertext autokey (CTAK)

Advantage that the receiver will automatically synchronize with the keystream generator after receiving N ciphertext digits, making it easier to recover if digits are dropped or added to the message stream.

## Popular stream ciphers

- RC4

    RC4, which stands for Rivest Cipher 4, is the most widely used of all stream ciphers, particularly in software. It's also known as ARCFOUR or ARC4. RC4 steam chiphers have been used in various protocols like WEP and WPA (both security protocols for wireless networks) as well as in TLS. 

    Recent studies have revealed vulnerabilities in RC4, and is not used.

- SALSA, SOSEMANUK, PANAMA:

    These are not very popular ones.