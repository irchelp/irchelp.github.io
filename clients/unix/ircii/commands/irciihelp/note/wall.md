---
title: 'ircii help: wall'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: NOTE WALL [&<passwd>] [+|-<flags>] [+|-<maxtime>]
			<nick!user@host> <msg>
  WALL is an alias for USER +BR (default max 1 day)
  This command is for sending a message once to every matching user
  on IRC. Be careful using this command. WALL creates a list of 
  persons received the message (and should not have it once more time)
  with H flag set. This list can be displayed using ls +h from the
  nick and username@host which the WALL request is queued from.
  Removing the headers (H) before WALL request is removed would cause
  the message to be sent once more to what users specified in list.
  WALL +7 @*.edu Do not do this! - Makes it clear for all users using 
  IRC on host @*.edu the next 7 days how stupid it is to send such WALL's ;) 

  This functionality may be restricted to IRC operators.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
