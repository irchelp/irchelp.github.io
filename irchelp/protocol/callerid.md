---
title: callerid, aka usermode g
author: Osc
layout: default
---

# Quick usermode g information for EFnet

Slapped togather by Osc on 5/sep/04

Last modified 6/sep/04

To set usermode g, the server you are useing must support the mode. To find
out if the server supports this mode, type this command anywhere:



    /quote help accept


You will get a reply similar to this:



    accept ACCEPT <parameter>
    accept
    accept ACCEPT allows you to control who can send you a NOTICE or PRIVMSG
    accept while you have user mode +g enabled.
    accept
    accept For +g: /QUOTE ACCEPT <nick>   -- Add a permitted nickname
    accept         /QUOTE ACCEPT -<nick>  -- Remove a permitted nickname
    accept         /QUOTE ACCEPT *        -- List the present permitted nicknames
    accept End of /HELP.


If you get no reply, or an error, the server you are using doesn't support
usermode g.

To set usermode g, type this command anywhere:



    //mode $me +g
    OR
    /mode <your-nick-here> +g


When a nick that you have not /accept'ed msg's you, you will see:



    Testnick user@host.tld is messaging you, and you have umode +g


Notes:

  * There is a limit to the number of nicks (~20).
  * As with any usermode, to unset change '+' to '-'.
  * Notification (... and you have umode +g) is rate limited to ~1/minute.
  * If the accepted nick changes, the user falls off your accept list to prevent nick tracking.
  * If you change nicks, your accept list is cleared of ALL nicks. There's a [reason](http://lists.ircd-hybrid.org/pipermail/hybrid/2005-June/000770.html) [ext. link] for this, and a fix may be coming soon.
  * Server Operators can msg past +g. Users can not msg Opers unless the Oper /accept's them.

Full documentation here: [http://www.efnet.org/?module=docs&doc;=14&type;=text
](http://www.efnet.org/?module=docs&doc=14&type=text)
