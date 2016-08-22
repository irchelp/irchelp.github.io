---
title: ircII - AWAY
author: Michael Sandrof, Troy Rollo, Matthew Green
layout: default
license: ircii
---

# AWAY
## Usage
```
AWAY [<flags>] [<away message>]
```
Marks you as "away".  Whenever someone sends you a MSG or a
does a WHOIS on you, they automatically see whatever message
you set.  While you are away, all messages you receive will be
timestamped and you will optionally get beeped (see SET
BEEP_WHEN_AWAY) for each message.  Using AWAY with no
parameters marks you as no longer being away.

## Available Flags
-  `-one`  Send away message to only the server in the current window.
-  `-all`  (default) send away message to all servers you may be on.

## See Also
-  SET BEEP_WHEN_AWAY
-  SET SHOW_AWAY_ONCE
