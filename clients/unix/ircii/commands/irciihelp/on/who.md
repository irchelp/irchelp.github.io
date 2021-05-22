---
title: 'ircii help: who'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]WHO [-|^]<parameters> [action]
  This is activated whenever the reply of a /WHO comes in.
  The parameters for the action are as follows:
    $0    The channel the user is on, or 'Channel' for the /who header line.
    $1    Nickname.
    $2    Status. (Here, Gone, *Operator, [ @ChannelOperator ])
    $3    Username (login name)
    $4    Host (host machine)
    $5-   Full Name or other User Data.

```
See Also:
  [ON WHO](../on/who.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
