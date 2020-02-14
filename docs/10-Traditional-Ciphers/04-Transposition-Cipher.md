---
id: Transposition-Cipher
title: Transposition Cipher
sidebar_label: Transposition Cipher
---

## Transposition Cipher

In cryptography, a transposition cipher is a method of encryption by which the positions held by units of plaintext (which are commonly characters or groups of characters) are shifted to get the ciphertext.

In simple words, in Transposition Cipher, position of the units is changed.

- Re-Arrange the order of plaintext characters.
- No Replacement/Substitution of plaintext characters.

## Types of Transposition Cipher

- Rail Fence cipher
- Route cipher
- Row transposition
- Columnar transposition
- Double transposition

### Rail Fence cipher

![rail-fence-cipher-techskillo.png](assets/rail-fence-cipher-techskillo.png)

- In the rail fence cipher, the plain-text is written downwards and diagonally on successive rails of an imaginary fence.
- When we reach the bottom rail, we traverse upwards moving diagonally, after reaching the top rail, the direction is changed again. Thus the alphabets of the message are written in a zig-zag manner.
- After each alphabet has been written, the individual rows are combined to obtain the cipher-text.


### Row Transposition Cipher

- Plaintext is written row by row in a rectangle.
- To Get the Ciphertext, write out the columns in an order specified by a key.

For Example: 

![row-transposition-cipher-techskillo.png](assets/row-transposition-cipher-techskillo.png)


