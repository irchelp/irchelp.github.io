---
title: 'ircii help: raw_irc'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]RAW_IRC [-|^]<parameters> [action]
  This is activated whenever a message is received from a server which is
  not understood by IRCII. Under normal circumstances this will never
  happen, however if used in conjunction with /QUOTE, this ON function
  can be used to test new features being added to a server. This will
  normally be used in conjunction with /ALIAS

IMPORTANT NOTE: ON RAW_IRC can and will seriously impede the operation of the
  client if not used correctly.  If you use ON ^RAW_IRC to suppress a 
  message then the client will ignore it internally as well.  Various
  internal databases will be corrupted and such.  Be careful.

```
See Also:
  [ALIAS/](../alias/index.html)
  [QUOTE](../quote.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
