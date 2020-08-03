---
title: 'ircii help: exec_exit'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]EXEC_EXIT [-|^]<parameters> [action]
  This is activated when any EXEC'd process exits.  The parameters
  are:
	$0	Process number or logical name (if assigned)
	$1	Signal that killed the process (or 0 if it exited normally)
	$2	Exit code for process (non-zero only if $1 is 0)
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
