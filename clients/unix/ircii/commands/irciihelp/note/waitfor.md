---
title: 'ircii help: waitfor'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: NOTE WAITFOR [&<pwd>] [+|-<flags>] [+|-<maxtime>]
		<nick!username@host> [<msg>]
  WAITFOR is an alias for USER +YD (default max 1 day)
  Default message is [Waiting]
  This command is for telling the recipient if this appears on IRC that
  you are waiting for him/her and notice that this got that message. Example:
    WAITFOR foobar
    WAITFOR -2 foobar!username@*
    WAITFOR foobar Waiting for you until pm3:00..
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
