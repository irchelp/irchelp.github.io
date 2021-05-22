---
title: 'ircii help: dcc_list'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]DCC_LIST [-|^]<parameters> [action]
  This hook is called for the DCC LIST command, and can reformat
  the output in any fashion required.
  The parameters are:
	"Type", "Nick", "Status", "Start time", "Sent", "Read", "Arguments"
    $0    Type of DCC
    $1    Nick for this DCC
    $2    Status of the DCC
    $3    Time the DCC Started
    $4    Bytes Sent
    $5    Bytes Read
    $6    Arguments
```
See Also
  [DCC LIST](../dcc/list.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
