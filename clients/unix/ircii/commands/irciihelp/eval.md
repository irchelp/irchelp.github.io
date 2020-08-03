---
title: 'ircii help: eval'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: EVAL <commands>
  EVAL passes the commands through the inline parser and executes them.
  This means that variables are expanded, and ;'s are honored.  

Note:
  You HAVE to use EVAL in a script if you want it to expand 
  aliases and vars while it loads. The value of INPUT_ALIASES is
  ignored when loading scripts.

```
See Also:
  LOAD
  [SET INPUT_ALIASES](set/input_aliases.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
