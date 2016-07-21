---
title: Extended Ban Conditionals (EXTBAN)
author: Stephanie Daugherty
layout: default
---

# Extended Ban Conditionals (EXTBAN)
A number of IRCDs now offer extended sets of conditions for banmasks (EXTBAN),
which can be used in bans, exempts, invex (invite exemptions), and quiets.

EXTBAN notation is not standardized, however, it's availability is spreading.

## Availability
EXTBAN support is advertised in the 005 (RPL_ISUPPORT) numeric with the EXTBAN token.

## Known Implementations

### UnreadIRCD

### ircd-seven
*ircd-seven is the ircd in use on freenode, and not widely used elsewhere*
```
* EXTBAN :MODE <channel> <+|-><b|q|e|I> $[~]<type>[:<data>]
* EXTBAN :
* EXTBAN :Extended bans (ban conditionals) allow different checks than the usual
* EXTBAN :nick!user@host or nick!user@ip match to determine whether someone should
* EXTBAN :be banned, quieted, exempted or invited.
* EXTBAN :
* EXTBAN :Extended bans are of the form $[~]<type>[:<data>]. The <type> is one
* EXTBAN :character (case insensitive) and determines the type of match. Most types
* EXTBAN :allow or require an extra field <data>. If the tilde (~) is present, the
* EXTBAN :result of the comparison will be negated, unless the ban is invalid in which
* EXTBAN :case it will never match. Invalid bans are ones where <data> is missing but
* EXTBAN :required or where <data> is otherwise invalid as noted below.
* EXTBAN :
* EXTBAN :Unless noted below, all types can be used with +b, +q, +e and +I.
* EXTBAN :
* EXTBAN : extb Type  - DESCRIPTION
* EXTBAN :------------------------------------------------------------------------
* EXTBAN :     $a     - Matches all logged in users
* EXTBAN :  $a:<mask> - Matches users logged in with a username matching the mask
* EXTBAN :              (* and ? wildcards)
* EXTBAN :  $c:<chan> - Matches users who are on the given channel; this is only
* EXTBAN :              valid if the channel exists and is not +s or +p. (The ops
* EXTBAN :              of the channel the ban is on cannot necessarily see whether
* EXTBAN :              the user is in the target channel, so it should not
* EXTBAN :              influence whether they can join either.)
* EXTBAN :     $o     - Matches opers (most useful with +I)
* EXTBAN :  $r:<mask> - Matches users with a realname (gecos) matching the mask
* EXTBAN :              (* and ? wildcards); this can only be used with +b and +q
* EXTBAN :  $s:<mask> - matches users connected to a server matching the mask
* EXTBAN :              (* and ? wildcards); this can only be used with +b and +q
* EXTBAN :  $j:<chan> - matches users who are or are not banned from a specified
* EXTBAN :              channel
* EXTBAN :  $x:<mask> - Bans all users with matching nick!user@host#gecos
* EXTBAN :     $z     - Matches all SSL users
```

### InspIRCd
```
* Extended Bans
* ----------
*
* Extbans are split into two types; matching extbans, which match on
* users in additional ways, and acting extbans, which restrict users
* in different ways to a standard ban.
*
* To use an extban, simply set +b <ban> or +e <ban> with it as the ban,
* instead of a normal nick!user@host mask, to ban or exempt matching
* users. Ban exceptions on acting extbans exempt that user from matching
* an extban of that type, and from any channel mode corresponding to the
* restriction. Matching extbans may also be used for invite exceptions by
* setting +I <extban>.
*
* Matching extbans:
*
*  j:<channel>   Matches anyone in the given channel. Does not support
*                wildcards (requires channelban module).
*  r:<realname>  Matches users with a matching realname (requires gecosban
*                module).
*  s:<server>    Matches users on a matching server (requires serverban
*                module).
*  z:<certfp>    Matches users having the given SSL certificate
*                fingerprint (requires sslmodes module).
*  O:<opertype>  Matches IRCops of a matching type, mostly useful as an
*                an invite exception (requires operchans module).
*  R:<account>   Matches users logged into a matching account (requires
*                services account module).
* Acting extbans:
*
*  c:<banmask>   Blocks any messages that contain color codes from
*                matching users (requires blockcolor module).
*  m:<banmask>   Blocks messages from matching users (requires muteban
*                module). Users with +v or above are not affected.
*  p:<banmask>   Blocks part messages from matching users (requires
*                nopartmsg module).
*  A:<banmask>   Blocks invites by matching users even when +A is set
*                (requires allowinvite module).
*  B:<banmask>   Blocks all capital or nearly all capital messages from
*                matching users (requires blockcaps module).
*  C:<banmask>   Blocks CTCPs from matching users (requires noctcp
*                module).
*  M:<account>   Blocks messages from users logged into a matching
*                account (requires services account module).
*  N:<banmask>   Blocks nick changes from matching users (requires
*                nonicks module).
*  Q:<banmask>   Blocks kicks by matching users (requires nokicks
*                module).
*  S:<banmask>   Strips color/bold/underline from messages from matching
*                users (requires stripcolor module).
*  T:<banmask>   Blocks notices from matching users (requires nonotice
*                module).
*  U:<banmask>   Blocks unregistered users matching the given banmask.
*                (requires services account).
*
* A ban given to an Acting extban may either be a nick!user@host mask
* (unless stated otherwise, for example M: taking an account name),
* matched against users as for a normal ban, or a Matching extban.
* There is an additional special type of extended ban, a redirect ban:
*
*  Redirect      n!u@h#channel will redirect the banned user to #channel
*                when they try to join (requires banredirect module).
*  -
```
