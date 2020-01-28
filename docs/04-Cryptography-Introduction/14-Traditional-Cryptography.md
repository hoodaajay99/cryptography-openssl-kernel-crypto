---
id: Traditional-Cryptography
title: Traditional Cryptography
sidebar_label: Traditional Cryptography
---

## Traditional Cryptographic Systems

In the earlier sections, we have discussed briefly about Classical Ciphers (Substitution ciphers and Transposition ciphers) which are same as Traditional Cryptographic Systems.

> Cryptographic systems are also referred to as Ciphers

In this section we will discuss the Traditional Cryptographic Systems or ciphers in further details.

## Classic Ciphers - Recap

Classical cipher are types of ciphers that were used historically, but have been replaced by modern cryptographic algorithms.

Most classical ciphers have been practically computed, solved and are also very simple to break with modern technology.

### Types of classical ciphers

- Substitution ciphers
  - Monoalphabetic Substitution Ciphers
  - Polyalphabetic Substitution Cipher
- Transposition ciphers

## Facts about traditional cryptosystems

- Most of these systems are based on symmetric key encryption scheme.
- The only security service these systems provide is confidentiality of information.
- Unlike modern systems which are digital and treat data as binary numbers, the earlier systems worked on alphabets as basic element.

## Caesar Cipher

The Caesar Cipher technique is one of the earliest and simplest method of encryption techniques. 

It’s simply a type of mono-alphabetic substitution cipher, i.e., each letter of a given text is replaced by a letter some fixed number of positions down the alphabet. For example with a shift of 1, A would be replaced by B, B would become C, and so on. 

The method is named after **Julius Caesar**, who used it to communicate with his officials.

> Caesar Cipher is also called as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift.

The concept is to replace each alphabet by another alphabet which is ‘shifted’ by some fixed number between 0 and 25.

In Caesar Cipher both sender and the receiver agree on a **‘secret shift number’** for shifting the alphabets. This secret shift number which is between 0 and 25 becomes the **Encryption Key**.

As with all single-alphabet substitution ciphers, the Caesar cipher is easily broken and in modern practice offers essentially no communications security.

### Encryption procedure

![Caesar-Cipher-Encryption-Procedure-Techskillo.png](assets/Caesar-Cipher-Encryption-Procedure-Techskillo.png)

- Character shift operation (shift by predetermined number of places aka **Secret Shift Key**) is applied on the **Plaintext**.
- As shown in the figure above, in order to encrypt a plaintext, we traverse the given Plaintext one character at a time.
- For each character, we transform the given character by shifting character by `Secret Shift Key` number of places.
- The shifted character is chosen as Ciphertext.

### Encryption Example

```
Plaintext : ABCDEFGHIJKLMNOPQRSTUVWXYZ
SecretShiftKey: 23
Ciphertext: XYZABCDEFGHIJKLMNOPQRSTUVW

Plaintext : ATTACKATONCE
SecretShiftKey: 4
Ciphertext: EXXEGOEXSRGI
```

### Decryption Procedure

![Caesar-Cipher-Encryption-Procedure-Techskillo.png](assets/Caesar-Cipher-Decryption-Procedure-Techskillo.png)

- Character shift operation in reverse direction (shift by predetermined number of places aka **Secret Shift Key**) is applied on the **Plaintext**.
- As shown in the figure above, in order to decrypt a Plaintext, we traverse the given Plaintext one character at a time.
- For each character, we transform the given character by reverse shifting character by `Secret Shift Key` number of places.
- The shifted character is chosen as Plaintext.

### Decryption Example

```
Ciphertext: XYZABCDEFGHIJKLMNOPQRSTUVW
SecretShiftKey: 23
Plaintext : ABCDEFGHIJKLMNOPQRSTUVWXYZ

Ciphertext: EXXEGOEXSRGI
SecretShiftKey: 4
Plaintext : ATTACKATONCE
```

### Security Value

Caesar Cipher is not a secure cryptosystem because there are only 26 possible keys to try out. An attacker can carry out an exhaustive key search with available limited computing resources and easily break the cipher using **Brute Force Technique**.

Also, the Caesar cipher can be easily broken even in a ciphertext-only scenario by using techniques such as **frequency analysis** or **pattern words**.

## Simple Substitution Cipher

Simple Substitution Cipher is a type of Substitution Cipher, where Instead of shifting the alphabets by some number (as done in Caesar Cipher), units of plaintext are replaced with ciphertext.

We use some permutation of the letters in alphabet. For example, A.B…..Y.Z and Z.Y……B.A are two obvious permutation of all the letters in alphabet. Permutation is nothing but a jumbled up set of alphabets.

With 26 letters in alphabet, the possible permutations are 26! (Factorial of 26) which is equal to 4x1026. The sender and the receiver may choose any one of these possible permutation as a ciphertext alphabet. This permutation is the secret key of the scheme.





