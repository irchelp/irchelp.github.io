---
title: 'ircii help: special'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Special character sequences for ALIAS:
  All special character sequences begin with a $.  In their simpliest
  form, the following have special meaning in aliases:
    $*   Expands to the rest of the arguments on the command line.
    $n   Where n is a non-negative number, expands to the nth arg.
    $n-m Where n and m are non-negative numbers, expands to the
         nth thru mth arguments inclusive.
    $n-  Where n is a non-negative number, expands from the nth
         argument to the end of the argument list.
    $-m  Where m is a non-negative number, expands from the
         beginning of the argument list to the mth argument.
         This is the same as $0-m.
    $~   Expands to the last word on a line.
    $,   Expands to the nickname of the last person who send you 
         a /MSG
    $.   Expands to the nickname of the last person to whom you 
         sent a /MSG
    $variable  Expands to the value of one of the following:
           1) Matching ASSIGN'd variable
           2) Matching IRCII SET variable
           3) Matching environment variable
           4) Nothing
         It checks in the order shown.  Thus, if 1 doesn't match, 2 is
         tried.  If 2 doesn't match, 3 is tried, etc.
         See ASSIGN for more details.
    $[number]variable  Expands the variable and shows only 'number' of
	 characters. e.g. $blue == "nonsense"  $[3]blue == "non"
	 and $[20]blue == "nonsense           "	
	 In the second case note it is left justified in the space.
    $[-number]variable Expands as above but it is right justified when
	 the 'number'  is bigger than the number of chars in variable.
	    $[-20]blue == "           nonsense"
    $#variable  Expands to the number of words in the variable.
    $@variable  Expands to the number of letters in the variable.
    $(sub-alias)  This expands out the sub-aliases, then uses that
         result in place of the (sub-alias) expression.  For example
         $($0) will first expand $0... suppose it expands to S.  Then
         it replaces that in the original text, giving you $S, which
         is then expanded to the name of your current server.
    $!history!  This expands to a matching entry in your command
         history.  The text between the ! may contain wildcards.
    $:   Expands to the nickname of the last person to join your 
         channel
    $;   Expands to the nickname of the last person to send a public
         message to your channel
    $A   Expands to the text of your AWAY message
    $B   Expands to the body of the last MSG you sent.
    $C   Expands to your current channel
    $D   Expands to the nickname of the person whose sign-on was last
         detected by the NOTIFY mechanism
    $H   Expands to the current numeric being processed
    $I   Expands to the name of the channel to which you were last
         INVITED
    $K   Expands to the current value of CMDCHARS.  Useful to have 
         aliases work even when you change CMDCHARS.
    $L   Expands to the current contents of the input line
    $N   Expands to your nickname
    $O   Expands to the value of STATUS_OPER if you are currently an operator
    $P   Expands to "@" if you are a chanop on the current channel
    $Q   Expands to the nickname of the person you are QUERYing.
    $S   Expands to the name of your server
    $T   Expands to the 'target' of your input (either a QUERY nick or
         a current channel)
    $U   Expands to the last thing cut from the command line. e.g. ^U to 
         clear line will put the line in the variable $U
    $V   Expands to the internal ircII release date
    $W   Expands to the current working directory
    $Z   Expands to the time of day
    $$   Expands to $

  Argument to aliases will automatically be appended to the expanded
  alias unless you use one of the following forms in the alias:
     $*
     $n
     $n-m
     $-m
     $n-
     $(sub-alias)
  If one of these forms is used in the alias arguments are not appended.
  For example: 
    ALIAS M /MSG
  will be treated as:      
    ALIAS M /MSG $*
  However,
    ALIAS M /MSG $0 $1-
  will not have the arguments appended.  If you have an alias and you wish to 
  prevent arguments from being appended, add $() to the alias.  The $() with
  nothing between the parenthesis expands to nothing and prevents arguments
  from being appended.

  Any alias may be surrounded by {}s so that it can be imbedded within
  another string.  For example:
    a${N}a
  will expand to (assuming your nickname is BigCheese):
    aBigCheesea
  Aliases are automatically delimited by certain characters.  For example:
    "$N"
  expands to:
    "BigCheese"
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
