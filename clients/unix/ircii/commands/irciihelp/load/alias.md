---
title: 'ircii help: alias'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: LOAD alias
  Aliases defined here are:
  MA <text>	Send another message to the person you last sent one.
		Same as: /m . <text>
  MR <text>	Send a reply to the person who last sent you a msg.
		Same as: /m , <text>
  WA		Show the WHOIS of the person you last sent a message to.
  IA		Invite the person you last sent a message to.

  UNALIAS <aliasname>	An alias to unalias an alias ;-)
  UNSET <variablename>	An alias to unset a set.. huh? :)
  ALARM <time>		Set the alarm of the clock.
  CLOCK <on/off>	Switch the clock.

  NO	= NOTICE	to avoid collision with /NOTIFY
  LA	= LASTLOG	to avoid collision with /LAUGH from ACTION
  LF	= SET LOGFILE	for lazy ones.. 
  NF	= NOTIFY	"       "
  "	= QUOTE		"       "

  H+ and H-		Quickies for /set hold_mode on and off.

  Contributed by various ircers...
  SHIELDS_UP		ignore messages and notices from the person
			that last sent you a msg
  PROTECT		make your channel invite-only and writeprotected
  UNPROTECT		remove that state of protection again
  CHOPS			get a list of the channel operators on the channel
  WJOIN <channel>	join a channel and open a special window for it
  TALKTO <target>	open a window and start a query with <target> in it
  OOPS <right_person>	excuse yourself for a msg that went to the wrong
			person and send it to the person that should have
			got it.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
