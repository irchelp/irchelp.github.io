---
title: 'ircii help: notice'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]NOTICE [-|^]<parameters> [action]
  This is activated whenever you receive a NOTICE from someone.
  The parameters for the action are as follows:
    $0    nickname of person who sent the NOTICE
    $1    target of the NOTICE
    $2-   The message

  Warning: If you attempt to send a MSG from within a MSG
  action, it will be automatically converted to a NOTICE, as
  this will prevent MSG loops from being sent between two or
  more users.  Also, you will not be permitted to send either
  MSGs or NOTICEs from within a NOTICE action.  The irc
  protocol states that NOTICEs may not generate automatic
  replies so this will prevent loops of automatic messages from
  flooding the net.

  Note that in ircII 20020902 and earlier, $1 is not the target of
  the NOTICE, instead $1- is the message.  For example:

  IF (V > 20020902) {
	ON NOTICE "% % % *" ECHO notice from $0 to $1: $2-
  } {
	ON NOTICE "% % *" ECHO notice from $0: $1-
  }
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
