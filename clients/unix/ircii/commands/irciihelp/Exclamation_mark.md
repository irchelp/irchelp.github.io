---
title: 'ircii help: !'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ![<history number>|<history match>]
  The ! command is used to recall previous commands in your command
  history for re-execution.  The ! command is unique in that when it
  is used, it leaves the matching history entry in the input line for
  re-editing.  You can specify a history entry either by its number
  in the history list, or by a match with a given wildcard expression.
  For example:
    !10
  will put entry 10 in the history list into the input line.  
  The following:
    !/MSG 
  will search the history list for a line beginning with /MSG and
  put it in the input line (an * is implied at the end of /MSG).  When
  using ! command with a wildcard expression, subsequent uses of
  the ! command continue their search in the history list from where 
  they left off.  This is reset to the end of the list when a command
  is executed that adds an entry to the history list. Also, if a
  wildcard expression is used once, subseqent uses of ! with no
  expression will use the previous wild card expression.  For example,
  the following:
    !/MSG
    !
  The first call returns the first match of /MSG in the history list, 
  and the second returns the next match, and so on.
  
  Lastly, ! may be used in command aliases as well.  When it is
  embedded in an alias it simply executes the matching history entry
  without first putting it in the input line for re-editing.

```
See Also:
  [HISTORY](history.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
