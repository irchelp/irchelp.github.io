---
title: 'ircii help: irc_encoding'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET IRC_ENCODING <encoding>
  The IRC_ENCODING variable defines which character encoding
  your irc network (the peers you chat with) are using
  in transmission.
  This setting is also applied for text that is loaded from
  scripts and text that will be sent to the server.

  The default value is ISO-8859-1.
  
  Examples of common encodings:
    UTF-8               Unicode encoding, supports almost all languages
    ISO-8859-1          Most widely used "latin1" encoding.
    ISO-8859-2          Polish, Czech, Slovak, Slovenian, Hungarian
    ISO-8859-5          Cyrillic encoding: Russian, Ukrainian, Belarusian
    ISO-8859-6          An incomplete Arabic encoding
    ISO-8859-7          Greek encoding
    ISO-8859-8          Modern Hebrew encoding
    ISO-8859-9          Turkish, Maltese, Esperanto
    ISO-8859-10         Estonian, Latvian, Lithuanian, Greenlandic, Saami
    ISO-8859-11		Thai
    ISO-8859-15         Latin1 revised, with Euro for Finnish and French
    ISO-8859-16         Albanian, Croatian, Romanian, Gaelic etc with Euro
    WINDOWS-1252        M$ version of latin1, overlaps with control bytes
    SHIFT-JIS           Microsoft doublebyte Japanese encoding
    GB18030             Chinese multibyte encoding
    CP437               Old IBM PC, compatibles and Atari ST.
    CP850               New IBM PC compatibles and IBM PS/2.
    ASCII               For American terminals in 7-bit environments.
    ISO-2022-JP         Traditional 7-bit Japanese JIS-X-0208 encoding

  You can get the complete list of available encodings
  with the command /EXEC iconv -l if your system has it installed.

```
See Also:
  [SET DISPLAY_ENCODING](../set/display_encoding.html)
  [SET INPUT_ENCODING](../set/input_encoding.html)
  [DIGRAPH](../digraph.html)
  [BIND ENTER_DIGRAPH](../bind/enter_digraph.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
