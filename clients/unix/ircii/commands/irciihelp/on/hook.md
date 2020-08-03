---
title: 'ircii help: hook'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^]HOOK [-|^]<any pattern> [action]
  This is activated whenever you receive a HOOK.  HOOKs are generated
  by the user for one purpose, which is to activate ON HOOK.
  The parameters for the action are as follows:
	$0   First word of text
	$1   Second word of text..
	$2-  Rest of pattern.   Can use whatever you like.
  Basically if you have an ON HOOK pattern, you can send a HOOK command
  that matches the pattern and it will be activated.  This is useful for
  testing ON patterns, and sending commands from within scripts and 
  aliases which can be either ignored or acted upon (ON HOOK).

```
See Also:
  [ON](on.html)
  [HOOK](hook.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
