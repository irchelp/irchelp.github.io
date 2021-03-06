---
title: 'ircii help: commands'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
All IRCII commands typed on the command line must begin with one
of the CMDCHARS settings (see SET CMDCHARS).  By default, this 
is set to /.  Thus, any input line whose first character is a 
/ is treated as an IRCII command. For example:

/MSG BigCheese Howdy!

This executes the MSG command, which sends a private message to 
"BigCheese", and that message is "Howdy!"

You can create aliases for commands or redefine what an existing
command does.  This is done with the ALIAS command.  For example:

/ALIAS M /MSG 

NOTE: Commands within aliases and other functions do not need the
      SET CMDCHARS, and thus the above alias could be written as 
      /ALIAS M MSG    as well.
      The exception to this, is the // convention mentioned below.

This example creates a new command, M, which does the same thing
as MSG, you can now do:

/M BigCheese Howdy!

and it will work exactly like MSG.  Suppose however you did this:

/ALIAS MSG //MSG BigCheese

Now, the MSG command will only send messages to BigCheese:

/MSG Howdy!

Note that in the alias, there are two / in front of MSG.  Putting
two of the CMDCHARS in front of a command tells IRCII that you
want to use the original command, and not any alias of it.
Therefore, even if you had the above alias for MSG, you could
still do the following:

//MSG Cheese I can still use the original MSG command.

Furthermore, if you wish you can turn off your display 
(See SET DISPLAY) for the duration of a command.  This is
done by putting a ^ character between the / and the command
word.  For example, if you do:

/^MSG BigCheese Hello

You will not see any visible effect to this command (unless the
nickname BigCheese does not currently exist).

Lastly, if you do the following:

/ /this is a test

Note there is a space after the /.  This form forces the following
text to be sent to your current channel no matter what.  You can
thus send lines that begin with your CMDCHARS.  It can also
be used to force a message to your current channel when you are
using QUERY.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
