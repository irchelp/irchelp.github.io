---
title: 'ircii help: mail'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]MAIL [-|^]<count> [action]
  This is activated whenever you receive new mail (non-irc mail)
  or when you start up irc and you have mail.  You can use this
  to replace the standard "*** You have new mail" banner with
  anything you like.  The parameters for this function are:
    $0  The number of new mail messages
    $1  Total number of mail messages
  On startup, new mail messages will be all messages found.
  After that, for example if you had 2 messages and a new
  message came in, new messages would be 1.  Here are a few
  examples of how to use this:
    ON ^MAIL 1 /echo *** You have $0 new mail message, total of $1
    ON ^MAIL * /echo *** You have $0 new mail messages, total of $1
  These will display the number of new messages that arrive.
  Here is another example:
    ON ^MAIL * /comment
  This will disable the display of any message when you have
  mail.  Setting the MAIL variable to OFF will also have this
  effect, but this will also disable the total mail messages
  count in the status line.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
