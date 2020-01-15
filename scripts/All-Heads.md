## Introduction

What are Ciphers?
What are Hashing Algorithms?
Hashing & Authentication
Different Hashing Algorithms


Symmetric vs. Asymmetric Cryptography
symmetric cryptosystems
modular arithmetic
What are Symmetric Key Algorithms?
Comparison of Symmetric Key Algorithm
What are Asymmetric Algorithms?

How SSH Works?

private key and public key cryptosystems
Diffie-Hellman key exchange
Diffie Hellman Key Exchange Process
how to crack the Diffie-Hellman cryptosystem

Goals of Cryptography
Codes vs. Ciphers
Key Lifecycle Management
Key Management Process

Simple Ciphers:
--------------
Substitution Cipher
CODE | Substitution Cipher
Caesar Cipher
CODE | Caesar Cipher
Affine Cipher
CODE | Affine Cipher

Caesar cipher theory
Caesar cipher implementation
how to crack Caesar cipher
frequency analysis and language detection

Vigenere cipher theory and implementation
how to crack Vigenere cipher with Kasiski-algorithm

Modern Encryption
------------------
Stream Encryption
CODE | Xor Cipher
Random number generators
First Secure Cipher
AES (Advanced Encryption Standard)
RSA (Public Key Cryptography)
Modern Cryptography

random and pseudo-random numbers
one time pad theory and implementation
pseudo-random number generators (middle square method and LCG)

Data Encryption Standard (DES)
Triple DES (3DES)
Data Encryption Standard (DES) theory and implementation
cryptoanalysis techniques
What is Cryptanalysis?


Advanced Encryption Standard (AES)
Advanced Encryption Standard (AES) theory and implementation


Blowfish
Twofish

RC4

RSA Cryptography
RSA cryptosystem

Elliptic Curve & Quantum Cryptography
Key Exchange
Diffie-Hellman Key Exchange
Key Escrow
Trust Models

What is Public Key Infrastructure (PKI)?
PKI and Digital Certificates
What is PKI
Uses of PKI
Components of PKI Solution
What is a digital Certificate




Hash Functions and Digital Certificates

Digital Signatures
Let's Talk About Digital Signatures


Blockchain
Blockchain Use Cases
Permissioned vs. Permission-less Distributed Ledger
Bitcoin Fundamentals
How to Buy Bitcoin
SHA-256 Hashing
Smart Contracts
Oracles

How SSL / TLS works?
Let's Discuss Cipher Suite

Cryptographic Tools
- Encryption - Bitlocker, DiskCryptor, LUKS
- HashingHash - Calculator, FTK, SIFT
- File Shredders - Eraser, AVG Shredder, CCleaner,
- Steganography - Steg, Our Secret, OpenPuff

Certification Authority
-----------------------
overview of CA
Public Vs Private CA
Root and Subordinate CAs
Stand-Alone vs Enterprise CAs
Consideration for Implementing CA Hierarchy - Root and Subordinates
Hands-On Installing a Standalone Root CA
Hands-On Installing an Enterprise Subordinate CA

Certificate Request / Enrollment Methods:
-----------------------------------------

Certificate Request or Enrollment - Intro
Certificate Templates
Types of Certificate Enrollment
Hands-On Requesting a Certificate using web Enrollment
Hands-On Requesting a certificate using MMC
Hands-On Requesting a certificate using Auto-enrollment
Hands-On Requesting a certificate offline
Hands-On Securing a website using certificate
Hands-On Encrypting and Decrypting a File with Certificate

Configuring CA Properties
-------------------------
Configuring CA Administration and Security
Configuring CA Policy and Exit Modules
Understanding CRLs, AIA and CDP Extensions
Configuring AIA and CDP Extension

New Roles in Certification Services
-----------------------------------
New Roles in Certificate Services - Intro
Network Device Enrollment Service (NDES)
Configuring NDES - Part 1
Configuring NDES - Part 2
Understanding CEP and CES a.k.a. Enrollment Agents
Configuring CEP and CES
Online Responder a.k.a. OCSP
Configuring an Online Responder or OCSP

OpenSSL:
=========
Introduction  
openSSL set up

OpenSSL: Encryption and Symmetric Keys
--------------------------------------
Why we need encryption
Generating a secret Key
Key space
Cipher algorithm
Algorithm operations part 1
Algorithm operations part 2
Encrypting with a symmetric key part 1
Encrypting with a symmetric key part 2
Encrypting and decrypting summary
Speed Test

OpenSSL: Encryption and Symmetric Keys
-------------------------------------
Hash intro
One way function
Integrity check
Hash check 2 files
Encrypted Hash
Confidentiality
Hashed passwords in linux
Hash mp3 with Sha256
Hash speed test

Public Key Cryptography
-----------------------
Public and private keys intro
Generate your first private key
Digital signatures
HTTPS part 1
HTTPS part 2
Certificates web server side
Certificates browser side
Create your first certificate request
Self sign your certificate







==========================
==========================
==========================













## Introduction


Introduction to Cryptography

Understanding Encryption
cryptography fundamentals
Cryptography Overview

Overview:
---------
What Cryptography is all about
Symmetric and Asymmetric Encryption
What is Digital Signing
Encryption Algorithms
Hashing Algorithms

Objective of Cryptography
- Confidentiality and Integrity
- Authenticity, Non-Repudiation and Accountability

Types of Attack
- Passive Attacks - Sniffing or Eavesdropping
- Passive Attacks - Traffic Analysis – Deep Packet Inspection
- Active Attacks - Masquerade and Replay Attack
- Active Attacks - Brute Force Attacks
- Brute Force Attack,
- Dictionary Attack,
- Rainbow Table Attack,
- Collision Attack, and
- Pre-image Attack

A Brief Cryptography History

Basic Communication Model
Types of Cryptosystems

What are Ciphers?
What are Hashing Algorithms?
Hashing & Authentication
Different Hashing Algorithms


Symmetric vs. Asymmetric Cryptography
symmetric cryptosystems
modular arithmetic
What are Symmetric Key Algorithms?
Comparison of Symmetric Key Algorithm
What are Asymmetric Algorithms?

How SSH Works?

private key and public key cryptosystems
Diffie-Hellman key exchange
Diffie Hellman Key Exchange Process
how to crack the Diffie-Hellman cryptosystem

Goals of Cryptography
Codes vs. Ciphers
Key Lifecycle Management
Key Management Process

Simple Ciphers:
--------------
Substitution Cipher
CODE | Substitution Cipher
Caesar Cipher
CODE | Caesar Cipher
Affine Cipher
CODE | Affine Cipher

Caesar cipher theory
Caesar cipher implementation
how to crack Caesar cipher
frequency analysis and language detection

Vigenere cipher theory and implementation
how to crack Vigenere cipher with Kasiski-algorithm

Modern Encryption
------------------
Stream Encryption
CODE | Xor Cipher
Random number generators
First Secure Cipher
AES (Advanced Encryption Standard)
RSA (Public Key Cryptography)
Modern Cryptography

random and pseudo-random numbers
one time pad theory and implementation
pseudo-random number generators (middle square method and LCG)

Data Encryption Standard (DES)
Triple DES (3DES)
Data Encryption Standard (DES) theory and implementation
cryptoanalysis techniques
What is Cryptanalysis?


Advanced Encryption Standard (AES)
Advanced Encryption Standard (AES) theory and implementation


Blowfish
Twofish

RC4

RSA Cryptography
RSA cryptosystem

Elliptic Curve & Quantum Cryptography
Key Exchange
Diffie-Hellman Key Exchange
Key Escrow
Trust Models

What is Public Key Infrastructure (PKI)?
PKI and Digital Certificates
What is PKI
Uses of PKI
Components of PKI Solution
What is a digital Certificate




Hash Functions and Digital Certificates

Digital Signatures
Let's Talk About Digital Signatures


Blockchain
Blockchain Use Cases
Permissioned vs. Permission-less Distributed Ledger
Bitcoin Fundamentals
How to Buy Bitcoin
SHA-256 Hashing
Smart Contracts
Oracles

How SSL / TLS works?
Let's Discuss Cipher Suite

Cryptographic Tools
- Encryption - Bitlocker, DiskCryptor, LUKS
- HashingHash - Calculator, FTK, SIFT
- File Shredders - Eraser, AVG Shredder, CCleaner,
- Steganography - Steg, Our Secret, OpenPuff

Certification Authority
-----------------------
overview of CA
Public Vs Private CA
Root and Subordinate CAs
Stand-Alone vs Enterprise CAs
Consideration for Implementing CA Hierarchy - Root and Subordinates
Hands-On Installing a Standalone Root CA
Hands-On Installing an Enterprise Subordinate CA

Certificate Request / Enrollment Methods:
-----------------------------------------

Certificate Request or Enrollment - Intro
Certificate Templates
Types of Certificate Enrollment
Hands-On Requesting a Certificate using web Enrollment
Hands-On Requesting a certificate using MMC
Hands-On Requesting a certificate using Auto-enrollment
Hands-On Requesting a certificate offline
Hands-On Securing a website using certificate
Hands-On Encrypting and Decrypting a File with Certificate

Configuring CA Properties
-------------------------
Configuring CA Administration and Security
Configuring CA Policy and Exit Modules
Understanding CRLs, AIA and CDP Extensions
Configuring AIA and CDP Extension

New Roles in Certification Services
-----------------------------------
New Roles in Certificate Services - Intro
Network Device Enrollment Service (NDES)
Configuring NDES - Part 1
Configuring NDES - Part 2
Understanding CEP and CES a.k.a. Enrollment Agents
Configuring CEP and CES
Online Responder a.k.a. OCSP
Configuring an Online Responder or OCSP

OpenSSL:
=========
Introduction  
openSSL set up

OpenSSL: Encryption and Symmetric Keys
--------------------------------------
Why we need encryption
Generating a secret Key
Key space
Cipher algorithm
Algorithm operations part 1
Algorithm operations part 2
Encrypting with a symmetric key part 1
Encrypting with a symmetric key part 2
Encrypting and decrypting summary
Speed Test

OpenSSL: Encryption and Symmetric Keys
-------------------------------------
Hash intro
One way function
Integrity check
Hash check 2 files
Encrypted Hash
Confidentiality
Hashed passwords in linux
Hash mp3 with Sha256
Hash speed test

Public Key Cryptography
-----------------------
Public and private keys intro
Generate your first private key
Digital signatures
HTTPS part 1
HTTPS part 2
Certificates web server side
Certificates browser side
Create your first certificate request
Self sign your certificate