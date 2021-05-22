---
title: 'ircii help: ctcp_reply_flood_size'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET CTCP_REPLY_FLOOD_SIZE <size in bytes>
  Used by the CTCP reply flood protection system. Setting
  NO_CTCP_FLOOD to OFF disables the system entirely.

  Each time you are requested to send more than
  CTCP_REPLY_FLOOD_SIZE bytes in CTCP_REPLY_BACKLOG_SECONDS
  no ctcp replies will be done for CTCP_REPLY_IGNORE_SECONDS.

  Known good values are 256 bytes/ 5s/ 10s.

  This is a sliding window, i.e. you can't get caught sending
  too much because of a 5s boundary, and the checking is still
  active even if you don't reply anymore, which avoids replying
  again every 10s if you're under attack.

  If your VERBOSE_CTCP is ON begins and ends of ignore periods
  will be shown.

```
See Also:
  [SET CTCP_REPLY_BACKLOG_SECONDS](../set/ctcp_reply_backlog_seconds.html)
  [SET CTCP_REPLY_IGNORE_SECONDS](../set/ctcp_reply_ignore_seconds.html)
  [SET VERBOSE_CTCP](../set/verbose_ctcp.html)
  [SET NO_CTCP_FLOOD](../set/no_ctcp_flood.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
