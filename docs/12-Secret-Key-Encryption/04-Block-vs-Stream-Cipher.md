---
id: Block-vs-Stream-Cipher
title: Block vs Stream Cipher
sidebar_label: Block vs Stream Cipher
---

## Block vs Stream Cipher

Cipher operation is done in chunks of input Plaintext data. The chunk size can range from byte (8 bits), word (32 bits) to multiple bits like 64 bits, 128 bits, and 256 bits.

Cipher Algorithms are categorized depending on the chunk size into **"Block Cipher"** and **"Stream Cipher"** algorithms.

**Stream Ciphers** algorithms operate on single bit, byte (8 bits), word (32 bits), where as **Block Cipher** algorithms operate on multiple bits like 64 bits, 128 bits, and 256 bits.

## Block vs Stream Cipher - Differences

| Stream Cipher | Block Cipher | 
|:--:|:--:|
| Stream Cipher Converts the plaint text into cipher text by taking 1 byte/word of plain text at a time. | Block Cipher Converts the plain text into cipher text by taking plain text’s block at a time. | 
| Stream cipher usually uses 8 bits to 32 bits | Block cipher usually uses 64 bits to 256 bits | 
| Stream cipher is more complex. | Block cipher is comparatively simple | 
| Reverse encrypted text is easy | Reverse encrypted text is hard |
| The algorithm modes which are used in stream cipher are: CFB (Cipher Feedback) and OFB (Output Feedback).| The algorithm modes which are used in block cipher are: ECB (Electronic Code Book) and CBC (Cipher Block Chaining). | 
| Relies on confusion only | Uses both confusion and diffusion | 
| Typical implementation is Vernam Cipher | Typical implementation is Feistel Cipher |

## Terms

- **Confusion** 

    Confusion is a method which guarantees that a cipher text gives no clue about the original plain text.

- **Diffusion**
    
    Diffusion is a strategy used to enhance the redundancy of the plain text by spreading it across rows and columns.

