---
id: Hybrid-Cryptosystems
title: Hybrid Cryptosystems
sidebar_label: Hybrid Cryptosystems
---

## Hybrid Cryptosystem

So, why we have different cryptographic scheme like Hash Functions, Symmetric Key Cryptography and Asymmetric Key Cryptography? Why can't we have just one?

> The answer is that each scheme is optimized for a specific cryptographic application.

For example:

- **Symmetric Key Cryptography**

    Symmetric Key Cryptography aka Secret key cryptography is ideally suited for messages encryption, thus providing privacy and confidentiality. 
    
    The sender can generate a session key on a per-message basis to encrypt the message. The receiver can use the same session key in order to decrypt the message.

- **Asymmetric Key Cryptography**

    Asymmetric Key Cryptography aka Public Key Cryptograph is mainly used for Key exchange. 
    
    Asymmetric Key Cryptography schemes can also be used for non-repudiation and user authentication. If the receiver can obtain the session key encrypted with the Sender's private key, then only this sender could have sent the message.

    Asymmetric Key Cryptography can also be used to encrypt messages, but implementation is generally computation intensive, thus is mostly not used for Message/Plaintext encryption.

> Symmetric Key Cryptography algorithms performs about 1000 times faster than Asymmetric Key Cryptography algorithms.

- **Hash functions** 
  
    Hash functions are well-suited for **ensuring data integrity**. If an intruder makes changes to the Message in between,  receiver will get a different hash value than the one placed in the transmission by the sender.

    Due to nature of Hash Algorithm it is highly unlikely that two different messages will yield the same hash value, data integrity is ensured to a high degree of confidence.

## Hybrid Cryptosystem - All three Cryptographic Algorithms in Action

In the hybrid cryptosystem, all different types of Cryptographic Algorithms can be used to achieve all functions of Cryptosystems like Privacy/confidentiality, Authentication, Integrity, Non-repudiation and Key exchange.

Following illustration explains such a hybrid cryptosystem:

###  Hybrid Cryptosystem - Sender Side

![Hybrid-Cryptosystem-Transmission-TeckSkillo.png](assets/Hybrid-Cryptosystem-Transmission-TeckSkillo.png)

The illustration above shows use of all three encryption algorithms ie. Hash Functions, Public Key Encryption and Symmetric (Secret Key) Encryption.

1. **Symmetric Encryption:**
 
    Here sender shall use its own `Private Key` to encrypt the message to be transmitted (`Plaintext`) into an `Encrypted Message` by using `Symmetric Encryption` as shown in the diagram above.

    `Encrypted Message` is then transmitted to the Receiver.
    
    By using Symmetric Encryption with sender's Private Key, we can achieve `confidentiality/Privacy`, because the Message is encrypted with a key which is private and secure with the Sender of the message. 
    
    Please note that the sender can generate a new private Key for each session or transmission, in which case we can call the Key as a `Secret Session Key`.

2. **Public Key Encryption:** 

    Since the receiver need to use the Private Key (or Secret Session Key) of the sender for decrypting the message, the Sender needs to communication its Private Key (or Secret Session Key) to the receiver. Public Key Encryption is used for the very same purpose.

    As shown in the diagram above, Sender uses the `Public Key` of the receiver (Public Key is available to everyone and accessed via Public Key Repositories, a separate topic) to encrypt its own `Private Key` (or Secret Session Key) to create an `Encrypted Private/Session Key`.

    This `Encrypted Private/Session Key` is then transmitted to the Receiver. 

    The Receiver shall be able to use its own `Private Key` to decrypt the `Encrypted Private/Session Key`, to get the Sender's Private/Session Key, because it is encrypted using Sender's Private Key.

    This way Public Key Encryption can be used for secured Key Exchange thus achieving `Secured Key Exchange` objective of the Cryptosystem.
    
    Also because message was encrypted using the Sender's `Private Key`, the sender can't later on deny it did not sent the message, thus achieving Non-repudiation objective of the Cryptosystem.

> **Digital Envelope:** Combination of `Encrypted Message` and `Encrypted Private/Session Key` of the sender is also called as `Digital Envelope`

3. **Hash Function:**

    Hash functions are used to create `Digital Signature`. The sender creates the Digital Signature and sends it to the receiver along with the Message. 
    
    The receiver can use the Digital Signature along with the Message to ensures that no one has altered the Message in transit, thus achieving `Integrity` objective of the Cryptosystem.

    The digital signature is formed in two steps as shown in the diagram above:

    - First, The Sender computes the `hash value` of the message.
    - Then the Sender encrypts the `hash value` with the its own private key to form the `Digital Signature`.


> Once all the encryption algorithms are applied as described above, the `Encrypted Private Key` (of the Sender), along with the `Encrypted Message` and `Digital Signature` can be transmitted to the Receiver over **unsecured Medium**.

###  Hybrid Cryptosystem - Receiver Side

![Hybrid-Cryptosystem-Reception-TechSkillo.png](assets/Hybrid-Cryptosystem-Reception-TechSkillo.png)

The Receiver receives the which contains the `Encrypted Private Key` (of the Sender), along with the `Encrypted Message` and `Digital Signature`. 

It performs following steps to Decrypt and verify the message:

1. First of all Receiver recovers the `Private/Session secret Key` using its own `private key`
2. Then the Receiver decrypts the `Encrypted Message` using the `Private/Session secret Key` derived above.
3. In order to verify the integrity of the original message, the Receiver shall use `Digital Signature` as follows: 
  - It shall use the Sender's `Public Key` (Public Key is available to everyone and accessed via Public Key Repositories, a separate topic), to decrypt the Sender's `Hash Value` from the `Digital Signature`.
  - The Receive will then apply the hash function to Sender's original message, which has already been decrypted (Step 2) and gets its own `Hash Value`.
  - If `Hash Value` matches with the Sender's `Hash Value`, it sensures that the message has not been altered in transmit.
  - This scheme also provides `non-repudiation` since it proves that Sender sent the message. If the hash value recovered by the Receiver using Sender's public key proves that the message has not been altered, then only intended Sender could have created the digital signature.

> Even after using advanced **Hybrid Cryptosystem** as described above, we still have **Trust issues**, which are further solved by `Trust Models` described in further sections.