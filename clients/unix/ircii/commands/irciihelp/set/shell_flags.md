---
title: 'ircii help: shell_flags'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET SHELL_FLAGS <flags>
  Sets any additional flags that the shell (set with SET SHELL)
  might need. For most shells the -c flag is needed.  This tells
  the shell to take the command line as a command to be parsed
  rather than a filename.  The flag -f is also added sometimes, and
  with csh and tcsh this means to ignore the .cshrc file when a 
  command is executed.  This means aliases will not be available but
  the command will execute faster.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
