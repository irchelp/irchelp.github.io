---
title: www.irchelp.org IRC client review guide
author: jolo, stephanie
summary: Objective guidelines for evaluating IRC clients.
---

*This is an ancient draft, started by jolo in the late 90's of how to evaluate IRC clients. It's in the process of being updated, and will be the basis of how we review IRC clients for listing on our website.*


This is a draft checklist for reviewing an IRC client. This isn't
meant to be a complete list of what a client must/should have,
but rather an abbreviated checklist of things I personally look
for when evaluating a new client/version.
by Jolo

version 0.3.4s
updated 2/3/99 -dracus
updated 1/25/03 -dracus

Please send suggestions/comments to Jolo at http://www.irchelp.org/~jyl/mail.cgi



# Overview

Clients are evaluated on a long list of criteria.

* Fitness for purpose
* * General Use
* * Channel Operator
* * Server Operator
* * Extensibility, Scripting, and Automation
* Maturity
* Annoyance (can the client be classed as a public nusance?)
* Brokenness
* Niceities


# Fitness for purpose

Fitness for purpose is rated in four areas, communicating, channel maintainance, server maintainance, and scripting/automation. These ratings correspond to an overall sense of the client's capability, and whether a user would find the client suitable to perform the functions needed for a given role. Evaluation covers the user interface elements as well as access to necessary commands.

Possible ratings:

* Outstanding - The client goes above and beyond what is required for a high level of usability and capability.
* Acceptable - The client is fully capable of all functions expected of this role in the expected way.
* Deficient - The client is capable of all required functions for this role, but may require workarounds or be difficult to use.
* Unacceptable - The client prevents access to necessary functionality for this role.

## Communicating

* Ability to join/part channels.
* Ability to join multiple channels.
* Ability to send/recieve private messages (PRIVMSG)
* Ability to send/recieve notices (NOTICE)
* Ability to view identifying information for other users (WHOIS)
* Ability to view channel topic (TOPIC)
* Ability to view list of channel members (WHO/NAMES)
* Ability to list/find channels (if not prevented by network size)
* Ability to list servers
* Support for client side ignore.
* Support for answering CTCP queries, minimally CTCP VERSION.
* Must be able to send messages to nickserv/chanserv that comply with anti-spoofing features of major networks. (/quote nickserv command or /msg nickserv@services.example.com)

### Nice to have...
* Support for serverside ignore extensions (SILENCE/ACCEPT).

## Channel Op

## Evaluation Levels





### Full-featured clients (tier 1)
*Examples of clients we consider full-featured include ircII, EPIC, irssi, XChat, and mIRC. These clients are widely regarded as the gold standards for IRC clients on their respective platforms. A full-featured client allows for rich customiztion through a scripting interface or API, and is suitable for virtually any purpose, from chatting with a few friends to being an IRC Operator on a major network.*
 * Fully scriptable, generally with a turing-complete programming language that is capable of regulating and manipulating all client-server interactions.
 * Suitable and stable for any purpose.
 * Handles uncaught numerics and protocol messages gracefully.
 * Provides /quote and raw hooks.
 * Provides all standard /commands.

### IRC Clients (tier 2)


### Feature-Limited Clients (tier 3)

This classification includes software that is either too limited to go beyond casual use, as well as software which isn't dedicated to IRC. These clients are functional enough to chat, but not necessarily well suited to functions used as a channel operator or IRC operator.


#### Instant Messaging Programs

#### Other Limited IRC Clients


### Broken Clients (tier 4)

From our perspective, a client may be considered as "broken" if it is missing core functionality needed to connect to a server, authenticate to services (if used), join channels, and send/recieve private messages and notices.

Any of these things earn a spot on the broken list.

 * Can't successfully complete a connection to one or more established IRC networks due to failure to follow standards or common practices of IRC clients.
 * Hard-coded restrictions on IRC network or channel selection.
 * Imability to authenticate to, or interact with services on one or more established IRC networks.
 * Inability to send/recieve messages to/from channels
 * Inability to send/recieve messages/notices to/from other users.
 * Serious protocol errors or omissions which cause the client to disconnect or time out regularly from IRC servers (such as not supporting PING/POMG)
 * Unresolved remote security issues (client can be made to crash or execute arbitrary code by another user or a rogue server)
 * Any text that is automatically sent to a cnannel or query window must be able to be disabled by the user.

Clients that fall into the "Broken" category as judged by the above will be listed as such, and our
coverage, if any, will be limited to a recommendaion against their use and
mention of possible workarounds.





## Basics

### Stability

 * General stability. (any crashes or hangs noted during testing?)
 * Stability under flood. (test with /list on a large network)

## Performance

 * Load time. (On a system typical of those the client is designed for, should be under 30 seconds)

## Licensing

### Shareware/Demoware
*This section only applies to shareware and demoware.*
 * MUST allow access to all functionality needed for proper evaluation.
 * Should not abort on a timer.
 * If the software aborts on a timer, the timer MUST be long enough to permit proper evaluation.



BASICS
	general stability
	stability while getting /list (indication of stability during a
	flood) 
	++load time (on a typical system as of the time it was released)
		under 30 seconds.
        memory size (preferably under 1MB, should at least be under 5MB)
        +shortcuts to get connected to major help channel
        ++does not allow PRIVMSG autoreply to PRIVMSG
        ++does not allow any autoreply to NOTICE
        *use standard terminology (channel/server/query etc)
        ++connections to multiple networks
	*Uses common / commands
	++Allows access to ALL features from / commands
	++if software is shareware or demo it must not abort on timer 
	*if software does abort on timer it must be long enough to evaluate
	properly (1 hour min)


FILE / NETWORKS / SERVERS
        /server irc.mindspring.com 6666
        built-in server list with EF/Under/IRC/DALnet
        (++ for gui clients, + for command line)
	++identd (for platforms which do not normally provide identd)
		should be able to enable/disable
        ++server list (if present) can be edited
	* /list (or GUI features equvilant to /list) works
	++/list permits wildcards
        +/list *help* -min 5 (ircII style filtering)
        ++ /links *.edu
        +/stats p
        */motd
        */dcc chat, send, get
	* /quote , /raw or similar
	++005 numeric should be utilized to determine supported user/channel 						modes, and which modes take arguements
	* Must handle new numerics/server messages gracefully, preferably
		by displaying them to the user.
	* Must handle additional parameters on numeric replies gracefully
	++ Should handle misformed server messages/numerics gracefully, 						preferably by displaying them to the user
	* Must handle PING cookies during connect. (ircu anti-spoofing)
	++ Should handle alternative channel types (&+!)
	+ Should deal with channel forwarding gracefully (Freenode)
	+ Should deal with anonymous channel operators gracefully (Hybrid 7
		+a channelmode)
	+ Should deal with anonymous channels gracefully (IRCNet +a channelmode)
	+ Should deal with masked servers gracefully (serverhide, IRCnet 		
		servermasks)

SECURITY
	* working /ignore
	++ /ignore supports user supplied hostmasks and message types
	* Must handle malicious ANSI sequences in a way that does not compromise
		security
	++ Should not leak IP information in CTCP replies.
	* Must handle all characters which may be present in messages from
		server
	* Must deal with unsupported or malformed CTCP requests gracefully
	* Must be designed to avoid buffer overflows from remote clients.
	++ Should select DCC ports randomly
	++ Should warn on potentially malicious DCC requests (DCC to loopback
	chargen port anyone?)
        *replies to CTCP version & ping
        server op protection
        +flood protection (msg, notice, ctcp)
		if not provided a workable scripting language MUST be
		provided
        +logging
	*Auto DCC get doesn't ship turned on
	+Auto DCC get not present
	+Recieved DCC's are sent to a diffrent directory than
		configuration/scripts are kept
	+Recieved DCCs either rejected for executable file types, or renamed
	so as to be non-executable (on platforms where file extension matters)
	+Recieved DCCs with dot prefix rejected or renamed. (*nix)
	*Join channel on invite ships disabled or isn't available
	*Channel protection features, if present, MUST be configurable, and
		MUST be individually toggleable.
	++Automatic kicking of channel operators SHOULD be disabled by default.
	++GUI or locally operated console client should remain responsive during floods


CONFIGURABILITY
        +preferences
        +saving preferences (window positions, connection info)
	+Option to send certian output to current window instead of or in
	addition to console
	++setting to get /msg's in current window



EDIT
        +copy/paste
        drag & drop
        +select all
        *equivalents of ^A (beg of line), ^U (clear line), ^P (previous)
        font/size displayed
        ++style: bold/underline/inverse

COMMANDS
        */msg (just one line)
        ++/query (extended chat in new window)
        */notice nick boo
	++/notice @#channel test  (hybrid6 style channel op notice)
        */who #test123, *.rr.com
        */names #channel
        */whois nick (pick an IRCop)
        */topic #test123 text
        */mode #test123 +stinkl nyer 69
        */mode #test123 +b ?lamer*!*name@*.*.*.com
        */kick #test123 nick reason
        */mode nick +is
        */nick foo
	+/ping nick, channel
	*/ctcp nick VERSION
	*/ctcp nick PING
	++ Client should supply a time parameter automatically for /ctcp nick 		PING
	*All commands required by RFC1459 MUST be accessible by /commands

WINDOWS / G.U.I.
        ++console window for server messages
        +user list window (nick, H/G, n@u!h, hops)
        +/dcc status window
        +channel list
        +scrollable/multiline input
        +buttons/toggles for channel modes, topic
        +buttons for users (msg, whois, kick, op)
        +colors for message types (public vs. msg)
	*names of menus and buttons make sense


HELP
        *Client MUST provide online help.
        +Online help is be accessible through /help <keyword>.
        +Online help is accessible via the common means of accessing
          help in that interface.
        +Online help SHOULD be searchable.
	+Client "suggests" help topics or provides help when commands are
		entered improperly
	+Online help should fully describe each /command
        
SCRIPTING
        +availability of built-in variables and features
        +portability/ease
	+ircII or mIRC compatable syntax
	*All features present are FULLY documented


Channel Maintainance
	*/kick, /topic and /mode are functional
	++/ban #channel nick
	++/bankick #channel nick reason
		preferably offering several forms for bans
	+timed bans
        +friends list
        +shit list
        
OTHER
	*Client should ignore or warn user about forged CTCP replies
	--Links looker


NON-RFC FEATURES
        mIRC style colors
	ANSI style colors
	++color/bold/inverse/underline/flashing stripping
        fserve
        +DCC resume
	+Reverse DCC (sender connects to reciever)
        sound
        others: -faces, video, white board, -HTML, etc.

        
BUILT-IN/BUNDLED SCRIPTS

	-- "war" features (text flooding,terminal bombs,nukers)
