---
title: bitlbee: connecting IRC clients to other chat protocols
---
# bitlbee: connecting IRC clients to other chat protocols

[bitlbee](http://www.bitlbee.org) is an adaptor or "gateway" of sorts, used to connect IRC clients to other commonly used chat services and protocols.

It presents itself to an IRC client as an IRC daemon (IRCD), and to various chat servers as a normal client for that protocol.
Out of the box, there is support for XMPP (jabber) based services, including Facebook and Google Talk, as well as Yahoo, AIM/OCQ, Twitter, and others.

## System Requirements
bitlbee is developed for Linux and Unix-like systems, and while ports to Windows exist, the developers note that these ports are considered unstable.
bitlbee does not necessarily need to be run on the same machine as your IRC client, and public servers also exist *Editor's note: Use public
 servers at your own risk, and be sure you trust the operators of such servers before entering account credentials.*

## Suggested Uses

bitlbee provides an alternative to other multiprotocol IM clients for users that are heavily invested in IRC. This makes it an expecially attractive choice
for users who prefer console based clients, as well as to users who have extensively customized their IRC clients.

As bitlbee functions as an IRC daemon, it can be paired with a IRC bouncer such as znc to provide persistant presence, or paired with a web-based IRC
client to provide access to your various chat accounts from anywhere.
