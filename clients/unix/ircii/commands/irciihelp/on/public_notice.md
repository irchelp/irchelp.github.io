---
title: 'ircii help: public_notice'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]PUBLIC_NOTICE [-|^]<parameters> [action]
  This is activated whenever you receive a NOTICE to your channel
  from someone not on that channel.
  The parameters for the action are as follows:
    $0    nickname of person who sent the NOTICE
    $1    the channel to which the NOTICE was sent
    $2-   the message
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
