---
title: 'ircii help: exec_protection'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET EXEC_PROTECTION [ON|OFF|TOGGLE]
  If you saw a warning message telling you to read this, beware!
  If  anyone on irc told you that typing "ON ^MSG * $1-" or 
  "ON ^MSG <nick> $1-" would speed speed things up or otherwise
  make life better for you, they are lying.  The above commands 
  allow people to send you MSGs and have them executed as commands
  by your IRCII.  This can be a major security problem, since the
  person who told you to do this can then execute any command you 
  could, including EXEC commands.  This would give them control over
  your account while you are on irc.

  Anyway, if you did see this warning, it could be that someone is
  trying to abuse your account.  But, don't worry, the EXEC command
  that it warned you about was not executed.  If you are unsure about
  what is going on, please contact your local irc operator for help.
  
  If you know what you're doing, you can set EXEC_PROTECTION to OFF
  and EXEC will be allowed within ON commands.  Only do this if 
  you are sure you understand what is going on.

```
See Also: 
  [EXEC](../exec.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
