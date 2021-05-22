---
title: 'ircii help: notify_handler'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET NOTIFY_HANDLERS <noisy|old|quiet>
  'noisy', 'quiet', and 'old'.  old makes /notify work like
  it did for 2.2,'noisy' and 'quiet' make it work on a lot
  more events.  join/quit/message/etc trigger the notify,
  the difference being that 'quiet' won't show these extra
  differences, where as 'noisy' will.  they both add/remove
  the name to the internal 'notified' list.

```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
