---
title: 'ircii help: flood'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]FLOOD [-|^]<parameters> [action]
  The FLOOD type is activated whenever someone sends a lot of 
  information very rapidly to you, your channel, or the system at 
  large (ie: a wallop).  Usually, this is caused when someone dumps
  a file to your channel or to you.  The parameters for this are:
    $0	The nick of the flooder
    $1	The target of the flooder
    $2	The type of flooding being done 
    $3- The content of the flooding message

  General use for ON FLOOD is as follows:
    ON ^FLOOD *
  This will automatically prevent flooding messages from being 
  displayed and automatically disable itself when the flooding
  has stopped.

  If you use services like IRCIIHelp or NickServ, these can appear to
  IRCII as floods, but if you add the two following ON lines:
    ON FLOOD ^IRCIIHelp
    ON FLOOD ^NickServ
  These will not be treated as floods and will let their messages through.

  Warning:  There are occasions where ON FLOOD can be inadvertantly 
  activated (such as after a net-burp, or after you have ^Z'd for a
  while).  Therefore, I strongly advise against using KILL or even
  KICK as the action taken by an ON FLOOD.

  Note that in ircII 20020902 and earlier, $1 is not the target of
  the flooder, but the type of flooding being done, and $2- is the
  content of the message.  For example:

  IF (V > 20020902) {
	ON FLOOD "% % % *" ECHO Flood type $2 from $0 to $1: $3-
  } {
	ON FLOOD "% % *" ECHO Flood type $1 to $0: $2-
  }

```
See Also:
  [SET FLOOD_AFTER](../set/flood_after.html)
  [SET FLOOD_RATE](../set/flood_rate.html)
  [SET FLOOD_USERS](../set/flood_users.html)
  [SET FLOOD_WARNING](../set/flood_warning.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
