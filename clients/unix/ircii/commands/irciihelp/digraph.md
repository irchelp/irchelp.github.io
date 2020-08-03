---
title: 'ircii help: digraph'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: DIGRAPH [-<flag> [<arg0> <arg1> ...]]
  A command for maintaining the internal digraph table.  See
  BIND ENTER_DIGRAPH for information on entering digraphs.

  Use the DIGRAPH command without any arguments to display the
  current digraph table.  Note that if you are using a map
  other than Latin-1, many characters might be converted on the
  screen to something that your terminal is capable of displaying.

Available flags:
  -ADD <arg0> <arg1> <arg2>
    Adds a digraph to the table, where <arg0> and <arg1> are the two
    characters that should result in the digraph represented by the
    character <arg2>. The arguments can be given in several formats.
      DIGRAPH -ADD a b c
    will result in a digraph entry for the letter "c", that will be given
    by composing the letters "a" and "b".
      DIGRAPH -ADD a b !c
    would result in a digraph entry for the letter represented by an "a"
    with a tilde above, which is the same as "c" with MSB (bit 8) set in the
    ISO 8859/1 map.  The very same result is achieved with
      DIGRAPH -ADD 61 62 227
    thus giving the values in directly in decimal.
    All modes can be combined.

  -REMOVE <arg0> <arg1>
    Removes a digraph entry in the table, in a similar fashion as
    DIGRAPH -ADD.

  -CLEAR
    Removes ALL digraph entries from the table.
    Use this command only if you know what you are doing.
    It's primary use is when loading the .ircrc file.

  If you do any changes in the digraph table, using -ADD,
  -REMOVE or -CLEAR flags, they will be recorded in your .ircrc
  file if you chose to save it.

```
See Also:
  [BIND ENTER_DIGRAPH](bind/enter_digraph.html)
  [SET IRC_ENCODING](set/irc_encoding.html)
  [SET INPUT_ENCODING](set/input_encoding.html)
  [SET DISPLAY_ENCODING](set/display_encoding.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
