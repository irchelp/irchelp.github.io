---
title: 'ircii help: help'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: HELP [<command> [<subcommands>]]
  Shows help on the given command.  The help documentation is 
  set up in a hierarchical fashion.  That means that certain
  help topics have sub-topics under them.  For example, doing
    HELP ADMIN
  gives help on the admin command, while:
    HELP SET
  gives help on the set command and also displays a list of
  sub-topics for SET.  To get help on the subtopics, you would
  do:
    HELP SET <subtopic>
  where <subtopic> is one of the subtopics.  If you are using the 
  built in help, then you need only type the subtopic name.  The
  input prompt will indicate what help level you are on.  Hitting
  return will move you up one level.  

  At any time, you can specify a ? to get a list of subtopics 
  without the associated help file, for example:
    HELP ?
  gives a list of all main help topics.  The following:
    HELP BIND ?
  gives the list of all BIND subtopics.  If you use a ? with 
  a topic that has no subtopics, you will simply get the 
  standard help file for that topic.

Note:
  Case is unimportant even when viewing the lower case
  filenames such as 'newuser' or 'intro'.

```
See Also:
  [intro](intro.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
