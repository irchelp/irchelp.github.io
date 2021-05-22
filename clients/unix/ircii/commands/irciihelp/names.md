---
title: 'ircii help: names'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: NAMES [<flag> [<arg>]] [<channel>]
  Shows the nicknames of all users on all visible channels.
  If no channel is specified, all channels are shown, otherwise
  only matching channels are shown (the channel may contain 
  wildcards).  If the channel specified is "*" then it will show
  only information only about your current channel.  The displayed
  list may also be limited by using one or more of the
  following flags:
	-MIN n		When n the minimum number of user.  Channels
			with less than n users are not shown.
	-MAX n		When n the maximum number of user.  Channels
			with more than n users are not shown.
	-PUBLIC		Only shows Public channels
	-PRIVATE	Only shows Private (*) channels
	-ALL		Overrides previous -PUBLIC and/or -PRIVATE
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
