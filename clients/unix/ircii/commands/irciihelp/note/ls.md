---
title: 'ircii help: ls'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: NOTE LS [&<passwd>] [+|-<flags>] [#<ID>]
		<nick!username@host> [<date>]
  Displays requests you have queued. No arguments would show you
  all requests without the message field.
  Use flags for matching all messages which have the specified flags set
  on or off. See HELP NOTE FLAG for more info about flag settings. Time 
  can be specified on the form day.month.year or only day, or day/month, 
  and separated with one of the three '.,/' characters. You can also 
  specify -n for n days ago. Examples: 1.jan-90, 1/1.90, 3, 3/5, 3.may.
  If only '-' and no number is specified max time is set to all days.
  The time specified is always the local time on your system. Example:
    LS !user    would show you all requests to username@*
    LS +x       would show all your SPY requests.
    LS #300     would show you only request #300.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
