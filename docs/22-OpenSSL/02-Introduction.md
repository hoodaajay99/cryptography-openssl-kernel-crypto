---
id: Introduction
title: Introduction
sidebar_label: Introduction
---

## What is OpenSSL

Definition from Wikipedia:

> OpenSSL is a **software library** for applications that **secure communications over computer networks** against eavesdropping or need to identify the party at the other end. It is widely used by Internet servers, including the majority of HTTPS websites.

## Objective of OpenSSL

Develop a robust, commercial-grade, full-featured, and Open Source toolkit implementing the Secure Sockets Layer (SSL) and Transport Layer Security (TLS) protocols as well as a full-strength general purpose cryptography library. 

## OpenSSL Provides
- CLI tool for cryptography tasks, such as creating and handling certificates and related files.
- Cryptographic library called **libcrypto**.
- A library for enabling SSL/TLS communications **libssl** to provide SSL and TLS Protocols support within clients or servers applications.

## Features of OpenSSL

- Open-source implementation of the SSL/TLS and PKI protocols
- Core Library written in the C programming language
- Implements basic cryptographic functions and provides various utility functions
- Available for most Unix-like operating systems (including Linux, macOS, and BSD) and Microsoft Windows.
- Governed by OpenSSL Software Services (OSS)

> Language Specific Wrappers allow the use of the OpenSSL library in a variety of computer languages.

## OpenSSL Algorithms

### Ciphers

AES, Blowfish, Camellia, Chacha20, Poly1305, SEED, CAST-128, DES, IDEA, RC2, RC4, RC5, 3DES, GOST 28147-89, SM4

### Cryptographic hash functions

MD5, MD4, MD2, SHA-1, SHA-2, SHA-3, RIPEMD-160, MDC-2, GOST R 34.11-94, BLAKE2, Whirlpool, SM3

### Public-key cryptography

RSA, DSA, Diffie–Hellman key exchange, Elliptic curve, X25519, Ed25519, X448, Ed448, GOST R 34.10-2001, SM2

## Major Releases (LTS)

| Release | Type | Description | Support Until |
|--|--|--|--|
| 1.0.2 | LTS | Incremental release 1.0.2x  | 2019 |
| 1.1.1 | LTS | Incremental release 1.1.1x  | 2023 |

## Active Forked Projects

- [LibreSSL](https://en.wikipedia.org/wiki/LibreSSL)
- BoringSSL and [Tink](https://github.com/google/tink)
  - Google forked openSSL and developed new library called Tink



