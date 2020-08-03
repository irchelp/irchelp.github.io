---
title: 'ircii help: query'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: QUERY [<nicknames>|%n|/<command>]
  Starts a private conversation with <nicknames>.  All text you
  type that would normally be sent to your channel now goes to
  <nicknames> in the form of MSGs.  To cancel a private
  conversation, use QUERY with no arguments.  The %n arguments
  allows you to send the query text to a process number n.  The
  process must have already been started using a previous call
  to EXEC.  It's also possible to query someone on a
  DCC connection with  QUERY =nickname.
  Another form has been added which allows you to send messages to
  the specified command with the format QUERY /COMMAND
  and everything you type will be parsed by that /command.  Can be
  an alias or anything you like. Note that when querying a command,
  you may need to use XECHO -WINDOW to ensure output goes to the 
  right place.
  If "*" is given as a nickname the output is sent to the current
  channel.

```
See Also:
  [EXEC](exec.html)
  [WINDOW QUERY](window/query.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
