---
title: 'ircii help: load_path'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET LOAD_PATH <Path to load scripts from>
  This path controls where the client finds scripts and menus.
  A typical example would be.
    SET LOAD_PATH .:~/.irc:/usr/local/lib/irc/script

  Which will first look in the current directory, and then in the 
  system's irc script directory.  This can of course be set to 
  anything you want.  If you want to determine if you have the 
  default scripts, and where they are, use   /WHICH global
  and that should show you the location of the 'global' script 
  file.  The directory it's in is also the location of all the 
  other scripts.

```
See Also:
  [LOAD/](../load/index.html)
  [WHICH](../which.html)
  [CD](../cd.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
