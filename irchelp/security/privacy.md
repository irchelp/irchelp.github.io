---
title: Privacy on IRC
author: Stephanie Daugherty
layout: default
license: CC-BY-SA-4
---

# Privacy on IRC


## Risk Assessment

Users engaged in copyright infringement, dissidents, activists, and whistleblowers are most at risk from breaches of privacy, although all users should exercise some degree of caution in protecting their identity.

Be aware, that in an age of sharing every conceivable detail of your life on Facebook, instant access to searchable public records, and search engines that compete constantly for the ability to accurately find the tiniest snippet of useful information about anything, seemingly innocuous information can be personally identifiable in the hands of someone who knows where to look.

Avoiding social networks may reduce your online footprint, but in practice, you have little control of what others may post about you, and little control over access to public records, both of which can be more than sufficient for a determined individual to identify you.

## Doxing

Derived from "documents" or "docs", the term Doxing refers to compiling personal information on a subject, and publicly posting such information. Doxing may be motivated by a sense of justice or revenge, and is an especially powerful tactic against individuals involved in underground activities.

The goal of doxing someone is to start with the little bits of information you know, such as a forum handle, first name, and possibly a rough geographical location, and expand that through clever searches and deductive reasoning to reveal as much personal information as possible - the more sensitive the information, the better.

A typical doxing will reveal addresses and other contact information. Depending on the motivations and skill of the person dropping dox, a doxing may also include more sensitive information, such as social security numbers, bank account numbers, and even passwords.

Against a person deeply involved in underground activities, doxing can be an electronic death sentence - reputation tied to a formerly anonymous handle often has to be abandoned once it's associated with a real name and address.

Doxing is primarily a tool of criminal hackers (crackers), hacktivists, and security specialists. Most users are at very low risk for doxing. Public figures, those in underground scenes, and those involved in highly controversial activities online and off are most likely to be doxed - the average IRC user will never attract such attention.


## Encryption
A growing number of networks use SSL/TLS for connection between servers, and
many offer SSL connections for users. While SSL/TLS encryption protects
information in transit, it does not protect it within the server itself - a
compromised server will still have access to messages traveling though that
server. Despite this limitation, SSL/TLS encryption still provides a significant
improvement for the privacy and security of users.

### OTR (Off-the-record messaging)
The OTR encryption protocol can be implemented on top of IRC to provide end-to-end
encryption between two clients. As OTR is a one-to-one communication scheme, and
not suitable for one-to-many communication, it can be used only for private messages
between individual users.

Very few IRC clients support OTR, as it has primarily been used within instant
messaging clients. Pidgin is one such client which does support OTR, and, as
it also supports IRC, it can be used to exchange end-to-end encrypted messages
with other users.

An [OTR plugin](https://github.com/cryptodotis/irssi-otr) also exists for the popular irssi client, but is considered to be
"alpha quality". Hexchat also has an [OTR plugin](https://github.com/TingPing/hexchat-otr) which is
listed as being a "work in progress".

### Other solutions for end to end encryption.
Some clients have their own encryption schemes, many of which use a pre-shared key.
Unfortunately, these schemes are not standardized, and therefore, only work between
clients using the same encryption scheme.


## IP Addresses

IP addresses are an integral part of how users are identified on the IRC network, and on some networks, the only reasonably reliable form of identification. The address your connection to the IRC network originates from will be displayed to other users unless the server has been configured to do otherwise.

In most cases, having your IP address displayed in this way is of little or no consequence. IP addresses of cable, DSL, and dialup users are not easily connected to individual subscriber identities without the cooperation of the service provider. The most information someone will get in the typical scenario is a rough estimate of geographical location, which may be very coarse or fairly specific depending on how your provider chooses to allocate IP addresses.

While it is generally impossible to prevent the display of your IP address, proxying your connection through an intermediary server or routing it through a VPN will cause the address of the intermediary server or network to be the address displayed.

Identification by IP address is heavily relied upon to curb abuse, and most networks are extremely intolerant of any unsanctioned means of masking IP addresses, or of anyone providing connections which are deemed to be too "disposable" to support proper accountability, such as use of the Tor network (although, some networks may make exception for users once they have registered).


### Cloaks

Cloaks are a server-side feature to mask user's IP addresses. They may be implemented through network services, pr they may exist directly in the server configuration file (where they are more commonly called a "spoof"). .

Although similar in concept and operation, generally a "cloak" is administered through services, and applied based on registration and identification, while a "spoof" is administered directly through the server configuration, and automatically applied via the I:line or auth block in the server configuration.

Services-based cloaks may be widely available based on network policy, while spoofs granted in the server configuration primarily to shield IRC operators from DDoS attacks associated with controversial, confrontational, or unpopular acts that may be part of their duties.

With a cloak IRC operators on such networks will have access to the real IP address, but normal users will not, offering some measure of increased privacy. However, if cloaks are being issued via services, there is a brief time after connecting that the real host is visible, and your real host could stay visible if something goes wrong with the identification process or services are down.

Services-based cloaks may be widely available based on network policy, while spoofs granted in the server configuration primarily to shield IRC operators from DDoS attacks associated with controversial, confrontational, or unpopular acts that may be part of their duties.

On some networks, such as Freenode and OFTC, cloaks are given freely to established users. and will typically identify you by your preferred nickname.

On other networks, such as EFNet, spoofs are highly restricted - few people outside of IRC operators are given a spoof.

### Tor

While Tor nodes are generally restricted from connecting to IRC, some networks do make a limited allowance for their users to connect via Tor.

Generally, where use of Tor is permitted, it will only be allowed for established users - users are expected to register for access via Tor, and the registration is expected to happen from the user's own IP address. While this significantly reduces anonymity, it's seen as necessary in order to curtail the abuse that an endless supply of disposable connections would otherwise enable. While network staff may ultimately be able to identify you, depending on how long records are kept, this still provides a stronger protection than a cloak would, as no ordinary failure of the process will expose your IP address publicly.

### Other Proxies

Other anonymous proxies may be available, but tend to be rapidly banned from IRC networks due to persistent abuse.

### Bouncers, Shells, and other Remote Access
Running your connection through an IRC Bouncer running elsewhere on the internet
is a popular way to achieve a modest level of privacy on IRC, and frequently,
a persistent presence on IRC. By doing so, the address of the IRC Bouncer is what
will be displayed as your host on IRC, therefore protecting you from casual attempts
to discover your internet location.

Some users choose to run their client directly on such a server instead of, or in
addition to using an IRC bouncer. The biggest advantage of this is that the client can
be run within a tool such as screen or tmux, and the client is accessible via ssh,
so it can be used from networks where IRC is blocked.

A number of providers offer "shell access" accounts, a user account on a Linux
or Unix system that's accessible over SSH for the purpose of running IRC clients,
IRC bouncers, and IRC bots.

VIrtual Private Servers (VPS), or Dedicated Servers can also obviously be used
for running IRC clients, bots, and bouncers, but tends to be a more costly solution,
especially if you only intend to use it for IRC.

### VPN

VPN technology is best known for its use in connecting remote workers to a corporate LAN, but a number of services have sprung up for the purposes of anonymity, bypassing geographical restrictions on services, performance, and enhanced privacy.

These services offer varying degrees of anonymity, with many claiming not to keep logs. Unfortunately, they are also
frequently used to facilitate abuse, so they may often be banned from IRC servers.

### IPv6 tunnels

A number of organizations ("tunnel brokers") offer IPv6 tunnels, so that users
not yet offered IPv6 connectivity by their internet service provider can obtain
a pool of IPv6 addresses, and have those IPv6 addresses tunneled to their network
via a technique similar to a VPN.

Such tunnels don't provide strong anonymity, and they still involve exposing the
tunneled addresses publically, so you may still be target for denial of service
attacks and other network-based attacks.

However, because your tunneled IPv6 address and not your ISP-assigned IPv4 address
is what will be exposed to the IRC server, this does provide a weak form of protection
from having your identity casually revealed.

## IP Address Leakage Threats


### Address Leakage from DCC

DCC chat and file transfer attempt to establish a direct connection between two clients. As part of establishing such a connection, the clients send "handshake" messages which contain the IP address to complete the connection. There is no way for a viable connection to be established without this exchange, however, VPN and Shell setups can use the desired publicly visible address for the connection, rather than the address the user is trying to keep private.

### Address Leakage from visiting a URL

Web servers typically log requests, including the IP address of the computer requesting documents. One technique often used to deanonymize users is to convince them to visit a URL where their IP address can be logged, either as a
direct result of the request, or as a result of the resources requested (images and other content) to serve the page.

## A word about ban evasion

Unfortunately, many of the users that inquire about changing or hiding their IP address want to do so because they have been banned from a channel, server, or entire network. Attempting to evade responsibility for your own actions, or evade bans so that you can continue the same activities that got you banned in the first place almost always makes the situation worse.

Bans of any sort may be widened due to evasion - no matter how just or injust the original ban was, evading a ban is almost universally regarded as justification for a longer lasting, and broader ban, even if the original ban was not
warranted,

In addition, on many networks, IRC operators will intervene with server bans in certain cases of ban evasion, particularly when channels are in danger of filling up their ban lists.

Internet services which are deemed to be "throwaway", including any public anonymizing services, are likely to be
banned on sight - this include open proxies, free ISPs, and Tor connections, among others.

Frequently redialing a dialup connection, or releasing your DHCP address to get another IP to bypass a ban generally results in the ban being expanded to a mask which will cover all of the addresses you have used.
