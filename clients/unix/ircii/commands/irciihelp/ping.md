---
title: 'ircii help: ping'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: PING <nickname>
  This command will send a CTCP PING <current time> to the given
  nickname or nicknames.  The remote client will bounce the time
  back and that is compared with the new current time.  The
  difference in the two times, is how long it takes for a message
  to get to that person and get back.  This should give you some
  idea of how slow or fast the network is.  Do not use with too
  long a list of nicknames or server flood control will kick in
  and the return times will be inaccurate.

```
See Also:
  [CTCP/](ctcp/index.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
