---
id: Advanced-Encryption-Standard
title: Advanced Encryption Standard
sidebar_label: Advanced Encryption Standard
---

## Advanced Encryption Standard

The Advanced Encryption Standard, also known by its original name **Rijndael**, is a **symmetric-key block cipher algorithm** established by the U.S. National Institute of Standards and Technology in 2001.

It is more popular and widely adopted symmetric encryption algorithm and is found to be at least six time faster than triple DES.

AES is a subset of the Rijndael block cipher developed by two Belgian cryptographers, Vincent Rijmen and Joan Daemen, who submitted a proposal to NIST during the AES selection process. Rijndael is a family of ciphers with different key and block sizes.

![aes-encryption-decryption-techskillo.png](assets/aes-encryption-decryption-techskillo.png)


## AES Properties

| Property | Value |
|:--:|:--:|
| Structure | Iterative (Symmetric key symmetric block cipher) |
| Block size | 128 Bits Plaintext (4 words)|
| No of Rounds | 10 |
| Master Key Size | 128-bits (4 words) Also 128/192/256-bit keys |
| Total No of Sub Keys Generated | 44 Sub Keys |
| Each SubKey Size | 1 word (32 bits) |
| SubKeySet Size (Each Round) | 4 SubKeys (4 Words / 128 Bytes) |
| Pre-Round Calculation |  4 SubKeys used |
| Ciphertext |  4 words (128 Bytes) |
| Successors | AES 192, AES 256 |
| Advantages | Stronger and faster than Triple-DES |
| Implementation | Software implementable in C and Java |  

## AES Block Diagram

![aes-block-diagram-teckskillo.png](assets/aes-block-diagram-teckskillo.png)

## AES Algorithm

AES operates on a 4 × 4 column-major order array of bytes, termed the state. State array stores all the intermediate results in AES calculations.

For instance, if there are 16 bytes (128 bits), b0, b1 ...  b15, these bytes are represented as this two-dimensional array:

![aes-2d-array.svg](assets/aes-2d-array.svg)

The key size used for an AES cipher specifies the number of transformation rounds that convert the input, called the plaintext, into the final output, called the ciphertext. The number of rounds are as follows:

- 10 rounds for 128-bit keys.
- 12 rounds for 192-bit keys.
- 14 rounds for 256-bit keys.

## Steps performed in AES

### KeyExpansion

AES requires a 128-bit SubKey for Pre-Round Transformation functions and one Round Subkey for each Round Function.

![aes-key-expansion-techskillo.png](assets/aes-key-expansion-techskillo.png)
    
Round keys are derived from the cipher key using Rijndael's key schedule.

### Initial round key addition (Pre-Round Transformation)

1. AddRoundKey: Each byte of the state is combined with a byte of the round key using bitwise xor.

### 9, 11 or 13 rounds:

1. SubBytes: SubBytes is a non-linear substitution step where each byte is replaced with another according to a lookup table.
2. ShiftRows: ShiftRows is a transposition step where the last three rows of the state are shifted cyclically a certain number of steps.
3. MixColumns: MixColumns is a linear mixing operation which operates on the columns of the state, combining the four bytes in each column.
4. AddRoundKey: Each byte of the state is combined with a byte of the round key using bitwise xor.

### Final round (making 10, 12 or 14 rounds in total):

1. SubBytes: SubBytes is a non-linear substitution step where each byte is replaced with another according to a lookup table.
2. ShiftRows: ShiftRows is a transposition step where the last three rows of the state are shifted cyclically a certain number of steps.
3. AddRoundKey: Each byte of the state is combined with a byte of the round key using bitwise xor.


## The SubBytes step

![aes-subbyte-step-techskillo.png](aes-../assets/aes-subbite-step-techskillo.png)

In the SubBytes step, each byte `a{i,j}` in the state array is replaced with a SubByte `S(a{i,j})` using an 8-bit substitution box. This operation provides the non-linearity in the cipher.

## The ShiftRows step

![aes-shiftrows-step.png](assets/aes-shiftrows-step.png)

The ShiftRows step operates on the rows of the state. it cyclically shifts the bytes in each row by a certain offset. For AES, the first row is left unchanged. Each byte of the second row is shifted one to the left. Similarly, the third and fourth rows are shifted by offsets of two and three respectively.

## The MixColumns step

![aes-mix-columns.png](assets/aes-mix-columns.png)

In the MixColumns step, the four bytes of each column of the state are combined using an invertible linear transformation. The MixColumns function takes four bytes as input and outputs four bytes, where each input byte affects all four output bytes. Together with ShiftRows, MixColumns provides diffusion in the cipher.

## The AddRoundKey step

![aes-addroundKey.png](assets/aes-addroundKey.png)

In the AddRoundKey step, the subkey is combined with the state. For each round, a subkey is derived from the main key using Rijndael's key schedule; each subkey is the same size as the state. The subkey is added by combining each byte of the state with the corresponding byte of the subkey using bitwise XOR.


## Decryption Process

The process of decryption of an AES ciphertext is similar to the encryption process in the reverse order. Each round consists of the four processes conducted in the reverse order:

- Add round key
- Mix columns
- Shift rows
- Byte substitution

Since sub-processes in each round are in reverse manner, unlike for a Feistel Cipher, the encryption and decryption algorithms needs to be separately implemented, although they are very closely related.

## AES Cryptoanalysis - Known attacks

At present, there is no known practical attack that would allow someone without knowledge of the key to read data encrypted by AES when correctly implemented.

Only practical way to break AES comes out to be **"Side Channel attacks"**. But many modern CPUs have built-in hardware instructions for AES, which would protect against timing-related side-channel attacks.