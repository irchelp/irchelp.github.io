---
title: 'ircii help: dcc_chat'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]DCC_CHAT [-|^]<paramters> [action]
  This is activated whenever you receive a DMSG from someone.
  The parameters for the action are as follows:
    $0    nickname of person who sent the DMSG
    $1-   The message

  Warning: As DMSG is outside the IRC protocol, it allows you to send
  a DMSG from an ON DCC_CHAT. This has the potential to create loops.
  If you intend to send a DMSG from DCC_CHAT you are responsible for
  ensuring that it will not create a loop.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
