---
title: 'ircii help: parse_command'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: BIND <key> PARSE_COMMAND <string>
  The PARSE_COMMAND function cause the supplied string to be
  executed as an ircII command (or alias). It doesn't need to be
  prefixed by the command character. This function does not disturb
  the contents of the input line and is not added to the command history.
  You may also include any of the special $ sequences available in ALIAS
  and they will be expanded before the line is parsed.  The
  sequences that deal with command line arguments ($*, $n, $-n)
  are expanded as though there were no command line arguments.

```
See Also:
  [ALIAS/](../alias/index.html)
  [ircII programming](../ircii/programming.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
