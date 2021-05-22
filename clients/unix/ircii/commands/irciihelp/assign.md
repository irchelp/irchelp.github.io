---
title: 'ircii help: assign'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ASSIGN [[-]<user-variable> [<whatever>]]
  ASSIGN lets you create user variables which are automatically
  expanded by ircII in aliases using the $variable-name format.
  For example, if you had defined:
    ASSIGN me The Big Cheese
  Then, in an alias, $me would expand to "The Big Cheese".  These
  are straight textual substitutions.  You can use these kind
  of variables as counters and indexes into lists as well.  For
  example:
    ASSIGN index 0
    ASSIGN index ${index+1}
  The first line sets "index" to 0, the seconds increments index by 1.
  Note that the second will always be expanded if used in another
  alias (where $ are normally expanded).  If you want it to be
  expanded if typed at the input line, you must first
  SET INPUT_ALIASES to ON.

  Note: In the above example, the mathematical expression must be
  enclosed by {}'s  otherwise the + would be treated as an alias
  delimiter and the addition not performed. (See @ as well)

  Suppose now you wanted to use index to get a single word in a list, 
  you could do:
    ALIAS WORD ECHO $($index)
  Then doing:
    WORD This is a test
  would display the index'th word in the list.  
  The $($index) format does the following: it parses the text
  between the () as a sub-alias.  The "$index" is thus evaluated
  and returns its value.  This value is then replaced for the () 
  expression and evaluated.  So, if you had:
    ASSIGN index 1
  Then, the following would be evaluated:
    $index becomes 1 which given
    $(1) which becomes simply $1
  Thus the $1 argument is used.  
  This functionality can be nested. This the following:
    ASSIGN A Hey You!
    ASSIGN B A
    ASSIGN C B
    ALIAS NESTING echo $($($C))
  will cause NESTING to display "Hey You!"

  The following format are also legal:
    $#name	evaluates to the number of words in name
    $@name	evaluates to the number of characters in name
  You can use these with the mathematical expressions as well, 
  for example:
    ASSIGN foo Testing One Two
    ECHO $#foo $@foo
    ASSIGN junk ${#foo + @foo}
  The ECHO line will display 3 15 and the variable junk have the 
  value 18.

  Additionally, values assigned wit SET FUNCTION_RETURN are
  taken to be the return value of a function.

IMPORTANT NOTE:
  There is a special version of this command called '@'
  for use in aliases and scripts.  It is well suited to mathematical
  operations.  Its use over ASSIGN is highly recommended.

```
See Also:
  [@](At_sign.html)
  [ALIAS/](alias/index.html)
  [IF](if.html)
  [SET INPUT_ALIASES](set/input_aliases.html)
  [ALIAS functions](alias/functions.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
