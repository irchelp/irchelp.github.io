---
title: 'ircii help: examples'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Examples of the BIND function:

    BIND ^X META2_CHARACTER
  Makes control X a meta key.

    BIND ^Xl parse LIST
  Binds the meta sequence control X followed by l to perform a LIST.
  This binding is only valid if ^X was previously bound
  to a meta function (as was done in the first example).

    BIND META1-u BACKWARD_HISTORY
  by default, the escape key is bound to META1_CHARACTER, so this
  binding makes the escape u key sequence show the last command
  history entry.  Note that more than one key may be bound to
  *any* function.

    BIND ! type Bang!
  This binds the ! (exclamation mark) to type the word "Bang!"
  into the input line whenever it is hit.

    BIND META1-[ meta2
    BIND meta2-A BACKWARD_HISTORY
    BIND meta2-B FORWARD_HISTORY
    BIND meta2-D BACKWARD_CHARACTER
    BIND meta2-C FORWARD_CHARACTER
  This sequence would bind your arrow keys to the functions listed.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
