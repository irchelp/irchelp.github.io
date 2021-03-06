---
title: 'ircii help: dcc_raw'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]DCC_RAW [-|^]<paramters> [action]
  This is activated whenever you receive a raw message from 
  a tcp connection established with $CONNECT().
  The parameters for the action are as follows:
    $0    file descriptor for the connection.
    $1    host name in connection
    $2    code as listed below
    $3-   data or port number depending on code. 

  Incoming messages can be intercepted with ON DCC_RAW,
  which has the following formats:

          fd host D data
          fd host C
          fd host N port
          fd host E port

  The D message indicates incoming data.
  The C message indicates that the socket has been closed.
  The N message indicates that a socket listening on the
  specified port has accepted a connection. fd in this case
  is the file descriptor for the new connection.
  The E message is generated when a CONNECT() results in a
  successful connection.

  Conventions to be used for the socket access:

          Scripts using sockets should never use the
          serial number 0 in their hooks. As their first
          act before using the DCC_RAW hooks, they should
          set:

          ON ^DCC_RAW * #

          To ensure that all raw DCC sockets produce no
          output.

          A new set of hooks should be created for each
          active socket at a chosen serial number. One
          must always exist to detect the close message,
          and as its last act must remove all the hooks
          for that file descriptor.

```
See Also:
  [DCC RAW](../dcc/raw.html)
  [ALIAS FUNCTIONS](../alias/functions.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
