---
title: 'ircii help: window'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: WINDOW [<argument> [<argument> <argument> ...]]
  The WINDOW command lets you manipulate multiple "windows" in
  ircII.  Windows are horizontally divided sections of the
  screen in which different bits of irc information can be
  displayed.  WINDOW lets you create, manipulate, and remove
  such windows.  The <argument> parameters to WINDOW are described
  in full detail in their own sections.
  
  The "current window" is denoted by "^^^^^^^^^^" in the status
  line for that window. You can switch the current window by
  activating the key functions PREVIOUS_WINDOW or NEXT_WINDOW.
  These are bound, by default, to ^Xp and ^Xn, respectively.
  
  Each window can have the conversation of a channel going to
  it, which can be specified by either using WINDOW CHANNEL <c>
  or by executing the JOIN or CHANNEL commands in a window.
  Each window can also have its own QUERY user.  When QUERYing
  someone in a window, all conversation with that person is
  directed to that window.
  
  If you have JOIN or WINDOW CHANNEL commands in a script, like
  your .ircrc file, you will need to do a WAIT after each JOIN
  or WINDOW CHANNEL.

```
See Also:
  [WAIT](../wait.html)
  [WINDOW LEVEL](../window/level.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
