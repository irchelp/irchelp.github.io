---
title: 'ircii help: timer'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: TIMER [-refnum <num>] [-delete <num>] <seconds> [<command>]
  Waits for the given number of seconds and then executes the
  command.  This is done without hindering normal operation of
  the client.  Any number of TIMERs can be set at once, and
  all will activate at the appropriate time.
    TIMER with arguments will list pending TIMERs.
    TIMER -refnum <num>
  will assign a specific number to that action allowing you
  to delete it later if necessary with
    TIMER -delete <num>
  If no refnum is specified, one is automatically assigned.
  Example:
    /timer 5.3 echo test
  Echoes "test" after 5.3 seconds.
  Notice about escaping:
    If you want multiple commands in your timer, you
    must separate them with semicolon (;).
    In script, that would be:
      timer 5 echo test1\;echo test2
    This is the same as with /on, /alias and all other
    commands that take a command parameter.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
