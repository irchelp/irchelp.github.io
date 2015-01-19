---
title: IRCnet Server List
dateupdated: 2015-01-09
summary: List of IRCnet servers and accessing IRCnet in general
---

# IRCnet Server List

## IRCnet wildcard DNS records for a subset of countries

Most national IRCnet servers only allow connections from the specific nation.
If you are not sure which servers you can connect to at all, use `!servers` in
`#ircnet`.

There are many outdated documents on IRCnet nodes all around the internet. The
table below was last updated on 2015-01-19 and will probably be relatively
up-to-date compared to other resources.

<table width="80%" border="1">
 <thead>
 <tr>
  <th>Country</th>
  <th>Address</th>
  <th>IPv6-only Address, if any</th>
 </tr>
 </thead>
 <tbody>
 <tr>
  <td><b>International</b></td>
  <td><b>open.ircnet.net</b></td>
  <td></td>
 </tr>
 <tr>
  <td>Czech Republic</td>
  <td>irc.cz.ircnet.net</td>
  <td>irc6.cz.ircnet.net</td>
 <tr>
  <td>Estonia</td>
  <td>irc.ircnet.ee</td>
  <td>irc6.ircnet.ee</td>
 </tr>
 <tr>
  <td>Finland</td>
  <td>irc.fi.ircnet.net</td>
  <td></td>
 </tr>
 <tr>
  <td>France</td>
  <td>irc.fr.ircnet.net</td>
  <td></td>
 </tr>
 <tr>
  <td>Germany</td>
  <td>irc.de.ircnet.net or random.ircd.de</td>
  <td>irc6.de.ircnet.net</td>
 </tr>
 <tr>
  <td>Hungary</td>
  <td>irc.hu</td>
  <td>irc6.hu</td>
 </tr>
 <tr>
  <td>Israel</td>
  <td>irc.il.ircnet.net</td>
  <td></td>
 </tr>
 <tr>
  <td>Poland</td>
  <td>irc.pl.ircnet.net or polska.irc.pl</td>
  <td>polska6.irc.pl</td>
 </tr>
 </tbody>
</table>

The "<b>International</b>" wildcard DNS record contains all IRCnet
servers which are accessible independent of the country your IP address is
registered in. This means that you should be able to connect to IRCnet by at
least one of them. They will perhaps be less stable than a local server, and
will be the target of DDoS attacks more often, which may perhaps result in them
going down more frequently.

These are all known (well, to me) wildcard DNS records of IRCnet nodes by
country. There are many stale DNS records and some countries might not even
have wildcard DNS records at all. If in doubt, pick your servers from the
[tu-ilmenau list](http://irc.tu-ilmenau.de/all_servers/) or the `!servers`
command on `#ircnet`, which are always guaranteed to be kept up-to-date
automatically.

## Webchat

The following semi-official web-gateways are available for IRCnet:

* [public qwebirc](http://webchat.ircnet.net)
* [CGI:IRC on tu-ilmenau.de](http://irc.tu-ilmenau.de/web-irc/) (open to German users only)

These web frontends are suitable for finding a server you have access to using the `!servers` method.

## Important Tips for Connecting to IRCnet servers

* It's very important to use other ports than the default 6667 whenever possible, since that port tends to be very busy. Try something else in the 6660-6669 range instead.
* Many IRCnet servers allow none or few connections from users outside their domain, so try a server in your own country or at least close to you.
* Even after you connect, the traditional `/links` command to get a server list will only show about 1/3 of the servers, since many servers are "masked" and not shown. So for example, although there are about 16 servers in Finland (.fi), unless you're already on a .fi server, `/links` or `/links *.fi` will show only the first one. You would need to do something like `/links *.fi *.fi` to see them all.

## Other IRCnet Server Lists

The following are all *external links* and will take you away from our site. We keep these lists because IRCnet lacks an official web site, so these sites have different degrees of stability and accuracy.
(EFnet and IRCnet are the oldest networks. They actually predate notions of network founders and ownership, and are by necessity an ad hoc collection of servers with minimal central administration, so phrases like "official" can often be more about vanity than reality.)

[IRCnet Server List: another semi-official site](http://irc.tu-ilmenau.de/all_servers/)
This list is run by the admins of an IRCnet server, and is automatically refreshed by a computer script several times a day. It is thus guaranteed to be as complete as possible. It's sorted by domain, which is the same as the country except for a few exceptions such as the US servers. Read through the "description" column and avoid those marked as "routing servers" which won't allow you to connect. Like with the previous list, you would need to add the servers manually to your client.

## Some IRCnet websites

(Last updated: January 2015)

* Austrian website: [www.irc.at](http://www.irc.at/)
* German websites: [BelWue](http://irc.belwue.de), [FU Berlin](http://irc.fu-berlin.de/), [MAN-DA](http://irc.man-da.de/)
* [Polish website](http://www.pl.ircnet.net/) with tech docs, maintained by Beeth
* irc6.net I-line request website: [www.irc6.net](http://www.irc6.net) (IPv6 only)
* The "official" IRCnet website (not updated since 2004) [ircnet.org](http://www.ircnet.org/)
* ircd software website: [www.irc.org](http://www.irc.org/)
* [unofficial twitter account by an operator](https://twitter.com/irc_net)
