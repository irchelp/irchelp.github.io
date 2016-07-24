HTML layout by Tatu J. Lund Apr 1997

Network Working Group

Request for Comments: 1459

J. Oikarinen

D. Reed

May 1993

* * *

# 5. Optionals

This section describes OPTIONAL messages. They are not required in a working
server implementation of the protocol described herein. In the absence of the
option, an error reply message must be generated or an unknown command error.
If the message is destined for another server to answer then it must be passed
on (elementary parsing required) The allocated numerics for this are listed
with the messages below.

## 5.1 Away

Command:

AWAY

Parameters:

[message]

With the AWAY message, clients can set an automatic reply string for any
PRIVMSG commands directed at them (not to a channel they are on). The
automatic reply is sent by the server to client sending the PRIVMSG command.
The only replying server is the one to which the sending client is connected
to.

The AWAY message is used either with one parameter (to set an AWAY message) or
with no parameters (to remove the AWAY message).

Numeric Replies:

RPL_UNAWAY

RPL_NOWAWAY

Examples:

    
    
    AWAY :Gone to lunch.  Back in 5
                          ; set away message to "Gone to lunch.
                          Back in 5".
    
    :WiZ AWAY             ; unmark WiZ as being away.
    

## 5.2 Rehash message

Command:

REHASH

Parameters:

None

The rehash message can be used by the operator to force the server to re-read
and process its configuration file.

Numeric Replies:

RPL_REHASHING

ERR_NOPRIVILEGES

Examples:

    
    
    REHASH           ; message from client with operator
                     status to server asking it to reread its
                     configuration file.
    

## 5.3 Restart message

Command:

RESTART

Parameters:

None

The restart message can only be used by an operator to force a server restart
itself. This message is optional since it may be viewed as a risk to allow
arbitrary people to connect to a server as an operator and execute this
command, causing (at least) a disruption to service.

The RESTART command must always be fully processed by the server to which the
sending client is connected and not be passed onto other connected servers.

Numeric Replies:

ERR_NOPRIVILEGES

Examples:

    
    
    RESTART             ; no parameters required.
    

## 5.4 Summon message

Command:

SUMMON

Parameters:

<user> [<server>]

The SUMMON command can be used to give users who are on a host running an IRC
server a message asking them to please join IRC. This message is only sent if
the target server (a) has SUMMON enabled, (b) the user is logged in and (c)
the server process can write to the user's tty (or similar).

If no <server> parameter is given it tries to summon <user> from the server
the client is connected to is assumed as the target.

If summon is not enabled in a server, it must return the ERR_SUMMONDISABLED
numeric and pass the summon message onwards.

Numeric Replies:

ERR_NORECIPIENT

ERR_FILEERROR

ERR_NOLOGIN

ERR_NOSUCHSERVER

RPL_SUMMONING

Examples:

    
    
    SUMMON jto                 ; summon user jto on the server's host
    
    SUMMON jto tolsun.oulu.fi  ; summon user jto on the host which a
                               server named "tolsun.oulu.fi" is
                               running.
    

## 5.5 Users

Command:

USERS

Parameters:

[<server>]

The USERS command returns a list of users logged into the server in a similar
format to who(1), rusers(1) and finger(1). Some people may disable this
command on their server for security related reasons. If disabled, the correct
numeric must be returned to indicate this.

Numeric Replies:

ERR_NOSUCHSERVER

ERR_FILEERROR

RPL_USERSSTART

RPL_USERS

RPL_NOUSERS

RPL_ENDOFUSERS

ERR_USERSDISABLED

Disabled Reply:

ERR_USERSDISABLED

Examples:

    
    
    USERS eff.org              ; request a list of users logged in on
                               server eff.org
    
    :John USERS tolsun.oulu.fi ; request from John for a list of users
                               logged in on server tolsun.oulu.fi
    

## 5.6 Operwall message

Command:

WALLOPS

Parameters:

Text to be sent to all operators currently online

Sends a message to all operators currently online. After implementing WALLOPS
as a user command it was found that it was often and commonly abused as a
means of sending a message to a lot of people (much similar to WALL). Due to
this it is recommended that the current implementation of WALLOPS be used as
an example by allowing and recognising only servers as the senders of WALLOPS.

Numeric Replies:

ERR_NEEDMOREPARAMS

Examples:

    
    
    :csd.bu.edu WALLOPS :Connect '*.uiuc.edu 6667' from Joshua
                    ; WALLOPS message from csd.bu.edu announcing a
                    CONNECT message it received and acted
                    upon from Joshua.
    

## 5.7 Userhost message

Command:

USERHOST

Parameters:

<nickname>{<space><nickname>}

The USERHOST command takes a list of up to 5 nicknames, each separated by a
space character and returns a list of information about each nickname that it
found. The returned list has each reply separated by a space.

Numeric Replies:

RPL_USERHOST

ERR_NEEDMOREPARAMS

Examples:

    
    
    USERHOST Wiz Michael Marty p
                        ;USERHOST request for information on
                        nicks "Wiz", "Michael", "Marty" and "p"
    

## 5.8 Ison message

Command:

ISON

Parameters:

<nickname>{<space><nickname>}

The ISON command was implemented to provide a quick and efficient means to get
a response about whether a given nickname was currently on IRC. ISON only
takes one (1) parameter: a space-separated list of nicks. For each nickname in
the list that is present, the server adds that to its reply string. Thus the
reply string may return empty (none of the given nicks are present), an exact
copy of the parameter string (all of them present) or as any other subset of
the set of nicks given in the parameter. The only limit on the number of nicks
that may be checked is that the combined length must not be too large as to
cause the server to chop it off so it fits in 512 characters.

ISON is only be processed by the server local to the client sending the
command and thus not passed onto other servers for further processing.

Numeric Replies:

RPL_ISON

ERR_NEEDMOREPARAMS

Examples:

    
    
    ISON phone trillian WiZ jarlek Avalon Angel Monstah
                         ; Sample ISON request for 7 nicks.
    

* * *

[<](chapter4.html)

[^](rfc.html)

[>](chapter6.html)
