---
title: Understanding IRC Services
author: Stephanie Daugherty
layout: default
license: CC-BY-SA-4
---

# Understanding IRC Services
IRC services are centralized facilities running on an IRC network which extend the functionality of the entire network.
An IRC service is effectively an empowered server on the network, and as such, allows that server to do anything that any other
server on the network can do, and frequently, has greater power either in practice or actual capabilities than the "normal" servers
of the network.

Modern IRC services work within the IRC protocol, but are not defined by the protocol, and may differ greatly from one network
to another. In every case, they are operated for the entire network, and serve as an extension of that network's policies.

The most frequent use of IRC services is to provide registration services. Registration services enforce claims to ownership,
either of channels, nicknames, or most frequently, of both, where the IRC protocol alone does not. Generally, nickname and channel
registration services work in concert with one another, with nicknames being registered, and channels in turn being associated
with registered nicknames.

It is very important to note that registration services are not standardized, therefore they will differ widely from one network to another, and
do not carry over from one network to another! Information on a network's available services use usually available in the MOTD of
each server.

EFNet and IRCNet are largely unique in that they have no registration services. Both networks operate on IRC protocol rules for
transient ownership of nicknames and channels - there is no guarantee of perminant ownership. EFNet augments these rules with a
unique type of network service, chanfix, which uses recent snapshots to recover opless channels and to mediate ownership disputes.

## Basics of networks without services

On networks Without registration services, such as EFNet or IRCNet, only the IRC protocol's rules of ownership apply - that means ownership is
transient, on the basis of occupancy for nicknames and continious control for channels. This means that nicknames and channels
are strictly first-come, first-serve, but if you stop using them, even briefly, as might happen in a disconnect, you may lose
your claim.

This makes "owning" a nickname on such networks is effectively impossible, and "owning" a channel into a difficult undertaking with
substantial resource requirements. It also means that all ops of a channel are effectively equal, and may act to take control of
the channel for themselves by removing ops from others.

## Basics of nickname services

A nickname service, most frequently named "nickserv", is a service-bot which allows users to reserve their nicknames. Having a
reserved nickname allows the registered owner to retake their nickname every thime they connect to the network, and may also
allow the registered owner to prevent others from being able to use their nickname.

The server MOTD will generally indicate whether the network offers nickname registration and what bot is used to access the
service. Most frequently, "nickserv" will be the name of the bot, and /msg nickserv help will give an overview of commands.


## Basucs of channel services

A channel service, most frequently named "chanserv", is a service-bot which allows users to reserve channels. The availabllity
of such services will generally be noted in the server MOTD on networks which offer it. Usually, you can obtain information about
channel services via /msg chanserv help.

Channel services generally require nickname registration, or if no nickname registration is offered, some other form of user
registration will typically be offered. In almost all cases, to register a channel, you must first have control of the channel,
that is, you must have valid ops in the channel under standard IRC protocol rules, which means you have to either create the
the channel, or have ops handed off to you from someone who already has them.

On networks with registration, generally the only thing required to register is valid ops on a not-yet-registered channel. Some
networks however, implement registration through a petition process, or other more involved mechinism.

A registered channel with have a tiered "access list", with the "founder" or "registrant" of the channel having the highest
possible access level, and any number of subordinate access levels. The access levels prevent users who have been given chanop
access to moderate the channel from being able to take perminant control of the channel.

The founder/registrant role is special, and usually tied to the registered nickname of the "owner". There qill frerquently be a
"channel password" which allows others to act as the channel owner, and there may be a "successor" mechanism which designates
someone to inherit the channel if the owner has not been seen for some period of time.
