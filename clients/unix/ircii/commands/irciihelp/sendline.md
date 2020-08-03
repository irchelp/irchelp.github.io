---
title: 'ircii help: sendline'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SENDLINE <line of text>
  SENDLINE will send a line to the client EXACTLY as though you had
  typed it at the command line.  However, unlike TYPE it is not
  displayed in the command line.  All alias expansion or command
  processing is done after it's sent as it normally would be when you 
  send a line with RETURN.  It can be used with ON ^INPUT
  if you're extremely careful.

```
See Also:
  [ON INPUT](on/input.html)
  [SET INPUT_PROTECTION](set/input_protection.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
