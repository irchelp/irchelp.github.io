---
title: 'ircii help: encrypt_program'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET ENCRYPT_PROGRAM <encryption program path>
  Sets the program used to encrypt and decrypt messages.  The
  program selected must take an encryption key as the first
  line written to work with IRCII, with the second and
  subsequent lines the text to encrypted, which is expected
  on the programs standard output.

  Note that in ircII 4.4 and previous, this variables program
  API was different.  Originally the encryption key was they
  command line argument, and the program a true filter.
  However, it is not secure from local users snooping the
  key and being able to decrypt messages, should they obtain
  them.  Set the OLD_ENCRYPT_PROGRAM variable to ON
  to obtain this old behaviour.
```
See Also:
  [SET OLD_ENCRYPT_PROGRAM](../set/old_encrypt_program.html)
  [SET DECRYPT_PROGRAM](../set/decrypt_program.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
