---
title: 'ircii help: clientinfo'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: CTCP <nick> CLIENTINFO [<ctcpcommand>]
  CLIENTINFO returns the known CTCP commands from another client in a list.
  You can inspect commands further by calling 'CLIENTINFO VERSION' for
  example. You will (or should) be given a one-line explanation of
  what this command is supposed to do.

  To find out about your own client services, execute a CLIENTINFO
  on yourself: CTCP mynick CLIENTINFO

Warning:
  Some CTCP commands are not supposed to be sent by hand,
  in particular ERRMSG, DCC, and SED.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
