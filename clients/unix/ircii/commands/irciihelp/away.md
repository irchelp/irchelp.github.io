---
title: 'ircii help: away'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: AWAY [<flags>] [<away message>]
  Marks you as "away".  Whenever someone sends you a MSG or a
  does a WHOIS on you, they automatically see whatever message
  you set.  While you are away, all messages you receive will be
  timestamped and you will optionally get beeped (see
  SET BEEP_WHEN_AWAY) for each message.  Using AWAY
  with no parameters marks you as no longer being away.

Available Flags:
  -one  Send away message to only the server in the current window.
  -all  (default) send away message to all servers you may be on.

```
See Also:
  [SET BEEP_WHEN_AWAY](set/beep_when_away.html)
  [SET SHOW_AWAY_ONCE](set/show_away_once.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
