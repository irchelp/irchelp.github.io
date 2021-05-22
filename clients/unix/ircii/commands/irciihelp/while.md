---
title: 'ircii help: while'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: WHILE <boolean> { <cmd> }
  This will execute the given cmd while the given boolean returns
  true.  The boolean has the same format as for the IF command, except
  that it is re-evaluated at each loop interation.  The same is true
  for cmd.  It is re-evaluated at each loop interation.
  Example (in script format):
    alias repeat
    {
      @ rep = 0;
      while (rep < [$0])
      {
        $1-
        @ rep = rep + 1
      }
      assign -rep
    }

  This can be used as follows:
    /repeat 10 /msg bigcheese This repeats 10 times
  The repeat alias breaks down into three parts.

    @ rep = 0 
    while (rep < [$0]) {$1-;@ rep = rep + 1}
    assign -rep

  The first is to initialize rep to 0 and the last part is to remove
  rep when done.  The first is just like ASSIGN rep 0
  The WHILE portion is described below:
  The boolean for the while loop is (rep < [$0]).
  This is what is then used at each loop interation.  At the
  first iteration this will be ( 0<10 ),  at the next ( 1<10 ), and so on.
  The cmd part of this looks like {$1-;@ rep = rep + 1}
  When the alias is first parsed, the stuff inside {..} is not expanded but
  is simply executed at each loop interation.  It expands to
    'msg bigcheese This repeats 10 times.;@ rep = rep + 1'
  It sends the MSG to BigCheese and then it increments rep by 1.  
  (See @ for more information about this assignment) 

  The command part while is exactly like the syntax in IF
  and FOREACH.

```
See Also:
  [IF](if.html)
  [FOREACH](foreach.html)
  [@](At_sign.html)
  [expressions](expressions.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
