---
title: 'ircii help: ctcp'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: CTCP <nick> <command> [<args>]
  CTCP allows you access to the client-to-client protocol used
  to perform certain client specific actions between different
  clients on the network.  The CTCP mechanism works by sending
  a specially coded message to another user whose client is
  supposed to reply with a reply message of the type, or with
  an error message, unless you sent it to a channel.

  For example, if you do:
    CTCP BigCheese VERSION	
  you will receive:
    *** CTCP REPLY VERSION from BigCheese: ircII 2.2.2 *IX.

  The <command> field may be of several types, new ones are
  introduced all the time, but there is a mechanism for you to
  find out what you can use: see CLIENTINFO.
  If the nickname is "*" the output is sent to the current channel.

```
See Also:
  [CTCP CLIENTINFO](../ctcp/clientinfo.html)
  [ON CTCP](../on/ctcp.html)
  [ON CTCP_REPLY](../on/ctcp_reply.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
