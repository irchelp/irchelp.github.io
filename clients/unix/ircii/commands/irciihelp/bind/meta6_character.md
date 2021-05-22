---
title: 'ircii help: meta6_character'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: BIND <key> META6_CHARACTER
  This function switches to another "alternate" keymap.  That is,
  after this character is hit, the next key hit can have a new
  definition.  This is how the Escape sequences are done.  In
  fact, the escape key's default binding is META1_CHARACTER.  For
  example:
    BIND meta1-[ META6_CHARACTER
  binds this function to ^[[.  You may then bind meta key
  sequences with either of the two following formats:
    BIND ^[[A BACKWARD_HISTORY
  or
    BIND META6-A BACKWARD_HISTORY
  Works just like the META1_CHARACTER and the META2_CHARACTER but there
  is no default binding.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
