---
title: 'ircii help: service'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: LOAD service
  This script contains some aliases for the handling of
  NickServ and NoteServ which are shortcuts for the
  MSG NickServ|NoteServ <arguments>.

  You have to setup a Variable which contains your NickServ-
  Password with ASSIGN PASSWD password in your .ircrc.
  When you then LOAD SERVICE that password will automatically
  be sent to the NickServ.

Additionnal commands available:
  For NickServ :
    .identify
    .whois

  For NoteServ :
    .list   .tell (or .msg)
    .read   .query
    .away   .delete
    .await  (or .waitfor)
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
