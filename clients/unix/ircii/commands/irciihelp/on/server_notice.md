---
title: 'ircii help: server_notice'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]SERVER_NOTICE [-|^]<parameters> [action]
  This is activated whenever you receive a message from the server
  as a NOTICE. This is basically anything beginning with "***" which
  is sent to you by the server, and the MOTD.

  The parameters for the action are as follows:
    $0    The name of the server which sent you the message
    $1    The first word of the text sent - probably "***" or "MOTD"
	  or the name of a channel, eg, "&LOCAL"
    $2-   The message
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
