---
id: Common-Attacks
title: Common Attacks
sidebar_label: Common Attacks
---

The basic intention of an attacker is to break a cryptosystem and to find the plaintext from the ciphertext. To obtain the plaintext, the attacker only needs to find out the secret decryption key, as the algorithm is already in public domain.


Based on the methodology used, attacks on cryptosystems are categorized as follows:

## Ciphertext Only Attacks (COA)

In this method, the attacker has access to a set of ciphertext(s). He does not have access to corresponding plaintext. 

COA is said to be successful when key can be derived and corresponding plaintext can be determined from a given set of ciphertext.

Modern cryptosystems are guarded against ciphertext-only attacks.

## Known Plaintext Attack (KPA)

In this method, the attacker knows the plaintext for some parts of the ciphertext. The task is to decrypt the rest of the ciphertext using this information. This may be done by determining the key. 

The best example of this attack is _linear cryptanalysis_ against block ciphers.

## Chosen Plaintext Attack (CPA)

In this method, the attacker has the text of his choice encrypted. So he has the ciphertext-plaintext pair of his choice. This simplifies his task of determining the encryption key. 

An example of this attack is _differential cryptanalysis applied against block ciphers_ as well as hash functions. A popular public key cryptosystem, RSA is also vulnerable to chosen-plaintext attacks.

## Dictionary Attack

The attacker builds a dictionary of ciphertexts and corresponding plaintexts that he has learnt over a period of time.

In future, when an attacker gets the ciphertext, he refers the dictionary to find the corresponding plaintext.

## Brute Force Attack (BFA)

In this method, the attacker tries to determine the key by attempting all possible keys (Entire Key Space). If the key is 8 bits long, then the number of possible keys is 256.

The attacker knows the ciphertext and the algorithm, now he attempts all the 256 keys one by one for decryption.

> To guard against Brute Force Attack, a **large key size** (hence **Large Key space**) is recommended.

## Birthday Attack

This attack is a variant of brute-force technique. It is used against the cryptographic hash function. When students in a class are asked about their birthdays, the answer is one of the possible 365 dates. Let us assume the first student's birth date is 3rd Aug. Then to find the next student whose birth date is 3rd Aug, we need to enquire 1.25*√365 ≈ 25 students.

Similarly, if the hash function produces 64 bit hash values, the possible hash values are 1.8x1019. By repeatedly evaluating the function for different inputs, the same output is expected to be obtained after about 5.1x109 random inputs.

If the attacker is able to find two different inputs that give the same hash value, it is a **collision** and that hash function is said to be broken.

> Hash function should be chosen such as to minimize the **Hash Collisions**

## Man in Middle Attack (MIM)

The targets of this attack are mostly public key cryptosystems where key exchange is involved before communication takes place.

- Host A wants to communicate to host B, hence requests public key of B.
- An attacker intercepts this request and sends his public key instead.
- Thus, whatever host A sends to host B, the attacker is able to read.
- In order to maintain communication, the attacker re-encrypts the data after reading with - his public key and sends to B.
- The attacker sends his public key as A’s public key so that B takes it as if it is - taking it from A.


## Side Channel Attack (SCA) 

This type of attack is not against any particular type of cryptosystem or algorithm. Instead, it is launched to exploit the weakness in physical implementation of the cryptosystem.

## Timing Attacks

They exploit the fact that different computations take different times to compute on processor. By measuring such timings, it is be possible to know about a particular computation the processor is carrying out. 

**For example**, if the encryption takes a longer time, it indicates that the secret key is long.

## Power Analysis Attacks

These attacks are similar to timing attacks except that the amount of power consumption is used to obtain information about the nature of the underlying computations.

**For example**, if the encryption consumes more power, it indicates that the secret key is long.

## Fault analysis Attacks

In these attacks, errors are introduced in the cryptosystem and the attacker studies the resulting output for useful information.
