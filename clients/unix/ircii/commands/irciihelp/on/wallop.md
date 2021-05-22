---
title: 'ircii help: wallop'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]WALLOP [-|^]<parameters> [action]
  This is activated whenever you receive a WALLOP (a message 
  sent to all operators on irc).
  The parameters for the action are as follows:
        $0      Sender
        $1      + if sender is an oper, - if sender is a normal user, 
                S if sender is a server
        $2-     text of message

```
See Also:
  [WALLOPS](../wallops.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
