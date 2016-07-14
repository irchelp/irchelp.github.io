---
title: IRC protocol resources
author: irchelp.org staff
layout: default
---

# IRC Protocol resources

IRC servers have diverged significantly since the original and updated RFCs.
A wide range of extensions to the IRC protocol have been both proposed and implemented
to cater to the specific needs and political climate of various IRC networks.

Still, the client-server protocol remains mostly compatible with the original RFCs,
and a client from 20 years ago will likely still connect and be able to join channels.

## The RFCs
The original RFC for the IRC protocol, and the set of RFCs released to update it
were the first real attempts to codify the IRC protocol as a standard.

## Other Specifications

### Timestamp protocol
The timestamp protocol provides for a more sensible way of resolving nickname and
channel collisions when two detached ("split") parts of the network are rejoined.

### IRCv3
The [IRCv3 working group](http://ircv3.net/) is a consortium of client and server
developers working on the standardization of IRC protocol extensions.

Many of the of the IRCv3 extensions concern better integration between IRC Services
and clients, but the group has also been working to improve integration between
clients and IRC bouncers, away notifications, and other quality of life improvements.

Important IRCv3 specifications include:
* [SASL authentication](http://ircv3.net/specs/extensions/sasl-3.2.html), for identification to network services at connect time.
* Making registered "account name" from services visible to clients in a consistent way.
* Message timestamps for to improve history playback when using a bouncer.
* The [multi-prefix extension](http://ircv3.net/specs/extensions/multi-prefix-3.1.html), which allows clients to see when a user has multiple "prefix" channel modes applied such as op and voice, rather than just the "highest" one.


## Server interoperability
Interoperability between servers has declined significantly, with the server-server
protocols being highly customized in forks of the IRCD for the needs of each network,
and servers not compatible with the features in use on a given network necessarily
excluded to prevent desync and broken command propagation. As such, most ircds are
only compatible with recent versions of the same ircd, and most networks specify
a policy on which versions are acceptable.

In order to scale tens or even hundreds of thousands of users, some networks have
even adopted a binary protocol, which is more network efficient than the plaintext
protocol originally specified by the RFCs.

## Common Extensions affecting Clients

### RPL_ISUPPORT (005)
The 005 (RPL_ISUPPORT) numeric allows servers to communicate which extensions are
in use on a given server or network. It is presented as a tokenized list, and allows
a client to determine which features are supported, what limits are in place, which
modes are in use, which of those modes can appear multiple times with arguments,
and which of those modes can appear a single time with arguments.

### Nickname length (NICKLEN)
By far, the most common protocol extension is the relaxation of nickname length limits from
the original 9 character limit to 12, 30, or even longer limits.

### SILENCE
Silence was one of the first extensions, originally popularized on Undernet. It is
a server-side ignore mechanism by which a client can block messages, similar to
the client /ignore command, but instead of the client needing to filter the messages,
the messages are simply discarded by the server.

### CALLERID
CALLERID, also known as usermode g, is another server-side ignore mechanism, via
which ALL private messages or notices are blocked unless the user specifically
unblocked them through an ACCEPT command. Unlike SILENCE, messages to channels
are completely unaffected.

CALLERID first appeared in ircd-hybrid, which was then widely used on EFNet, but
has been adopted by many other IRCDs, including those not based on ircd-hybrid.

### WATCH
WATCH is an extension designed to implement client /notify lists without the need
for the client to poll via ISON. When supported by the server, a compatible client
will recognize that WATCH is available and use it in place of ISON to stay updated
of the status of users on the client's /notify list.

The advantages of this are lowered overhead for the server and more rapid detection
of users on the notify list than would be possible via polling.

### Banquiet
The banquiet extension is fairly common. When the extension is in place on a server,
users who are banned from a channel, but have not yet been kicked, are unable to speak
and may also be unable to change nicknames. Depending on the implementation, voice (+v),
or other channel modes may override the quieting, and allow an affected user to speak
anyway.

### Invite-through-ban
Invite through ban is another extension to ban mechanics - when this extension is in
place, a channel operator can invite a banned user into a channel, and they can then
join normally. This allows channel operators a way to manage "collateral damage"
from overly broad channel bans, and permit desiered users into the channel in spite
of the ban.

### Ban Exempt (+e)
Ban exemption (EXEMPT) provides another way to manage collateral damage from bans,
by specifying masks which are exempt from banning. An user matching a ban exemption
can therefore join no matter what bans they match.

### Invite Exemption (=I)
Invite exemption (INVEX) provides a way to have a standing invite, by specifying
masks which are allowed to join in spite of the channel being invite-only.

### Quiet (+q)
Quiet mode decouples the quieting function of the banquiet extension from the banning
function, therefore allowing a disruptive user to be prevented from speaking on a channel
while still being able to join it. In effect, this functions as a moderated status just
for particular hostmasks, and is typically implemented so that voice (+v) or other
privileged status on the channel overrules the quieting.
