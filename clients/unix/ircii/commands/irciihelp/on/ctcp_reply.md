---
title: 'ircii help: ctcp_reply'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: ON [#|+|-|^|&|@]CTCP_REPLY [-|^]<parameters> [action]
  This event is activated when you receive a reply from a CTCP
  request that you made (with the CTCP command).  For example,
  if you did:
    CTCP BigCheese VERSION
  you would receive a:
    *** CTCP REPLY VERSION from BigCheese: IRCII 2.1beta2 Unix
  from BigCheese.  However, if you had:
    ON ^CTCP_REPLY "* VERSION" /echo $0 is using $2-
  and did the CTCP show above, you would get something like:
    BigCheese is using IRCII 2.1beta2 Unix
  The parameters are:
	$0	nick of person who sent the reply
	$1	target of the reply
	$2	The CTCP command being replied to
	$3-	The reply itself (depends on $1)
  Note: You may NOT use the CTCP command in an ON CTCP_REPLY.  
  It simply will report an error message to you and not work.  
  It is illegal to do this and it is not supported.

  Note that in ircII 20020902 and earlier, $1 is not the target of
  the reply, but the CTCP command, and $2- is the message.  For
  example:

  IF (V > 20020902) {
	ON CTCP_REPLY "% % % *" ECHO ctcp reply type $2 from $0 to $1: $3-
  } {
	ON CTCP_REPLY "% % *" ECHO ctcp reply type $1 to $0: $2-
  }
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
