---
title: 'ircii help: whois'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: WHOIS <nickname>
       WHOIS <nick1>,<nick2> [...]
       WHOIS <server> <nickname>[,<nick2>...]
  Shows more detailed information about the nickname specified.
  This info includes the users name, host, server, "real" name,
  and away message.  As you can see in the second line you can
  use WHOIS on multiple nicknames. The third line demonstrates
  how you can send the WHOIS request to a distant server. If
  you WHOIS a person on his server you will receive extra info
  about his idle time.
    WHOIS nickname nickname
  where the two nicknames are the same will query the user's server
  about his information just like the WHOIS <server> <nickname> form.

```
See Also:
  [WHOWAS](whowas.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
