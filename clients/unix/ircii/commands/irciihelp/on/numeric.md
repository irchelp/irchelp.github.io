---
title: 'ircii help: numeric'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]<numeric> [-|^]<parameters> [action]
  This is activated whenever a numeric message of that number arrives.
  The legal range of values for <numeric> are from 001 to 999.
  Numeric messages are special replies send by the server to the client
  in the raw irc protocol.  They are useful to intercept if you are 
  writing a service using ircII.  For more details about what numbers
  represent what messages from the server, please see the irc server
  source code.  
  The parameters for the action are as follows:
    $0    name of the server who sent the message
    $1    number of numeric message
    $2-   parameters (depends on the numeric message)

```
See Also:
  [SET SHOW_NUMERICS](../set/show_numerics.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
