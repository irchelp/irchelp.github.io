---
title: 'ircii help: beep_on_msg'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET BEEP_ON_MSG [ALL|NONE|[-]<level> [-] <level> ...]
  This variable lets you specify certain types of messages
  which will cause an audible beep when you receive one.
  The possible message levels are:
    PUBLIC          Channel conversation only
    MSG             MSGs only
    NOTICE          NOTICEs only
    WALL            WALLs only
    WALLOP          WALLOPs only
    NOTE            NOTE only
    CRAP            Is not used.
  See SET LASTLOG_LEVEL for more on these levels
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
