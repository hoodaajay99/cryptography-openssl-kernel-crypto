---
id: Block-Cipher-Modes
title: Block Cipher Modes
sidebar_label: Block Cipher Modes
---

## Block Cipher Modes

Block cipher algorithm which takes fixed size of input (called block) and produces a block of ciphertext is divided into several modes of operation:

## Block Cipher Considerations

- **Initialization vector (IV):** An initialization vector (IV) or starting variable (SV) is a block of bits that is used by several modes to randomize the encryption and produce distinct ciphertexts even if the same plaintext is encrypted multiple times. IV usually does not need to be secret.

- **Padding:** A block cipher works on units of a fixed size (known as a block size), but messages come in a variety of lengths. So some modes (namely ECB and CBC) require that the final block be padded before encryption.

## Electronic Code Book (ECB) 

This is the simplest of the encryption modes where the message is divided into blocks, and each block is encrypted separately.

### Encryption

Diagram below shows each Block of Plaintext being encrypted independently using the Symmetric Key.

- The algorithm takes the first block of plaintext and encrypts it with the key to produce the first block of ciphertext.
- The algorithm then takes the second block of plaintext and follows the same process with same key.

![Block-Cipher-Encryption-Mode-ECB_encryption-teckskillo.png](assets/Block-Cipher-Encryption-Mode-ECB_encryption-teckskillo.png)

### Decryption

Diagram below shows each Block of Ciphertext being decrypted independently using the Symmetric Key.

- The algorithm takes the first block of ciphertext and decrypts it with the key to produce the first block of plaintext.
- The algorithm then takes the second block of ciphertext and follows the same process with same key.

![Block-Cipher-Encryption-Mode-ECB_decryption-teckskillo.png](assets/Block-Cipher-Encryption-Mode-ECB_decryption-teckskillo.png)

### Advantages of using ECB

- Parallel encryption of blocks of bits is possible, thus it is a faster way of encryption.
- Simple way of block cipher.

### Disadvantages of using ECB

- Prone to cryptanalysis since there is a direct relationship between plaintext and ciphertext.
- Lack of diffusion, does not hide data patterns well.
- If key is compromised, even chunks of message can be decrypted easily.

### Security of the ECB mode

ECB is not recommended for use in cryptographic protocols.


## Cipher Block Chaining (CBC)	




## Propagating CBC (PCBC)



## Cipher Feedback (CFB)

## Output Feedback (OFB)

## Counter (CTR)

- 
