---
id: Key-Management-Process
title: Key Management Process
sidebar_label: Key Management Process
---

## Key management

Key management refers to management of cryptographic keys in a cryptosystem. 

This includes:

- Key generation
- Key exchange
- Key storage 
- Key use
- Key destruction
- Replacement of keys
- Revoking of Keys

![key-management-techskillo.png](assets/key-management-techskillo.png)


Key management requires implementation of cryptographic protocols, Key servers, User Procedures, and other relevant protocols for securing the complete infrastructure.

Successful key management is critical to the security of a cryptosystem. It is the more challenging side of cryptography in a sense that it involves aspects of social engineering such as system policy, user training, organizational and departmental interactions, and coordination between all of these elements, in contrast to pure mathematical practices that can be automated.

Key Management provides following Services:

- Confidentiality
- Integrity
- Availability
- Authentication of source

## Key management vs Key scheduling

**Key management** concerns keys at the user level, either between users or systems. 

Whereas **key scheduling** typically refers to the internal handling of keys within the operation of a cipher.


## Types of keys

- **Secret Keys** used in Private Key Cryptosystem
- **Private Keys** and **Public Keys** used in Public Key Cryptosystem

## Key Management Lifecycle

![key-management-lifecycle-techskillo.jpg](assets/key-management-lifecycle-techskillo.jpg)

### Key Generation

Key Generation is the process of generating the Keys to be used in various Cryptographic algorithms.

Many cryptographic libraries and tool-kits such as `OpenSSL` can be used for Key generation for both Secret, Public/Private Keys.

Some certain systems like WIFI passpharase, Keys can be input by the users also.

### Key exchange

Key Exchange is required between communicating parties in following scenario:

- Exchanging identical keys in the case of a symmetric key system
- Possessing the other party's public key in the case of a asymmetric key system

Some systems/protocols helpful in Key exchange:

- Diffie-Hellman key exchange protocol.
- OpenPGP: session key for a symmetric key algorithm is distributed encrypted by an asymmetric key algorithm.
- Key Wrap: Encapsulating one key within another.
- Smart-card-based cryptosystems

### Key storage

Keys must be stored securely to maintain communications security. 

Following techniques can be employed:

- User access password to access the key
- Encrypted and stored in servers.

### Key usage 

Key usage is governed by many factors as described below:

- Validity: length of time a key is to be used
- Frequency of replacement
- Change Keys with each message or session

## Challenges in Key Management

- Security: Vulnerability of keys from outside hackers, malicious insiders.
- Availability: Ensuring data accessibility for authorized users.
- Scalability: Managing a large number of encryption keys.
- Heterogeneity: Supporting multiple databases, applications and standards.
- Defining policy-driven access control and data protection.

## Key Compliance

Key management compliance refers to the oversight, assurance and capability of being able to demonstrate that keys are securely managed. This includes the following individual compliance domains:

- Physical security
- Logical security
- Personnel security

## Management and compliance systems

### Management and compliance systems (KMS)

A **key management system (KMS)**, also known as a **cryptographic key management system (CKMS)**, is an integrated approach for generating, distributing and managing cryptographic keys for devices and applications.

### Standards-based key management

As systems become more interconnected, key management standards have evolved to define the protocols used to manage and exchange keys:

### Key Management Interoperability Protocol (KMIP)

KMIP is an extensible key management protocol that has been developed by many organizations working within the **OASIS standards body**.

It covers the full key life cycle of both symmetric and asymmetric keys in a variety of formats:

- Key Generation
- Wrapping of keys
- provisioning schemes
- cryptographic operations
- meta data associated with the keys

### Non-KMIP-compliant key management

### Open Source
- Barbican, the OpenStack security API
- KeyBox - web-based SSH access and key management
- SecretHub - end-to-end encrypted SaaS key management

### Closed Source

- Amazon Web Service (AWS) Key Management Service (KMS)
- Microsoft Azure Key Vault
- Oracle Key Vault
- Thales Key Management
