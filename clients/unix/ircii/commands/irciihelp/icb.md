---
title: 'ircii help: icb'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ICB <command> [<args>]
  ICB command interface.  The /ICB command gives access to
  every command that ICB has.  Note that many ICB functions
  are implemented as messages to the server, those are not
  included in the above list of ``ICB commands.''

  ICB is: http://www.icb.net/

  The support ICB commands are listed as follows:
     public    - send a public message to your group
     msg       - send a private message
     topic     - set or see the group topic
     pass      - pass moderator status to another user
     boot      - boot a user from a group
     invite    - invite a user to a group
     cancel    - cancel an invitation
     group     - change group
     nick      - change nickname
     beep      - annoy someone
     echo      - set or see echoback
     status    - set or see group status
     version   - see server version
     who       - list users logged into ICB server

  The "public <text>" command send <text> to the group
  as a public message.

  The "msg <who> <text>" command sends <text> to the user
  or other being <who> as a private message.

  The "topic [<new>]" command will get the current topic
  if <new> is not given, or attempt to set the topic to
  <new> if it is given.

  The "pass <user>" command will pass group moderator to
  the specified <user>.

  The "boot <user>" command will boot (kick) the specified
  <user> out of the group.  Only works for the moderator.

  The "invite <user>" command invites the specified <user>
  to the group.

  The "cancel <user>" command cancels a previous invitation
  to the specified <user>.

  The "group <new>" command changes your group to <new>.

  The "nick <new>" changes your nickname to <nick>.

  The "beep <user>" command annoys the specified <user>.

  The "echo <cmd>" command sets the echoback to either
  "on", "off" or "verbose".  Public messages are returned
  in "on" and "verbose" modes, and private messages are
  returned in the "verbose" mode.

  The "status [<new>]" command sets or gets the group
  status.  See /s_help for more details.

  The "version" command queries the current server views.

  The "who [<args>]" command lists logged in users in this
  or other groups, depending on the <args> value.  See
  /s_help for more details.

```
See Also:
  [LOAD ICB](load/icb.html)
  [SERVER](server.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
