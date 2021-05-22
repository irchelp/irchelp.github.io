---
title: 'ircii help: news'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: NOTE NEWS [&<passwd>] [+|-<flags>] [+|-<maxtime>]
		<group!username@host>
  NEWS with no message is an alias for USER +RS (default max 60 days)
  This command is for subscribing on a specified newsgroup from any
  user(s) or host(s). Wildcards may be used anywhere. Example:
    NEWS irc.note       : Subscribe on irc.note
    NEWS irc.note@*.no  : Send to group irc.note, but only for
                          users at host *.no
    NEWS irc.note       : Send to all for group irc.note
    NEWS Users@*.edu Hi : Send Hi to all users using note in your
                          server located at host *.edu.
   (Note that only IRC operators can use the final 3 examples.
    Advanced users may use User +rs <...> <filter> where filter is a 
   string which must matches with field in received news message)
  Only IRC operators can send news as default.
  To send news add message and use same format as subscribing, except 
  that username field must matches with subscribed group as alt.irc!*.irc - 
  everybody subscribing on a*.irc or *.irc or alt.irc... would get the news.
  A speciall case is the group Users which everybody using note in the server
  are member of.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
