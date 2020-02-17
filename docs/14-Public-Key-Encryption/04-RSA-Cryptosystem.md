---
id: RSA-Cryptosystem
title: RSA Cryptosystem
sidebar_label: RSA Cryptosystem
---


## RSA Algorithm

RSA (Rivest–Shamir–Adleman) is an algorithm used by modern computers to encrypt and decrypt messages. It is an **asymmetric cryptographic algorithm**. Asymmetric means that there are two different keys. This is also called public key cryptography, because one of the keys can be given to anyone.

![rsa-algorithm-structure.png](assets/rsa-algorithm-structure.png)

RSA involves a public key and a private key. The public key can be known by everyone, and it is used for encrypting messages.

RSA is a relatively slow algorithm, and because of this, it is less commonly used to directly encrypt user data. More often, RSA passes encrypted shared keys for symmetric key cryptography which in turn can perform bulk encryption-decryption operations at much higher speed.

RSA Algorithm is used in following scenarios:

- Decrypt a message only intended for the recipient, which may be encrypted by anyone having the public key (asymmetric encrypted transport).
- Encrypt a message which may be decrypted by anyone, but which can only be encrypted by one person; this provides a digital signature.

## RSA Operation

The RSA algorithm involves four steps

- Key generation 
- Key distribution
- Encryption 
- Decryption

### Key generation

The keys for the RSA algorithm are generated in the following way:

1. Choose two distinct large prime numbers p and q. p and q are kept secret.
2. Compute n = pq.
   - n is used as the modulus for both the public and private keys. Its length, usually expressed in bits, is the key length.
   - n is released as part of the public key.
3. Compute λ(n), where λ is **Carmichael's totient function**.
   - λ(n) = (p − 1) * (q − 1)
   - λ(n) is kept secret.
4. Choose an integer e (Public Key) such that 1 < e < λ(n) and gcd(e, λ(n)) = 1; that is, e and λ(n) are coprime.
   - e is released as part of the public key.
5. Determine d as d ≡ e−1 (mod λ(n)); that is, d is the **modular multiplicative** inverse of e modulo λ(n).
   - d is kept secret as the private key exponent.

> In the original RSA paper,[2] the Euler totient function φ(n) = (p − 1)(q − 1) is used instead of λ(n) for calculating the private exponent d. Since φ(n) is always divisible by λ(n) the algorithm works as well.

### Key distribution

Suppose a `Sender` wants to send information to the `Receiver`. If they decide to use RSA, The `Sender` must know `Receiver` public key to encrypt the message and `Receiver` must use its private key to decrypt the message. 

To enable `Sender` to send its encrypted messages, `Receiver` transmits its public key (n, e) to `Sender` via a reliable, but not necessarily secret, route. `Receiver` private key (d) is never distributed.

### Encryption

After `Sender` obtains `Receiver` public key, it can send a message M to `Receiver`.

Consider `m` is a message of size `0 ≤ m < n`

![rsa-encryption.svg](assets/rsa-encryption.svg)

`Sender` computes the ciphertext `c`, using `Receiver` public key `e`

This can be done reasonably quickly, even for very large numbers, using modular exponentiation.

### Decryption

`Receiver` can recover `m` from `c` by using its private key exponent `d` by computing

![rsa-decryption.svg](assets/rsa-decryption.svg)


## RSA Algorithm for Signing messages

Suppose `Sender` uses `Receiver` public key to send him an encrypted message. In the message, it can claim to be `Sender` but `Receiver` has no way of verifying that the message was actually from `Sender` since anyone can use `Receiver` public key to send him encrypted messages. In order to verify the origin of a message, RSA can also be used to sign a message.

Suppose `Sender` wishes to send a signed message to `Receiver`. It can use her own private key to do so. It produces a hash value of the message, raises it to the power of d (modulo n) (as it does when decrypting a message), and attaches it as a "signature" to the message. When `Receiver` receives the signed message, he uses the same hash algorithm in conjunction with `Sender` public key. He raises the signature to the power of e (modulo n) (as he does when encrypting a message), and compares the resulting hash value with the message's actual hash value. If the two agree, he knows that the author of the message was in possession of `Sender` private key, and that the message has not been tampered with since.



## Security

- As of 2020, RSA keys of size 2048 to 4096 bits long are considered not breakable in near future and should be used.
- RSA may be vulnerable to Side Channel Attacks like Timing attacks

## Cryptography libraries supporting RSA

- Botan - Implemented in C++
- Bouncy Castle - Implemented in Java and C#
- cryptlib, GnuTLS, Libgcrypt - Implemented in C
- Crypto++ - Implemented in C++
- Nettle - Implemented in C
- OpenSSL - Implemented in C
- wolfCrypt - Implemented in C
- mbed TLS - Implemented in C for embedded systems

