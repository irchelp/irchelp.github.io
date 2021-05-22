---
title: 'ircii help: enter_digraph'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: BIND <key> ENTER_DIGRAPH
  The ENTER_DIGRAPH function allows you to enter digraphs or
  compose letters not normally available on your keyboard.  If
  you have not made any changes to the internal digraph table
  (using DIGRAPH), you could for example enter a German sharp
  "s";  enter the key to activate the ENTER_DIGRAPH function,
  followed by two "s".  Note that, in order to display this
  character on your screen, your terminal must be capable of
  doing so.  If you, for instance, have an American 7-bit ASCII
  terminal only a normal "s" will displayed, eventhough it will
  be treated as a German sharp "s" internally.

  To view the available digraphs, enter the "DIGRAPH" command
  with no arguments.  By default, ircII uses the same sequences
  as available on Digital VT320/VT420 terminals as well as in
  the editor Elvis.

```
See Also:
  [DIGRAPH](../digraph.html)
  [SET IRC_ENCODING](../set/irc_encoding.html)
  [SET INPUT_ENCODING](../set/input_encoding.html)
  [SET DISPLAY_ENCODING](../set/display_encoding.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
