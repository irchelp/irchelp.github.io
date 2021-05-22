---
title: 'ircii help: note'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]NOTE [-|^]<parameters> [action]
  This is activated whenever you receive an irc NOTE.
  The parameters for the action are as follows:
    $0    nickname of person who sent the note
    $1    The user@hostname of the person who sent the note
    $2    The note flags (see HELP NOTE FLAGS)
    $3-7  The time the note was queued.
    $8    The server from which the note was queued
    $9-   The message itself
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
