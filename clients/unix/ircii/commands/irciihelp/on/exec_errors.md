---
title: 'ircii help: exec_errors'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]EXEC_ERRORS [-|^]<parameters> [action]
  This is activated whenever an EXEC'd process produces output
  to its standard error channel.  The process number is the
  number assigned by EXEC to the process (see HELP EXEC).  The
  parameters to this function are:
    $0  The process number that activated the ON
	This may also use the process name.  (See ON EXEC)
    $1- The line of output to stderr
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
