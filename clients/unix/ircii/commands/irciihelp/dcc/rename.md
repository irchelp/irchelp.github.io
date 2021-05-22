---
title: 'ircii help: rename'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: DCC RENAME <nick> [<filename1> [<filename2> ...]]
    or DCC RENAME -chat <connection-name> <new-connection-name>

  In the first form, DCC RENAME renames a file prior to a DCC GET
  from filename1 to filename2. If filename1 is not specified, the oldest file
  connection to the given nick is renamed.

  In the second form, DCC RENAME renames an existing DCC CHAT
  connection from connection-name to new-connection-name.

```
See Also:
  [DCC GET](../dcc/get.html)
  [DCC LIST](../dcc/list.html)
  [DCC CHAT](../dcc/chat.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
