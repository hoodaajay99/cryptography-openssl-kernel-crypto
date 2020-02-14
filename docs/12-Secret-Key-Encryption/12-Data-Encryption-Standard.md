---
id: Data-Encryption-Standard
title: Data Encryption Standard
sidebar_label: Data Encryption Standard
---

## Data Encryption Standard (DES)

![des-encryption-decryption.png](assets/des-encryption-decryption.png)

The Data Encryption Standard (DES) is a symmetric-key block cipher published by the National Institute of Standards and Technology (NIST).


| Property | Value |
|:--:|:--:|
| Structure | Balanced Feistel Cipher |
| Rounds | 16 |
| Block size | 64 Bits |
| Key length | 64-bits (56 Bits Key + 8 Parity Bits) |
| No of Sub Keys | 16 Sub Keys |
| Sub Keys Size | 48 Bit |
| Successors | Triple DES, G-DES, DES-X, LOKI89, ICE |

## Detailed Block Diagram

![des-algorithm-block-diagram-teckskillo.png](assets/des-algorithm-block-diagram-teckskillo.png)

Following steps are implemented in DES Algorithm:
- Input of 64 Bit Plaintext
- Initial Permutation
- Round Function for each round
- Key Generator for each round
- Final Permutation
- Output of 64 Bit Ciphertext

### Initial Permutation

Initial permutation (IP) happens only once before the first round. Initial (P-Box) simply rearranges the bit positions of the input as per fixed lookup table as shown below.

![des-initial-permutation-table.png](assets/des-initial-permutation-table.png)

### Round Function

After Initial Permutation, 64 bit input is divided into two halves, ie 32 bit Left half and 32 bit right Half.

Further, the DES function applies a 48-bit key to the rightmost 32 bits to produce a 32-bit output.

> Round Function is also called as **Feistel Function**

![des-round-function-techskillo.png](assets/des-round-function-techskillo.png)

Round Function consists of following steps:

1. **Expansion permutation (E)**

    The 32-bit half-block is expanded to 48 bits using the expansion permutation, denoted E in the diagram.

2. **Key Mixing**

    48 bit output of Expansion permutation is XORed with the 48 bit subkey (derived from Key Generation Function for a specific round) to derive 48 bit output.

3. **Substitution (S-Box)**

    After mixing in the subkey, the block is divided into eight 6-bit pieces before processing by the S-boxes, or substitution boxes.

    Each of the eight S-boxes replaces its six input bits with four output bits according to a non-linear transformation, provided in the form of a lookup table.

    The S-boxes carry out the real mixing (confusion) and are the heart of the encryption.

4. **Straight Permutation**

    Finally, the 32 output from the S-boxes is rearranged according to a fixed permutation, the P-box (lookup table).
    
    Following lookup table is used:

    ![des-round-function-permutation-teckskillo.png](assets/des-round-function-permutation-teckskillo.png)


> The alternation of substitution from the S-boxes, and permutation of bits from the P-box and E-expansion provides so-called "confusion and diffusion" respectively


### Sub Key Generation (Key Schedule)

![des-subkey-generation-function.png](assets/des-subkey-generation-function.png)

Sub Key Generation or Key Schedule generates Sub Keys for each of the 16 rounds. Above figure illustrates the key schedule for encryption — the algorithm which generates the subkeys.

Following Steps are involved:

1. **Permuted Choice 1 (PC-1)**

    Permuted Choice 1 (PC-1) takes 64 bit key input and generates 56 bits of the key, by discarding eight bits.

    The 56 bits are then divided into two 28-bit halves.

2. **Key Shift Operation** 

    Each of the 28-bit halves are shifted by different number of bits basedon the round number.

3. **Permuted Choice 2 (PC-2)**

    Further Permuted Choice 2 is applied on 28-bit halves to arrive at 24 bit keys.

    Two 24 bit keys are combined to form a 48-bit SubKey for a specific round.



## Cryptanalysis on DES

DES has been found to be vulnerable to following types of attacks, hence not considered very robust in todays context.

- Brute-force attack
- Differential cryptanalysis
- Linear cryptanalysis
- Improved Davies' attack

