---
title: 'ircii help: type'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: TYPE <keystrokes>
  The TYPE command simulates keyboard keystrokes.  You can
  include control characters as well as normal characters and
  they will respond as they would as if typed at the keyboard.
  A control key is specified by a ^ before the letter.  For
  example:
    TYPE Testing^B^B^B go^E
  will type the word "Testing", move the cursor left three
  spaces, then type " go" and move the cursor to the end of the
  line,  leaving "Test going" on the input line.  This will
  probably happen too fast to see.  

See also:
  XTYPE
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
