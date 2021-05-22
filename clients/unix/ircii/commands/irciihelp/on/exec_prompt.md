---
title: 'ircii help: exec_prompt'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]EXEC_PROMPT [-|^]<parameters> [action]
  This is activated whenever an EXEC'd process displays a 
  "prompt".  A "prompt" is defined as any line of output from
  a process that doesn't end in a carriage return - line feed.
  The parameters are:
	$0	process number or logical name (if assigned)
	$1	The prompt string
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
