---
title: 'ircii help: raw'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: DCC RAW <fd> <host> <message>
  After a connection has been established with the $CONNECT()
  function DCC RAW is used to talk to that connection.  
  $CONNECT(HOST PORT)  returns the (fd) of the connection 
  which is then used by DCC RAW. E.g:
    ALIAS socktest ECHO $connect(host 7)
  Which will echo the file descriptor.

  Then send messages to it with:
    DCC RAW fd host message

  These will be echoed back at you by the remote host.
  Incoming messages can be intercepted with ON DCC_RAW.

```
See Also:
  [ON DCC_RAW](../on/dcc_raw.html)
  [ALIAS FUNCTIONS](../alias/functions.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
