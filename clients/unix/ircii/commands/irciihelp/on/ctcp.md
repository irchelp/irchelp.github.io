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
Usage: ON [#|+|-|^|&|@]CTCP [-|^]<parameters> [action]
  This event is activated whenever someone sends a client-to-client
  protocol (CTCP) request.  Certain CTCP types have predefined
  actions that you can't override with the ^, but you can use the -
  to create your own CTCP protocols.  The parameters are:
        $0      nick of person who send CTCP
        $1      who the ctcp was to (either your nick or a channel)
        $2      The CTCP command word
        $3-     Any additional arguments
  For example, if you want to set up a new ctcp function called 
  CHEESE, you  would do:
    ON -CTCP "* * CHEESE" CTCP $0 $2 Say Cheese!
  Using the /CTCP in an ON CTCP automatically sends the proper 
  reply format.  If someone sends you a:
    CTCP <yournick> CHEESE
  you will see:
    *** CTCP CHEESE from <theirnick>:
  and they will see:
    *** CTCP REPLY CHEESE from <yournick>: Say Cheese!
  
```
See Also:
  [CTCP](ctcp.html)
  [ON CTCP_REPLY](../on/ctcp_reply.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
