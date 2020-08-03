---
title: 'ircii help: icb'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: LOAD icb
  The ICB script provides additional support for connecting
  to ICB servers, mostly providing short cut access to the
  /ICB command.

  The ICB script provides the following aliases:
      bcount <user>        - get byte count for <user>
      boot <user>          - boot <user>
      brick <user>         - brick <user>
      cancel <user>        - cancel invite to <user>
      drop <nick> <pass>   - drop <nick> if <pass> is correct
      echoback <type>      - set echoback type
      exclude <nick> <msg> - set public excluding <nick>
      group <group>        - change group
      news <number>        - read news
      nosecure             - set nick to nosecure
      pass <user>          - pass moderator to <user>
      read <number>        - read message <number>
      register <passwd>    - register nick with server
      s_help               - see server help
      secure               - set nick to secure; need password
      shuttime             - see server shutdown time
      status <status>      - set/see group status
      write <user> <msg>   - write a save message to <user>
      whereis <user>       - where is <user> connected from?

  The output from many leaves something to be desired, but it
  does work.

  In addition to these, the follow IRC commands are aliased to
  work for both IRC and ICB:
      join, topic, whois, nick and invite


```
See Also:
  [ICB](icb.html)
  [SERVER](../server.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
