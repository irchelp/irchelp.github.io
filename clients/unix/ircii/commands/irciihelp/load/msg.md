---
title: 'ircii help: msg'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: LOAD msg
  Contains some handy key bindings:
  A variable LAST_WHOIS will always contain the person you last /whois'd.
  A variable LAST_NOTIFY will contain the person that was last detected to
  sign onto irc.

  By typing META2 with ? you will be prompted 'MSG <last_whois> '
  With META2 and ! you'll get 'MSG <last_notify> '

  Additionally you also have META2-, which expands to
    MSG <last person that sent you a msg> 
  and META2-. to
    MSG <last person you sent a msg to> 
  analogue to the standard IRC shortcuts ('MSG .' and 'MSG ,').

  META2 is defined by /bind, by default it is ^x.

```
See Also:
  [LOAD](load.html) commander

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
