---
title: 'ircii help: debug'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET DEBUG <debug level>
  The DEBUG variable enables three types of debugging
  output dependant on the settings of various bits.
	bit	value	purpose
	 0	  1	Display all commands executed
	 1	  2	Display all alias substitutions made
	 2	  4	Display all function calls and return values
  DEBUG 3 will show all command executed and all alias expansions.
  DEBUG 7 will show EVERYTHING.  It is pretty messy so you might
  want to set HOLD_MODE on when you use this.
  Keep in mind that FLUSH will flush pending client output as
  well, in case you get more than you bargained for.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
