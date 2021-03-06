---
title: 'ircii help: on'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]<event> [serial] [-|^]<match> [action]
  The ON command lets you set up actions which will occur when
  certains events happen.  For example, you can create
  "personalized" away messages for different individuals,
  periodic actions that occur at specific times, just to name
  a few.

  Note that using ON JOIN and ON LEAVE to automatically greet
  people entering or leaving your channel is extremely poor
  etiquette. See /HELP ETIQUETTE.

ON [mode]<event> [-|^]<match> [action]
ON [mode]#<event> <serial number> [-|^]<match> [action]

  There are seven modes for each event.  I've shown the # mode
  as a separate line because it requires a serial number.
  Different modes are specified by preceeding the event with
  one of the following characters:
    +           Make event very noisy.  It will display
                everything it does.
    -           Make event quiet.  It will not display any of
                its actions.
    ^           Make event silent.  Just like - above except it
                inhibits the normal event display as well.  The
                only command that will cause output in this mode
                is the ECHO command.  This can be used to redefine 
                how event messages look.
    &		Make the /ON local to only your own server.  e.g.
		/on -&msg * echo One of mine
		Will echo "One of mine" ONLY when someone from my own
		current server sends me a message.  If nothing matches
		in this list, then it will resort to the default ONs.
		Of if there was an /ON ^msg * echo :$0: $1- then it 
 		it will use that for anyone not on your server.
    @ 		This is like & except that it is exclusive to your
		server.  It will NOT look at the default ONs if 
		there is no match for your own server.
    #           Allows you to assign a serial number to the specific
		<event> such that you can have multiple ON's trigger
		of one <event>.  Further discussion of this below.
 		Note this is a pound sign NOT a number. The serial
		number comes right after the <event>.
  If no character is specified, you will be warned upon activation 
  of an event (this is somewhere between the + and - modes).

  The <match> parameter may be a single word, or a list of words 
  surrounded by double quotes (").  The <match> determines 
  specifically which events of the given <event> will cause 
  the action to take place.  The <match> may contain wildcards,
  and the specifics of the <match> parameter are dependant on
  the <event> type.  
  
  If the <match> is preceeded by a -, that entry will be
  removed from the action list.  For example:
    ON PUBLIC -BigCheese
    ON INVITE  -"* +Har"
  The first will remove "BigCheese" from the PUBLIC list, the second will
  remove -"* +Har" from the INVITE list.
  You can remove all entries from a given event list by doing
  the following:
    ON <event> -
  For example:
    ON MSG -
  removes all entries in the ON MSG list.

  If the <match> is preceeded by a ^, then no action will be taken
  for a match for that event (this is used when you wish
  to exclude a nickname or list of nicknames from a larger
  wildcard match, see HELP ON FLOOD for an example).  

  Added two new wildcards to the pattern matching system.
  '%' matches any sequence of characters except a space.
  '?' matches any single character.
  e.g.  ON ^msg "bob % % blue" whatever
  would match a message from bob with two words and then the word
  'blue'.
 
  The [action] parameter is that action that will occur when the
  specified event occurs which matches the given <match>.
  The action parameter is parsed by the command parse in exactly
  the same way as an IRCII alias is parsed, using the same inline
  variable expansions (See ALIAS).  Also, depending on the
  event that is activated, there will be certain values passed
  as arguments to the action, just as if they were arguments to
  an alias.  You may use the $0, $1, $2... etc variables to
  expand out these arguments.  The arguments passed for each
  event are described in the individual help files for each event.

  Here are some examples:
    ON -MSG *cheese* /NOTICE $0 No Cheese Messages Please!
  Whenver a MSG is received from anyone with a nickname with
  cheese in it, a NOTICE will be sent out to that user.  This
  action will generate no noticeable effect to you (it is marked
  as "quiet").

    ON MSG ^BigCheese
  If used with the first example above, this will prevent the
  action from being taken when a message is sent from BigCheese.

  Here is an example of how to redefine the way a
  message looks:
    ON ^MSG * /ECHO :$0: $1-
  All MSGs received from now on will look:

  :BigCheese: Hello!
  The same can be done with the other event types.

IMPORTANT IMPORTANT: A full discussion of serial numbers is
  given in ON serial_numbers as there is too 
  much to place directly in this help file. Please read this one
  as it will help prevent collisions between different scripts.

  More examples are given for the individual event types.

```
See Also:
  [ON serial_numbers](../on/serial_numbers.html)
  [ircII programming](../ircii/programming.html)
  [ALIAS/](../alias/index.html)
  [expressions](../expressions.html)  (Special Cases is of particular relevance)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
