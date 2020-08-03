---
title: 'ircii help: window_list'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]WINDOW_LIST [-|^]<parameters> [action]
  This hook is called for the WINDOW LIST command, and can reformat
  the output in any fashion required.
  The parameters are:
    $0    Maximum window name length
    $1    Refnum of the window
    $2    Nick in this window
    $3    Name of this window
    $4    Current channel in this window
    $5    Query nick for this window
    $6    Server for this window
    $7    Lastlog level for this window
    $8    Visibility for this window
```
See Also
  [WINDOW LIST](../window/list.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
