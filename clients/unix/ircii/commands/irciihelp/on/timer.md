---
title: 'ircii help: timer'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]TIMER [-|^]<time> [action]
  This is activated whenever the real-time clock is equal to the
  time specification you gave it.  The time specifications should
  be one of two forms:
	HH:MM[AM|PM]	where 1<=HH<=12 and 0<=MM<=59
	HH:MM		where 0<=HH<=23 and 0<=MM<=59
  which form you use depends on the current setting of
  CLOCK_24HOUR.  Time specification may include wildcards as
  well.  The matching of the real-time clock and the time
  specification is a pure textual match.  Of course, wildcards
  may be used in the time specification.
  The parameters for the action are as follows:
    $0    The time (format depends on CLOCK_24HOUR variable)

```
See Also:
  [SET CLOCK_24HOUR](../set/clock_24hour.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
