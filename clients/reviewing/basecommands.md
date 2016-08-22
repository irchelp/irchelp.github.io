# Client Evaluation - Basic Commands

A common convention of IRC clients has been that lines prefixed with / are treated as commands, and a subset of commands exists that are supported by virtually all IRC clients.

We believe that this list represents a minimum set of commands that clients must implement to be considered functional.


## Required Commands for All IRC Clients

This represents a subset of commands which all users should reasonably expect to be present. 

### /join

Syntax: `/join <channel>`

Joins a channel.

### /part

Syntax: `/part <channel> [reason]`

Leaves a channel.


### /msg

Syntax: `/msg <target> <message>`

Sends a message to <target>, which may be a nickname, #channelname, or a special target such as @#channelname

The message MUST be sent using PRIVMSG, except that if the client implements a scripting facility the client SHOULD send NOTICE instead if called in response to a PRIVMSG event.

### /notice

Syntax: `/notice <target> <message>`

Sends a notice to <target>, which may be a nickname, #channelname, or a special target such as @#channelname

The message MUST be sent using NOTICE, except that if the client implements a scripting facility the client SHOULD not send any message if called in response to a received NOTICE.

### /nick

Syntax `/nick <nickname>`

Attempts to change nickname. 

### /quit

Syntax: /quit [reason]

Disconnects from the IRC server. May close the client as well.

### /help

Provides clear, concise help on the client's commands. The initial help screen MUST NOT require scrolling to read on an 80x25 terminal (for terminal oriented clients) unless some form of paging is used, and the user has clear instructions on its use available on streen. (eg "--space for more---")

the client SHOULD offer access to additional information 

### /whois

Syntax: `/whois <nickname> [servername]`

Provides information on another IRC user, such as their hostmask, channels, and any /away message.

A nickname should be able to be supplied in place of the servername.

## Recommended Commands for All Clients

### /quote

Syntax: `/quote <any arbitrary command`

Sends a raw command to the server without any checking by the client for validity.

### /ignore

Ignores a user, discarding specified messages from that user before they are displayed.

## Required Commands for Channel Operators

* /mode
* /topic
* /kick

## Recommended Commands for Channel Operators

* ban
* unban
* op
* deop
* voice
* devoice
* onotice

## Required Commands for IRC operators

* /mode
* /oper
* /challenge
* /quote
* /kill
* /trace
* /connect
* /rehash

