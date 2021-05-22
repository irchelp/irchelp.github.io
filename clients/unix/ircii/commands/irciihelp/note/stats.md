---
title: 'ircii help: stats'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: NOTE STATS [MSM|MSW|MUM|MUW|MST|MSF|USED|RESET] [value]
  STATS with no option displays the values of the following variables:
    MSM: Max number of server messages.
    MSW: Max number of server messages with username-wildcards.
    MUM: Max number of user messages.
    MUW: Max number of user messages with username-wildcards.
    MST: Max server time.
    MSF: Note save frequency (checks for save only when an user register)
  Notice that 'dynamic' mark after MSM means that if there are more
  messages in the server than MSM, the current number of messages are
  displayed instead of MSM.
  Only one of this variables are displayed if specified.
  You can change any of the stats by specifying new value after it.
  RESET sets the stats to the same values which is set when starting the
  server daemon if no note file exist. Notice that this stats are saved
  in same file as the other messages.

  Note that the STATS RESET command is only available to IRC operators.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
