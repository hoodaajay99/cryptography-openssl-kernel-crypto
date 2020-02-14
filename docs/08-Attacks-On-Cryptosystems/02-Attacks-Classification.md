---
id: Attacks-Classification
title: Attacks Classification
sidebar_label: Attacks Classification
---

## What is an Attack

Gaining the access of data by an unauthorized user is called as Attack.

Here, Gaining access means: 

- Accessing the data
- Modifying the data
- Destroying the data

## Categories of Attack

![attacks-techskillo.jpg](assets/attacks-techskillo.jpg)

Attacks can be broadly categorized into two categories:

- Passive Attack
- Active Attack

## Passive Attack

- The main goal is to obtain unauthorized access to the information
- No Data Modification is Done
- Information and communication channel are not impacted
- Information theft may go unnoticed by the owner

## Types of Passive Attack

![attack-passive-techskillo.png](assets/attack-passive-techskillo.png)

### Release of Data (Eavesdropping/Spoofing) 

Here the Third Party (Unauthorized User) will only read the data from Sender to the Receiver. 
    
This technique is also called Eavesdropping or Spoofing.

### Traffic Analysis (Deep Packet Inspection)

Here the Third Party (Unauthorized User) will read the data as well as understand the traffic flow between Sender and the Receiver.
    
This technique is also called Deep Packet Inspection.

## Active Attacks

- Data Modification will be done
- More damaging
- Information and communication channel are impacted
- Active attack may be noticed by the owner

## Types of Active Attacks

![active-attack-techskillo.png](assets/active-attack-techskillo.png)

### Masquerade Attack

**Unauthorized Third Party Masquerades as Sender** and sends the data to the Receiver in the name of the Sender.

### Replay Attack

**Unauthorized Third Party** also receives the Message from the Sender, **changes the Message and sends it to the Receiver**. **Receiver will receive two messages** in this case. 

### Data Modification

Unauthorized Third Party receives the Message from the Sender, changes the Message and sends it to the Receiver. **Original Message does not go to the receiver**. 
    
All messages are still from the Sender and Receiver does not know that data has been modified. 

### Denial Of Service

Unauthorized Third Party interrupts the services of the communication system by sending too many messages to the Server, either on behalf of genuine users or fake users.