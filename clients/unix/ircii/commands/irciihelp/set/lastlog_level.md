---
title: 'ircii help: lastlog_level'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET LASTLOG_LEVEL [ALL|NONE|[-]<level> [-]<level> ...]
  The setting of this variable determines which types of
  messages are stored in the lastlog.  If ALL is specified,
  everything that shows up on the screen is saved in the
  lastlog, except DCC mesages, which have to be explicitly
  set.  eg, to get everything, use

    /SET LASTLOG_LEVEL DCC,ALL

  .  If NONE is specified, nothing is saved in the
  lastlog.  The <level> specification can be one of the
  following: 
    PUBLIC          Channel conversation
    MSGS            Private messages
    NOTICES         NOTICEs
    WALLS           WALLs
    WALLOPS         WALLOPs
    NOTE            NOTEs
    OPNOTES         Operator notifications
    SNOTES          Server notices
    ACTIONS         In and outgoing CTCP ACTION lines
    USERLOG1        Reserved for the user
    USERLOG2        Reserved for the user
    USERLOG3        Reserved for the user
    USERLOG4        Reserved for the user
    DCC             DCC connections
    BEEP            Beeps
    HELP            Any help text
    CRAP            Anything not covered by the above categories
  You can combine these on a command line to make the lastlog
  save just what you want.  Also, by putting a - before any
  level, you remove that one from the list.  For example, if you
  wish to save everything except NOTEs and all that CRAP, you
  could do:
    SET LASTLOG_LEVEL ALL -NOTE -CRAP
  which is the same as doing:
    SET LASTLOG_LEVEL PUBLIC MSG NOTICE WALL WALLOP OPNOTES ACTIONS SNOTES

See also:
  WINDOW NOTIFY_LEVEL
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
