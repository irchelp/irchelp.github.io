---
title: 'ircii help: if'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: IF (<variable-expression>) {<true-command/s>} [{<false-command/s>}]
  IF tests the value of the variable expression for truth. An
  expression is true if it is either a non empty string or a non
  zero number. If the expression is true, the true-commands are
  executed. If it is false, and the false-commands are given, they
  are executed. Usually the expressions will be formed by using
  combinations of the following:
	( exp )				( exp1 ^^ exp2 )
	( exp1 == exp2 )		( exp1 >= exp2 )
	( exp1 != exp2 )		( exp1 <= exp2 )
	( exp1 >  exp2 )		( exp1 || exp2 )
	( exp1 <  exp2 )		( exp1 && exp2 )
        
  Here exp is evaluated as though it were in ${} which means that 
  if (blah)  expands the contents of $blah.  Numbers are treated 
  as constants and thus to expand $0 it must be passed to the 
  regular parser with [].   eg.  IF ([$0]) ...

  IF (!exp)  is also possible which will negate a number or a string.
  In the other expressions, if both exp1 and exp2 expand to numbers, 
  then the following cause true-command to be executed:
	== 	if exp1 is equal to exp2
	!=	if exp1 is not equal to exp2
	>	if exp1 is greater than exp2
	<	if exp1 is less than exp2
	>=      if exp1 is greater than or equal to exp2
	<= 	if exp1 is less than or equal  to exp2
	^^ 	Logical XOR of exp1 and exp2 (1 ^^ 1) == 0 
 		(1 ^^ 0) or (0 ^^ 1) == 1
	|| 	Logical OR of exp1 and exp2
	&&	Logical AND or exp1 and exp2

  Otherwise, false-command (if present) is executed.
  If both exp1 and exp2 are non-numeric, then the above operations
  are string value comparisons.  And for the logical operations 
  A NULL string is treated as 0 with the possible exception of the ^^
  operator.

  To put a string in an expression it must be passed to the 
  regular parser with [].   eg IF ([string1] == [string2]) ..
  All string comparisons are case-insensitive: so ([Hello]==[HELLO])
  is true.  

  Examples:
    IF (C) { set input_prompt $C } { set -input_prompt }
    IF (C!=0) { set input_prompt $C } { set -input_prompt }

  Both of the above evaluate the same way, since $C will either expand 
  to your current channel or 0 if none.  Notice the (C) format which 
  means that it will expand exactly like ${C}.
 
  $ expansion is always performed on the contents of an the true-commands
  and false commands, regardless of the setting of the INPUT_ALIASES
  variable. 

    IF (USER==[ms5n]) { echo Hello Mike! } { echo Who the hell are you? }

  This example will look for an ASSIGN'd variable named USER, and if found
  replace it and compare to ms5n.  If no ASSIGN'd variable exists, it
  will check the environment variables for USER and return that.  

    IF (index > max*2) { echo Limit reached }
  This checks the ASSIGN'd variable against the ASSIGN'd variable
  max times 2 and displays "Limit reached" if the first is greater than
  the second. It does nothing if this is not true.

  IF's can now be imbedded within each other. It is inconvient to write it 
  out on a single line, so I will show the format needed in a script file.

  if (time() - lasttime > 600)
  {
    if (thud == [gone home])
    {
      echo Bill went home over ten minutes ago
      echo $stime($time())
    }
    {
      echo Bill is still here.
    }
  }

  This will first expand the function time() and the ASSIGN'd var 'lasttime'
  to their current values, subtract (seconds) and see if its more than 
  600 seconds, (10 minutes).  If that is true, then it checks to see if the
  ASSIGN'd var 'thud' equals the string "gone home".  If that is ALSO true
  then it will echo "Bill went home over ten minutes ago" and the current
  date and time.  If the second IF is not true then it will display
  "Bill is still here.".   Note there is no 'false' clause for the first
  IF.

```
See Also:
  [@](At_sign.html)
  [FOREACH](foreach.html)
  [WHILE](while.html)
  [expressions](expressions.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
