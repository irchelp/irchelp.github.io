---
title: 'ircii help: keys'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Allowable key sequences for use with the BIND function:
  c          where c is any key (case sensitive)
  ^c         where c is one of A thru Z or one of
             the following quoted set '?[]\^@'
	     (^? == delete key)
  METAn-c    where n is 1, 2, 3 ... 8 and c is the same as the 
             first form above
  METAn-^c   where n is 1, 2, 3 ... 8 and c is the same as the
             second form above
  mc         where m has been previously bound to META1_CHARACTER,
             META2_CHARACTER, META3_CHARACTER, ... META8_CHARACTER 
	     and c is the same as the first form above.  m may be 
	     either of the first two forms above (m or ^m).
  m^c        where m has been previously bound to META1_CHARACTER
             META2_CHARACTER, META3_CHARACTER, ... META8_CHARACTER
             and c is the same as the second form above.  m may be
             either of the first two forms above (m or ^m).
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
