---
title: 'ircii help: minimum_servers'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET MINIMUM_SERVERS <number of servers>
  When connecting to a server, this variable is checked versus
  the number of servers currently connected to the ircnet.  If
  the number of servers is less than the setting of
  MINIMUM_SERVERS, you will automatically be disconnected from
  that server and IRCII will attempt to connect to the next
  server in you server list (as though you had done SERVER +).
  This is useful if the net is fragmented to keep you on a more
  populated portion of the net.  This will be rechecked if you
  issue a LUSERS.  This will only affect your primary server. 
  Secondary servers are not checked vs this variable.

```
See Also:
  [SET MINIMUM_USERS](../set/minimum_users.html)
  [SERVER](../server.html)
  [LUSERS](../lusers.html)
  [ircII server_lists](../ircii/server_lists.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
