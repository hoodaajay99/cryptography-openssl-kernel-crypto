---
id: Common-Terms-in-Cryptography
title: Common Terms in Cryptography
sidebar_label: Common Terms in Cryptography
---

## Information Security

Information Security is basically the practice of preventing unauthorized access, use, disclosure, disruption, modification, inspection, recording or destruction of information. Information can be physical or electrical one.

## Plaintext

Plain text is the original data which can be easily read and interpreted by anyone having access to it. 

## Ciphertext

Ciphertext is the garbled data which can not be easily read and interpreted by anyone having access to it. 

## Encryption

Process to convert Plaintext to Ciphertext. Encryption is usually done at the sender side.

## Decryption

Decryption is the process to convert Ciphertext to Plaintext. Decryption is usually done at the receiver side.

## Cryptology

Cryptology is the science concerned with data communication and storage in secure and usually secret form. It encompasses both cryptography and cryptanalysis.

> Cryptology is sometime used synonymously with Cryptography  

## Cryptography

Cryptography is the practice and study of techniques for secure communication in the presence of third parties called adversaries.

> Cryptography is sometime used synonymously with Cryptology.

## Cryptoanalysis

Cryptanalysis is the science or sometimes the art of breaking a cryptographic scheme.

The goal of cryptanalysis is to find some weakness or insecurity in a cryptographic scheme, thus permitting its subversion or evasion.

## Cryptosystem

In cryptography, a cryptosystem is a suite of cryptographic algorithms needed to implement a particular security service.

The Security Services implemented are confidentiality/Privacy, Authentication, Message Integrity, Non-repudiation and Key exchange.

Typically, a cryptosystem consists of three algorithms: one for key generation, one for encryption, and one for decryption.

## Stream Cipher

Encryption can be done in two ways namely Stream Cipher and Block Cipher. 

In Stream Cipher, conversion of Plaintext to Ciphertext is done bit by bit.  

It is suitable for encrypting smaller messages.

## Block Cipher

Encryption can be done in two ways namely Stream Cipher and Block Cipher. 

In Block Cipher, conversion of Plaintext to Ciphertext is done Block by Block. Block Size usually varies from 32 bits to 4096 bits.  

It is suitable for encrypting larger messages.

## Privacy/confidentiality

Privacy/Confidentiality is a Cryptosystem service whose objective is to ensure that no one can read the message except the intended receiver.

## Authentication

Authentication Privacy/Confidentiality is a Cryptosystem service whose objective is to provide the identification of the originator/Sender.

## Integrity

A Cryptosystem service whose objective deals with identifying any alteration to the data. Integrity confirms that whether data has been modified since it was last created, transmitted, or stored by an authorized user.

## Non-repudiation

The Objective of Non-repudiation is to ensures that an entity cannot refuse the ownership of a previous commitment or an action.

## Key Exchange

The "Key Exchange" Cryptosystem service provides Robust infrastructure for Key Exchange, and also actions to be taken if and when any Key is compromised.

## Information Security Attack

An Information Security attack is an attempt to gain unauthorized access to information resource or services, or to cause harm or damage to information systems.

## Active Attacks

An Active attack attempts to alter system resources or effect their operations. Active attack involve some modification of the data stream or creation of false statement. 

Examples of Active Attacks include Masquerade (when one entity pretends to be different entity), Modification of messages (message is altered, delayed or reordered), Repudiation (deny later that he/she has send or receive a message) etc.

## Passive Attacks

A Passive attack attempts to learn or make use of information from the system but does not affect system resources.

The goal of the adversary is to obtain information is being transmitted.

Examples of Passive Attacks include Traffic Spoofing (Capture traffic) Traffic analysis (Captured and Analyse the traffic to know its content, source, destination) etc.  

## Ciphers

In cryptography, a cipher is an algorithm for performing encryption or decryption—a series of well-defined steps that can be followed as a procedure. An alternative, less common term is encipherment. To encipher or encode is to convert information into cipher or code.

> Cipher is also called Cryptographic Algorithm

## Traditional Ciphers

Traditional Ciphers are cryptographic algorithms used in older days. These were mainly categorized as Substitution Ciphers (Monoalphabetic and Polyalphabetic Cipher) and Transposition Ciphers.

## Modern Ciphers

Modern Ciphers are cryptographic algorithms used in modern days. These were mainly categorized as Symmetric Cipher Algorithms, Asymmetric Cipher Algorithms and Hash Functions. 

Modern Ciphers are mostly well known algorithms, with cryptographic strength hidden in the Keys.

Examples of Modern Ciphers include, RSA, AES, KASUMI, Blowfish, Twofish etc. 

> Cipher is same as Cryptography Algorithm

## Cryptography Algorithms

Cryptography Algorithms aka cipher algorithms are used for performing encryption or decryption - a series of well-defined steps that can be followed as a procedure.

These are mainly categorized as Symmetric Cryptography Algorithms, Asymmetric Cryptography Algorithms and Hash Functions. 

Examples of Modern Ciphers include, RSA, AES, KASUMI, Blowfish, Twofish etc. 

> Cryptography Algorithm is same as Cipher

## Private Key Cryptography (Symmetric Encryption)

Private key Cryptography is the form of encryption where only a single private key is used to encrypt and decrypt information. 

It is a fast process since it uses a single key. 

> Private Key Cryptography is also called Secret Key Cryptography or Private Key Encryption

## Public Key Cryptography (Asymmetric Encryption)

Public Key cryptography, or asymmetric cryptography, is a cryptographic system that uses pairs of keys: public keys which may be shared publicly, and private keys which are known only to the owner.

Public and Private keys are mathematically related. If Private Key is used for Encryption, corresponding Public Key should be used for Decryption and vice versa.

> Public Key Cryptography is also called as Asymmetric Key Cryptography or Public Key Encryption

## Hashing Functions

Hashing function is a Cryptographic technique, where A hash function is used to map data of arbitrary size to fixed-size values.

The values returned by a hash function are called **hash values**, **hash codes**, **digests**, or **simply hashes**. The values are used to index a fixed-size table called a hash table.

## Elliptic Curve Cryptography (ECC)

Elliptic-curve cryptography is an approach to public-key cryptography based on the algebraic structure of elliptic curves over finite fields. ECC requires smaller keys compared to non-EC cryptography to provide equivalent security.

## Trust Models

A trust Model is collection of rules that informs application on how to decide the legitimacy of a Digital Certificate. 

## Public Key Infrastructures (PKI)

A public key infrastructure (PKI) is a set of roles, policies, hardware, software and procedures needed to create, manage, distribute, use, store and revoke digital certificates and manage public-key encryption.

## Web Of Trust PGP

Pretty Good Privacy (PGP) is an encryption program that provides cryptographic privacy and authentication for data communication. PGP is used for signing, encrypting, and decrypting texts, e-mails, files, directories, and whole disk partitions and to increase the security of e-mail communications.

## Kerberos

Kerberos is a computer-network authentication protocol that works on the basis of tickets to allow nodes communicating over a non-secure network to prove their identity to one another in a secure manner.

## Digital Certificates

A Digital Certificate is an electronic "password" that allows a person, organization to exchange data securely over the Internet using the public key infrastructure (PKI. 

> Digital Certificate is also known as a public key certificate or identity certificate.

## Certification Authority (CA)

A certificate authority (CA), also sometimes referred to as a certification authority, is a company or organization that acts to validate the identities of entities (such as websites, email addresses, companies, or individual persons) and bind them to cryptographic keys through the issuance of electronic documents.

Modern internet security is based on Digital Certificates issued ans managed by Certification Authority companies.

## OpenSSL

OpenSSL is a software library for applications that secure communications over computer networks against eavesdropping or need to identify the party at the other end. It is widely used by Internet servers, including the majority of HTTPS websites.