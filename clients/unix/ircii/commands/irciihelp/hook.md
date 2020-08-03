---
title: 'ircii help: hook'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: HOOK <anything you want>
  This command sends <anything you want> in such a way that it can
  be caught by
    ON HOOK "anything you want"
  or any regular ON syntax. E.g. if you have
    ON HOOK * echo one $* three
  and you send
    HOOK two
  it will display "one two three" as the ON is activated.
  This is useful if you want to put a special hook in a script or 
  alias that you can act upon with an ON HOOK or ignore at will.

```
See Also:
  [ON/](on/index.html)
  [ON HOOK](on/hook.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
