---
id: Primary-functions-of-cryptography
title: Primary Objectives of cryptography
sidebar_label: Primary Objectives of cryptography
---

The primary objective of using cryptography is to provide following fundamental information security services.

## Privacy/confidentiality

The Objective of Privacy/confidentiality is to ensure that no one can read the message except the intended receiver.

It is sometimes also referred to as **privacy or secrecy**.

Confidentiality can be achieved through numerous means starting from physical securing to the use of mathematical algorithms for data encryption.

> Ensuring that no one can read the message except the intended receiver.

## Authentication

The Objective of Authentication is to provide the identification of the originator/Sender. 

It is the process of proving one's identity in the transaction or comminication. It confirms to the receiver that the data received has been sent only by an identified and verified sender and not by some impersonator.

> The process of proving one's identity.

It is of two types:

### Message authentication

Identifies the originator of the message without considering the infrastructure or system that has sent the message. 

Example: Received Email from an Email Box (Person). I

### Entity authentication

Identifies the entity from which data has been received

Example: Webpage received from a Website/Server.

## Integrity

The Objective of Integrity deals with identifying any alteration to the data. Integrity confirms that whether data has been modified since it was last created, transmitted, or stored by an authorized user.

Data integrity cannot prevent the alteration of data, but is used to identify that data has been altered. 

> Assuring the receiver that the received message has not been altered in any way from the original.

## Non-repudiation

The Objective of Non-repudiation is to ensures that an entity cannot refuse the ownership of a previous commitment or an action. 

It is an assurance that the original creator of the data cannot deny the creation or transmission of the said data.

Non-repudiation is a property that is most desirable in situations where there are chances of a dispute over the exchange of data. 

For example, In an Stock trading business once an Stock But or Sell order is placed electronically, the initiator cannot deny the order.

> A mechanism to prove that the sender really sent this message or initiated the transaction

## Key exchange

Modern day cryptosystems strength lies in the safety of its Keys as Algorithms are public/well known, but Key are Secret. 

So for any cryptosystem to be successful, there needs to be a Robust system in place for Key exchange between the communicating parties.

This "Key Exchange" part of a Crypto system provides Robust infrastructure for Key Exchange, and also actions to be taken if and when any Key is compromized.

> The method by which crypto keys are shared between sender and receiver.