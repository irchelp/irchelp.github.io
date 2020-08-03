---
title: 'ircii help: signoff'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]SIGNOFF [-|^]<parameters> [action]
  This is activated whenever someone on a channel you are on
  leaves irc.  Normally, the display would show:
    *** Signoff: <nickname> (<reason>)
  but, of course, you can change this.  If <nick> is your own
  nickname, then the action will be taken when you exit
  from irc.  The parameters are as follows:
    $0  Nickname of person who left irc
    $1- Reason for the sign-off.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
