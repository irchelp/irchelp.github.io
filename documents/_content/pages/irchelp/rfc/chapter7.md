HTML layout by Tatu J. Lund Apr 1997

Network Working Group

Request for Comments: 1459

J. Oikarinen

D. Reed

May 1993

* * *

# 7. Client and server authentication

Clients and servers are both subject to the same level of authentication. For
both, an IP number to hostname lookup (and reverse check on this) is performed
for all connections made to the server. Both connections are then subject to a
password check (if there is a password set for that connection). These checks
are possible on all connections although the password check is only commonly
used with servers.

An additional check that is becoming of more and more common is that of the
username responsible for making the connection. Finding the username of the
other end of the connection typically involves connecting to an authentication
server such as IDENT as described in RFC 1413.

Given that without passwords it is not easy to reliably determine who is on
the other end of a network connection, use of passwords is strongly
recommended on inter-server connections in addition to any other measures such
as using an ident server.

* * *

[<](chapter6.html)

[^](rfc.html)

[>](chapter8.html)

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

