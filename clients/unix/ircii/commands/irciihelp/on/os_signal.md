---
title: 'ircii help: os_signal'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]OS_SIGNAL [-|^]<parameters> [action]
  This is activated whenever a signal is received.
  The parameters for the action are as follows:
    $0    the signal that occured, such as "INFO" or "USR2"
  There are some limitations with OS_SIGNAL support and
  /WINDOW CREATE.
  Signals received by sub windows are not shown.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
