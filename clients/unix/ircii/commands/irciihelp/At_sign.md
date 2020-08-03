---
title: 'ircii help: @'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: @ <expression>
  The @ command evaluates the given expression in "variable
  expression" mode.  This is the same mode used inside IF ()
  and WHILE ().  Normally it is used for variable assignment
  as it provides a nicer syntax than ASSIGN does in some
  contexts.  These are the same thing:

	@ foo = [bar]
	assign foo bar

  as are these:

	@ foo = C
	assign foo $C

```
See Also:
  [ASSIGN](assign.html)
  [ALIAS/](alias/index.html)
  [IF](if.html)
  [SET INPUT_ALIASES](set/input_aliases.html)
  [ALIAS functions](alias/functions.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
