---
title: 'ircii help: save'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SAVE [<options>] [<filename>]
  This will save all of the settings of IRCII to a file.  It
  saves all of the Key Bindings, Variables, and Aliases (in that
  order) in a format such that they can be loaded into IRCII
  using the LOAD command or the -l switch.  If no filename is
  given, the your default .ircrc file will be used (unless
  changed with the -l switch).

  If any of these options are specific, different things occur.

    -ALIAS
    -ASSIGN
    -BIND
    -ON
    -SET
    -NOTIFY
    -DIGRAPH

  only those `types' are saved.  The -ALL option will save all
  types and the -FORCE option will supress confirmation.

```
See Also:
  [ircII command_line_args](ircii/command_line_args.html)
  [LOAD/](load/index.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
