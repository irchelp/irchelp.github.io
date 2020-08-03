---
title: 'ircii help: squit'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SQUIT <servername>
  Sends a server quit to the named server.
  This is an operator command and unfortunately if it is 
  messed up, it can effect MANY people so it's best that
  one knows EXACTLY what they are doing when they squit
  a server.  A common mistake is to use a server mask 
  like if you are on some.server.edu and you typed 
    SQUIT ircserver.*
  expecting to break off ircserver.iastate.edu it instead it finds 
  ircserver.et.tudelft.nl and squits it from its uplink.
  IF you're going to use a hostmask then make sure that 
  you supply enough of the name to keep from messing up
  the net.  There are more pitfalls, but you should read 
  the docs in the ircd source for those.

Note:
  SQUIT SHOULD NEVER EVER BE USED FOR A PERSONAL VENDETA
  It simply hurts the users.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
