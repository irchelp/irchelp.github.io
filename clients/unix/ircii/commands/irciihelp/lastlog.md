---
title: 'ircii help: lastlog'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: LASTLOG [<flag>] [<pattern>] [<number of entries> [<from entry>]]]
       LASTLOG <-SAVEALL|-LOADALL> <file>
  Displays the contents of the lastlog.  This is a list of the
  most recent messages that have appeared on the screen.  LASTLOG
  is useful to redisplay the screen if you inadvertantly do a
  CLEAR or miss messages for other reasons.  The second form
  is used to save and restore entire lastlog histories.  See below
  for extra information about them.

  If no arguments are given, the entire lastlog is displayed. If a <pattern>
  argument is given, only with <pattern> in them are displayed.  If the
  first argument is a number, it determines how many log entries to show,
  or if searching for a pattern, how many entries to search.  Otherwise it
  is searched for in every lastlog entry. The second argument determines how
  many lines back to start display from. Thus
    LASTLOG 4 8
  Shows 4 lines of the lastlog, starting at line 8...  lines 8,
  9, 10, 11 are displayed.  Furthermore:
    LASTLOG bigcheese
  displays only those lastlog entries that contain the word "bigcheese".  
  The following will, starting at line 4 searching for 8 lines, search
  for lastlog entires that contain the word "phone".
    LASTLOG phone 8 4

Available flags:
  You can further limit the display of the lastlog by specifying
  one of the following flags:
    -PUBLIC         Normal channel messages
    -MSG            Private messages
    -NOTICE         Notices
    -NOTE           Notes
    -WALL           Walls
    -WALLOP         Wallops
    -CRAP           Anything not included in the other categories
    -LITERAL        Make the follow a pattern always, not a number
    -SAVE <file>    Save to the named file instead of displaying

  The lastlog will only display messages of the type specified
  by the flag.

  The -SAVEALLflag is similar to -SAVE except that it does 
  not use any of the matching flags and saves the entire history in a
  special format that is reloadble using the -LOADALL flag.  The
  saved file has a timestamp, a message level and the message itself,
  as well as a version header for the file.  Note that the -LOADALL
  flag by overwrites the current window lastlog.
  
```
See Also:
  [SET LASTLOG](set/lastlog.html)
  [SET LASTLOG_LEVEL](set/lastlog_level.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
