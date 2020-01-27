---
id: Principles-for-Cryptosystem
title: Principles for Cryptosystem
sidebar_label: Principles for Cryptosystem
---

## Kerckhoffs’s Principle for Cryptosystem

Kerckhoffs's principle (also called Kerckhoffs's desideratum, assumption, axiom, doctrine or law) of cryptography was stated by Netherlands born cryptographer Auguste Kerckhoffs in the 19th century.

Kerckhoffs defined the requirements of a good cryptosystem. Kerckhoffs stated that a cryptographic system should be secure even if everything about the system, except the key, is public knowledge.

## Design principles defined by Kerckhoffs

Following are the design principles defined by Kerckhoff for cryptosystem:

- The system must be practically, if not mathematically, unbreakable
- It should not require secrecy. Even if the cryptosystem falls in the hands of an intruder, it should not lead to any problem.
- The key should be easily communicable, memorable, and changeable. It must be possible to communicate and remember the key without using written notes, and correspondents must be able to change or modify it at will.
- The ciphertext should be transmissible by insecure Channel eg Telegraph/Internet
- It must be portable, and should not require several persons to handle or operate
- System must be easy to use and should not be stressful to use or require its users to know and comply with a long list of rules.


Before nineteenth century, Steganographic encoding and "Secret Dictionaries" were heavily used for hiding the meaning of military messages.

But Steganographic-like dictionaries, once revealed, permanently compromised a corresponding encoding system.

Kerckhoff principle, mainly the second rule revolutionized the cryptography. Simple tables of alphanumeric characters, generally in row-column fashion, which could be modified by keys (generally short, numeric) became useful. The system was considered "indecipherable" because tables and keys do not convey meaning by themselves. Secret messages could be compromised only if a matching set of table, key, and message is compromised, which is rare.

Following Kerckhoff principle, Management of keys, Tables etc become easy, cryptosystem became robust, leading way for modern day Cryptosystem.

The second rule is currently known as Kerckhoff principle. It is applied in virtually all the modern encryption algorithms such as DES, AES, etc. These public algorithms are considered very secure. The security of the encrypted message depends solely on the security of the secret encryption key.

In modern era, cryptography needs to cater to users who are connected to the Internet. In such cases, using a secret algorithm is not feasible, hence Kerckhoff principles became essential guidelines for designing algorithms in modern cryptography.
