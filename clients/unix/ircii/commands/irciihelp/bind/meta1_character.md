---
title: 'ircii help: meta1_character'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: BIND <key> META1_CHARACTER
  This function switches to an "alternate" keymap.  That is,
  after this character is hit, the next key hit can have a new
  definition.  This is how the Escape sequences are done.  In
  fact, the escape key's default binding is META1_CHARACTER.  For
  example:
    BIND ^X META1_CHARACTER
  binds this function to ^X.  You may then bind meta key
  sequences with either of the two following formats:
    BIND ^X? HELP_CHARACTER
  or
    BIND META1-? HELP_CHARACTER
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
