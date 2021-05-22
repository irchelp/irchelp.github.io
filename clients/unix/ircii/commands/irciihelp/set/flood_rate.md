---
title: 'ircii help: flood_rate'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET FLOOD_RATE <messages per second>
  FLOOD_RATE can be set to the number of messages per second you 
  wish to  activate flooding. If messages from a user outpace 
  FLOOD_RATE for  FLOOD_AFTER number of messages, ON FLOOD is
  activated.  If FLOOD_RATE is larger then FLOOD_AFTER, then you 
  will end up seeing at least FLOOD_RATE messages before flood 
  activation (If FLOOD_RATE is 5 and FLOOD_AFTER is 3 then you must 
  receive at least 5 messages before the flood rate can be 5
  messages per second).

```
See Also:
  [ON FLOOD](../on/flood.html)
  [SET FLOOD_AFTER](../set/flood_after.html)
  [SET FLOOD_USERS](../set/flood_users.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
