---
title: 'ircii help: indent'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET INDENT [ON|OFF|TOGGLE]
  Setting INDENT to ON will cause lines of text that are longer
  than the screen width to be indented so that all lines after
  the first start underneath the second word in the first line.
  That's a long sentence, but that's what it does.  If you also
  have CONTINUED_LINE set, this will pad the CONTINUED_LINE
  characters out to the second word in the first line, unless
  CONTINUED_LINE is longer.  CONTINUED_LINE will not be
  truncated.  To disable the CONTINUED_LINE, set it to <EMPTY>.
  INDENT will never indent beyond 1/3 the width of the screen.

```
See Also:
  [SET CONTINUED_LINE](../set/continued_line.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
