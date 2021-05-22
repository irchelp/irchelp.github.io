---
title: 'ircii help: list'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: LIST [<flag> [<arg>]] [<channel>] 
  LIST gives you a listing of channels which includes channel name,
  number of users, and a topic (if one is set).  If no channel
  is specified, all channels are shown, otherwise only channels
  that match are displayed (the channel may contain wildcards)
  If the channel given is the character "*" LIST only returns the 
  information for the current channel.
  The displayed list may also be limited by using one or more of 
  the following flags:
	-MIN n		When n the minimum number of user.  Channels
			with less than n users are not shown.
	-MAX n		When n the maximum number of user.  Channels
			with more than n users are not shown.
	-PUBLIC		Only shows Public channels
	-PRIVATE	Only shows Private (*) channels
	-ALL		Overrides previous -PUBLIC and/or -PRIVATE
	-TOPIC		Show channels with topic set
	-WIDE		Shows channel names and sizes in as little
			space as possible. Listing can be sorted using:
		-NAME	Sort by name of the channel
		-USERS	Sort by number of users in the channel
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
