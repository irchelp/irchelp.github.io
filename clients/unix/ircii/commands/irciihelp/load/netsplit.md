---
title: 'ircii help: netsplit'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: LOAD netsplit
  In its current incarnation this is undoubtably the most complex
  ircII script ever written.  What it does is reduce a whole series
  of Signoffs due to a 'netsplit' (two servers breaking somewhere) 
  to a single line
    *** Netsplit (server1 server2)
  Not only that but it will also reduce ALL of those people coming 
  back to a single line as well.. 
    *** Netjoined (server1 server2) 
  All other Signoffs and joins are handled normally.   It currently
  handles multiple splits, and multiple channels.

Additionnal commands available:
  WHOLEFT
    shows who is gone and from what channels, and what servers broke.
  NETPURGE
    cleans out all the old garbage. This is done automagically every minute.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
