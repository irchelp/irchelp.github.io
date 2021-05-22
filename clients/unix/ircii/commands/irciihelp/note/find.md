---
title: 'ircii help: find'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: NOTE FIND [&<passwd>] [+|-<flags>] [+|-<maxtime>]
		<nick!username@host> <msg>
  FIND is an alias for USER +FLR (default max 1 day)
  This command makes the server search for any matching recipient, and
  send a note message back if this is found. If <msg> field is used, this 
  should specify the realname of the person to be searched for. Examples:
    FIND -4 foo*!username@host
    FIND @host Internet*
    FIND nicky Annie*	     
    FIND +7 * Annie*
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
