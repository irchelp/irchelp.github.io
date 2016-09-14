---
title: ircII - QUERY
author: Matthew Green
layout: default
license: ircii
---

# Usage
`QUERY [<nicknames>|%n|/<command>]`

  Starts a private conversation with <nicknames>.  All text you
  type that would normally be sent to your channel now goes to
  <nicknames> in the form of MSGs.  To cancel a private
  conversation, use QUERY with no arguments.  The %n arguments
  allows you to send the query text to a process number n.  The
  process must have already been started using a previous call
  to [EXEC](./exec.html).  It's also possible to query someone on a
  [DCC](./dcc/index.html) connection with  *QUERY* =nickname.
  Another form has been added which allows you to send messages to
  the specified command with the format *QUERY* /COMMAND
  and everything you type will be parsed by that /command.  Can be
  an alias or anything you like. Note that when querying a command,
  you may need to use [XECHO](./xecho.html) -WINDOW to ensure output goes to the 
  right place.
  If "*" is given as a nickname the output is sent to the current
  channel.

# See Also
*  [EXEC](./exec.html)
*  [DCC QUERY](./dcc/query.html)

