---
title: 'ircii help: public'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]PUBLIC [-|^]<parameters> [action]
  This is activated whenever you receive a message from someone
  on a channel which is also one of your current channels.
  The parameters for the action are as follows:
    $0    nickname of person who sent the message
    $1    channel sent to
    $2-   the message

  Listen to what the phonemaster says ;)
  <phone> public_msg is for a message from someone NOT on the channel
  <phone> public_other is for a message on a channel that doesn't belong to
          a window...
  <phone> public is for a message on a channel that belongs to a window!

See also:
  ON PUBLIC_OTHER
  ON PUBLIC_MSG
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
