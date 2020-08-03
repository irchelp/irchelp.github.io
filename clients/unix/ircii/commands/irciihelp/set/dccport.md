---
title: 'ircii help: dccport'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET DCCPORT [value]
  If set to zero (default):
    DCC requests are sent with the first available
    TCP port, as judged by your operating syste.
  If set to nonzero:
    All dcc requests you send will be sent with
    the TCP port you specified.
    In this case, note these:
    - You can only have one listening
      connection open for the same port at time.
      After the connection has been established,
      you can reuse the port again for new connections.
    - Allowed port range is 1..65535.
    - Ports 1..1023 are reserved for system services (root-only).

  This setting might be handy to circumvent a strict firewall.
  Together with /set dcchost, most firewall-related problems
  are history. ;)

See also:
  SET DCCHOST
  DCC CHAT
  DCC SEND
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
