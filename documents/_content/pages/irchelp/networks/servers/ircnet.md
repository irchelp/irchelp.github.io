# IRCnet Server List

## Important Tips for Connecting to IRCnet servers

* It's very important to use other ports than the default 6667 whenever possible, since that port tends to be very busy. Try something else in the 6660-6669 range instead.
* Many IRCnet servers allow none or few connections from users outside their domain, so try a server in your own country or at least close to you.
* Even after you connect, the traditional `/links` command to get a server list will only show about 1/3 of the servers, since many servers are "masked" and not shown. So for example, although there are about 16 servers in Finland (.fi), unless you're already on a .fi server, `/links` or `/links *.fi` will show only the first one. You would need to do something like `/links *.fi *.fi` to see them all.

* * *

See also this [troubleshooting guide](http://www.ircnet.com/troubles.html)(external link) for connecting to IRCnet.


## IRCnet Server Lists

The following are all *external links* and will take you away from our site. We keep these lists because IRCnet lacks an official web site, so these sites have different degrees of stability and accuracy. 
(EFnet and IRCnet are the oldest networks. They actually predate notions of network founders and ownership, and are by necessity an ad hoc collection of servers with minimal central administration, so phrases like "official" can often be more about vanity than reality.)

[IRCnet Server List: Semi-official](http://www.ircnet.com/index.php?&p=5)
This site is pretty new and is part of the self-acclaimed ["IRCnet website"](http://www.ircnet.com/), whether it stands the test of time remains to be seen.
As with most server lists, you would need to add the servers manually to your client - in mIRC you may do so in the connection setup dialog window. Alternatively, just issue commands like `/server irc.whatever.com:6666` which connects you to irc.whatever.com on port 6666.

[IRCnet Server List: another semi-official site](http://irc.tu-ilmenau.de/all_servers/)
This list is run by the admins of an IRCnet server, and is automatically refreshed by a computer script several times a day. It is thus guaranteed to be as complete as possible. It's sorted by domain, which is the same as the country except for a few exceptions such as the US servers. Read through the "description" column and avoid those marked as "routing servers" which won't allow you to connect. Like with the previous list, you would need to add the servers manually to your client.

[IRCnet Server Map](http://pasky.ji.cz/~pasky/irc/IRCnet.html)
This unofficial site provides a map showing how the IRCnet servers are linked together, either in an ASCII format (less sexy but more readable) or the GraphViz image (more sexy but less readable). The maps are automatically updated every few hours using an open source script available at that site.

