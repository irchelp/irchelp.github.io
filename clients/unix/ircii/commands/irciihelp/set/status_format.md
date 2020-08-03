---
title: 'ircii help: status_format'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SET STATUS_FORMAT <format description for status line>
  Setting the variable allows you to alter the appearance of the
  status line.  Certain special characters are recognized in
  this format line and replaced with various bits of status line
  information.  Each of these special characters is preceeded by
  a '%'.  Here is a list of these characters:
       N          Your current nickname.
       C          Your current channel.
       R          Current window refnum or name.
       W          Value of STATUS_WINDOW variable. *
       +          Value of STATUS_MODE variable. *
       Q          Value of STATUS_QUERY variable. *
       I          Value of STATUS_INSERT variable. *
       S          Value of STATUS_SERVER variable. *
       F          Value of STATUS_NOTIFY variable. *
       O          Value of STATUS_OVERWRITE variables. *
       A          Value of STATUS_AWAY variable. *
       T          Value of STATUS_CLOCK variable. *
       U          Value of STATUS_USER variable. *
       X Y Z      Value of STATUS_USER1,2,3 variables. *
       H          Value of STATUS_HOLD variable. *
       *          Value of STATUS_OPER variable. *
       @          Value of STATUS_CHANOP variable. *
       M          Value of STATUS_MAIL variable. *
       #	  Value of STATUS_UMODE variable.
       B	  Value of STATUS_HOLD_LINES variable. *
       V          Current IRCII version
       >          Makes anything beyond it right justified.
       %          Replaced by %

  Those marked with * are only displayed in the status line when
  certain conditions are met.  Please get help on the variables
  mentioned above for specifics about each one.

  For example, the standard default IRCII status line format
  looks like this:

  %T[%R] %*%@%N %S%H%Q%A%C%+%I%O%M%U %W
  which when expanded for the nickname Dae on the channel #blue
  [1] @Dae on #blue (+tn) * type /help for help 

  The window number %R is 1
  The nickname %N is Dae   and Dae is a channel op %@  @
  Dae is on channel %C #blue
  The mode %+ calls up the contents of the STATUS_MODE variable
      and displays the channel modes, (+ps)
  The end of the status_format $U expands to the contents of
      STATUS_USER which contains.. "* type /help for help"
  
  Everything else is ignored unless it's needed.
 
  You can now include text modification characters
  (^B, ^V, ^_ and ^O) in STATUS_FORMAT. If you change
  the format at the start of STATUS_FORMAT, you will
  have to do it again after any %C or %U, as these
  both reset it to reverse video.

```
See Also:  
  [SET STATUS_AWAY](../set/status_away.html)
  [SET STATUS_CHANNEL](../set/status_channel.html)
  [SET STATUS_CHANOP](../set/status_chanop.html)
  [SET STATUS_CLOCK](../set/status_clock.html)
  [SET STATUS_QUERY](../set/status_query.html)
  [SET STATUS_FORMAT](../set/status_format.html)
  [SET STATUS_HOLD](../set/status_hold.html)
  [SET STATUS_HOLD_LINES](../set/status_hold_lines.html)
  [SET STATUS_INSERT](../set/status_insert.html)
  [SET STATUS_MAIL](../set/status_mail.html)
  [SET STATUS_MODE](../set/status_mode.html)
  [SET STATUS_NOTIFY](../set/status_notify.html)
  [SET STATUS_OPER](../set/status_oper.html)
  [SET STATUS_OVERWRITE](../set/status_overwrite.html)
  [SET STATUS_QUERY](../set/status_query.html)
  [SET STATUS_SCROLLED](../set/status_scrolled.html)
  [SET STATUS_SCROLLED_LINES](../set/status_scrolled_lines.html)
  [SET STATUS_SERVER](../set/status_server.html)
  [SET STATUS_UMODE](../set/status_umode.html)
  [SET STATUS_USER](../set/status_user.html)
  [SET STATUS_WINDOW](../set/status_window.html)
  [SET CLOCK](../set/clock.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
