---
id: Brief-on-Trust-Models
title: Brief on Trust Models
sidebar_label: Brief on Trust Models
---


## Trust Models Definition

Secure use of cryptography requires trust. While secret key cryptography can ensure message confidentiality and hash codes can ensure integrity, none of this works without trust.

In Secret Key Encryption, Sender and Receiver had to share a secret key. 

Public Key Encryption and schemes like Diffie-Hellman solved the secret distribution problem, but how does Receiver really know that Sender is who he says he is.

Some Malicious Third Party can still masquerade as the Sender and participate in the initial Secret Key exchange on behalf of the Sender.

Trust models are meant to solve this problem.

## Trust Models

There are a number of trust models employed by various cryptographic schemes. Some are listed below:

- **PGP Web of Trust:**

    The web of trust employed by Pretty Good Privacy (PGP) users, who hold their own set of trusted public keys.

- **Kerberos:**

    Kerberos is a secret key distribution scheme using a trusted third party.

- **Certificates:**

    Certificates allow a set of trusted third parties to authenticate each other and, by implication, each other's users.

