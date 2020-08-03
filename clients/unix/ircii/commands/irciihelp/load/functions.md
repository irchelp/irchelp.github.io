---
title: 'ircii help: functions'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: LOAD functions
  Some useful and/or interesting functions.

Additionnal commands and functions available:
  $reverse(<width> <text>)      reverse the whole line, right justify
  $format(<width> <text>)       format text in a column right justified
  $lformat(<width> <text>)      format text in a column left justified
  $center(<width> <text>)       center text sin space <width> wide
  $sandr(<search> <rep> <text>) search for, and replace stuff in text
                                This one is a programming exercise
                                Don't rely on it.
  $notword(<word #> <list>)     Remove the word # from the list. starts at 1
  show <array name>             Show all items in the array and subarrays
  push <listname> <words>       push words onto list with listname 
                                e.g.  push name Bill Jane Jim
  $push(<listname> <words>)     Same as 'push' but it returns  0 or 1 for 
                                success or failure
  pop listname                  pop first item off top of list listname
  $pop(listname)                like pop but returns that item
  $pluck(listname word)         pluck the word from the list listname and
                                return the new list
  $sort(<list of words>)	Sorts the given list of words case insensitive
 
 (Daemon 93)
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
