---
title: 'ircii help: xecho'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: XECHO [<flags>] <text>
  XECHO is like ECHO, except that it takes flag arguments.

Available flags:
  -LEVEL <level>  displays the message with the specified lastlog
                  level. This is useful to change the window some
                  messages are displayed in. This is the only way
                  to generate a message with the USERLOG1-4 lastlog
                  levels.
  -WINDOW <winname> displays the text in the named window, if it can. 
		  If the window doesn't exist, then the -WINDOW flag
 		  is ignored.
```
See Also:
  [ECHO](echo.html)
  [ON/](on/index.html)
  [SET DISPLAY](set/display.html)
  [LASTLOG](lastlog.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
