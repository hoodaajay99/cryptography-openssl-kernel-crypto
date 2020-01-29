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

## Electronic Code Book (ECB) Mode 

This is the simplest of the encryption modes where the message is divided into blocks, and each block is encrypted separately.

### Encryption

Diagram below shows each Block of Plaintext being encrypted independently using the Symmetric Key.

- The algorithm takes the first block of plaintext and encrypts it with the key to produce the first block of ciphertext.
- The algorithm then takes the second block of plaintext and follows the same process with same key.

![Block-Cipher-Encryption-Mode-ECB_encryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-ECB_encryption-techskillo.png)

### Decryption

Diagram below shows each Block of Ciphertext being decrypted independently using the Symmetric Key.

- The algorithm takes the first block of ciphertext and decrypts it with the key to produce the first block of plaintext.
- The algorithm then takes the second block of ciphertext and follows the same process with same key.

![Block-Cipher-Encryption-Mode-ECB_decryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-ECB_decryption-techskillo.png)

### Advantages of using ECB

- Parallel encryption of blocks of bits is possible, thus it is a faster way of encryption.
- Simple way of block cipher.

### Disadvantages of using ECB

- Prone to cryptanalysis since there is a direct relationship between plaintext and ciphertext.
- Lack of diffusion, does not hide data patterns well.
- If key is compromised, even chunks of message can be decrypted easily.

### Security of the ECB mode

ECB is not recommended for use in cryptographic protocols.


## Cipher Block Chaining (CBC) Mode

In the cipher block chaining (CBC) mode of operation, an **initialization vector (IV)** is exclusive-ored with the plaintext prior to encryption. For the first round of encryption, this is a random, public value. For subsequent rounds, it is the ciphertext of the previous round.

This is intended to fix the issue with ECB mode where identical plaintext blocks create identical ciphertext blocks.

### Encryption

- The first Block of Plaintext is XOred with the random initialization vector (IV) and then encrypted with the shared secret Key to arrive at the Ciphertext.
- The subsequent Blocks of Plaintext are XOred with the Ciphertext of the previous block and then encrypted with the shared secret Key to arrive at the Ciphertext.

![Block-Cipher-Encryption-Mode-CBC_encryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-CBC_encryption-techskillo.png)

### Decryption

- The first Block of Ciphertext is decrypted with the shared secret Key and XOred with the random initialization vector (IV) to arrive at the Plaintext.
- The subsequent Blocks of Ciphertext are decrypted with the shared secret Key and XOred with the Ciphertext of previous Block to arrive at the Plaintext.

![Block-Cipher-Encryption-Mode-CBC_decryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-CBC_decryption-techskillo.png)

### Advantages of using CBC

- CBC is a good authentication mechanism.
- Better resistive nature towards cryptoanalysis than ECB.
- Better at diffusion, hides data patterns better than ECB.
- Decryption can be parallelized

### Disadvantages of using CBC

- Parallel encryption is not possible since every encryption requires previous cipher.
- Message must be padded to a multiple of the cipher block size
- One-bit change in a plaintext or initialization vector (IV) affects all following ciphertext blocks

### Security of the CBC mode

CBC is pretty good for use in cryptographic protocols.

## Propagating CBC (PCBC) Mode

In PCBC mode, each block of plaintext is XORed with both the previous plaintext block and the previous ciphertext block before being encrypted. As with CBC mode, an initialization vector is used in the first block.

### Encryption

- The first Block of Plaintext is XOred with the random initialization vector (IV) and then encrypted with the shared secret Key to arrive at the Ciphertext.
- The subsequent Blocks of Plaintext are XOred with the "XOR of Plaintext and Ciphertext" of the previous block and then encrypted with the shared secret Key to arrive at the Ciphertext.

![Block-Cipher-Encryption-Mode-PCCB_encryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-PCCB_encryption-techskillo.png)

### Decryption

- The first Block of Ciphertext is decrypted with the shared secret Key and XOred with the random initialization vector (IV) to arrive at the Plaintext.
- The subsequent Blocks of Ciphertext are decrypted with the shared secret Key and XOred with the "XOR of Plaintext and Ciphertext" of previous Block to arrive at the Plaintext.

![Block-Cipher-Encryption-Mode-PCCB_decryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-PCCB_decryption-techskillo.png)


### Advantages of using PCBC

- PCBC has Better resistive nature towards cryptoanalysis than CBC or ECB.
- Better at diffusion, hides data patterns better than CBC or ECB.

### Disadvantages of using PCBC

- Encryption can not be done in parallel.
- Decryption can not be done in parallel.
- Random read access is not possible

### Security of the PCBC mode

CBC is pretty good for use in cryptographic protocols but no longer used because of parallel processing drawbacks. 

## Cipher Feedback (CFB) Mode

The cipher feedback (CFB) mode differs from the previous modes in that the plaintext never passes through the encryption algorithm at all. Instead an initialization vector (IV) is encrypted and the result is exclusive-ored with the plaintext to create the ciphertext of a block. 

The Cipher Feedback (CFB) mode is a close relative of CBC and makes a block cipher into a self-synchronizing stream cipher.

> Plaintext never passes through the encryption algorithm at all

### Encryption

- For encrypting the First Block of Plaintext in the Cipher Feedback mode an initialization vector (IV) is encrypted with the shared secret key to arrive at an **intermediate ciphertext**. This intermediate ciphertext is then XOred with the First Block of Plaintext to arrive at the Ciphertext.
- For encrypting the subsequent Blocks of Plaintext, Ciphertext of the previous block is encrypted with the shared secret key to arrive at an **intermediate ciphertext**. This intermediate ciphertext is then XOred with the current Block of Plaintext to arrive at the Ciphertext.

![Block-Cipher-Encryption-Mode-CFB_encryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-CFB_encryption-techskillo.png)

### Decryption

- For decrypting the First Block of Ciphertext in the Cipher Feedback mode an initialization vector (IV) is **encrypted** with the shared secret key to arrive at an **intermediate ciphertext**. This intermediate ciphertext is then XOred with the First Block of Ciphertext to arrive at the Plaintext.
- For decrypting the subsequent Blocks of Ciphertext, Ciphertext of the previous block is encrypted with the shared secret key to arrive at an **intermediate ciphertext**. This intermediate ciphertext is then XOred with the current Block of Ciphertext to arrive at the Plaintext.

![Block-Cipher-Encryption-Mode-CFB_decryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-CFB_decryption-techskillo.png)

### Advantages of using CFB
- It is difficult to apply cryptanalysis.
- Decryption can be parallelized

### Disadvantages of using CFB

- Encryption cannot be parallelized

### Security of the CFB mode

- CFB is pretty good for use in cryptographic protocols.

## Output Feedback (OFB) Mode

The output feedback (OFB) mode of operation is almost identical to cipher feedback mode. The only difference is what is used as the initialization vector for every round after the first. In cipher feedback mode, the output of the encryption is exclusive-ored with the plaintext and this value is used as the next block's IV. In output feedback mode, the output of the encryption is used as the next block's IV. As a result, encryption of the same plaintext with the same key using CFB and OFB modes will produce the same ciphertext for the first block but different ones for every other block.

The Output Feedback (OFB) mode makes a block cipher into a synchronous stream cipher. It generates keystream blocks, which are then XORed with the plaintext blocks to get the ciphertext. Just as with other stream ciphers, flipping a bit in the ciphertext produces a flipped bit in the plaintext at the same location. This property allows many error correcting codes to function normally even when applied before encryption.

### Encryption

- For encrypting the First Block of Plaintext in the Output Feedback mode an initialization vector (IV) is encrypted with the shared secret key to arrive at an **intermediate ciphertext**. This intermediate ciphertext is then XOred with the First Block of Plaintext to arrive at the Ciphertext.
- For encrypting the subsequent Blocks of Plaintext, **intermediate ciphertext** of the previous block is encrypted with the shared secret key to arrive at an **intermediate ciphertext** for current block. This intermediate ciphertext is then XOred with the current Block of Plaintext to arrive at the Ciphertext.

![Block-Cipher-Encryption-Mode-OFB_encryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-OFB_encryption-techskillo.png)

### Decryption

- For decrypting the First Block of Ciphertext in the Cipher Feedback mode an initialization vector (IV) is **encrypted** with the shared secret key to arrive at an **intermediate ciphertext**. This intermediate ciphertext is then XOred with the First Block of Ciphertext to arrive at the Plaintext.
- For decrypting the subsequent Blocks of Ciphertext, **intermediate ciphertext** of the previous block is encrypted with the shared secret key to arrive at an **intermediate ciphertext**. This intermediate ciphertext is then XOred with the current Block of Ciphertext to arrive at the Plaintext.

![Block-Cipher-Encryption-Mode-OFB_decryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-OFB_decryption-techskillo.png)

### Advantages of using OFB
- It is difficult to apply cryptanalysis.
- Because the plaintext or ciphertext is only used for the final XOR, the block cipher operations may be performed in advance and the final step to be performed in parallel once the plaintext or ciphertext is available.

### Disadvantages of using OFB

- Each output feedback block cipher operation depends on all previous ones, and so cannot be performed in parallel.
- Decryption cannot be parallelized

### Security of the OFB mode

- OFB is pretty good for use in cryptographic protocols.


## Counter (CTR) Mode

The counter (CTR) mode of operation differs from the all of the others that we have seen so far. Similar to ECB mode, every encryption operation is completely separate. 

Instead of an initialization vector, it uses a combination of a nonce and a counter. The nonce is a random number used for all blocks of an encryption operation and the counter is a value that starts at zero for block zero and increments to one for block one and so on.

This combination guarantees that the same values will not pass through the encryption algorithm in the same encryption session (where every block will have the same nonce but different counter values) or the same blocks in different sessions (where every block will have the same counter value but difference nonces). Similar to the feedback modes of operation (OFB and CFB), the plaintext is exclusive-ored with the output of the encryption operation to produce the ciphertext.


### Encryption

- For encrypting a Block of Plaintext a combination of Nonce and Counter is encrypted with the shared secret key to arrive at an **intermediate ciphertext**. This intermediate ciphertext is then XOred with the Plaintext to arrive at the Ciphertext.
- Each Block of Plaintext is encrypted independently.

![Block-Cipher-Encryption-Mode-CTR_encryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-CTR_encryption-techskillo.png)

### Decryption

- For decrypting a Block of Ciphertext a combination of Nonce and Counter is encrypted with the shared secret key to arrive at an **intermediate ciphertext**. This intermediate ciphertext is then XOred with the Ciphertext to arrive at the Plaintext.
- Each Block of Ciphertext is decrypted independently.

![Block-Cipher-Encryption-Mode-CTR_decryption-techskillo.png](assets/Block-Cipher-Encryption-Mode-CTR_decryption-techskillo.png)

### Advantages of using CTR
- It is difficult to apply cryptanalysis.
- Allows a random access property during decryption
- Encryption can be done in parallel.
- Decryption can be done in parallel.

### Disadvantages of using CTR

- If the nonce offset/location information is corrupt, it will be impossible to partially recover such data due to the dependence on byte offset.

### Security of the CTR mode

- CTR mode is widely accepted and any problems are considered a weakness of the underlying block cipher.


## Galois Counter Mode

Galois Counter Mode (GCM) is a special case of counter mode. It differs in two main ways. The first is that it doesn't use a nonce (as shown in the Figure below), relying only on a counter. The second is that it calculates a message authentication code (MAC), which provides a means for ensuring that a message was not tampered with en route.


## Advantages of Block Ciphers

Block Ciphers have following advantages as compared to stream ciphers:

- Ease of implementation and less restrictive requirements.
- Some Block Ciphers provide integrity protection mechanisms (like the MAC in the GCM mode of operation).
- 

## Disadvantages of Block Ciphers

Block Ciphers have following disadvantages as compared to stream ciphers:

- Block ciphers are slower and less memory efficient than stream ciphers. 
- It is often necessary to pad plaintexts to a multiple of the block length.
- Transmission errors often cause the rest of the ciphertext to be unrecoverable.

## Additional Block Cipher Mode Variants

- XCBC
- IACBC
- IAPM - Integrity Aware Parallelizable Mode
- OCB Mode
- EAX mode (encrypt-then-authenticate-then-translate)
- CWC Mode (AEAD Mode)
- CCM Mode - Authenticated Encryption Algorithm
- Narrow-block encryption modes (LRW, XEX, and XTS)
- Wide-block encryption modes (CMC and EME)
- Message authentication codes (MACs) are often built from block ciphers. CBC-MAC, OMAC and PMAC
