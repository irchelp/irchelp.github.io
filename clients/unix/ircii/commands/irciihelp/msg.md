---
title: 'ircii help: msg'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: MSG <nicknames>|<channel>|%<pid>|=<nick>|<n>|<command> <text>
       MSG [-server <server>] <target> <text>
  Sends a private message to the nicknames or list of nicknames
  specified.  A list of nicknames should by separated by commas
  (no spaces).  Four special case nicknames are defined.  If the
  nickname is "," (a comma), the message is sent to the last
  person who sent you a MSG.  If the nickname is "."  (a
  period), the message is sent to the last person to whom you
  sent a message.  If the nickname is "*" the message is send to
  the current channel. If the nickname is """ (doublequote), the
  action is same as if you had used /QUOTE instead.

  The second form allows you to specify a channel name to which
  to send the message.  The message will go to everyone on that
  channel.

  The third form specifies an EXEC process id to send output to.

  The fourth form allows you to specify a DCC CHAT connection over
  which to send the message. The nick specifies the nickname under
  which the connection was established.

  The sixth form lets you specify a process number to which the
  message will go, where n is the process number.  This works
  just like the EXEC -IN command.  For example:
    MSG %1 Homina homina homina
  will send the text to process 1.  Process 1 must be running
  already using a previous call to EXEC.
    
  The last form allows messages of the type MSG COMMAND <message>
  which allows you to send a message to some command.  Try MSG /ECHO blue
  This is meant to be used with QUERY primarily.

  In ICB mode, the <nicknames>|<channel> parameter will be assumed
  to be a single nickname as ICB groups and users can comma's in them
  and additionally, an ICB group may be called the same as a user.  In
  this case /MSG name message will always be sent to the user 
  rather than a group called name.

  There is also a use of wildcards for operators.
    MSG $*.edu
  will address all users having .edu in their serverinfo.
    MSG #*.edu
  will address all users having .edu at the end of their host name.

  To send a message to a target that might be attached to a different
  server than the current one, use the -server flag.  You can specify
  a server name, number or group.
 
```
See Also:
  [SET BEEP_ON_MSG](set/beep_on_msg.html)
  [EXEC](exec.html)
  [QUOTE](quote.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
