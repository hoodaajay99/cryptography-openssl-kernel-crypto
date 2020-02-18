---
id: Overview
title: Overview
sidebar_label: Overview
---

## Authentication

Authentication is one of the Security Services in Cryptosystems.

The Objective of Authentication is to **provide the identification of the originator/Sender**. 

It is the process of proving one's identity in the transaction or communication. It confirms to the receiver that the data received has been sent only by an identified and verified sender and not by some impersonator.

> The process of proving one's identity.

## Authentication Categories

### Message Authentication

Identifies the originator of the message without considering the infrastructure or system that has sent the message. 

Example: Received Email from an Email Box (Person). I

### Entity Authentication

Identifies the entity from which data has been received

Example: Webpage received from a Website/Server.


## Authentication Methods

### Message Encryption

Message Encryption is conversion of PlainText into CipherText using a Key. 

Here, CipherText itself acts as an Authenticator.

#### Symmetric Key Encryption

![Symmetric_Encryption.png](assets/Symmetric_Encryption.png)

Here, if the Receiver is able to successfully decrypt a message using shared secret key, then it knows its has been encrypted by the Sender.

#### Asymmetric Key Encryption

![Asymmetric-Encryption.png](assets/Asymmetric-Encryption.png)

- Encrypt using Public Key of Receiver:

  Here, the Sender can use the Public Key of receiver to encrypt the message and Receiver can use Private Key of receiver to decrypt the message.

  Doing So,

  - Confidentiality is achieved
  - Authentication is not achieved

- Encrypt using Private Key of Sender:

  Here, the Sender can use the Private Key of Sender to encrypt the message and Receiver can use Public Key of Sender to decrypt the message.

  Doing So,

  - Confidentiality is not achieved
  - Authentication is achieved

#### Dual Encryption

In Dual Encryption, the Sender can use the Private Key of Sender to encrypt the message, followed by one more encryption using the Public Key of Receiver. CipherText is then transmitted to the receiver.

At the Receiver, Receiver shall use the Private Key of Receiver to decrypt the Message, following by one more decryption using the Public Key of Sender to get plaintext.

Doing So,

- Confidentiality is achieved
- Authentication is achieved


### Message Authentication Code

Message authentication code (MAC) is a short piece of information used to authenticate a message.

![authentication-mac-digest-techskillo.png](assets/authentication-mac-digest-techskillo.png)

Message authentication code system consists of three functions:

- **Key generation:** Selects a key from the key space.
- **Signing algorithm:** Signs the Message. At the Sender side, a MAC code is generated using MAC Algorithm and a Key. This MAC code is appended with the Message and sent to the Receiver.

`MAC Algo (Message, Key) = mac-sender`

- **Verifying Algorithm:** Verifies the Message. At the Receiver Side, MAC code is again generated using MAC Algorithm and Secret Key. This MAC code is compared against the received MAC code to verify authenticity of the message.

`MAC Algo (Message, Key) = mac-receiver, compare mac-receiver and mac-sender`

The MAC code acts as the Authenticator and protects both a message's data integrity as well as its authenticity, by allowing verifiers (who also possess the secret key) to detect any changes to the message content.

MAC code is also called **message digest**.

### Hash Functions

Hash Function is a mathematical algorithm that maps data of arbitrary size (often called the "message") to a bit string of a fixed size (the "**hash value**", "**hash**", or "**message digest**").

![cryptographic-hash-function-techskillo.png](assets/cryptographic-hash-function-techskillo.png)

Hash functions are one-way function and do not use a Key.

Hash Functions consist of a Signing Function at the Sender and Verifying Function at the receiver.

- **Signing Function:** Signs the Message. At the Sender side, a Hash code is generated using Hash Function. This hash code is appended with the Message and sent to the Receiver.

`h (M) = hash-code-sender`

- **Verifying Function:** Verifies the Message. At the Receiver Side, hash code is again generated using hash function. This hash code is compared against the received hash code to verify authenticity of the message.

`h (M) = hash-code-receiver, compare with hash-code-sender`

The hash code acts as the Authenticator and protects a message's data integrity, by allowing verifiers to detect any changes to the message content.