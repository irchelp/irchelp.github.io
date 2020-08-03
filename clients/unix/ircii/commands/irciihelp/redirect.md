---
title: 'ircii help: redirect'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: REDIRECT <nick|channel|process|=nick> <cmd>
  This will send the output from the given command to the
  specified nickname, channel, or started process.  For 
  example: 
    REDIRECT #Har /WHOIS bigcheese
  This sends the result of "WHOIS bigcheese" to channel #Har.  
  There is an implicit WAIT built into the REDIRECT command.
  This means that all output will be redirected until the
  given command has finished executing.  This can have some
  unpredictable results, so use it with caution.
  If you want to redirect output to a DCC CHAT connection
  then specify the last form REDIRECT =nick command.
  If the nickname|channel is given as the char "*" output will be
  redirected to the current channel.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
