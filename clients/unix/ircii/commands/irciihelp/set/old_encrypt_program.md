---
title: 'ircii help: old_encrypt_program'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET OLD_ENCRYPT_PROGRAM <ON|OFF>
  Use old program API for the encryption program.  Old API
  passes the key as the command line argument to the program
  which is insecure.  Users should upgrade their encryption
  programs to the new API, which write the key as the first
  line, and the text to be encrypted afterwards.

```
See Also:
  [SET ENCRYPT_PROGRAM](../set/encrypt_program.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
