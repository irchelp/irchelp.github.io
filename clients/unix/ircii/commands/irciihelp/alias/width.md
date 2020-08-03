---
title: 'ircii help: width'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
ALIAS MODIFIER:
  This modifier is a width specifier for any of the forms of
  alias.  This is done by placing [<width>] after the $ (and
  after and ^c expressions).  For example:
    $[10]C
  This expand to your current channel, but it will truncate any
  characters beyond 10 in the channel name.  If the channel is
  less than 10 characters, it will be padded on the right with
  blanks.  Specifying a negative width will justify the field on
  the right and pad on the left with blanks.  A width of 0 is
  treated as though no width specifier was used.  If you get real
  tricky, you can do things like this:
    $([$CHANNEL_NAME_WIDTH]C)
  The value of the IRCII variable CHANNEL_NAME_WIDTH will be expanded
  in the $() expression.   If CHANNEL_NAME_WIDTH is 10, this will result
  in $[10]C which will then expand as described above.
 
  Remember, you can use both forms of modifiers, but they must be in
  the correct order.  All ^ modifiers must be first, followed by any
  [] modifier.  For example:
    $^.[-10]S
  This will right justify your server name and quote any . in the
  server name with \.

```
See Also:
  [ALIAS QUOTE](../alias/quote.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
