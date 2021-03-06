---
title: 'ircii help: input_encoding'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET INPUT_ENCODING <encoding>
  The INPUT_ENCODING variable defines which character encoding
  your terminal is using for the text you write.
  By default, ircII assumes that your terminal uses ISO-8859-1.

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
    EUC-JP              Doublebyte Japanese JIS-X-0208 encoding
    SHIFT-JIS           Microsoft doublebyte Japanese encoding
    GB18030             Chinese multibyte encoding
    CP437               Old IBM PC, compatibles and Atari ST.
    CP850               New IBM PC compatibles and IBM PS/2.
    HP-ROMAN8           Hewlett Packard Extended Roman 8.
    MACROMAN            Apple Macintosh computers and boat anchors.
    ASCII               For American terminals in 7-bit environments.
    ISO-2022-JP         Traditional 7-bit Japanese JIS-X-0208 encoding
    FI                  For Finns who are stuck with 7-bit terminals.

  You can get the complete list of available encodings
  with the command /EXEC iconv -l if your system has it installed.
  
  This variable supersedes the TRANSLATION variable that existed
  in prior versions with support for multibyte encodings.

```
See Also:
  [SET IRC_ENCODING](../set/irc_encoding.html)
  [SET DISPLAY_ENCODING](../set/display_encoding.html)
  [DIGRAPH](../digraph.html)
  [BIND ENTER_DIGRAPH](../bind/enter_digraph.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
