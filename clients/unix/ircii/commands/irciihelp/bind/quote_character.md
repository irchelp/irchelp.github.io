---
title: 'ircii help: quote_character'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: BIND <key> QUOTE_CHARACTER
  This function "quotes" the next key hit.  What this really
  means is that it overrides the key binding for the next key and
  forces it to insert itself into the input buffer.  For example,
  if you have Control D bound to delete character, and you hit
  the quote character (defaults to Control Q) then Control D, it
  will insert a Control D (shows up as an inverse video D) and
  does not delete the character.  Got it?
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
