---
title: 'ircii help: exec'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]EXEC [-|^]<paramters> [action]
  This is activated whenever an EXEC'd process produces output
  to its standard output channel.  The process number is the
  number assigned by EXEC to the process (see HELP EXEC).  The
  parameters to this function are:
    $0	The process number that activated the ON
	If the EXEC was called with EXEC -name <process name>
	then $0 matches this name instead. This is very useful
	for keeping the processes separated out.
    $1-	The line of output to stdout
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
